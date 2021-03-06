package cn.edu.zju.bmi.entity.POJO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OperationStatisticItem {
    private String operationCode;
    private Integer operationCount;
    private Double operationRatio;
}
