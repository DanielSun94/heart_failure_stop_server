package cn.edu.zju.bmi.service;
import cn.edu.zju.bmi.entity.DAO.*;
import cn.edu.zju.bmi.entity.POJO.VisitIdentifier;
import cn.edu.zju.bmi.entity.POJO.VisitInfoForGroupAnalysis;
import cn.edu.zju.bmi.repository.*;
import cn.edu.zju.bmi.support.ParameterName;
import cn.edu.zju.bmi.support.TwoElementTuple;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class GroupAnalysisService {
    private VisitIdentifierRepository visitIdentifierRepository;
    private VitalSignRepository vitalSignRepository;
    private PatientVisitRepository patientVisitRepository;
    private PatientRepository patientRepository;
    private DiagnosisRepository diagnosisRepository;
    private OperationRepository operationRepository;
    private LabTestRepository labTestRepository;
    private OrdersRepository ordersRepository;
    private ExamRepository examRepository;

    // 由于此处需要翻页，由于我们的功能无法直接通过Pageable API实现，因此需要将查询结果缓存起来
    // 为了防止内存溢出，设定只同时支持对5个查询进行缓存，多出的即删除
    private CacheQueue cachePool;

    // 以下4个Map一直驻留，不可改变，用于在筛选出合适的visit后，快速的获取展示Visit所需的信息
    private Map<String, PatientVisit> patientVisitMap;
    private Map<String, Patient> patientMap;
    private Map<String, List<Diagnosis>> diagnosisMap;
    private Map<String, String> hospitalMap;
    private Map<String, String> idMap;

    private SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd" );

    @Autowired
    public GroupAnalysisService(VisitIdentifierRepository visitIdentifierRepository,
                                PatientRepository patientRepository,
                                PatientVisitRepository patientVisitRepository,
                                DiagnosisRepository diagnosisRepository,
                                HospitalMapRepository hospitalMapRepository,
                                LabTestRepository labTestRepository,
                                IdMappingRepository idMappingRepository,
                                VitalSignRepository vitalSignRepository,
                                OperationRepository operationRepository,
                                OrdersRepository ordersRepository,
                                ExamRepository examRepository)
    {
        this.visitIdentifierRepository = visitIdentifierRepository;
        this.patientVisitRepository = patientVisitRepository;
        this.vitalSignRepository = vitalSignRepository;
        this.diagnosisRepository = diagnosisRepository;
        this.labTestRepository = labTestRepository;
        this.operationRepository = operationRepository;
        this.patientRepository = patientRepository;
        this.ordersRepository = ordersRepository;
        this.examRepository = examRepository;
        this.cachePool = new CacheQueue(5);

        List<PatientVisit> patientVisitList = patientVisitRepository.findAll();
        List<Patient> patientList = patientRepository.findAll();
        List<Diagnosis> diagnosisList = diagnosisRepository.findAll();
        List<HospitalMap> hospitalMapList = hospitalMapRepository.findAll();
        List<IdMapping> idMappingList = idMappingRepository.findAll();

        patientVisitMap = new HashMap<>();
        for(PatientVisit patientVisit: patientVisitList){
            String hospitalCode = patientVisit.getKey().getHospitalCode();
            String unifiedPatientID = patientVisit.getKey().getUnifiedPatientID();
            String visitID = patientVisit.getKey().getVisitID();
            String visitType = patientVisit.getKey().getVisitType();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            patientVisitMap.put(id, patientVisit);
        }

        patientMap = new HashMap<>();
        for(Patient patient: patientList){
            String unifiedPatientID = patient.getUnifiedPatientID();
            patientMap.put(unifiedPatientID, patient);
        }

        diagnosisMap = new HashMap<>();
        for(Diagnosis diagnosis: diagnosisList){
            String hospitalCode = diagnosis.getKey().getHospitalCode();
            String unifiedPatientID = diagnosis.getKey().getUnifiedPatientID();
            String visitID = diagnosis.getKey().getVisitID();
            String visitType = diagnosis.getKey().getVisitType();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            if(!diagnosisMap.containsKey(id)){
                diagnosisMap.put(id, new ArrayList<>());
            }
            diagnosisMap.get(id).add(diagnosis);
        }

        hospitalMap = new HashMap<>();
        for(HospitalMap hospital: hospitalMapList){
            hospitalMap.put(hospital.getHospitalCode(), hospital.getHospitalName());
        }

        idMap = new HashMap<>();
        for(IdMapping idMapping: idMappingList){
            String hospitalCode = idMapping.getHospitalCode();
            String unifiedPatientID = idMapping.getUnifiedPatientID();
            String localPatientID = idMapping.getHospitalPatID();
            idMap.put(unifiedPatientID+"_"+hospitalCode, localPatientID);
        }
    }

    public List<VisitInfoForGroupAnalysis> getVisitInfoForGroupAnalysisList(String filter, String userName,
                                                                            Long timeStamp, Integer startIdx,
                                                                            Integer endIdx) throws Exception {
        // 从群体到患者个体需要缓存查询结果以辅助分页（这部分没办法通过Spring 原生API做完）
        // 因此用userName+timeStamp做缓存结果的ID
        // startIndex从0起算
        String id = userName+"_"+timeStamp;
        int realStartIndex = startIdx;
        int realEndIndex = endIdx;
        if(cachePool.contains(id)){
            if((cachePool.getContent(id).size()-1)<=startIdx){
                return new ArrayList<>();
            }
            else if((cachePool.getContent(id).size())<=endIdx){
                realEndIndex = cachePool.getContent(id).size();
                return cachePool.getContent(id).subList(realStartIndex, realEndIndex);
            }
            else {
                return cachePool.getContent(id).subList(realStartIndex, realEndIndex);
            }

        }
        else{
            List<VisitIdentifier> targetList =  parseFilterAndSearchVisit(filter);
            List<VisitInfoForGroupAnalysis> visitInfoForGroupAnalysisList = getVisitInfoForGroupAnalysis(targetList);
            cachePool.add(id, visitInfoForGroupAnalysisList);
            return cachePool.getContent(id).subList(startIdx, endIdx);
        }
    }

    private List<VisitInfoForGroupAnalysis> getVisitInfoForGroupAnalysis(List<VisitIdentifier> targetList){
        List<VisitInfoForGroupAnalysis> visitInfoForGroupAnalysisList = new ArrayList<>();
        for(VisitIdentifier visitIdentifier: targetList){
            String unifiedPatientID = visitIdentifier.getUnifiedPatientID();
            String visitID = visitIdentifier.getVisitID();
            String hospitalCode = visitIdentifier.getHospitalCode();
            String visitType = visitIdentifier.getVisitType();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;

            // 要求targetList必须能在几个map中都能找到
            if(!(diagnosisMap.containsKey(id)&& patientMap.containsKey(unifiedPatientID)&&
                    patientVisitMap.containsKey(id)&&idMap.containsKey(unifiedPatientID+"_"+hospitalCode))){
                continue;
            }
            String localPatientID = idMap.get(unifiedPatientID+"_"+hospitalCode);
            String name = patientMap.get(unifiedPatientID).getName();
            String hospitalName = hospitalMap.get(hospitalCode);
            String sex = patientMap.get(unifiedPatientID).getSex();
            StringBuilder stringBuilder = new StringBuilder();
            for(Diagnosis diagnosis: diagnosisMap.get(id)){
                String diagnosisType = diagnosis.getKey().getDiagnosisType();
                if(diagnosisType.equals("3")){
                    stringBuilder.append(diagnosis.getDiagnosisDesc());
                }
            }
            String mainDiagnosis = stringBuilder.toString();

            Date admissionDateTime = patientVisitMap.get(id).getAdmissionDateTime();
            Date dischargeDateTime = patientVisitMap.get(id).getDischargeDateTime();
            String los = String.valueOf((int)Math.ceil((double)(dischargeDateTime.getTime()-
                    admissionDateTime.getTime())/1000/3600/24));

            String admissionTimeStr = sdf.format(admissionDateTime);
            Calendar admissionTime = Calendar.getInstance();
            admissionTime.setTime(admissionDateTime);
            int toYear = admissionTime.get(Calendar.YEAR);

            Date birthday = patientMap.get(unifiedPatientID).getBirthday();
            Calendar birthdayCalender = Calendar.getInstance();
            birthdayCalender.setTime(birthday);
            String age = String.valueOf(toYear-birthdayCalender.get(Calendar.YEAR));

            VisitInfoForGroupAnalysis visitInfoForGroupAnalysis =
                    new VisitInfoForGroupAnalysis(localPatientID, unifiedPatientID, name, hospitalCode, hospitalName,
                            visitID, visitType, sex, age, mainDiagnosis, los, admissionTimeStr);
            visitInfoForGroupAnalysisList.add(visitInfoForGroupAnalysis);
        }
        return visitInfoForGroupAnalysisList;
    }

    private List<VisitIdentifier> parseFilterAndSearchVisit(String filter) throws Exception {
        // filter 应当是Json格式，转换为对象后，应当是一个list，list中的每一项的第一个元素代表了filter类型，之后的项代表了
        // 具体的过滤细节，依据每中filter自行决定。
        List<List<VisitIdentifier>> list = new ArrayList<>();
        // 初始化包括所有人的信息

        JSONObject jo = new JSONObject(filter);
        JSONArray jsonArray = (JSONArray) jo.get("filter");
        for(int i=0; i<jsonArray.length();i++){
            JSONArray item = (JSONArray) jsonArray.get(i);
            String itemName = item.getString(0);
            switch (itemName){
                case ParameterName.AGE: list.add(selectVisitByAge(item)); break;
                case ParameterName.SEX: list.add(selectVisitBySex(item));break;
                case ParameterName.VITAL_SIGN: list.add(selectVisitByVitalSignAndUsingFirstRecordOfVisit(item)); break;
                case ParameterName.ADMISSION_TIME: list.add(selectVisitByAdmissionTime(item)); break;
                case ParameterName.BIRTHDAY: list.add(selectVisitByBirthDay(item));break;
                case ParameterName.HOSPITAL: list.add(selectVisitByHospital(item));break;
                case ParameterName.LOS: list.add(selectVisitByLOS(item));break;
                case ParameterName.MAIN_DIAGNOSIS: list.add(selectVisitByDiagnosis(item, "mainDiagnosis")); break;
                case ParameterName.DIAGNOSIS: list.add(selectVisitByDiagnosis(item, "diagnosis")); break;
                case ParameterName.OPERATION: list.add(selectVisitByOperation(item));break;
                case ParameterName.LAB_TEST: list.add(selectVisitByLabTest(item)); break;
                case ParameterName.MEDICINE: list.add(selectVisitByMedicine(item)); break;
                // 由于数据质量的原因，目前仅支持对超声心动图的查询
                case ParameterName.EXAM: list.add(echoCardiogram(item)); break;
                case ParameterName.MACHINE_LEARNING_MODEL: break;
                default: break;
            }
        }
        return convertToLegalVisitList(list);
    }

    private List<VisitIdentifier> convertToLegalVisitList(List<List<VisitIdentifier>> list ){
        // 只保留符合每个过滤器的患者
        Map<String, TwoElementTuple<Integer, VisitIdentifier>> map = new HashMap<>();
        for(List<VisitIdentifier> list1: list){
            for(VisitIdentifier visitIdentifier: list1){
                String id = visitIdentifier.getUnifiedPatientID()+"_"+visitIdentifier.getHospitalCode()+"_"+
                        visitIdentifier.getVisitType()+"_"+visitIdentifier.getVisitID();
                if(!map.containsKey(id)){
                    map.put(id, new TwoElementTuple<>(1, visitIdentifier));
                }
                else {
                    map.put(id, new TwoElementTuple<>(map.get(id).getA()+1, visitIdentifier));
                }
            }
        }

        List<VisitIdentifier> targetList = new ArrayList<>();
        for(String id: map.keySet()){
            // 当id的计数和总数一致时，说明每个filter中都有这次访问
            int count = map.get(id).getA();
            if(count==list.size()){
                targetList.add(map.get(id).getB());
            }
        }
        return targetList;
    }

    private List<VisitIdentifier> echoCardiogram(JSONArray item){
        // item = ["exam", "type", int low_threshold, int high_threshold]
        String type = item.getString(1);
        double lowThreshold = item.getDouble(2);
        double highThreshold = item.getDouble(3);
        Pattern pattern = Pattern.compile("[^0-9]");

        List<Exam> list = examRepository.findEchoCardioGram("超声心脏");
        List<Exam> legalList = new ArrayList<>();
        for(Exam exam: list){
            String examPara = exam.getExamPara();
            if(examPara.length()<30||(!examPara.contains(type))){
                // 存在正常examPara的数据长度必然高于30
                continue;
            }
            // 找到需要的type
            int startIdx = examPara.indexOf(type);
            int endIdx = Math.min(startIdx + 20, examPara.length());
            String valueString = examPara.substring(startIdx, endIdx);
            Matcher matcher = pattern.matcher(valueString);
            double value;
            try {
                value=Double.parseDouble(matcher.replaceAll(" ").trim().split(" ")[0]);
            }
            catch (Exception e){
                continue;
            }
            if(highThreshold!=-1&&lowThreshold!=-1){
                if(value>lowThreshold&&value<highThreshold){
                    legalList.add(exam);
                }
            }
            else if(highThreshold==-1&&lowThreshold==-1){
                legalList.add(exam);
            }
            else if(highThreshold!=-1){
                if(value<highThreshold){
                    legalList.add(exam);
                }
            }
            else {
                if(value>lowThreshold){
                    legalList.add(exam);
                }
            }
        }
        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        // 消除重复值
        Map<String, VisitIdentifier> map = new HashMap<>();
        for(Exam exam: legalList){
            String unifiedPatientID = exam.getKey().getUnifiedPatientID();
            String visitType = exam.getKey().getVisitType();
            String visitID = exam.getKey().getVisitID();
            String hospitalCode = exam.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            map.put(id, new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        for(String key: map.keySet()){
            visitIdentifierList.add(map.get(key));
        }

        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByMedicine(JSONArray item){
        // item = ["medicine", featureCode1, feature2,...]
        List<Orders> ordersList = new ArrayList<>();
        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();

        for(int i=1; i< item.length(); i++){
            String medicineCode = item.getString(i);
            ordersList.addAll(ordersRepository.findByOrderClassAndOrderCode("A", medicineCode));
        }
        // 消除重复值
        Map<String, VisitIdentifier> map = new HashMap<>();
        for(Orders orders: ordersList){
            String unifiedPatientID = orders.getKey().getUnifiedPatientID();
            String visitType = orders.getKey().getVisitType();
            String visitID = orders.getKey().getVisitID();
            String hospitalCode = orders.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            map.put(id, new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        for(String key: map.keySet()){
            visitIdentifierList.add(map.get(key));
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByLabTest(JSONArray item) throws Exception {
        // item = ["labTest", [featureCode, dataType, value1, value2], [....], ....]
        // dataType = {category, numerical}
        List<LabTest> labTestList = new ArrayList<>();
        for(int i=1; i<item.length(); i++){
            JSONArray featureInfo = (JSONArray)item.get(i);
            String featureCode = featureInfo.getString(0);
            String featureType = featureInfo.getString(1);
            if(featureType.equals("numerical")){
                double lowThreshold = featureInfo.getDouble(2);
                double highThreshold = featureInfo.getDouble(3);
                if(lowThreshold!=-1&&highThreshold!=-1){
                    labTestList.addAll(labTestRepository.findByItemAndValueBetween(featureCode, lowThreshold,
                            highThreshold, ""));
                }
                else if(lowThreshold==-1&&highThreshold==-1){
                    labTestList.addAll(labTestRepository.findByLabTestItemCode(featureCode));
                    System.out.println("min value and max value are not set");
                }
                else if(highThreshold!=-1){
                    labTestList.addAll(labTestRepository.findByItemAndValueGreaterThan(featureCode, lowThreshold,
                            ""));
                }
                else {
                    labTestList.addAll(labTestRepository.findByItemAndValueLessThan(featureCode,
                            highThreshold, ""));
                }
            }
            else if(featureType.equals("category")){
                String value = featureInfo.getString(2);
                labTestList.addAll(labTestRepository.findByItemAndValueIs(featureCode,
                        value, ""));
            }
            else{
                throw new Exception("lab test data type error");
            }
        }

        // 消除重复值
        Map<String, VisitIdentifier> map = new HashMap<>();
        for(LabTest labTest : labTestList){
            String unifiedPatientID = labTest.getKey().getUnifiedPatientID();
            String visitType = labTest.getKey().getVisitType();
            String visitID = labTest.getKey().getVisitID();
            String hospitalCode = labTest.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            map.put(id, new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        for(String key: map.keySet()){
            visitIdentifierList.add(map.get(key));
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByOperation(JSONArray item){
        // item = [type, operationCode1, operationCode2, ...]
        // code follows ICD-9-CM3 procedure coding standard (default using first four digits)
        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        List<Operation> operationList = new ArrayList<>();
        for(int i=1; i< item.length(); i++){
            String code = item.getString(i);
            operationList.addAll(operationRepository.findByOperationCodeLike("%"+code+"%"));
        }
        // 消除重复值
        Map<String, VisitIdentifier> map = new HashMap<>();
        for(Operation operation: operationList){
            String unifiedPatientID = operation.getKey().getUnifiedPatientID();
            String visitType = operation.getKey().getVisitType();
            String visitID = operation.getKey().getVisitID();
            String hospitalCode = operation.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            map.put(id, new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        for(String key: map.keySet()){
            visitIdentifierList.add(map.get(key));
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByDiagnosis(JSONArray item, String type) throws Exception {
        // item = [type, diagnosisCode1, diagnosisCode2, ...]
        // type = {"mainDiagnosis", "diagnosis"}
        // code follows ICD-10 diagnosis coding standard (default using first three digits)
        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        List<Diagnosis> diagnosisList = new ArrayList<>();
        for(int i=1; i< item.length(); i++){
            String code = item.getString(i);
            if(type.equals("mainDiagnosis")){
                diagnosisList.addAll(diagnosisRepository.findByMainDiagnosis("%"+code+"%", "3"));
            }else if(type.equals("diagnosis")){
                diagnosisList.addAll(diagnosisRepository.findByDiagnosis("%"+code+"%", "3","A"));
            }
            else{
                throw new Exception("illegal diagnosis type name");
            }
        }
        // 消除重复值
        Map<String, VisitIdentifier> map = new HashMap<>();
        for(Diagnosis diagnosis: diagnosisList){
            String unifiedPatientID = diagnosis.getKey().getUnifiedPatientID();
            String visitType = diagnosis.getKey().getVisitType();
            String visitID = diagnosis.getKey().getVisitID();
            String hospitalCode = diagnosis.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            map.put(id, new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        for(String key: map.keySet()){
            visitIdentifierList.add(map.get(key));
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByLOS(JSONArray item){
        // item = ["los", String low_threshold, String high_threshold]
        // low_threshold and high_threshold, -1 if not set.

        int lowThreshold = item.getInt(1);
        int highThreshold = item.getInt(2);

        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        List<PatientVisit> patientVisitList = patientVisitRepository.findAll();

        for(PatientVisit patientVisit: patientVisitList){
            Date admissionTime = patientVisit.getAdmissionDateTime();
            Date dischargeTime = patientVisit.getDischargeDateTime();
            double los = ((double)(dischargeTime.getTime()-admissionTime.getTime()))/1000/3600/24;

            boolean skipFlag = true;
            if(lowThreshold!=-1&&highThreshold!=-1){
                if(los<highThreshold&&los>lowThreshold){
                    skipFlag=false;
                }
            }
            else if(lowThreshold==-1&&highThreshold==-1){
                skipFlag=false;
            }
            else if(highThreshold!=-1){
                if(los<highThreshold){
                    skipFlag=false;
                }
            }
            else {
                if(los>lowThreshold){
                    skipFlag=false;
                }
            }

            if(skipFlag) {
                continue;
            }

            String unifiedPatientID = patientVisit.getKey().getUnifiedPatientID();
            String visitType = patientVisit.getKey().getVisitType();
            String visitID = patientVisit.getKey().getVisitID();
            String hospitalCode = patientVisit.getKey().getHospitalCode();
            visitIdentifierList.add(new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByHospital(JSONArray item){
        // item = ["hospital", String hospitalCode, ...]
        // 如果同时选择了多家医院，则以"或"逻辑返回数据
        List<VisitIdentifier> list = new ArrayList<>();
        for(int i=1; i<item.length();i++){
            List<VisitIdentifier> list1 = visitIdentifierRepository.findVisitByHospitalCode(item.getString(i));
            list.addAll(list1);
        }
        return list;
    }

    private List<VisitIdentifier> selectVisitByBirthDay(JSONArray item){
        // item = ["admissionTime", String low_threshold, String high_threshold]
        // low_threshold and high_threshold format: "yyyy-MM-dd", "-1" if not set.

        Date lowThreshold = convertThresholdFromStringToDate(item.getString(1));
        Date highThreshold = convertThresholdFromStringToDate(item.getString(2));

        List<Patient> list;
        if(lowThreshold!=null&&highThreshold!=null){
            list = patientRepository.findByBirthdayBetween(lowThreshold, highThreshold);
        }
        else if(lowThreshold==null&&highThreshold==null){
            list = patientRepository.findAll();
            System.out.println("min admissionTime and max admissionTime not set");
        }
        else if(highThreshold!=null){
            list = patientRepository.findByBirthdayBefore(highThreshold);
        }
        else {
            list = patientRepository.findByBirthdayAfter(lowThreshold);
        }

        Set<String> legalPatientSet = new HashSet<>();
        for(Patient patient: list){
            legalPatientSet.add(patient.getUnifiedPatientID());
        }

        List<PatientVisit> patientVisitList = patientVisitRepository.findAll();

        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        for(PatientVisit patientVisit: patientVisitList){
            String unifiedPatientID = patientVisit.getKey().getUnifiedPatientID();
            String visitType = patientVisit.getKey().getVisitType();
            String visitID = patientVisit.getKey().getVisitID();
            String hospitalCode = patientVisit.getKey().getHospitalCode();
            if(legalPatientSet.contains(unifiedPatientID)) {
                visitIdentifierList.add(new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
            }
        }
        return visitIdentifierList;
    }

    private List<VisitIdentifier> selectVisitByAdmissionTime (JSONArray item){
        // item = ["admissionTime", String low_threshold, String high_threshold]
        // low_threshold and high_threshold format: "yyyy-MM-dd", "-1" if not set.

        Date lowThreshold = convertThresholdFromStringToDate(item.getString(1));
        Date highThreshold = convertThresholdFromStringToDate(item.getString(2));

        List<PatientVisit> list;
        if(lowThreshold!=null&&highThreshold!=null){
            list = patientVisitRepository.findByAdmissionDateTimeBetween(lowThreshold, highThreshold);
        }
        else if(lowThreshold==null&&highThreshold==null){
            list = patientVisitRepository.findAll();
            System.out.println("min admissionTime and max admissionTime not set");
        }
        else if(highThreshold!=null){
            list = patientVisitRepository.findByAdmissionDateTimeBefore(highThreshold);
        }
        else {
            list = patientVisitRepository.findByAdmissionDateTimeAfter(lowThreshold);
        }

        List<VisitIdentifier> visitIdentifierList = new ArrayList<>();
        for(PatientVisit patientVisit: list){
            String unifiedPatientID = patientVisit.getKey().getUnifiedPatientID();
            String visitType = patientVisit.getKey().getVisitType();
            String visitID = patientVisit.getKey().getVisitID();
            String hospitalCode = patientVisit.getKey().getHospitalCode();
            visitIdentifierList.add(new VisitIdentifier(unifiedPatientID, hospitalCode, visitType, visitID));
        }
        return visitIdentifierList;
    }

    private Date convertThresholdFromStringToDate(String timeStr){
        Date time;
        try{
            time = (timeStr.equals("-1"))?null:sdf.parse(timeStr);
        }
        catch (ParseException e){
            time = null;
            e.printStackTrace();
        }
        return time;
    }

    private List<VisitIdentifier> selectVisitBySex(JSONArray item){
        String sex = item.get(1).equals("male")?"男":"女";
        return visitIdentifierRepository.findVisitBySex(sex);
    }

    private List<VisitIdentifier> selectVisitByAge(JSONArray item){
        // item = ["age", int low_threshold, int high_threshold]

        // 此处由于一些技术原因，需要用365往上乘
        int maxAge = 365*(int)item.get(2);
        int minAge = 365*(int)item.get(1);
        List<VisitIdentifier> list;
        if(maxAge!=-365&&minAge!=-365){
            list = visitIdentifierRepository.findVisitIdentifierByAgeBetween(minAge, maxAge);
        }
        else if(maxAge==-365&&minAge==-365){
            list = new ArrayList<>();
            System.out.println("maxAge and minAge not set");
        }
        else if(maxAge!=-365){
            list = visitIdentifierRepository.findAllVisit();
        }
        else {
            list = visitIdentifierRepository.findVisitIdentifierByAgeLargerThan(minAge);
        }
        return list;
    }

    private List<VisitIdentifier> selectVisitByVitalSignAndUsingFirstRecordOfVisit(JSONArray item) throws Exception {
        // 这个函数由于要遍历vitalSign表，可能存在内存溢出风险，注意
        // item = ["vitalSign", vitalSignType, low_threshold, high_threshold]
        // 如果上限或下限未被设定，则取-1，代表全要，但是最好在前端禁止这种操作
        String vitalSignType = (String)item.get(1);
        int highThreshold = Integer.parseInt((String)item.get(3));
        int lowThreshold = Integer.parseInt((String)item.get(2));

        switch (vitalSignType) {
            case ParameterName.SYSTOLIC_BLOOD_PRESSURE: {
                Map<String, VitalSign> map = getVitalSignFirstRecordOfVisit("血压high", lowThreshold, highThreshold);
                return mapToList(map);
            }
            case ParameterName.DIASTOLIC_BLOOD_PRESSURE: {
                Map<String, VitalSign> map = getVitalSignFirstRecordOfVisit("血压Low", lowThreshold, highThreshold);
                return mapToList(map);
            }
            case ParameterName.BMI: {
                Map<String, VitalSign> heightMap = getVitalSignFirstRecordOfVisit("身高", -1, -1);
                Map<String, VitalSign> weightMap = getVitalSignFirstRecordOfVisit("体重", -1, -1);
                List<VisitIdentifier> list = new ArrayList<>();
                for(String id: heightMap.keySet()){
                    if(!weightMap.containsKey(id)){
                        continue;
                    }
                    double height = heightMap.get(id).getResult();
                    double weight = weightMap.get(id).getResult();
                    double bmi = weight/(height*height)*10000;
                    VitalSign vitalSign = heightMap.get(id);
                    String unifiedPatientID = vitalSign.getKey().getUnifiedPatientID();
                    String visitType = vitalSign.getKey().getVisitType();
                    String visitID = vitalSign.getKey().getVisitID();
                    String hospitalCode = vitalSign.getKey().getHospitalCode();

                    if(highThreshold!=-1&&lowThreshold!=-1){
                        if(bmi<highThreshold&&bmi>lowThreshold){
                            list.add(new VisitIdentifier(unifiedPatientID, visitType, visitID, hospitalCode));
                        }
                    }
                    else if(highThreshold==-1&&lowThreshold==-1){
                        list.add(new VisitIdentifier(unifiedPatientID, visitType, visitID, hospitalCode));
                    }
                    else if(highThreshold!=-1){
                        if(bmi<highThreshold&&bmi>12){
                            list.add(new VisitIdentifier(unifiedPatientID, visitType, visitID, hospitalCode));
                        }
                    }
                    else {
                        if(bmi>lowThreshold&&bmi<35){
                            list.add(new VisitIdentifier(unifiedPatientID, visitType, visitID, hospitalCode));
                        }
                    }
                }
                return list;
            }
            default:
                throw new Exception("no case matched");
        }
    }

    private List<VisitIdentifier> mapToList(Map<String, VitalSign> map){
        List<VisitIdentifier> list = new ArrayList<>();
        for(String key: map.keySet()){
            VitalSign vitalSign = map.get(key);
            String unifiedPatientID = vitalSign.getKey().getUnifiedPatientID();
            String visitType = vitalSign.getKey().getVisitType();
            String visitID = vitalSign.getKey().getVisitID();
            String hospitalCode = vitalSign.getKey().getHospitalCode();
            list.add(new VisitIdentifier(unifiedPatientID, visitType, visitID, hospitalCode));
        }
        return list;
    }

    private Map<String, VitalSign> getVitalSignFirstRecordOfVisit(String type, int lowThreshold, int highThreshold){
        List<VitalSign> list;
        if(highThreshold!=-1&&lowThreshold!=-1){
            list = vitalSignRepository.findByKeyVitalSignAndResultLessThanAndResultGreaterThan(
                    type, highThreshold, lowThreshold);
        }
        else if(highThreshold==-1&&lowThreshold==-1){
            list = vitalSignRepository.findByKeyVitalSign(type);
        }
        else if(highThreshold!=-1){
            list = vitalSignRepository.findByKeyVitalSignAndResultLessThan(type, highThreshold);
        }
        else {
            list = vitalSignRepository.findByKeyVitalSignAndResultGreaterThan(type, lowThreshold);
        }

        Map<String, VitalSign> map = new HashMap<>();
        for(VitalSign vitalSign: list){
            String unifiedPatientID = vitalSign.getKey().getUnifiedPatientID();
            String visitType = vitalSign.getKey().getVisitType();
            String visitID = vitalSign.getKey().getVisitID();
            String hospitalCode = vitalSign.getKey().getHospitalCode();
            String id = unifiedPatientID+"_"+hospitalCode+"_"+visitType+"_"+visitID;
            if(!map.containsKey(id)){
                map.put(id, vitalSign);
            }
            else{
                if(map.get(id).getRecordTime().after(vitalSign.getRecordTime())){
                    map.put(id, vitalSign);
                }
            }
        }
        return map;
    }
}

class CacheQueue{
    private List<TwoElementTuple<String, List<VisitInfoForGroupAnalysis>>> list;
    private int maxSize;
    CacheQueue(int maxSize){
        this.list = new ArrayList<>();
        this.maxSize = maxSize;
    }

    List<VisitInfoForGroupAnalysis> getContent(String id){
        for(TwoElementTuple<String, List<VisitInfoForGroupAnalysis>> tuple: list){
            if(id.equals(tuple.getA())){
                return tuple.getB();
            }
        }
        return new ArrayList<>();
    }

    void add(String newId, List<VisitInfoForGroupAnalysis> content){
        list.add(0, new TwoElementTuple<>(newId, content));
        if(list.size()>maxSize){
            list = list.subList(0, maxSize);
        }
    }

    boolean contains(String newId){
        boolean isIdContained = false;
        for(TwoElementTuple<String, List<VisitInfoForGroupAnalysis>> tuple: list){
            String id = tuple.getA();
            if (id.equals(newId)) {
                isIdContained = true;
                break;
            }
        }
        return isIdContained;
    }
}