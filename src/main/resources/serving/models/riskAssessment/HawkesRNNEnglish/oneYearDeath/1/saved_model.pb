ых
2а1
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
ю
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
о
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-rc1-22-gaf24dc91b58эЪ
P
phase_indicatorPlaceholder*
shape: *
dtype0*
_output_shapes
: 
І
0gru_para_gru/w_z/Initializer/random_normal/shapeConst*
valueB"[   @   *#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes
:

/gru_para_gru/w_z/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *#
_class
loc:@gru_para_gru/w_z

1gru_para_gru/w_z/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_z
ф
?gru_para_gru/w_z/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0gru_para_gru/w_z/Initializer/random_normal/shape*
dtype0*
_output_shapes

:[@*
T0*#
_class
loc:@gru_para_gru/w_z
ї
.gru_para_gru/w_z/Initializer/random_normal/mulMul?gru_para_gru/w_z/Initializer/random_normal/RandomStandardNormal1gru_para_gru/w_z/Initializer/random_normal/stddev*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:[@
р
*gru_para_gru/w_z/Initializer/random_normalAdd.gru_para_gru/w_z/Initializer/random_normal/mul/gru_para_gru/w_z/Initializer/random_normal/mean*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:[@
Љ
gru_para_gru/w_z/Initializer/QrQr*gru_para_gru/w_z/Initializer/random_normal*
T0*#
_class
loc:@gru_para_gru/w_z*(
_output_shapes
:[@:@@

%gru_para_gru/w_z/Initializer/DiagPartDiagPart!gru_para_gru/w_z/Initializer/Qr:1*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes
:@

!gru_para_gru/w_z/Initializer/SignSign%gru_para_gru/w_z/Initializer/DiagPart*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes
:@
Й
 gru_para_gru/w_z/Initializer/mulMulgru_para_gru/w_z/Initializer/Qr!gru_para_gru/w_z/Initializer/Sign*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:[@
В
<gru_para_gru/w_z/Initializer/matrix_transpose/transpose/permConst*
valueB"       *#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes
:
ђ
7gru_para_gru/w_z/Initializer/matrix_transpose/transpose	Transpose gru_para_gru/w_z/Initializer/mul<gru_para_gru/w_z/Initializer/matrix_transpose/transpose/perm*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[
 
*gru_para_gru/w_z/Initializer/Reshape/shapeConst*
valueB"@   [   *#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes
:
т
$gru_para_gru/w_z/Initializer/ReshapeReshape7gru_para_gru/w_z/Initializer/matrix_transpose/transpose*gru_para_gru/w_z/Initializer/Reshape/shape*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

$gru_para_gru/w_z/Initializer/mul_1/xConst*
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes
: 
У
"gru_para_gru/w_z/Initializer/mul_1Mul$gru_para_gru/w_z/Initializer/mul_1/x$gru_para_gru/w_z/Initializer/Reshape*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

gru_para_gru/w_z
VariableV2*#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes

:@[*
shape
:@[
Ѕ
gru_para_gru/w_z/AssignAssigngru_para_gru/w_z"gru_para_gru/w_z/Initializer/mul_1*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

gru_para_gru/w_z/readIdentitygru_para_gru/w_z*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_z
І
0gru_para_gru/w_r/Initializer/random_normal/shapeConst*
valueB"[   @   *#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
:

/gru_para_gru/w_r/Initializer/random_normal/meanConst*
valueB
 *    *#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
: 

1gru_para_gru/w_r/Initializer/random_normal/stddevConst*
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
: 
ф
?gru_para_gru/w_r/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0gru_para_gru/w_r/Initializer/random_normal/shape*
T0*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes

:[@
ї
.gru_para_gru/w_r/Initializer/random_normal/mulMul?gru_para_gru/w_r/Initializer/random_normal/RandomStandardNormal1gru_para_gru/w_r/Initializer/random_normal/stddev*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:[@
р
*gru_para_gru/w_r/Initializer/random_normalAdd.gru_para_gru/w_r/Initializer/random_normal/mul/gru_para_gru/w_r/Initializer/random_normal/mean*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:[@
Љ
gru_para_gru/w_r/Initializer/QrQr*gru_para_gru/w_r/Initializer/random_normal*
T0*#
_class
loc:@gru_para_gru/w_r*(
_output_shapes
:[@:@@

%gru_para_gru/w_r/Initializer/DiagPartDiagPart!gru_para_gru/w_r/Initializer/Qr:1*
_output_shapes
:@*
T0*#
_class
loc:@gru_para_gru/w_r

!gru_para_gru/w_r/Initializer/SignSign%gru_para_gru/w_r/Initializer/DiagPart*
_output_shapes
:@*
T0*#
_class
loc:@gru_para_gru/w_r
Й
 gru_para_gru/w_r/Initializer/mulMulgru_para_gru/w_r/Initializer/Qr!gru_para_gru/w_r/Initializer/Sign*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:[@
В
<gru_para_gru/w_r/Initializer/matrix_transpose/transpose/permConst*
valueB"       *#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
:
ђ
7gru_para_gru/w_r/Initializer/matrix_transpose/transpose	Transpose gru_para_gru/w_r/Initializer/mul<gru_para_gru/w_r/Initializer/matrix_transpose/transpose/perm*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[
 
*gru_para_gru/w_r/Initializer/Reshape/shapeConst*
valueB"@   [   *#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
:
т
$gru_para_gru/w_r/Initializer/ReshapeReshape7gru_para_gru/w_r/Initializer/matrix_transpose/transpose*gru_para_gru/w_r/Initializer/Reshape/shape*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_r

$gru_para_gru/w_r/Initializer/mul_1/xConst*
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes
: 
У
"gru_para_gru/w_r/Initializer/mul_1Mul$gru_para_gru/w_r/Initializer/mul_1/x$gru_para_gru/w_r/Initializer/Reshape*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r
VariableV2*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes

:@[*
shape
:@[
Ѕ
gru_para_gru/w_r/AssignAssigngru_para_gru/w_r"gru_para_gru/w_r/Initializer/mul_1*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r/readIdentitygru_para_gru/w_r*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_r
І
0gru_para_gru/w_t/Initializer/random_normal/shapeConst*
valueB"[   @   *#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes
:

/gru_para_gru/w_t/Initializer/random_normal/meanConst*
valueB
 *    *#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes
: 

1gru_para_gru/w_t/Initializer/random_normal/stddevConst*
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes
: 
ф
?gru_para_gru/w_t/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0gru_para_gru/w_t/Initializer/random_normal/shape*
T0*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes

:[@
ї
.gru_para_gru/w_t/Initializer/random_normal/mulMul?gru_para_gru/w_t/Initializer/random_normal/RandomStandardNormal1gru_para_gru/w_t/Initializer/random_normal/stddev*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:[@
р
*gru_para_gru/w_t/Initializer/random_normalAdd.gru_para_gru/w_t/Initializer/random_normal/mul/gru_para_gru/w_t/Initializer/random_normal/mean*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:[@
Љ
gru_para_gru/w_t/Initializer/QrQr*gru_para_gru/w_t/Initializer/random_normal*
T0*#
_class
loc:@gru_para_gru/w_t*(
_output_shapes
:[@:@@

%gru_para_gru/w_t/Initializer/DiagPartDiagPart!gru_para_gru/w_t/Initializer/Qr:1*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes
:@

!gru_para_gru/w_t/Initializer/SignSign%gru_para_gru/w_t/Initializer/DiagPart*
_output_shapes
:@*
T0*#
_class
loc:@gru_para_gru/w_t
Й
 gru_para_gru/w_t/Initializer/mulMulgru_para_gru/w_t/Initializer/Qr!gru_para_gru/w_t/Initializer/Sign*
_output_shapes

:[@*
T0*#
_class
loc:@gru_para_gru/w_t
В
<gru_para_gru/w_t/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       *#
_class
loc:@gru_para_gru/w_t
ђ
7gru_para_gru/w_t/Initializer/matrix_transpose/transpose	Transpose gru_para_gru/w_t/Initializer/mul<gru_para_gru/w_t/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_t
 
*gru_para_gru/w_t/Initializer/Reshape/shapeConst*
valueB"@   [   *#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes
:
т
$gru_para_gru/w_t/Initializer/ReshapeReshape7gru_para_gru/w_t/Initializer/matrix_transpose/transpose*gru_para_gru/w_t/Initializer/Reshape/shape*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

$gru_para_gru/w_t/Initializer/mul_1/xConst*
valueB
 *  ?*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes
: 
У
"gru_para_gru/w_t/Initializer/mul_1Mul$gru_para_gru/w_t/Initializer/mul_1/x$gru_para_gru/w_t/Initializer/Reshape*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

gru_para_gru/w_t
VariableV2*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes

:@[*
shape
:@[
Ѕ
gru_para_gru/w_t/AssignAssigngru_para_gru/w_t"gru_para_gru/w_t/Initializer/mul_1*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_t

gru_para_gru/w_t/readIdentitygru_para_gru/w_t*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

"gru_para_gru/b_z/Initializer/zerosConst*
valueB@*    *#
_class
loc:@gru_para_gru/b_z*
dtype0*
_output_shapes

:@

gru_para_gru/b_z
VariableV2*#
_class
loc:@gru_para_gru/b_z*
dtype0*
_output_shapes

:@*
shape
:@
Ѕ
gru_para_gru/b_z/AssignAssigngru_para_gru/b_z"gru_para_gru/b_z/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

gru_para_gru/b_z/readIdentitygru_para_gru/b_z*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

"gru_para_gru/b_r/Initializer/zerosConst*
valueB@*    *#
_class
loc:@gru_para_gru/b_r*
dtype0*
_output_shapes

:@

gru_para_gru/b_r
VariableV2*#
_class
loc:@gru_para_gru/b_r*
dtype0*
_output_shapes

:@*
shape
:@
Ѕ
gru_para_gru/b_r/AssignAssigngru_para_gru/b_r"gru_para_gru/b_r/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

gru_para_gru/b_r/readIdentitygru_para_gru/b_r*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

"gru_para_gru/b_t/Initializer/zerosConst*
valueB@*    *#
_class
loc:@gru_para_gru/b_t*
dtype0*
_output_shapes

:@

gru_para_gru/b_t
VariableV2*
shape
:@*#
_class
loc:@gru_para_gru/b_t*
dtype0*
_output_shapes

:@
Ѕ
gru_para_gru/b_t/AssignAssigngru_para_gru/b_t"gru_para_gru/b_t/Initializer/zeros*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_t

gru_para_gru/b_t/readIdentitygru_para_gru/b_t*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@
W
data_source/batch_sizePlaceholder*
dtype0*
_output_shapes
: *
shape: 

data_source/event_placeholderPlaceholder*
dtype0*+
_output_shapes
:
џџџџџџџџџ* 
shape:
џџџџџџџџџ

data_source/context_placeholderPlaceholder*
dtype0*,
_output_shapes
:
џџџџџџџџџН*!
shape:
џџџџџџџџџН
k
data_source/base_intensityPlaceholder*
shape
:*
dtype0*
_output_shapes

:
m
data_source/mutual_intensityPlaceholder*
shape
:*
dtype0*
_output_shapes

:
x
data_source/time_listPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ
*
shape:џџџџџџџџџ

W
data_source/task_indexPlaceholder*
shape: *
dtype0*
_output_shapes
: 
v
data_source/sequence_lengthPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
|
data_source/y_placeholderPlaceholder*
dtype0*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Y
data_source/zeros/mul/yConst*
value	B :@*
dtype0*
_output_shapes
: 
n
data_source/zeros/mulMuldata_source/batch_sizedata_source/zeros/mul/y*
_output_shapes
: *
T0
[
data_source/zeros/Less/yConst*
dtype0*
_output_shapes
: *
value
B :ш
p
data_source/zeros/LessLessdata_source/zeros/muldata_source/zeros/Less/y*
T0*
_output_shapes
: 
\
data_source/zeros/packed/1Const*
dtype0*
_output_shapes
: *
value	B :@

data_source/zeros/packedPackdata_source/batch_sizedata_source/zeros/packed/1*
T0*
N*
_output_shapes
:
\
data_source/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
~
data_source/zerosFilldata_source/zeros/packeddata_source/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ@
a
autoencoder/add_noise/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
{
autoencoder/add_noise/GreaterGreaterphase_indicatorautoencoder/add_noise/Greater/y*
T0*
_output_shapes
: 

!autoencoder/add_noise/cond/SwitchSwitchautoencoder/add_noise/Greaterautoencoder/add_noise/Greater*
T0
*
_output_shapes
: : 
u
#autoencoder/add_noise/cond/switch_tIdentity#autoencoder/add_noise/cond/Switch:1*
T0
*
_output_shapes
: 
s
#autoencoder/add_noise/cond/switch_fIdentity!autoencoder/add_noise/cond/Switch*
_output_shapes
: *
T0

n
"autoencoder/add_noise/cond/pred_idIdentityautoencoder/add_noise/Greater*
T0
*
_output_shapes
: 
ѕ
#autoencoder/add_noise/cond/Switch_1Switchdata_source/context_placeholder"autoencoder/add_noise/cond/pred_id*
T0*2
_class(
&$loc:@data_source/context_placeholder*D
_output_shapes2
0:
џџџџџџџџџН:
џџџџџџџџџН

'autoencoder/add_noise/cond/dropout/rateConst$^autoencoder/add_noise/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL>

(autoencoder/add_noise/cond/dropout/ShapeShape/autoencoder/add_noise/cond/dropout/Shape/Switch*
_output_shapes
:*
T0

/autoencoder/add_noise/cond/dropout/Shape/SwitchSwitchdata_source/context_placeholder"autoencoder/add_noise/cond/pred_id*
T0*2
_class(
&$loc:@data_source/context_placeholder*D
_output_shapes2
0:
џџџџџџџџџН:
џџџџџџџџџН
 
5autoencoder/add_noise/cond/dropout/random_uniform/minConst$^autoencoder/add_noise/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
 
5autoencoder/add_noise/cond/dropout/random_uniform/maxConst$^autoencoder/add_noise/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *  ?
О
?autoencoder/add_noise/cond/dropout/random_uniform/RandomUniformRandomUniform(autoencoder/add_noise/cond/dropout/Shape*
dtype0*,
_output_shapes
:
џџџџџџџџџН*
T0
Ы
5autoencoder/add_noise/cond/dropout/random_uniform/subSub5autoencoder/add_noise/cond/dropout/random_uniform/max5autoencoder/add_noise/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
ы
5autoencoder/add_noise/cond/dropout/random_uniform/mulMul?autoencoder/add_noise/cond/dropout/random_uniform/RandomUniform5autoencoder/add_noise/cond/dropout/random_uniform/sub*,
_output_shapes
:
џџџџџџџџџН*
T0
н
1autoencoder/add_noise/cond/dropout/random_uniformAdd5autoencoder/add_noise/cond/dropout/random_uniform/mul5autoencoder/add_noise/cond/dropout/random_uniform/min*,
_output_shapes
:
џџџџџџџџџН*
T0

(autoencoder/add_noise/cond/dropout/sub/xConst$^autoencoder/add_noise/cond/switch_f*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ё
&autoencoder/add_noise/cond/dropout/subSub(autoencoder/add_noise/cond/dropout/sub/x'autoencoder/add_noise/cond/dropout/rate*
T0*
_output_shapes
: 

,autoencoder/add_noise/cond/dropout/truediv/xConst$^autoencoder/add_noise/cond/switch_f*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ќ
*autoencoder/add_noise/cond/dropout/truedivRealDiv,autoencoder/add_noise/cond/dropout/truediv/x&autoencoder/add_noise/cond/dropout/sub*
_output_shapes
: *
T0
в
/autoencoder/add_noise/cond/dropout/GreaterEqualGreaterEqual1autoencoder/add_noise/cond/dropout/random_uniform'autoencoder/add_noise/cond/dropout/rate*
T0*,
_output_shapes
:
џџџџџџџџџН
С
&autoencoder/add_noise/cond/dropout/mulMul/autoencoder/add_noise/cond/dropout/Shape/Switch*autoencoder/add_noise/cond/dropout/truediv*
T0*,
_output_shapes
:
џџџџџџџџџН
І
'autoencoder/add_noise/cond/dropout/CastCast/autoencoder/add_noise/cond/dropout/GreaterEqual*

SrcT0
*,
_output_shapes
:
џџџџџџџџџН*

DstT0
З
(autoencoder/add_noise/cond/dropout/mul_1Mul&autoencoder/add_noise/cond/dropout/mul'autoencoder/add_noise/cond/dropout/Cast*
T0*,
_output_shapes
:
џџџџџџџџџН
М
 autoencoder/add_noise/cond/MergeMerge(autoencoder/add_noise/cond/dropout/mul_1%autoencoder/add_noise/cond/Switch_1:1*
T0*
N*.
_output_shapes
:
џџџџџџџџџН: 
Р
=auto_encoder_parameter/weight/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"Н      *0
_class&
$"loc:@auto_encoder_parameter/weight
Г
<auto_encoder_parameter/weight/Initializer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@auto_encoder_parameter/weight
Е
>auto_encoder_parameter/weight/Initializer/random_normal/stddevConst*
valueB
 *  ?*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
: 

Lauto_encoder_parameter/weight/Initializer/random_normal/RandomStandardNormalRandomStandardNormal=auto_encoder_parameter/weight/Initializer/random_normal/shape*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
:	Н
Ќ
;auto_encoder_parameter/weight/Initializer/random_normal/mulMulLauto_encoder_parameter/weight/Initializer/random_normal/RandomStandardNormal>auto_encoder_parameter/weight/Initializer/random_normal/stddev*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н

7auto_encoder_parameter/weight/Initializer/random_normalAdd;auto_encoder_parameter/weight/Initializer/random_normal/mul<auto_encoder_parameter/weight/Initializer/random_normal/mean*
_output_shapes
:	Н*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight
б
,auto_encoder_parameter/weight/Initializer/QrQr7auto_encoder_parameter/weight/Initializer/random_normal*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*)
_output_shapes
:	Н:
Х
2auto_encoder_parameter/weight/Initializer/DiagPartDiagPart.auto_encoder_parameter/weight/Initializer/Qr:1*
_output_shapes
:*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight
С
.auto_encoder_parameter/weight/Initializer/SignSign2auto_encoder_parameter/weight/Initializer/DiagPart*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:
ю
-auto_encoder_parameter/weight/Initializer/mulMul,auto_encoder_parameter/weight/Initializer/Qr.auto_encoder_parameter/weight/Initializer/Sign*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
К
7auto_encoder_parameter/weight/Initializer/Reshape/shapeConst*
valueB"Н      *0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
:

1auto_encoder_parameter/weight/Initializer/ReshapeReshape-auto_encoder_parameter/weight/Initializer/mul7auto_encoder_parameter/weight/Initializer/Reshape/shape*
_output_shapes
:	Н*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight
Ј
1auto_encoder_parameter/weight/Initializer/mul_1/xConst*
valueB
 *  ?*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
: 
ј
/auto_encoder_parameter/weight/Initializer/mul_1Mul1auto_encoder_parameter/weight/Initializer/mul_1/x1auto_encoder_parameter/weight/Initializer/Reshape*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Ё
auto_encoder_parameter/weight
VariableV2*
dtype0*
_output_shapes
:	Н*
shape:	Н*0
_class&
$"loc:@auto_encoder_parameter/weight
к
$auto_encoder_parameter/weight/AssignAssignauto_encoder_parameter/weight/auto_encoder_parameter/weight/Initializer/mul_1*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Љ
"auto_encoder_parameter/weight/readIdentityauto_encoder_parameter/weight*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
З
autoencoder/ae/unstackUnpack autoencoder/add_noise/cond/Merge*	
num
*
T0*о
_output_shapesЫ
Ш:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН

autoencoder/ae/MatMulMatMulautoencoder/ae/unstack"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
j
autoencoder/ae/SigmoidSigmoidautoencoder/ae/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_1MatMulautoencoder/ae/unstack:1"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_1Sigmoidautoencoder/ae/MatMul_1*'
_output_shapes
:џџџџџџџџџ*
T0

autoencoder/ae/MatMul_2MatMulautoencoder/ae/unstack:2"auto_encoder_parameter/weight/read*'
_output_shapes
:џџџџџџџџџ*
T0
n
autoencoder/ae/Sigmoid_2Sigmoidautoencoder/ae/MatMul_2*'
_output_shapes
:џџџџџџџџџ*
T0

autoencoder/ae/MatMul_3MatMulautoencoder/ae/unstack:3"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_3Sigmoidautoencoder/ae/MatMul_3*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_4MatMulautoencoder/ae/unstack:4"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_4Sigmoidautoencoder/ae/MatMul_4*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_5MatMulautoencoder/ae/unstack:5"auto_encoder_parameter/weight/read*'
_output_shapes
:џџџџџџџџџ*
T0
n
autoencoder/ae/Sigmoid_5Sigmoidautoencoder/ae/MatMul_5*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_6MatMulautoencoder/ae/unstack:6"auto_encoder_parameter/weight/read*'
_output_shapes
:џџџџџџџџџ*
T0
n
autoencoder/ae/Sigmoid_6Sigmoidautoencoder/ae/MatMul_6*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_7MatMulautoencoder/ae/unstack:7"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_7Sigmoidautoencoder/ae/MatMul_7*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_8MatMulautoencoder/ae/unstack:8"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_8Sigmoidautoencoder/ae/MatMul_8*
T0*'
_output_shapes
:џџџџџџџџџ

autoencoder/ae/MatMul_9MatMulautoencoder/ae/unstack:9"auto_encoder_parameter/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
n
autoencoder/ae/Sigmoid_9Sigmoidautoencoder/ae/MatMul_9*'
_output_shapes
:џџџџџџџџџ*
T0
о
autoencoder/ae/packedPackautoencoder/ae/Sigmoidautoencoder/ae/Sigmoid_1autoencoder/ae/Sigmoid_2autoencoder/ae/Sigmoid_3autoencoder/ae/Sigmoid_4autoencoder/ae/Sigmoid_5autoencoder/ae/Sigmoid_6autoencoder/ae/Sigmoid_7autoencoder/ae/Sigmoid_8autoencoder/ae/Sigmoid_9*
N
*+
_output_shapes
:
џџџџџџџџџ*
T0
X
hawkes_rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
Њ
hawkes_rnn/concatConcatV2autoencoder/ae/packeddata_source/event_placeholderhawkes_rnn/concat/axis*
T0*
N*+
_output_shapes
:
џџџџџџџџџ
Г
7hawkes_rnn/trans_decay/Initializer/random_uniform/shapeConst*
valueB"   @   *)
_class
loc:@hawkes_rnn/trans_decay*
dtype0*
_output_shapes
:
Ѕ
5hawkes_rnn/trans_decay/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *О*)
_class
loc:@hawkes_rnn/trans_decay
Ѕ
5hawkes_rnn/trans_decay/Initializer/random_uniform/maxConst*
valueB
 *>*)
_class
loc:@hawkes_rnn/trans_decay*
dtype0*
_output_shapes
: 
ъ
?hawkes_rnn/trans_decay/Initializer/random_uniform/RandomUniformRandomUniform7hawkes_rnn/trans_decay/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*
T0*)
_class
loc:@hawkes_rnn/trans_decay
і
5hawkes_rnn/trans_decay/Initializer/random_uniform/subSub5hawkes_rnn/trans_decay/Initializer/random_uniform/max5hawkes_rnn/trans_decay/Initializer/random_uniform/min*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes
: 

5hawkes_rnn/trans_decay/Initializer/random_uniform/mulMul?hawkes_rnn/trans_decay/Initializer/random_uniform/RandomUniform5hawkes_rnn/trans_decay/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*)
_class
loc:@hawkes_rnn/trans_decay
њ
1hawkes_rnn/trans_decay/Initializer/random_uniformAdd5hawkes_rnn/trans_decay/Initializer/random_uniform/mul5hawkes_rnn/trans_decay/Initializer/random_uniform/min*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@

hawkes_rnn/trans_decay
VariableV2*
shape
:@*)
_class
loc:@hawkes_rnn/trans_decay*
dtype0*
_output_shapes

:@
Ц
hawkes_rnn/trans_decay/AssignAssignhawkes_rnn/trans_decay1hawkes_rnn/trans_decay/Initializer/random_uniform*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@
h
hawkes_rnn/trans_decay/readIdentityhawkes_rnn/trans_decay*
T0*
_output_shapes

:@

*hawkes_rnn/sequence_length/sequence_lengthIdentitydata_source/sequence_length*
T0*#
_output_shapes
:џџџџџџџџџ
h
'hawkes_rnn/input_shape_hawkes_rnn/ShapeShapehawkes_rnn/concat*
_output_shapes
:*
T0

5hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

7hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

7hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
з
/hawkes_rnn/input_shape_hawkes_rnn/strided_sliceStridedSlice'hawkes_rnn/input_shape_hawkes_rnn/Shape5hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stack7hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stack_17hawkes_rnn/input_shape_hawkes_rnn/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

7hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:

9hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
1hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1StridedSlice'hawkes_rnn/input_shape_hawkes_rnn/Shape7hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stack9hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stack_19hawkes_rnn/input_shape_hawkes_rnn/strided_slice_1/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
r
0hawkes_rnn/prepare_ops_hawkes_rnn/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
,hawkes_rnn/prepare_ops_hawkes_rnn/ExpandDims
ExpandDims1hawkes_rnn/input_shape_hawkes_rnn/strided_slice_10hawkes_rnn/prepare_ops_hawkes_rnn/ExpandDims/dim*
T0*
_output_shapes
:
q
'hawkes_rnn/prepare_ops_hawkes_rnn/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
o
-hawkes_rnn/prepare_ops_hawkes_rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ш
(hawkes_rnn/prepare_ops_hawkes_rnn/concatConcatV2,hawkes_rnn/prepare_ops_hawkes_rnn/ExpandDims'hawkes_rnn/prepare_ops_hawkes_rnn/Const-hawkes_rnn/prepare_ops_hawkes_rnn/concat/axis*
N*
_output_shapes
:*
T0
r
-hawkes_rnn/prepare_ops_hawkes_rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
К
'hawkes_rnn/prepare_ops_hawkes_rnn/zerosFill(hawkes_rnn/prepare_ops_hawkes_rnn/concat-hawkes_rnn/prepare_ops_hawkes_rnn/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ@
h
&hawkes_rnn/prepare_ops_hawkes_rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 

1hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayTensorArrayV3/hawkes_rnn/input_shape_hawkes_rnn/strided_slice*
dtype0*
_output_shapes

:: *$
element_shape:џџџџџџџџџ@*
identical_element_shapes(*5
tensor_array_name hawkes_rnn/hawkes_rnn_1/output

3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1TensorArrayV3/hawkes_rnn/input_shape_hawkes_rnn/strided_slice*$
element_shape:џџџџџџџџџ*4
tensor_array_namehawkes_rnn/hawkes_rnn_1/input*
identical_element_shapes(*
dtype0*
_output_shapes

:: 

>hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/ShapeShapehawkes_rnn/concat*
_output_shapes
:*
T0

Lhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Nhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Nhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Fhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_sliceStridedSlice>hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/ShapeLhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stackNhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stack_1Nhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 

Dhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

Dhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Р
>hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/rangeRangeDhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/range/startFhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/strided_sliceDhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/range/delta*#
_output_shapes
:џџџџџџџџџ
ў
`hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV33hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1>hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/rangehawkes_rnn/concat5hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1:1*
T0*$
_class
loc:@hawkes_rnn/concat*
_output_shapes
: 
q
/hawkes_rnn/hawkes_rnn_1/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
ж
#hawkes_rnn/hawkes_rnn_1/while/EnterEnter/hawkes_rnn/hawkes_rnn_1/while/iteration_counter*
T0*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Я
%hawkes_rnn/hawkes_rnn_1/while/Enter_1Enter&hawkes_rnn/prepare_ops_hawkes_rnn/time*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0
м
%hawkes_rnn/hawkes_rnn_1/while/Enter_2Enter3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray:1*
T0*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ы
%hawkes_rnn/hawkes_rnn_1/while/Enter_3Enterdata_source/zeros*
T0*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Њ
#hawkes_rnn/hawkes_rnn_1/while/MergeMerge#hawkes_rnn/hawkes_rnn_1/while/Enter+hawkes_rnn/hawkes_rnn_1/while/NextIteration*
T0*
N*
_output_shapes
: : 
А
%hawkes_rnn/hawkes_rnn_1/while/Merge_1Merge%hawkes_rnn/hawkes_rnn_1/while/Enter_1-hawkes_rnn/hawkes_rnn_1/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
А
%hawkes_rnn/hawkes_rnn_1/while/Merge_2Merge%hawkes_rnn/hawkes_rnn_1/while/Enter_2-hawkes_rnn/hawkes_rnn_1/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
С
%hawkes_rnn/hawkes_rnn_1/while/Merge_3Merge%hawkes_rnn/hawkes_rnn_1/while/Enter_3-hawkes_rnn/hawkes_rnn_1/while/NextIteration_3*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 

"hawkes_rnn/hawkes_rnn_1/while/LessLess#hawkes_rnn/hawkes_rnn_1/while/Merge(hawkes_rnn/hawkes_rnn_1/while/Less/Enter*
T0*
_output_shapes
: 
ю
(hawkes_rnn/hawkes_rnn_1/while/Less/EnterEnter/hawkes_rnn/input_shape_hawkes_rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

$hawkes_rnn/hawkes_rnn_1/while/Less_1Less%hawkes_rnn/hawkes_rnn_1/while/Merge_1(hawkes_rnn/hawkes_rnn_1/while/Less/Enter*
T0*
_output_shapes
: 

(hawkes_rnn/hawkes_rnn_1/while/LogicalAnd
LogicalAnd"hawkes_rnn/hawkes_rnn_1/while/Less$hawkes_rnn/hawkes_rnn_1/while/Less_1*
_output_shapes
: 
t
&hawkes_rnn/hawkes_rnn_1/while/LoopCondLoopCond(hawkes_rnn/hawkes_rnn_1/while/LogicalAnd*
_output_shapes
: 
ж
$hawkes_rnn/hawkes_rnn_1/while/SwitchSwitch#hawkes_rnn/hawkes_rnn_1/while/Merge&hawkes_rnn/hawkes_rnn_1/while/LoopCond*
T0*6
_class,
*(loc:@hawkes_rnn/hawkes_rnn_1/while/Merge*
_output_shapes
: : 
м
&hawkes_rnn/hawkes_rnn_1/while/Switch_1Switch%hawkes_rnn/hawkes_rnn_1/while/Merge_1&hawkes_rnn/hawkes_rnn_1/while/LoopCond*
T0*8
_class.
,*loc:@hawkes_rnn/hawkes_rnn_1/while/Merge_1*
_output_shapes
: : 
м
&hawkes_rnn/hawkes_rnn_1/while/Switch_2Switch%hawkes_rnn/hawkes_rnn_1/while/Merge_2&hawkes_rnn/hawkes_rnn_1/while/LoopCond*
T0*8
_class.
,*loc:@hawkes_rnn/hawkes_rnn_1/while/Merge_2*
_output_shapes
: : 
ў
&hawkes_rnn/hawkes_rnn_1/while/Switch_3Switch%hawkes_rnn/hawkes_rnn_1/while/Merge_3&hawkes_rnn/hawkes_rnn_1/while/LoopCond*
T0*8
_class.
,*loc:@hawkes_rnn/hawkes_rnn_1/while/Merge_3*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
{
&hawkes_rnn/hawkes_rnn_1/while/IdentityIdentity&hawkes_rnn/hawkes_rnn_1/while/Switch:1*
T0*
_output_shapes
: 

(hawkes_rnn/hawkes_rnn_1/while/Identity_1Identity(hawkes_rnn/hawkes_rnn_1/while/Switch_1:1*
T0*
_output_shapes
: 

(hawkes_rnn/hawkes_rnn_1/while/Identity_2Identity(hawkes_rnn/hawkes_rnn_1/while/Switch_2:1*
T0*
_output_shapes
: 

(hawkes_rnn/hawkes_rnn_1/while/Identity_3Identity(hawkes_rnn/hawkes_rnn_1/while/Switch_3:1*
T0*'
_output_shapes
:џџџџџџџџџ@

#hawkes_rnn/hawkes_rnn_1/while/add/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

!hawkes_rnn/hawkes_rnn_1/while/addAdd&hawkes_rnn/hawkes_rnn_1/while/Identity#hawkes_rnn/hawkes_rnn_1/while/add/y*
T0*
_output_shapes
: 
В
9hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3TensorArrayReadV3?hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter(hawkes_rnn/hawkes_rnn_1/while/Identity_1Ahawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:џџџџџџџџџ

?hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/EnterEnter3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
И
Ahawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1Enter`hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
и
4hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqualGreaterEqual(hawkes_rnn/hawkes_rnn_1/while/Identity_1:hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual/Enter*
T0*#
_output_shapes
:џџџџџџџџџ

:hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual/EnterEnter*hawkes_rnn/sequence_length/sequence_length*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:џџџџџџџџџ*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ћ
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat/axisConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Љ
;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concatConcatV29hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3(hawkes_rnn/hawkes_rnn_1/while/Identity_3@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat/axis*
N*'
_output_shapes
:џџџџџџџџџ[*
T0
Н
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose/permConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:
џ
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose	Transpose;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concatChawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose/perm*
T0*'
_output_shapes
:[џџџџџџџџџ
њ
;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMulMatMulAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose*'
_output_shapes
:@џџџџџџџџџ*
T0
ѕ
Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/EnterEntergru_para_gru/w_z/read*
parallel_iterations *
_output_shapes

:@[*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
ю
8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/addAdd;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter*
T0*'
_output_shapes
:@џџџџџџџџџ
ђ
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/EnterEntergru_para_gru/b_z/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Г
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/SigmoidSigmoid8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add*'
_output_shapes
:@џџџџџџџџџ*
T0
П
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1/permConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1	Transpose<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/SigmoidEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1/perm*
T0*'
_output_shapes
:џџџџџџџџџ@
ў
=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1MatMulChawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose*'
_output_shapes
:@џџџџџџџџџ*
T0
ї
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/EnterEntergru_para_gru/w_r/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@[*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
є
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1Add=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter*
T0*'
_output_shapes
:@џџџџџџџџџ
є
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/EnterEntergru_para_gru/b_r/read*
parallel_iterations *
_output_shapes

:@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
З
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1Sigmoid:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1*
T0*'
_output_shapes
:@џџџџџџџџџ
П
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2/permConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2	Transpose>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2/perm*
T0*'
_output_shapes
:џџџџџџџџџ@
н
8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mulMul@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2(hawkes_rnn/hawkes_rnn_1/while/Identity_3*'
_output_shapes
:џџџџџџџџџ@*
T0
­
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1/axisConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Н
=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1ConcatV29hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV38hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mulBhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1/axis*
T0*
N*'
_output_shapes
:џџџџџџџџџ[
П
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3/permConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB"       *
dtype0*
_output_shapes
:

@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3	Transpose=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3/perm*
T0*'
_output_shapes
:[џџџџџџџџџ

=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2MatMulChawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3*
T0*'
_output_shapes
:@џџџџџџџџџ
ї
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/EnterEntergru_para_gru/w_t/read*
parallel_iterations *
_output_shapes

:@[*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
є
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2Add=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter*
T0*'
_output_shapes
:@џџџџџџџџџ
є
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/EnterEntergru_para_gru/b_t/read*
parallel_iterations *
_output_shapes

:@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Џ
9hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/TanhTanh:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2*
T0*'
_output_shapes
:@џџџџџџџџџ
П
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4/permConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
dtype0*
_output_shapes
:*
valueB"       

@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4	Transpose9hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/TanhEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4/perm*
T0*'
_output_shapes
:џџџџџџџџџ@
Љ
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
ь
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/GreaterGreaterBhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/Enter>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/y*
T0*
_output_shapes
: 
ш
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/EnterEnterphase_indicator*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
щ
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/SwitchSwitch<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater*
T0
*
_output_shapes
: : 
Г
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_tIdentityBhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch:1*
_output_shapes
: *
T0

Б
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_fIdentity@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch*
T0
*
_output_shapes
: 
Ќ
Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_idIdentity<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater*
T0
*
_output_shapes
: 
ы
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1Switch@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4
а
Fhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/rateConstC^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f*
valueB
 *ЭЬL>*
dtype0*
_output_shapes
: 
Х
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/ShapeShapeNhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch*
T0*
_output_shapes
:
ї
Nhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/SwitchSwitch@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
о
Thawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/minConstC^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
о
Thawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/maxConstC^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ї
^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/RandomUniformRandomUniformGhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape*
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ@
Ј
Thawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/subSubThawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/maxThawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
У
Thawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/mulMul^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/RandomUniformThawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ@
Е
Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniformAddThawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/mulThawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ@
б
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub/xConstC^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ў
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/subSubGhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub/xFhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/rate*
T0*
_output_shapes
: 
е
Khawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv/xConstC^hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truedivRealDivKhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv/xEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub*
_output_shapes
: *
T0
Њ
Nhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/GreaterEqualGreaterEqualPhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniformFhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/rate*'
_output_shapes
:џџџџџџџџџ@*
T0

Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mulMulNhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/SwitchIhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv*
T0*'
_output_shapes
:џџџџџџџџџ@
п
Fhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/CastCastNhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/GreaterEqual*

SrcT0
*'
_output_shapes
:џџџџџџџџџ@*

DstT0

Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1MulEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mulFhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast*
T0*'
_output_shapes
:џџџџџџџџџ@

?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/MergeMergeGhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:1*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
Ј
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub/xConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
я
8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/subSub:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub/x@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1*
T0*'
_output_shapes
:џџџџџџџџџ@
з
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1Mul8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub(hawkes_rnn/hawkes_rnn_1/while/Identity_3*'
_output_shapes
:џџџџџџџџџ@*
T0
і
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2Mul@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge*
T0*'
_output_shapes
:џџџџџџџџџ@
ы
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3Add:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2*
T0*'
_output_shapes
:џџџџџџџџџ@
с
.hawkes_rnn/hawkes_rnn_1/while/new_state/SelectSelect4hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual4hawkes_rnn/hawkes_rnn_1/while/new_state/Select/Enter:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*
T0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*'
_output_shapes
:џџџџџџџџџ@
в
4hawkes_rnn/hawkes_rnn_1/while/new_state/Select/EnterEnter'hawkes_rnn/prepare_ops_hawkes_rnn/zeros*'
_output_shapes
:џџџџџџџџџ@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*
parallel_iterations *
is_constant(
з
0hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1Select4hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual(hawkes_rnn/hawkes_rnn_1/while/Identity_3:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*
T0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*'
_output_shapes
:џџџџџџџџџ@
ћ
Nhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/ShapeShapeThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape/Enter'^hawkes_rnn/hawkes_rnn_1/while/Identity*
T0*
_output_shapes
:

Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape/EnterEnterdata_source/time_list*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ
*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Я
\hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stackConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB: *
dtype0*
_output_shapes
:
б
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_1Const'^hawkes_rnn/hawkes_rnn_1/while/Identity*
dtype0*
_output_shapes
:*
valueB:
б
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_2Const'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:

Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_sliceStridedSliceNhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape\hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_1^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
П
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mul/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ј
Rhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mulMulVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_sliceThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mul/y*
T0*
_output_shapes
: 
С
Uhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Less/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value
B :ш*
dtype0*
_output_shapes
: 
Ї
Shawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/LessLessRhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mulUhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Less/y*
T0*
_output_shapes
: 
Т
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packed/1Const'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
М
Uhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packedPackVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_sliceWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packed/1*
T0*
N*
_output_shapes
:
Т
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/ConstConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
Nhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zerosFillUhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packedThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Й
Nhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

Lhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/addAddRhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/EnterNhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/y*
_output_shapes
: *
T0
џ
Rhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/EnterEnterdata_source/task_index*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stackPackRhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/Enter'^hawkes_rnn/hawkes_rnn_1/while/Identity*
T0*
N*
_output_shapes
:
ф
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_1PackLhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add*
T0*
N*
_output_shapes
:
г
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_2Const'^hawkes_rnn/hawkes_rnn_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
Ж
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1StridedSlice^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/Enter^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_1`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
:

^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/EnterEnterdata_source/base_intensity*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Б
Nhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add_1AddNhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zerosXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1*
T0*'
_output_shapes
:џџџџџџџџџ
Л
Phawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/ConstConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
dtype0*
_output_shapes
: *
value	B : 
Ю
chawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterationsConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :d*
dtype0*
_output_shapes
: 
Э
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/iteration_counterConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
я
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/EnterEnterbhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/iteration_counter*
T0*
parallel_iterations *
_output_shapes
: *n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
п
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_1EnterPhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/Const*
T0*
parallel_iterations *
_output_shapes
: *n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
ю
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_2EnterNhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add_1*
T0*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ*n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
У
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/MergeMergeVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration*
T0*
N*
_output_shapes
: : 
Щ
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1MergeXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_1`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_1*
N*
_output_shapes
: : *
T0
к
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_2MergeXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_2`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ: 
Г
Uhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LessLessVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less/Enter*
T0*
_output_shapes
: 

[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less/EnterEnterchawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
Л
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1LessXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1*
_output_shapes
: *
T0

]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/EnterEnter&hawkes_rnn/prepare_ops_hawkes_rnn/time*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1Enter]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
Б
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LogicalAnd
LogicalAndUhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LessWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1*
_output_shapes
: 
к
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCondLoopCond[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LogicalAnd*
_output_shapes
: 
Ђ
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/SwitchSwitchVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/MergeYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCond*
T0*i
_class_
][loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge*
_output_shapes
: : 
Ј
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_1SwitchXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCond*
T0*k
_classa
_]loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1*
_output_shapes
: : 
Ъ
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_2SwitchXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_2Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCond*
T0*k
_classa
_]loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_2*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
с
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/IdentityIdentityYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch:1*
T0*
_output_shapes
: 
х
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1Identity[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_1:1*
T0*
_output_shapes
: 
і
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_2Identity[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_2:1*
T0*'
_output_shapes
:џџџџџџџџџ
є
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Џ
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/addAddYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/IdentityVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add/y*
T0*
_output_shapes
: 
і
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Й
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1Add_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1/y*
T0*
_output_shapes
: 

fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack/0ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
у
dhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stackPackfhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack/0_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1*
T0*
N*
_output_shapes
:

hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1/0ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
о
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1Packhhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1/0Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1*
T0*
N*
_output_shapes
:

fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_2ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
valueB"      *
dtype0*
_output_shapes
:
џ
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_sliceStridedSlicedhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/Enterdhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stackfhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:џџџџџџџџџ*
Index0*
T0

dhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/EnterEnterThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape/Enter*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ
*n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
і
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Е
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2Add[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2/y*
_output_shapes
: *
T0

hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack/0ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
у
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stackPackhhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack/0[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1*
T0*
N*
_output_shapes
:

jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1/0ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
dtype0*
_output_shapes
: *
value	B : 
т
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1Packjhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1/0Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2*
N*
_output_shapes
:*
T0

hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_2ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
valueB"      *
dtype0*
_output_shapes
:

`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1StridedSlicedhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/Enterfhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stackhhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_2*
end_mask*#
_output_shapes
:џџџџџџџџџ*
T0*
Index0*
shrink_axis_mask*

begin_mask
Ы
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/subSub^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1*
T0*#
_output_shapes
:џџџџџџџџџ
ѓ
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ToFloatCastThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/sub*

SrcT0*#
_output_shapes
:џџџџџџџџџ*

DstT0
ї
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *ІФЛ
Л
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mulMulXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ToFloatVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul/y*
T0*#
_output_shapes
:џџџџџџџџџ
п
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpExpThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul*
T0*#
_output_shapes
:џџџџџџџџџ
§
_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims/dimConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
в
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims
ExpandDimsThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exp_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims/dim*'
_output_shapes
:џџџџџџџџџ*
T0
і
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ж
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3Add\hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/EnterXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/y*
_output_shapes
: *
T0
ј
\hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/EnterEnterRhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/Enter*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
ж
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stackPack\hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/EnterZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
T0*
N*
_output_shapes
:
і
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_1PackVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3*
T0*
N*
_output_shapes
:

hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_2ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
valueB:*
dtype0*
_output_shapes
:
р
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2StridedSlicehhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter_1fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stackhhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_1hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
:
Ё
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/EnterEnterdata_source/mutual_intensity*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
 
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter_1Enterfhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:*n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
џ
ahawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1/dimConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
dtype0*
_output_shapes
: *
value	B :
й
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1
ExpandDims`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2ahawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1/dim*
T0*
_output_shapes

:
і
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Е
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4Add[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4/y*
T0*
_output_shapes
: 
љ
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stackPack[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1*
T0*
N*
_output_shapes
:
і
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_1PackVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4*
T0*
N*
_output_shapes
:

hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_2ConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
valueB:*
dtype0*
_output_shapes
:
э
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3StridedSlicehhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter_1fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stackhhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_1hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_2*
shrink_axis_mask*
T0*
Index0*'
_output_shapes
:џџџџџџџџџ
Џ
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/EnterEnterdata_source/event_placeholder*
T0*
is_constant(*
parallel_iterations *+
_output_shapes
:
џџџџџџџџџ*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
­
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter_1Enterfhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter*
T0*
is_constant(*
parallel_iterations *+
_output_shapes
:
џџџџџџџџџ*n

frame_name`^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context
д
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/MatMulMatMul`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1*'
_output_shapes
:џџџџџџџџџ*
T0
Х
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul_1MulWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/MatMul[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims*
T0*'
_output_shapes
:џџџџџџџџџ
Ф
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_5Add[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_2Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul_1*
T0*'
_output_shapes
:џџџџџџџџџ
і
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6/yConstZ^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Е
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6Add[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6/y*
T0*
_output_shapes
: 
ц
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIterationNextIterationThawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add*
T0*
_output_shapes
: 
ъ
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_1NextIterationVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6*
T0*
_output_shapes
: 
ћ
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_2NextIterationVhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_5*
T0*'
_output_shapes
:џџџџџџџџџ
з
Uhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExitExitWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch*
_output_shapes
: *
T0
л
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_1ExitYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_1*
T0*
_output_shapes
: 
ь
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2ExitYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_2*
T0*'
_output_shapes
:џџџџџџџџџ
З
5hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqualGreaterEqual]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter:hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual/Enter'^hawkes_rnn/hawkes_rnn_1/while/Identity*
T0*#
_output_shapes
:џџџџџџџџџ
№
,hawkes_rnn/hawkes_rnn_1/while/decay_node/mulMul0hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2*
T0*'
_output_shapes
:џџџџџџџџџ@
Ы
.hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1Mul,hawkes_rnn/hawkes_rnn_1/while/decay_node/mul4hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter*
T0*'
_output_shapes
:џџџџџџџџџ@
ю
4hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/EnterEnterhawkes_rnn/trans_decay/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

/hawkes_rnn/hawkes_rnn_1/while/decay_node/SelectSelect5hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqual.hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_10hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ@
Ў
Nhawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Thawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3/Enter(hawkes_rnn/hawkes_rnn_1/while/Identity_1.hawkes_rnn/hawkes_rnn_1/while/new_state/Select(hawkes_rnn/hawkes_rnn_1/while/Identity_2*
_output_shapes
: *
T0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3
я
Thawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3/EnterEnter1hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3

%hawkes_rnn/hawkes_rnn_1/while/add_1/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

#hawkes_rnn/hawkes_rnn_1/while/add_1Add(hawkes_rnn/hawkes_rnn_1/while/Identity_1%hawkes_rnn/hawkes_rnn_1/while/add_1/y*
T0*
_output_shapes
: 

+hawkes_rnn/hawkes_rnn_1/while/NextIterationNextIteration!hawkes_rnn/hawkes_rnn_1/while/add*
T0*
_output_shapes
: 

-hawkes_rnn/hawkes_rnn_1/while/NextIteration_1NextIteration#hawkes_rnn/hawkes_rnn_1/while/add_1*
T0*
_output_shapes
: 
Џ
-hawkes_rnn/hawkes_rnn_1/while/NextIteration_2NextIterationNhawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Ё
-hawkes_rnn/hawkes_rnn_1/while/NextIteration_3NextIteration/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select*
T0*'
_output_shapes
:џџџџџџџџџ@
q
"hawkes_rnn/hawkes_rnn_1/while/ExitExit$hawkes_rnn/hawkes_rnn_1/while/Switch*
T0*
_output_shapes
: 
u
$hawkes_rnn/hawkes_rnn_1/while/Exit_1Exit&hawkes_rnn/hawkes_rnn_1/while/Switch_1*
T0*
_output_shapes
: 
u
$hawkes_rnn/hawkes_rnn_1/while/Exit_2Exit&hawkes_rnn/hawkes_rnn_1/while/Switch_2*
T0*
_output_shapes
: 

$hawkes_rnn/hawkes_rnn_1/while/Exit_3Exit&hawkes_rnn/hawkes_rnn_1/while/Switch_3*
T0*'
_output_shapes
:џџџџџџџџџ@

:hawkes_rnn/hawkes_rnn_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV31hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray$hawkes_rnn/hawkes_rnn_1/while/Exit_2*D
_class:
86loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray*
_output_shapes
: 
М
4hawkes_rnn/hawkes_rnn_1/TensorArrayStack/range/startConst*
value	B : *D
_class:
86loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray*
dtype0*
_output_shapes
: 
М
4hawkes_rnn/hawkes_rnn_1/TensorArrayStack/range/deltaConst*
value	B :*D
_class:
86loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray*
dtype0*
_output_shapes
: 
Ъ
.hawkes_rnn/hawkes_rnn_1/TensorArrayStack/rangeRange4hawkes_rnn/hawkes_rnn_1/TensorArrayStack/range/start:hawkes_rnn/hawkes_rnn_1/TensorArrayStack/TensorArraySizeV34hawkes_rnn/hawkes_rnn_1/TensorArrayStack/range/delta*#
_output_shapes
:џџџџџџџџџ*D
_class:
86loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray

<hawkes_rnn/hawkes_rnn_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV31hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray.hawkes_rnn/hawkes_rnn_1/TensorArrayStack/range$hawkes_rnn/hawkes_rnn_1/while/Exit_2*$
element_shape:џџџџџџџџџ@*D
_class:
86loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray*
dtype0*+
_output_shapes
:
џџџџџџџџџ@
g
hawkes_rnn/hawkes_rnn_1/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Њ
2output_para/weight/Initializer/random_normal/shapeConst*
valueB"@      *%
_class
loc:@output_para/weight*
dtype0*
_output_shapes
:

1output_para/weight/Initializer/random_normal/meanConst*
valueB
 *    *%
_class
loc:@output_para/weight*
dtype0*
_output_shapes
: 

3output_para/weight/Initializer/random_normal/stddevConst*
valueB
 *  ?*%
_class
loc:@output_para/weight*
dtype0*
_output_shapes
: 
ъ
Aoutput_para/weight/Initializer/random_normal/RandomStandardNormalRandomStandardNormal2output_para/weight/Initializer/random_normal/shape*
T0*%
_class
loc:@output_para/weight*
dtype0*
_output_shapes

:@
џ
0output_para/weight/Initializer/random_normal/mulMulAoutput_para/weight/Initializer/random_normal/RandomStandardNormal3output_para/weight/Initializer/random_normal/stddev*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
ш
,output_para/weight/Initializer/random_normalAdd0output_para/weight/Initializer/random_normal/mul1output_para/weight/Initializer/random_normal/mean*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
Џ
!output_para/weight/Initializer/QrQr,output_para/weight/Initializer/random_normal*
T0*%
_class
loc:@output_para/weight*(
_output_shapes
:@:
Є
'output_para/weight/Initializer/DiagPartDiagPart#output_para/weight/Initializer/Qr:1*
_output_shapes
:*
T0*%
_class
loc:@output_para/weight
 
#output_para/weight/Initializer/SignSign'output_para/weight/Initializer/DiagPart*
_output_shapes
:*
T0*%
_class
loc:@output_para/weight
С
"output_para/weight/Initializer/mulMul!output_para/weight/Initializer/Qr#output_para/weight/Initializer/Sign*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
Є
,output_para/weight/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      *%
_class
loc:@output_para/weight
г
&output_para/weight/Initializer/ReshapeReshape"output_para/weight/Initializer/mul,output_para/weight/Initializer/Reshape/shape*
_output_shapes

:@*
T0*%
_class
loc:@output_para/weight

&output_para/weight/Initializer/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*%
_class
loc:@output_para/weight
Ы
$output_para/weight/Initializer/mul_1Mul&output_para/weight/Initializer/mul_1/x&output_para/weight/Initializer/Reshape*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

output_para/weight
VariableV2*
dtype0*
_output_shapes

:@*
shape
:@*%
_class
loc:@output_para/weight
­
output_para/weight/AssignAssignoutput_para/weight$output_para/weight/Initializer/mul_1*
_output_shapes

:@*
T0*%
_class
loc:@output_para/weight

output_para/weight/readIdentityoutput_para/weight*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

1output_para/bias/Initializer/random_uniform/shapeConst*
valueB *#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: 

/output_para/bias/Initializer/random_uniform/minConst*
valueB
 *зГнП*#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: 

/output_para/bias/Initializer/random_uniform/maxConst*
valueB
 *зГн?*#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: 
а
9output_para/bias/Initializer/random_uniform/RandomUniformRandomUniform1output_para/bias/Initializer/random_uniform/shape*
T0*#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: 
о
/output_para/bias/Initializer/random_uniform/subSub/output_para/bias/Initializer/random_uniform/max/output_para/bias/Initializer/random_uniform/min*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 
ш
/output_para/bias/Initializer/random_uniform/mulMul9output_para/bias/Initializer/random_uniform/RandomUniform/output_para/bias/Initializer/random_uniform/sub*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 
к
+output_para/bias/Initializer/random_uniformAdd/output_para/bias/Initializer/random_uniform/mul/output_para/bias/Initializer/random_uniform/min*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 
u
output_para/bias
VariableV2*#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: *
shape: 
І
output_para/bias/AssignAssignoutput_para/bias+output_para/bias/Initializer/random_uniform*
_output_shapes
: *
T0*#
_class
loc:@output_para/bias
y
output_para/bias/readIdentityoutput_para/bias*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

prediction/MatMulMatMul$hawkes_rnn/hawkes_rnn_1/while/Exit_3output_para/weight/read*
T0*'
_output_shapes
:џџџџџџџџџ
q
prediction/addAddprediction/MatMuloutput_para/bias/read*
T0*'
_output_shapes
:џџџџџџџџџ
_
prediction/SigmoidSigmoidprediction/add*
T0*'
_output_shapes
:џџџџџџџџџ

=loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like	ZerosLikeprediction/add*
T0*'
_output_shapes
:џџџџџџџџџ
а
?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualGreaterEqualprediction/add=loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

9loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/SelectSelect?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualprediction/add=loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like*'
_output_shapes
:џџџџџџџџџ*
T0

6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/NegNegprediction/add*
T0*'
_output_shapes
:џџџџџџџџџ

;loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1Select?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqual6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Negprediction/add*'
_output_shapes
:џџџџџџџџџ*
T0

6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mulMulprediction/adddata_source/y_placeholder*'
_output_shapes
:џџџџџџџџџ*
T0
т
6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/subSub9loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul*
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/ExpExp;loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
8loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1pLog1p6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
н
2loss/pred_loss/sigmoid_cross_entropy_loss/xentropyAdd6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub8loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ

Floss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Lloss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Kloss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
­
Kloss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeShape2loss/pred_loss/sigmoid_cross_entropy_loss/xentropy*
T0*
_output_shapes
:

Jloss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
b
Zloss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
в
0loss/pred_loss/sigmoid_cross_entropy_loss/Cast/xConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ь
-loss/pred_loss/sigmoid_cross_entropy_loss/MulMul2loss/pred_loss/sigmoid_cross_entropy_loss/xentropy0loss/pred_loss/sigmoid_cross_entropy_loss/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
н
/loss/pred_loss/sigmoid_cross_entropy_loss/ConstConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
Е
-loss/pred_loss/sigmoid_cross_entropy_loss/SumSum-loss/pred_loss/sigmoid_cross_entropy_loss/Mul/loss/pred_loss/sigmoid_cross_entropy_loss/Const*
T0*
_output_shapes
: 
п
=loss/pred_loss/sigmoid_cross_entropy_loss/num_present/Equal/yConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
ж
;loss/pred_loss/sigmoid_cross_entropy_loss/num_present/EqualEqual0loss/pred_loss/sigmoid_cross_entropy_loss/Cast/x=loss/pred_loss/sigmoid_cross_entropy_loss/num_present/Equal/y*
_output_shapes
: *
T0
т
@loss/pred_loss/sigmoid_cross_entropy_loss/num_present/zeros_likeConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
х
Eloss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ShapeConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
ч
Eloss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ConstConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
і
?loss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_likeFillEloss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ShapeEloss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
Ї
<loss/pred_loss/sigmoid_cross_entropy_loss/num_present/SelectSelect;loss/pred_loss/sigmoid_cross_entropy_loss/num_present/Equal@loss/pred_loss/sigmoid_cross_entropy_loss/num_present/zeros_like?loss/pred_loss/sigmoid_cross_entropy_loss/num_present/ones_like*
_output_shapes
: *
T0

jloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

iloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
Ј
iloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape2loss/pred_loss/sigmoid_cross_entropy_loss/xentropy[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:

hloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
value	B :
н
xloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success

Wloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape2loss/pred_loss/sigmoid_cross_entropy_loss/xentropy[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successy^loss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
є
Wloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successy^loss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
Н
Qloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillWloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeWloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

Gloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weightsMul<loss/pred_loss/sigmoid_cross_entropy_loss/num_present/SelectQloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
щ
;loss/pred_loss/sigmoid_cross_entropy_loss/num_present/ConstConst[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
у
5loss/pred_loss/sigmoid_cross_entropy_loss/num_presentSumGloss/pred_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights;loss/pred_loss/sigmoid_cross_entropy_loss/num_present/Const*
_output_shapes
: *
T0
б
1loss/pred_loss/sigmoid_cross_entropy_loss/Const_1Const[^loss/pred_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Й
/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1Sum-loss/pred_loss/sigmoid_cross_entropy_loss/Sum1loss/pred_loss/sigmoid_cross_entropy_loss/Const_1*
_output_shapes
: *
T0
Ф
/loss/pred_loss/sigmoid_cross_entropy_loss/valueDivNoNan/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_15loss/pred_loss/sigmoid_cross_entropy_loss/num_present*
_output_shapes
: *
T0
m
loss/dae_loss/transpose/permConst*
dtype0*
_output_shapes
:*
valueB"       

loss/dae_loss/transpose	Transpose"auto_encoder_parameter/weight/readloss/dae_loss/transpose/perm*
_output_shapes
:	Н*
T0
Ё
loss/dae_loss/unstackUnpackautoencoder/ae/packed*	
num
*
T0*д
_output_shapesС
О:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ

loss/dae_loss/MatMulMatMulloss/dae_loss/unstackloss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_1MatMulloss/dae_loss/unstack:1loss/dae_loss/transpose*(
_output_shapes
:џџџџџџџџџН*
T0

loss/dae_loss/MatMul_2MatMulloss/dae_loss/unstack:2loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_3MatMulloss/dae_loss/unstack:3loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_4MatMulloss/dae_loss/unstack:4loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_5MatMulloss/dae_loss/unstack:5loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_6MatMulloss/dae_loss/unstack:6loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_7MatMulloss/dae_loss/unstack:7loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН

loss/dae_loss/MatMul_8MatMulloss/dae_loss/unstack:8loss/dae_loss/transpose*(
_output_shapes
:џџџџџџџџџН*
T0

loss/dae_loss/MatMul_9MatMulloss/dae_loss/unstack:9loss/dae_loss/transpose*
T0*(
_output_shapes
:џџџџџџџџџН
Ъ
loss/dae_loss/packedPackloss/dae_loss/MatMulloss/dae_loss/MatMul_1loss/dae_loss/MatMul_2loss/dae_loss/MatMul_3loss/dae_loss/MatMul_4loss/dae_loss/MatMul_5loss/dae_loss/MatMul_6loss/dae_loss/MatMul_7loss/dae_loss/MatMul_8loss/dae_loss/MatMul_9*
T0*
N
*,
_output_shapes
:
џџџџџџџџџН

<loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like	ZerosLikeloss/dae_loss/packed*
T0*,
_output_shapes
:
џџџџџџџџџН
й
>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualGreaterEqualloss/dae_loss/packed<loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like*
T0*,
_output_shapes
:
џџџџџџџџџН

8loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/SelectSelect>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualloss/dae_loss/packed<loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/zeros_like*
T0*,
_output_shapes
:
џџџџџџџџџН

5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/NegNegloss/dae_loss/packed*
T0*,
_output_shapes
:
џџџџџџџџџН

:loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1Select>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqual5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Negloss/dae_loss/packed*
T0*,
_output_shapes
:
џџџџџџџџџН
Њ
5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mulMulloss/dae_loss/packeddata_source/context_placeholder*
T0*,
_output_shapes
:
џџџџџџџџџН
ф
5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/subSub8loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul*,
_output_shapes
:
џџџџџџџџџН*
T0
Џ
5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/ExpExp:loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1*,
_output_shapes
:
џџџџџџџџџН*
T0
Ў
7loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1pLog1p5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp*,
_output_shapes
:
џџџџџџџџџН*
T0
п
1loss/dae_loss/sigmoid_cross_entropy_loss/xentropyAdd5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub7loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p*
T0*,
_output_shapes
:
џџџџџџџџџН

Eloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Kloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Jloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
Ћ
Jloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeShape1loss/dae_loss/sigmoid_cross_entropy_loss/xentropy*
T0*
_output_shapes
:

Iloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
a
Yloss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
а
/loss/dae_loss/sigmoid_cross_entropy_loss/Cast/xConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ю
,loss/dae_loss/sigmoid_cross_entropy_loss/MulMul1loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/loss/dae_loss/sigmoid_cross_entropy_loss/Cast/x*,
_output_shapes
:
џџџџџџџџџН*
T0
п
.loss/dae_loss/sigmoid_cross_entropy_loss/ConstConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*!
valueB"          *
dtype0*
_output_shapes
:
В
,loss/dae_loss/sigmoid_cross_entropy_loss/SumSum,loss/dae_loss/sigmoid_cross_entropy_loss/Mul.loss/dae_loss/sigmoid_cross_entropy_loss/Const*
T0*
_output_shapes
: 
н
<loss/dae_loss/sigmoid_cross_entropy_loss/num_present/Equal/yConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
г
:loss/dae_loss/sigmoid_cross_entropy_loss/num_present/EqualEqual/loss/dae_loss/sigmoid_cross_entropy_loss/Cast/x<loss/dae_loss/sigmoid_cross_entropy_loss/num_present/Equal/y*
_output_shapes
: *
T0
р
?loss/dae_loss/sigmoid_cross_entropy_loss/num_present/zeros_likeConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
у
Dloss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ShapeConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
х
Dloss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ConstConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
ѓ
>loss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_likeFillDloss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_like/ShapeDloss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
Ѓ
;loss/dae_loss/sigmoid_cross_entropy_loss/num_present/SelectSelect:loss/dae_loss/sigmoid_cross_entropy_loss/num_present/Equal?loss/dae_loss/sigmoid_cross_entropy_loss/num_present/zeros_like>loss/dae_loss/sigmoid_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 

iloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

hloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
Ѕ
hloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape1loss/dae_loss/sigmoid_cross_entropy_loss/xentropyZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:

gloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
л
wloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success

Vloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape1loss/dae_loss/sigmoid_cross_entropy_loss/xentropyZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successx^loss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
ё
Vloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successx^loss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ?
П
Ploss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillVloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeVloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*,
_output_shapes
:
џџџџџџџџџН

Floss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weightsMul;loss/dae_loss/sigmoid_cross_entropy_loss/num_present/SelectPloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*,
_output_shapes
:
џџџџџџџџџН
ы
:loss/dae_loss/sigmoid_cross_entropy_loss/num_present/ConstConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*!
valueB"          
р
4loss/dae_loss/sigmoid_cross_entropy_loss/num_presentSumFloss/dae_loss/sigmoid_cross_entropy_loss/num_present/broadcast_weights:loss/dae_loss/sigmoid_cross_entropy_loss/num_present/Const*
T0*
_output_shapes
: 
Я
0loss/dae_loss/sigmoid_cross_entropy_loss/Const_1ConstZ^loss/dae_loss/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ж
.loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1Sum,loss/dae_loss/sigmoid_cross_entropy_loss/Sum0loss/dae_loss/sigmoid_cross_entropy_loss/Const_1*
T0*
_output_shapes
: 
С
.loss/dae_loss/sigmoid_cross_entropy_loss/valueDivNoNan.loss/dae_loss/sigmoid_cross_entropy_loss/Sum_14loss/dae_loss/sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
X
loss/loss_sum/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *>
~
loss/loss_sum/mulMul.loss/dae_loss/sigmoid_cross_entropy_loss/valueloss/loss_sum/mul/y*
T0*
_output_shapes
: 
}
loss/loss_sum/addAdd/loss/pred_loss/sigmoid_cross_entropy_loss/valueloss/loss_sum/mul*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0
S
gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
Ј
gradients/f_count_1Entergradients/f_count*
T0*
parallel_iterations *
_output_shapes
: *;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
v
gradients/SwitchSwitchgradients/Merge&hawkes_rnn/hawkes_rnn_1/while/LoopCond*
T0*
_output_shapes
: : 
z
gradients/Add/yConst'^hawkes_rnn/hawkes_rnn_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 

gradients/NextIterationNextIterationgradients/AddR^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPushV2V^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPushV2`^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPushV2P^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPushV2^^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPushV2N^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPushV2P^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPushV2`^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPushV2^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPushV2f^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPushV2d^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPushV2^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPushV2l^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPushV2l^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPushV2l^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2n^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2_1j^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPushV2`^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2b^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPushV2t^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_syncl^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2n^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2_1\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPushV2l^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2n^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPushV2\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPushV2j^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2l^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2_1Z^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPushV2j^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPushV2S^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPushV2W^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPushV2y^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2*
_output_shapes
: *
T0
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
Д
gradients/b_count_1Entergradients/f_count_2*
parallel_iterations *
_output_shapes
: *E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ю
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
­
gradients/NextIteration_1NextIterationgradients/SubQ^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
_output_shapes
: *
T0
J
1gradients/loss/loss_sum/add_grad/tuple/group_depsNoOp^gradients/Fill
Э
9gradients/loss/loss_sum/add_grad/tuple/control_dependencyIdentitygradients/Fill2^gradients/loss/loss_sum/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
Я
;gradients/loss/loss_sum/add_grad/tuple/control_dependency_1Identitygradients/Fill2^gradients/loss/loss_sum/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Fgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Џ
Tgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/ShapeFgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ш
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nanDivNoNan9gradients/loss/loss_sum/add_grad/tuple/control_dependency5loss/pred_loss/sigmoid_cross_entropy_loss/num_present*
_output_shapes
: *
T0

Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/SumSumIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nanTgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgs*
_output_shapes
: *
T0
ќ
Fgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeReshapeBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/SumDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Shape*
T0*
_output_shapes
: 

Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/NegNeg/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
ѓ
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_1DivNoNanBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Neg5loss/pred_loss/sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ќ
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_2DivNoNanKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_15loss/pred_loss/sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ђ
Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/mulMul9gradients/loss/loss_sum/add_grad/tuple/control_dependencyKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_2*
_output_shapes
: *
T0

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Sum_1SumBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/mulVgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 

Hgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1ReshapeDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Sum_1Fgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1*
T0*
_output_shapes
: 
ы
Ogradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_depsNoOpG^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeI^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1
љ
Wgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityFgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeP^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Reshape*
_output_shapes
: 
џ
Ygradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityHgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1P^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
_output_shapes
: *
T0*[
_classQ
OMloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1

$gradients/loss/loss_sum/mul_grad/MulMul;gradients/loss/loss_sum/add_grad/tuple/control_dependency_1loss/loss_sum/mul/y*
T0*
_output_shapes
: 
Л
&gradients/loss/loss_sum/mul_grad/Mul_1Mul;gradients/loss/loss_sum/add_grad/tuple/control_dependency_1.loss/dae_loss/sigmoid_cross_entropy_loss/value*
_output_shapes
: *
T0

1gradients/loss/loss_sum/mul_grad/tuple/group_depsNoOp%^gradients/loss/loss_sum/mul_grad/Mul'^gradients/loss/loss_sum/mul_grad/Mul_1
љ
9gradients/loss/loss_sum/mul_grad/tuple/control_dependencyIdentity$gradients/loss/loss_sum/mul_grad/Mul2^gradients/loss/loss_sum/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/loss/loss_sum/mul_grad/Mul*
_output_shapes
: 
џ
;gradients/loss/loss_sum/mul_grad/tuple/control_dependency_1Identity&gradients/loss/loss_sum/mul_grad/Mul_12^gradients/loss/loss_sum/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*9
_class/
-+loc:@gradients/loss/loss_sum/mul_grad/Mul_1

Lgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Fgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ReshapeReshapeWgradients/loss/pred_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependencyLgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
њ
Cgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/TileTileFgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ReshapeDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Egradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ќ
Sgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/ShapeEgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ц
Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nanDivNoNan9gradients/loss/loss_sum/mul_grad/tuple/control_dependency4loss/dae_loss/sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/SumSumHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nanSgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
љ
Egradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeReshapeAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/SumCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Shape*
T0*
_output_shapes
: 

Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/NegNeg.loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
№
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_1DivNoNanAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Neg4loss/dae_loss/sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
љ
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_2DivNoNanJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_14loss/dae_loss/sigmoid_cross_entropy_loss/num_present*
_output_shapes
: *
T0
№
Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/mulMul9gradients/loss/loss_sum/mul_grad/tuple/control_dependencyJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Sum_1SumAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/mulUgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
T0
џ
Ggradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1ReshapeCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Sum_1Egradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Shape_1*
_output_shapes
: *
T0
ш
Ngradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_depsNoOpF^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeH^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1
ѕ
Vgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityEgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/ReshapeO^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Reshape*
_output_shapes
: 
ћ
Xgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityGgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1O^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/Reshape_1*
_output_shapes
: 

Jgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/ReshapeReshapeCgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_1_grad/TileJgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes

:

Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/ShapeShape-loss/pred_loss/sigmoid_cross_entropy_loss/Mul*
T0*
_output_shapes
:

Agradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/TileTileDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/ReshapeBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/Shape*'
_output_shapes
:џџџџџџџџџ*
T0

Kgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Egradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ReshapeReshapeVgradients/loss/dae_loss/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependencyKgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB 
ї
Bgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/TileTileEgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/ReshapeCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/Const*
T0*
_output_shapes
: 
Є
Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/ShapeShape2loss/pred_loss/sigmoid_cross_entropy_loss/xentropy*
T0*
_output_shapes
:

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Љ
Rgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/ShapeDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ю
@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/MulMulAgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/Tile0loss/pred_loss/sigmoid_cross_entropy_loss/Cast/x*'
_output_shapes
:џџџџџџџџџ*
T0

@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/SumSum@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/MulRgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeReshape@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/SumBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Mul2loss/pred_loss/sigmoid_cross_entropy_loss/xentropyAgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ

Bgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Sum_1SumBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Tgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
ќ
Fgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1ReshapeBgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Sum_1Dgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*
T0*
_output_shapes
: 
х
Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpE^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeG^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1

Ugradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityDgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeN^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
ї
Wgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityFgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1N^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 

Igradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/ReshapeReshapeBgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_1_grad/TileIgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shape*"
_output_shapes
:*
T0

Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/ShapeShape,loss/dae_loss/sigmoid_cross_entropy_loss/Mul*
T0*
_output_shapes
:

@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/TileTileCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/ReshapeAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/Shape*
T0*,
_output_shapes
:
џџџџџџџџџН
­
Ggradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/ShapeShape6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub*
T0*
_output_shapes
:
Б
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1Shape8loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p*
_output_shapes
:*
T0
И
Wgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgsBroadcastGradientArgsGgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/ShapeIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Egradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/SumSumUgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyWgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeReshapeEgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/SumGgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
Ggradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1SumUgradients/loss/pred_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyYgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1ReshapeGgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ
є
Rgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOpJ^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeL^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1

Zgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentityIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeS^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape*'
_output_shapes
:џџџџџџџџџ

\gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1IdentityKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1S^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
Ђ
Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/ShapeShape1loss/dae_loss/sigmoid_cross_entropy_loss/xentropy*
T0*
_output_shapes
:

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
І
Qgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/ShapeCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
?gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/MulMul@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/Tile/loss/dae_loss/sigmoid_cross_entropy_loss/Cast/x*
T0*,
_output_shapes
:
џџџџџџџџџН
§
?gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/SumSum?gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/MulQgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeReshape?gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/SumAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape*
T0*,
_output_shapes
:
џџџџџџџџџН
є
Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Mul1loss/dae_loss/sigmoid_cross_entropy_loss/xentropy@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Sum_grad/Tile*
T0*,
_output_shapes
:
џџџџџџџџџН

Agradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Sum_1SumAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Sgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
љ
Egradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1ReshapeAgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Sum_1Cgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*
T0*
_output_shapes
: 
т
Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpD^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeF^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1

Tgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityCgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/ReshapeM^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape*,
_output_shapes
:
џџџџџџџџџН
ѓ
Vgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityEgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1M^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Д
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ShapeShape9loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select*
T0*
_output_shapes
:
Г
Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1Shape6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul*
T0*
_output_shapes
:
Ф
[gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgsBroadcastGradientArgsKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ShapeMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ќ
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/SumSumZgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency[gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Ђ
Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeReshapeIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/SumKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
А
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1SumZgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency]gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Р
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/NegNegKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1*
T0*
_output_shapes
:
І
Ogradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1ReshapeIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/NegMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ

Vgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_depsNoOpN^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeP^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1
І
^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencyIdentityMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeW^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
Ќ
`gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1IdentityOgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1W^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
ё
Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/xConst]^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/addAddMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/x6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
п
Rgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal
ReciprocalKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mulMul\gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1Rgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
Fgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/ShapeShape5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub*
_output_shapes
:*
T0
Џ
Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1Shape7loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p*
T0*
_output_shapes
:
Е
Vgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgsBroadcastGradientArgsFgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/ShapeHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Dgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/SumSumTgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyVgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeReshapeDgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/SumFgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape*
T0*,
_output_shapes
:
џџџџџџџџџН
 
Fgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1SumTgradients/loss/dae_loss/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyXgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1ReshapeFgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*,
_output_shapes
:
џџџџџџџџџН*
T0
ё
Qgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOpI^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeK^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1

Ygradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentityHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeR^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape*,
_output_shapes
:
џџџџџџџџџН

[gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1IdentityJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1R^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*,
_output_shapes
:
џџџџџџџџџН*
T0*]
_classS
QOloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1
Ђ
Sgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like	ZerosLikeprediction/add*
T0*'
_output_shapes
:џџџџџџџџџ

Ogradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectSelect?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqual^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencySgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

Qgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1Select?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualSgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ*
T0

Ygradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_depsNoOpP^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectR^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1
А
agradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependencyIdentityOgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectZ^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select*'
_output_shapes
:џџџџџџџџџ
Ж
cgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependency_1IdentityQgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1Z^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1*'
_output_shapes
:џџџџџџџџџ

Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ShapeShapeprediction/add*
T0*
_output_shapes
:

Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1Shapedata_source/y_placeholder*
_output_shapes
:*
T0
Ф
[gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgsKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ShapeMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
џ
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/MulMul`gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1data_source/y_placeholder*
T0*'
_output_shapes
:џџџџџџџџџ

Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/SumSumIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul[gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Ђ
Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeReshapeIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/SumKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ
і
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1Mulprediction/add`gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
Kgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1SumKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1]gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
Ј
Ogradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1ReshapeKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1Mgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ

Vgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_depsNoOpN^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeP^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1
І
^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencyIdentityMgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeW^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
Ќ
`gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependency_1IdentityOgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1W^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*b
_classX
VTloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1

Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulMulKgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mul6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
В
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ShapeShape8loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select*
_output_shapes
:*
T0
Б
Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1Shape5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul*
T0*
_output_shapes
:
С
Zgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgsBroadcastGradientArgsJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ShapeLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/SumSumYgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyZgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Є
Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeReshapeHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/SumJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape*
T0*,
_output_shapes
:
џџџџџџџџџН
­
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1SumYgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency\gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
О
Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/NegNegJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1*
T0*
_output_shapes
:
Ј
Ngradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1ReshapeHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/NegLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*,
_output_shapes
:
џџџџџџџџџН*
T0
§
Ugradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_depsNoOpM^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeO^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1
Ї
]gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencyIdentityLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeV^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape*,
_output_shapes
:
џџџџџџџџџН
­
_gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1IdentityNgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1V^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*,
_output_shapes
:
џџџџџџџџџН*
T0*a
_classW
USloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1
я
Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/xConst\^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/addAddLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/x5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp*,
_output_shapes
:
џџџџџџџџџН*
T0
т
Qgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal
ReciprocalJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add*
T0*,
_output_shapes
:
џџџџџџџџџН
И
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mulMul[gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1Qgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal*,
_output_shapes
:
џџџџџџџџџН*
T0
Ь
Ugradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like	ZerosLike6loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Neg*'
_output_shapes
:џџџџџџџџџ*
T0
№
Qgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectSelect?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulUgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
Sgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1Select?loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualUgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_likeIgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mul*
T0*'
_output_shapes
:џџџџџџџџџ

[gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_depsNoOpR^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectT^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1
И
cgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependencyIdentityQgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select\^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*d
_classZ
XVloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select
О
egradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1IdentitySgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1\^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1*'
_output_shapes
:џџџџџџџџџ
Ќ
Rgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like	ZerosLikeloss/dae_loss/packed*
T0*,
_output_shapes
:
џџџџџџџџџН

Ngradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectSelect>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqual]gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencyRgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like*,
_output_shapes
:
џџџџџџџџџН*
T0

Pgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1Select>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualRgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like]gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency*,
_output_shapes
:
џџџџџџџџџН*
T0

Xgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_depsNoOpO^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectQ^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1
Б
`gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependencyIdentityNgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectY^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select*,
_output_shapes
:
џџџџџџџџџН
З
bgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependency_1IdentityPgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1Y^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1*,
_output_shapes
:
џџџџџџџџџН

Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ShapeShapeloss/dae_loss/packed*
_output_shapes
:*
T0

Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1Shapedata_source/context_placeholder*
T0*
_output_shapes
:
С
Zgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgsJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ShapeLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/MulMul_gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1data_source/context_placeholder*
T0*,
_output_shapes
:
џџџџџџџџџН

Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/SumSumHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/MulZgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Є
Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeReshapeHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/SumJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape*,
_output_shapes
:
џџџџџџџџџН*
T0
џ
Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1Mulloss/dae_loss/packed_gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1*
T0*,
_output_shapes
:
џџџџџџџџџН

Jgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1SumJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1\gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Њ
Ngradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1ReshapeJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1Lgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*
T0*,
_output_shapes
:
џџџџџџџџџН
§
Ugradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_depsNoOpM^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeO^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1
Ї
]gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencyIdentityLgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeV^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape*,
_output_shapes
:
џџџџџџџџџН
­
_gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependency_1IdentityNgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1V^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1*,
_output_shapes
:
џџџџџџџџџН

Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulMulJgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mul5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp*
T0*,
_output_shapes
:
џџџџџџџџџН
ч
Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Neg_grad/NegNegcgradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ
Я
Tgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like	ZerosLike5loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Neg*
T0*,
_output_shapes
:
џџџџџџџџџН
ё
Pgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectSelect>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulTgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like*
T0*,
_output_shapes
:
џџџџџџџџџН
ѓ
Rgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1Select>loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/GreaterEqualTgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_likeHgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mul*,
_output_shapes
:
џџџџџџџџџН*
T0

Zgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_depsNoOpQ^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectS^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1
Й
bgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependencyIdentityPgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select[^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select*,
_output_shapes
:
џџџџџџџџџН
П
dgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1IdentityRgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1[^gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*,
_output_shapes
:
џџџџџџџџџН*
T0*e
_class[
YWloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1
ъ
Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Neg_grad/NegNegbgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency*,
_output_shapes
:
џџџџџџџџџН*
T0
Њ
gradients/AddNAddNagradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependency^gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencyegradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1Igradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Neg_grad/Neg*
T0*b
_classX
VTloc:@gradients/loss/pred_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select*
N*'
_output_shapes
:џџџџџџџџџ
d
#gradients/prediction/add_grad/ShapeShapeprediction/MatMul*
T0*
_output_shapes
:
h
%gradients/prediction/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ь
3gradients/prediction/add_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/prediction/add_grad/Shape%gradients/prediction/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

!gradients/prediction/add_grad/SumSumgradients/AddN3gradients/prediction/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Њ
%gradients/prediction/add_grad/ReshapeReshape!gradients/prediction/add_grad/Sum#gradients/prediction/add_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ

#gradients/prediction/add_grad/Sum_1Sumgradients/AddN5gradients/prediction/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

'gradients/prediction/add_grad/Reshape_1Reshape#gradients/prediction/add_grad/Sum_1%gradients/prediction/add_grad/Shape_1*
T0*
_output_shapes
: 

.gradients/prediction/add_grad/tuple/group_depsNoOp&^gradients/prediction/add_grad/Reshape(^gradients/prediction/add_grad/Reshape_1

6gradients/prediction/add_grad/tuple/control_dependencyIdentity%gradients/prediction/add_grad/Reshape/^gradients/prediction/add_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*8
_class.
,*loc:@gradients/prediction/add_grad/Reshape
ћ
8gradients/prediction/add_grad/tuple/control_dependency_1Identity'gradients/prediction/add_grad/Reshape_1/^gradients/prediction/add_grad/tuple/group_deps*
_output_shapes
: *
T0*:
_class0
.,loc:@gradients/prediction/add_grad/Reshape_1
Ч
'gradients/prediction/MatMul_grad/MatMulMatMul6gradients/prediction/add_grad/tuple/control_dependencyoutput_para/weight/read*'
_output_shapes
:џџџџџџџџџ@*
transpose_b(*
T0
Э
)gradients/prediction/MatMul_grad/MatMul_1MatMul$hawkes_rnn/hawkes_rnn_1/while/Exit_36gradients/prediction/add_grad/tuple/control_dependency*
T0*
_output_shapes

:@*
transpose_a(

1gradients/prediction/MatMul_grad/tuple/group_depsNoOp(^gradients/prediction/MatMul_grad/MatMul*^gradients/prediction/MatMul_grad/MatMul_1

9gradients/prediction/MatMul_grad/tuple/control_dependencyIdentity'gradients/prediction/MatMul_grad/MatMul2^gradients/prediction/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/prediction/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ@

;gradients/prediction/MatMul_grad/tuple/control_dependency_1Identity)gradients/prediction/MatMul_grad/MatMul_12^gradients/prediction/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/prediction/MatMul_grad/MatMul_1*
_output_shapes

:@
T
gradients/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ќ
gradients/AddN_1AddN`gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependency]gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencydgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1Hgradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Neg_grad/Neg*
T0*a
_classW
USloc:@gradients/loss/dae_loss/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select*
N*,
_output_shapes
:
џџџџџџџџџН
М
+gradients/loss/dae_loss/packed_grad/unstackUnpackgradients/AddN_1*	
num
*
T0*о
_output_shapesЫ
Ш:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН:џџџџџџџџџН
j
4gradients/loss/dae_loss/packed_grad/tuple/group_depsNoOp,^gradients/loss/dae_loss/packed_grad/unstack

<gradients/loss/dae_loss/packed_grad/tuple/control_dependencyIdentity+gradients/loss/dae_loss/packed_grad/unstack5^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_1Identity-gradients/loss/dae_loss/packed_grad/unstack:15^gradients/loss/dae_loss/packed_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_2Identity-gradients/loss/dae_loss/packed_grad/unstack:25^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_3Identity-gradients/loss/dae_loss/packed_grad/unstack:35^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_4Identity-gradients/loss/dae_loss/packed_grad/unstack:45^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_5Identity-gradients/loss/dae_loss/packed_grad/unstack:55^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_6Identity-gradients/loss/dae_loss/packed_grad/unstack:65^gradients/loss/dae_loss/packed_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack*(
_output_shapes
:џџџџџџџџџН
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_7Identity-gradients/loss/dae_loss/packed_grad/unstack:75^gradients/loss/dae_loss/packed_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_8Identity-gradients/loss/dae_loss/packed_grad/unstack:85^gradients/loss/dae_loss/packed_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack
Ѓ
>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_9Identity-gradients/loss/dae_loss/packed_grad/unstack:95^gradients/loss/dae_loss/packed_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*>
_class4
20loc:@gradients/loss/dae_loss/packed_grad/unstack

:gradients/hawkes_rnn/hawkes_rnn_1/while/Exit_3_grad/b_exitEnter9gradients/prediction/MatMul_grad/tuple/control_dependency*
parallel_iterations *'
_output_shapes
:џџџџџџџџџ@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0
з
:gradients/hawkes_rnn/hawkes_rnn_1/while/Exit_2_grad/b_exitEntergradients/zeros*
T0*
parallel_iterations *
_output_shapes
: *E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
а
*gradients/loss/dae_loss/MatMul_grad/MatMulMatMul<gradients/loss/dae_loss/packed_grad/tuple/control_dependencyloss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ш
,gradients/loss/dae_loss/MatMul_grad/MatMul_1MatMulloss/dae_loss/unstack<gradients/loss/dae_loss/packed_grad/tuple/control_dependency*
T0*
_output_shapes
:	Н*
transpose_a(

4gradients/loss/dae_loss/MatMul_grad/tuple/group_depsNoOp+^gradients/loss/dae_loss/MatMul_grad/MatMul-^gradients/loss/dae_loss/MatMul_grad/MatMul_1

<gradients/loss/dae_loss/MatMul_grad/tuple/control_dependencyIdentity*gradients/loss/dae_loss/MatMul_grad/MatMul5^gradients/loss/dae_loss/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/loss/dae_loss/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ

>gradients/loss/dae_loss/MatMul_grad/tuple/control_dependency_1Identity,gradients/loss/dae_loss/MatMul_grad/MatMul_15^gradients/loss/dae_loss/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_1_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_1loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_1_grad/MatMul_1MatMulloss/dae_loss/unstack:1>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_1*
_output_shapes
:	Н*
transpose_a(*
T0

6gradients/loss/dae_loss/MatMul_1_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_1_grad/MatMul/^gradients/loss/dae_loss/MatMul_1_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_1_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_1_grad/MatMul7^gradients/loss/dae_loss/MatMul_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_1_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_1_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_1_grad/MatMul_17^gradients/loss/dae_loss/MatMul_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_1_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_2_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_2loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_2_grad/MatMul_1MatMulloss/dae_loss/unstack:2>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_2*
T0*
_output_shapes
:	Н*
transpose_a(

6gradients/loss/dae_loss/MatMul_2_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_2_grad/MatMul/^gradients/loss/dae_loss/MatMul_2_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_2_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_2_grad/MatMul7^gradients/loss/dae_loss/MatMul_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_2_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_2_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_2_grad/MatMul_17^gradients/loss/dae_loss/MatMul_2_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_2_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_3_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_3loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_3_grad/MatMul_1MatMulloss/dae_loss/unstack:3>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_3*
_output_shapes
:	Н*
transpose_a(*
T0

6gradients/loss/dae_loss/MatMul_3_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_3_grad/MatMul/^gradients/loss/dae_loss/MatMul_3_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_3_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_3_grad/MatMul7^gradients/loss/dae_loss/MatMul_3_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_3_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_3_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_3_grad/MatMul_17^gradients/loss/dae_loss/MatMul_3_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_3_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_4_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_4loss/dae_loss/transpose*
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
.gradients/loss/dae_loss/MatMul_4_grad/MatMul_1MatMulloss/dae_loss/unstack:4>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_4*
T0*
_output_shapes
:	Н*
transpose_a(

6gradients/loss/dae_loss/MatMul_4_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_4_grad/MatMul/^gradients/loss/dae_loss/MatMul_4_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_4_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_4_grad/MatMul7^gradients/loss/dae_loss/MatMul_4_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_4_grad/MatMul
Ђ
@gradients/loss/dae_loss/MatMul_4_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_4_grad/MatMul_17^gradients/loss/dae_loss/MatMul_4_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_4_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_5_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_5loss/dae_loss/transpose*'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0
Ю
.gradients/loss/dae_loss/MatMul_5_grad/MatMul_1MatMulloss/dae_loss/unstack:5>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_5*
_output_shapes
:	Н*
transpose_a(*
T0

6gradients/loss/dae_loss/MatMul_5_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_5_grad/MatMul/^gradients/loss/dae_loss/MatMul_5_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_5_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_5_grad/MatMul7^gradients/loss/dae_loss/MatMul_5_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_5_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_5_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_5_grad/MatMul_17^gradients/loss/dae_loss/MatMul_5_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_5_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_6_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_6loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_6_grad/MatMul_1MatMulloss/dae_loss/unstack:6>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_6*
T0*
_output_shapes
:	Н*
transpose_a(

6gradients/loss/dae_loss/MatMul_6_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_6_grad/MatMul/^gradients/loss/dae_loss/MatMul_6_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_6_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_6_grad/MatMul7^gradients/loss/dae_loss/MatMul_6_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_6_grad/MatMul
Ђ
@gradients/loss/dae_loss/MatMul_6_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_6_grad/MatMul_17^gradients/loss/dae_loss/MatMul_6_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_6_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_7_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_7loss/dae_loss/transpose*'
_output_shapes
:џџџџџџџџџ*
transpose_b(*
T0
Ю
.gradients/loss/dae_loss/MatMul_7_grad/MatMul_1MatMulloss/dae_loss/unstack:7>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_7*
_output_shapes
:	Н*
transpose_a(*
T0

6gradients/loss/dae_loss/MatMul_7_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_7_grad/MatMul/^gradients/loss/dae_loss/MatMul_7_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_7_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_7_grad/MatMul7^gradients/loss/dae_loss/MatMul_7_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_7_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_7_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_7_grad/MatMul_17^gradients/loss/dae_loss/MatMul_7_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_7_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_8_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_8loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_8_grad/MatMul_1MatMulloss/dae_loss/unstack:8>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_8*
T0*
_output_shapes
:	Н*
transpose_a(

6gradients/loss/dae_loss/MatMul_8_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_8_grad/MatMul/^gradients/loss/dae_loss/MatMul_8_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_8_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_8_grad/MatMul7^gradients/loss/dae_loss/MatMul_8_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_8_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_8_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_8_grad/MatMul_17^gradients/loss/dae_loss/MatMul_8_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_8_grad/MatMul_1*
_output_shapes
:	Н
д
,gradients/loss/dae_loss/MatMul_9_grad/MatMulMatMul>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_9loss/dae_loss/transpose*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_b(
Ю
.gradients/loss/dae_loss/MatMul_9_grad/MatMul_1MatMulloss/dae_loss/unstack:9>gradients/loss/dae_loss/packed_grad/tuple/control_dependency_9*
T0*
_output_shapes
:	Н*
transpose_a(

6gradients/loss/dae_loss/MatMul_9_grad/tuple/group_depsNoOp-^gradients/loss/dae_loss/MatMul_9_grad/MatMul/^gradients/loss/dae_loss/MatMul_9_grad/MatMul_1
Є
>gradients/loss/dae_loss/MatMul_9_grad/tuple/control_dependencyIdentity,gradients/loss/dae_loss/MatMul_9_grad/MatMul7^gradients/loss/dae_loss/MatMul_9_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_9_grad/MatMul*'
_output_shapes
:џџџџџџџџџ
Ђ
@gradients/loss/dae_loss/MatMul_9_grad/tuple/control_dependency_1Identity.gradients/loss/dae_loss/MatMul_9_grad/MatMul_17^gradients/loss/dae_loss/MatMul_9_grad/tuple/group_deps*
_output_shapes
:	Н*
T0*A
_class7
53loc:@gradients/loss/dae_loss/MatMul_9_grad/MatMul_1

>gradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad/b_switchMerge:gradients/hawkes_rnn/hawkes_rnn_1/while/Exit_3_grad/b_exitEgradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
я
*gradients/loss/dae_loss/unstack_grad/stackPack<gradients/loss/dae_loss/MatMul_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_1_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_2_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_3_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_4_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_5_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_6_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_7_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_8_grad/tuple/control_dependency>gradients/loss/dae_loss/MatMul_9_grad/tuple/control_dependency*
N
*+
_output_shapes
:
џџџџџџџџџ*
T0

gradients/AddN_2AddN>gradients/loss/dae_loss/MatMul_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_1_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_2_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_3_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_4_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_5_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_6_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_7_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_8_grad/tuple/control_dependency_1@gradients/loss/dae_loss/MatMul_9_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@gradients/loss/dae_loss/MatMul_grad/MatMul_1*
N
*
_output_shapes
:	Н

8gradients/loss/dae_loss/transpose_grad/InvertPermutationInvertPermutationloss/dae_loss/transpose/perm*
_output_shapes
:
Г
0gradients/loss/dae_loss/transpose_grad/transpose	Transposegradients/AddN_28gradients/loss/dae_loss/transpose_grad/InvertPermutation*
_output_shapes
:	Н*
T0
В
;gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/SwitchSwitch>gradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*Q
_classG
ECloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad/b_switch*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@

Egradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/group_depsNoOp<^gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/Switch
у
Mgradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/control_dependencyIdentity;gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/SwitchF^gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad/b_switch*'
_output_shapes
:џџџџџџџџџ@
ч
Ogradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/control_dependency_1Identity=gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/Switch:1F^gradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad/b_switch*'
_output_shapes
:џџџџџџџџџ@
Т
9gradients/hawkes_rnn/hawkes_rnn_1/while/Enter_3_grad/ExitExitMgradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@
о
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like	ZerosLikeTgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
н
Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/ConstConst*
valueB :
џџџџџџџџџ*A
_class7
53loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1*
dtype0*
_output_shapes
: 

Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/f_accStackV2Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/Const*A
_class7
53loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1*
_output_shapes
:*
	elem_type0
Й
Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/EnterEnterOgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ї
Ugradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPushV2StackPushV2Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/Enter.hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@

Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPopV2
StackPopV2Zgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
Ю
Zgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPopV2/EnterEnterOgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
И!
Pgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/b_syncControlTrigger^gradients/StackPopV2^gradients/StackPopV2_1Q^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2U^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPopV2_^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2O^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPopV2]^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2M^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPopV2O^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2_^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPopV2]^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2e^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPopV2c^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPopV2]^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2m^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1i^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2_^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2a^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2_1Z^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2x^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2z^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1f^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPopV2h^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPopV2v^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPopV2d^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPopV2f^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2m^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2m^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPopV2[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPopV2i^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2k^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1Y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPopV2i^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2R^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2V^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2x^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
я
Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/SelectSelectPgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2Ogradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/control_dependency_1Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ@
р
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*H
_class>
<:loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqual

Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/f_accStackV2Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/Const*
_output_shapes
:*
	elem_type0
*H
_class>
<:loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqual
Б
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/EnterEnterKgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ђ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPushV2StackPushV2Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/Enter5hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqual^gradients/Add*
T0
*#
_output_shapes
:џџџџџџџџџ
ќ
Pgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2
StackPopV2Vgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2/Enter^gradients/Sub*#
_output_shapes
:џџџџџџџџџ*
	elem_type0

Ц
Vgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2/EnterEnterKgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
ё
Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select_1SelectPgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPopV2Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_likeOgradients/hawkes_rnn/hawkes_rnn_1/while/Merge_3_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ@*
T0
щ
Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/group_depsNoOpF^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/SelectH^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select_1

Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/control_dependencyIdentityEgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/SelectP^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*X
_classN
LJloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select

Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/control_dependency_1IdentityGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select_1P^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select_1*'
_output_shapes
:џџџџџџџџџ@

Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/ShapeShape,hawkes_rnn/hawkes_rnn_1/while/decay_node/mul*
_output_shapes
:*
T0
І
Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape_1Const^gradients/Sub*
dtype0*
_output_shapes
:*
valueB"   @   
Ч
Sgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ќ
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*V
_classL
JHloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape*
dtype0*
_output_shapes
: 
Ф
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/f_accStackV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*V
_classL
JHloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape
Э
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
У
_gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/EnterCgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:

^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2dgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
т
dgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

Agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/MulMulWgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/control_dependencyGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul/Enter*
T0*'
_output_shapes
:џџџџџџџџџ@

Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul/EnterEnterhawkes_rnn/trans_decay/read*
parallel_iterations *
_output_shapes

:@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(

Agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/SumSumAgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/MulSgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Ѕ
Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/ReshapeReshapeAgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Sum^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0
Ѕ
Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1MulNgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPopV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@
е
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*?
_class5
31loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/mul*
dtype0*
_output_shapes
: 

Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/f_accStackV2Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/Const*
	elem_type0*?
_class5
31loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/mul*
_output_shapes
:
­
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/EnterEnterIgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(

Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPushV2StackPushV2Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/Enter,hawkes_rnn/hawkes_rnn_1/while/decay_node/mul^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
ќ
Ngradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPopV2
StackPopV2Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
Т
Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPopV2/EnterEnterIgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Sum_1SumCgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1Ugradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Reshape_1ReshapeCgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Sum_1Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape_1*
T0*
_output_shapes

:@
ш
Ngradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/group_depsNoOpF^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/ReshapeH^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Reshape_1

Vgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/control_dependencyIdentityEgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/ReshapeO^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@

Xgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/control_dependency_1IdentityGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Reshape_1O^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Reshape_1*
_output_shapes

:@
Ё
Agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/ShapeShape0hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1*
T0*
_output_shapes
:
С
Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1ShapeNgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2*
T0*
_output_shapes
:

Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/ConstConst*
valueB :
џџџџџџџџџ*j
_class`
^\loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2*
dtype0*
_output_shapes
: 
И
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/f_accStackV2Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/Const*
	elem_type0*j
_class`
^\loc:@hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2*
_output_shapes
:
­
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/EnterEnterIgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ф
Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPushV2StackPushV2Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/EnterWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2^gradients/Add*'
_output_shapes
:џџџџџџџџџ*
T0
ќ
Ngradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2
StackPopV2Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
Т
Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2/EnterEnterIgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
С
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgsBroadcastGradientArgs\gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ј
Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*T
_classJ
HFloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape*
dtype0*
_output_shapes
: 
О
Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/f_accStackV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/Const*T
_classJ
HFloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape*
_output_shapes
:*
	elem_type0
Щ
Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Н
]gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/EnterAgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape^gradients/Add*
_output_shapes
:*
T0

\gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2bgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
о
bgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
 
?gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/MulMulVgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/control_dependencyNgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0
§
?gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/SumSum?gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/MulQgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/ReshapeReshape?gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Sum\gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
 
Agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1MulLgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPopV2Vgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@
с
Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*
dtype0*
_output_shapes
: 

Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/f_accStackV2Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3*
_output_shapes
:
Љ
Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/EnterEnterGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

Mgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPushV2StackPushV2Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/Enter0hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
ј
Lgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPopV2
StackPopV2Rgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
О
Rgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPopV2/EnterEnterGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

Agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Sum_1SumAgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1Sgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0

Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Reshape_1ReshapeAgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Sum_1Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ*
T0
т
Lgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/group_depsNoOpD^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/ReshapeF^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Reshape_1
ў
Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/control_dependencyIdentityCgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/ReshapeM^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@

Vgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/control_dependency_1IdentityEgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Reshape_1M^gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ

Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_accConst*
dtype0*
_output_shapes

:@*
valueB@*    
Њ
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_1EnterIgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes

:@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ј
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_2MergeKgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@: 
щ
Jgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/SwitchSwitchKgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@:@

Ggradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/AddAddLgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/Switch:1Xgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
д
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/NextIterationNextIterationGgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/Add*
_output_shapes

:@*
T0
Ш
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_3ExitJgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/Switch*
_output_shapes

:@*
T0
р
gradients/AddN_3AddNYgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/tuple/control_dependency_1Tgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/tuple/control_dependency*
T0*Z
_classP
NLloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select_1*
N*'
_output_shapes
:џџџџџџџџџ@
р
Jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like	ZerosLikeUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
и
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/ConstConst*
valueB :
џџџџџџџџџ*;
_class1
/-loc:@hawkes_rnn/hawkes_rnn_1/while/Identity_3*
dtype0*
_output_shapes
: 

Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/f_accStackV2Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/Const*;
_class1
/-loc:@hawkes_rnn/hawkes_rnn_1/while/Identity_3*
_output_shapes
:*
	elem_type0
Л
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/EnterEnterPgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ѓ
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPushV2StackPushV2Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/Enter(hawkes_rnn/hawkes_rnn_1/while/Identity_3^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@

Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2
StackPopV2[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
а
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2/EnterEnterPgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Г
Fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/SelectSelectQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2gradients/AddN_3Jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like*'
_output_shapes
:џџџџџџџџџ@*
T0
р
Lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/ConstConst*
valueB :
џџџџџџџџџ*G
_class=
;9loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual*
dtype0*
_output_shapes
: 

Lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/f_accStackV2Lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/Const*
	elem_type0
*G
_class=
;9loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual*
_output_shapes
:
Г
Lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/EnterEnterLgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ѓ
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPushV2StackPushV2Lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/Enter4hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual^gradients/Add*#
_output_shapes
:џџџџџџџџџ*
T0

ў
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2
StackPopV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2/Enter^gradients/Sub*#
_output_shapes
:џџџџџџџџџ*
	elem_type0

Ш
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2/EnterEnterLgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Е
Hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select_1SelectQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPopV2Jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_likegradients/AddN_3*
T0*'
_output_shapes
:џџџџџџџџџ@
ь
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/group_depsNoOpG^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/SelectI^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select_1

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/control_dependencyIdentityFgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/SelectQ^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select*'
_output_shapes
:џџџџџџџџџ@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/control_dependency_1IdentityHgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select_1Q^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select_1*'
_output_shapes
:џџџџџџџџџ@
Й
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/ShapeShape:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1*
T0*
_output_shapes
:
Л
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape_1Shape:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2*
T0*
_output_shapes
:

_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape*
dtype0*
_output_shapes
: 
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_accStackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape^gradients/Add*
T0*
_output_shapes
:
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(

ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape_1*
dtype0*
_output_shapes
: 
ю
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc_1StackV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Const_1*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape_1*
_output_shapes
:*
	elem_type0
щ
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter_1Enterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
э
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
Ћ
lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
ў
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Д
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/SumSumZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/control_dependency_1_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/ReshapeReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Sumjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0
И
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Sum_1SumZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/control_dependency_1agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Я
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape_1ReshapeOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Sum_1lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/ReshapeT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape_1
Ж
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
М
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
З
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/ShapeShape8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub*
T0*
_output_shapes
:
Љ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape_1Shape(hawkes_rnn/hawkes_rnn_1/while/Identity_3*
T0*
_output_shapes
:

_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_accStackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Const*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape*
_output_shapes
:*
	elem_type0
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape^gradients/Add*
_output_shapes
:*
T0
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(

ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
ю
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape_1
щ
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter_1Enterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
э
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
Ћ
lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
ў
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
С
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/MulMulbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependencyUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
Ї
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/SumSumMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/ReshapeReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Sumjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0
Ш
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1MulZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPopV2bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ@
э
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*K
_classA
?=loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub
Б
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/f_accStackV2Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/Const*K
_classA
?=loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub*
_output_shapes
:*
	elem_type0
Х
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/EnterEnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Н
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPushV2StackPushV2Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/Enter8hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPopV2
StackPopV2`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
к
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPopV2/EnterEnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
­
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Sum_1SumOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Я
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape_1ReshapeOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Sum_1lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/ReshapeT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape_1
Ж
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
М
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
П
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/ShapeShape@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1*
T0*
_output_shapes
:
Р
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape_1Shape?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge*
T0*
_output_shapes
:

_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_accStackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape^gradients/Add*
_output_shapes
:*
T0
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape_1
ю
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape_1
щ
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter_1Enterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
э
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
Ћ
lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
ў
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ц
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/MulMuldgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependency_1Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
ђ
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge*
dtype0*
_output_shapes
: 
Д
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/f_accStackV2Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/Const*
	elem_type0*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge*
_output_shapes
:
С
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/EnterEnterSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Р
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPushV2StackPushV2Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/Enter?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPopV2
StackPopV2^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
ж
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPopV2/EnterEnterSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ї
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/SumSumMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/ReshapeReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Sumjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
Ъ
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1MulZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPopV2dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ@
ѕ
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1*
dtype0*
_output_shapes
: 
Й
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/f_accStackV2Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1
Х
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/EnterEnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Х
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPushV2StackPushV2Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/Enter@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1^gradients/Add*'
_output_shapes
:џџџџџџџџџ@*
T0

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPopV2
StackPopV2`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
к
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPopV2/EnterEnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
­
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Sum_1SumOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
Я
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1ReshapeOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Sum_1lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*'
_output_shapes
:џџџџџџџџџ@*
T0

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/ReshapeT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1
Ж
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
М
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ@*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1
 
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/ShapeConst^gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
П
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape_1Shape@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1*
_output_shapes
:*
T0
у
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgsBroadcastGradientArgsMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shapehgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape_1*
dtype0*
_output_shapes
: 
ф
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/f_accStackV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/Const*
	elem_type0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape_1*
_output_shapes
:
с
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
у
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
Ѓ
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
і
ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
И
Kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/SumSumbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/control_dependency]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:

Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/ReshapeReshapeKgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/SumMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape*
T0*
_output_shapes
: 
М
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Sum_1Sumbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/control_dependency_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ф
Kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/NegNegMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Sum_1*
T0*
_output_shapes
:
Х
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Reshape_1ReshapeKgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Neghgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/group_depsNoOpP^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/ReshapeR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Reshape_1

`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/control_dependencyIdentityOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/ReshapeY^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/group_deps*
_output_shapes
: *
T0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Reshape
Д
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/control_dependency_1IdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Reshape_1Y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
ѕ
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/ConstConst*
valueB :
џџџџџџџџџ*T
_classJ
HFloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
dtype0*
_output_shapes
: 
И
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/f_accStackV2Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/Const*
	elem_type0
*T
_classJ
HFloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
_output_shapes
:
У
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/EnterEnterTgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Г
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPushV2StackPushV2Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id^gradients/Add*
T0
*
_output_shapes
: 

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2
StackPopV2_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0

и
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2/EnterEnterTgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
а
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/cond_gradSwitchdgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/control_dependency_1Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
Т
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/group_depsNoOpY^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/cond_grad
Щ
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/control_dependencyIdentityXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/cond_grad`^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
Э
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/control_dependency_1IdentityZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/cond_grad:1`^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@

gradients/AddN_4AddNbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/tuple/control_dependencybgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/tuple/control_dependency_1*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Reshape*
N*'
_output_shapes
:џџџџџџџџџ@
ћ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/InvertPermutationInvertPermutationggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/InvertPermutation/Const*
_output_shapes
:
Ш
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/InvertPermutation/ConstConst^gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/transpose	Transposegradients/AddN_4agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/InvertPermutation*
T0*'
_output_shapes
:@џџџџџџџџџ
б
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/ShapeShapeEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul*
T0*
_output_shapes
:
д
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1ShapeFhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast*
T0*
_output_shapes
:
­
lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgswgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ў
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*o
_classe
caloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape*
dtype0*
_output_shapes
: 

rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_accStackV2rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Const*o
_classe
caloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape*
_output_shapes
:*
	elem_type0
џ
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/EnterEnterrgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2/Switch\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:
ѓ
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2/SwitchSwitchrgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*
_class{
ywloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter* 
_output_shapes
::
Ь
sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_syncControlTrigger^gradients/StackPushV2^gradients/StackPushV2_1y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2{^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1g^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2i^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2w^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2e^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2g^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2
я
sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/SwitchSwitchygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*o
_classe
caloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape* 
_output_shapes
::

ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch/EnterEnterrgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
is_constant(*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
:*
T0*o
_classe
caloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape*
parallel_iterations 
Ї
wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch*
_output_shapes
:*
	elem_type0
В
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1

tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Const_1*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1*
_output_shapes
:*
	elem_type0

tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Entertgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ђ
zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1/Switch^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
њ
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1/SwitchSwitchtgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id* 
_output_shapes
::*
T0*
_class}
{yloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1
ѕ
ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch_1Switch{gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch_1/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1* 
_output_shapes
::

{gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch_1/EnterEntertgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1*
parallel_iterations *
is_constant(*
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ћ
ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Switch_1*
	elem_type0*
_output_shapes
:
у
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/MulMulggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/control_dependencyegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@

`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*Y
_classO
MKloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast*
dtype0*
_output_shapes
: 
е
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/f_accStackV2`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Const*Y
_classO
MKloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast*
_output_shapes
:*
	elem_type0
л
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/EnterEnter`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ю
fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2StackPushV2mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2/SwitchFhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
М
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2/SwitchSwitch`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*s
_classi
geloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Enter* 
_output_shapes
::
Е
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/SwitchSwitchggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*Y
_classO
MKloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast* 
_output_shapes
::
Ч
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Switch/EnterEnter`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/f_acc*
T0*Y
_classO
MKloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast*
parallel_iterations *
is_constant(*
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPopV2
StackPopV2agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Switch*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
Ю
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/SumSumZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mullgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
№
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/ReshapeReshapeZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Sumwgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
ч
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1Mulggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPopV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ@*
T0

bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/ConstConst*
valueB :
џџџџџџџџџ*X
_classN
LJloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul*
dtype0*
_output_shapes
: 
и
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/f_accStackV2bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Const*X
_classN
LJloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul*
_output_shapes
:*
	elem_type0
п
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/EnterEnterbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ё
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2StackPushV2ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2/SwitchEhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
Т
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2/SwitchSwitchbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id* 
_output_shapes
::*
T0*u
_classk
igloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Enter
И
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/SwitchSwitchigradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*X
_classN
LJloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul* 
_output_shapes
::
Ъ
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Switch/EnterEnterbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/f_acc*
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*X
_classN
LJloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul*
parallel_iterations *
is_constant(

ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPopV2
StackPopV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Switch*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
д
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Sum_1Sum\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
і
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshape_1Reshape\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Sum_1ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ@
Г
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/group_depsNoOp_^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshapea^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshape_1
ъ
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/control_dependencyIdentity^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshapeh^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/group_deps*
T0*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
№
qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/control_dependency_1Identity`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshape_1h^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/group_deps*
T0*s
_classi
geloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
Л
gradients/Switch_2Switch@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
S
gradients/Shape_1Shapegradients/Switch_2*
_output_shapes
:*
T0

gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*$
_class
loc:@gradients/Shape_1
~
gradients/f_accStackV2gradients/Const*
	elem_type0*$
_class
loc:@gradients/Shape_1*
_output_shapes
:
Й
gradients/EnterEntergradients/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
}
gradients/StackPushV2StackPushV2gradients/Entergradients/Shape_1^gradients/Add*
T0*
_output_shapes
:
т
gradients/Switch_3Switchgradients/Switch_3/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*$
_class
loc:@gradients/Shape_1* 
_output_shapes
::
ђ
gradients/Switch_3/EnterEntergradients/f_acc*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
:*
T0*$
_class
loc:@gradients/Shape_1*
parallel_iterations *
is_constant(
c
gradients/StackPopV2
StackPopV2gradients/Switch_3*
	elem_type0*
_output_shapes
:
l
gradients/zeros_1/ConstConst^gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_1Fillgradients/StackPopV2gradients/zeros_1/Const*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0

[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1_grad/cond_gradMergegradients/zeros_1igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/tuple/control_dependency_1*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
з
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGradSigmoidGradbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPopV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1_grad/transpose*
T0*'
_output_shapes
:@џџџџџџџџџ
љ
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*O
_classE
CAloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid
Х
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/f_accStackV2]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/Const*
	elem_type0*O
_classE
CAloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid*
_output_shapes
:
е
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/EnterEnter]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
б
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/Enter<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid^gradients/Add*
T0*'
_output_shapes
:@џџџџџџџџџ
Є
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:@џџџџџџџџџ*
	elem_type0
ъ
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnter]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
и
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/ShapeShapeNhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch*
T0*
_output_shapes
:
Џ
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape_1Const^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 

jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPopV2\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*m
_classc
a_loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape*
dtype0*
_output_shapes
: 

pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*m
_classc
a_loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape*
_output_shapes
:
ћ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/EnterEnterpgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2}gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2/SwitchZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:
э
}gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2/SwitchSwitchpgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*
_classy
wuloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Enter* 
_output_shapes
::
щ
qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/SwitchSwitchwgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*m
_classc
a_loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape* 
_output_shapes
::
ћ
wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Switch/EnterEnterpgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*m
_classc
a_loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape*
parallel_iterations *
is_constant(*
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ѓ
ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Switch*
	elem_type0*
_output_shapes
:
ч
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/MulMulogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/control_dependencycgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@

^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/ConstConst*
valueB :
џџџџџџџџџ*\
_classR
PNloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv*
dtype0*
_output_shapes
: 
д
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/f_accStackV2^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Const*\
_classR
PNloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv*
_output_shapes
:*
	elem_type0
з
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/EnterEnter^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
м
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2StackPushV2kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2/SwitchIhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv^gradients/Add*
T0*
_output_shapes
: 
Ж
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2/SwitchSwitch^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Enter* 
_output_shapes
::
Д
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/SwitchSwitchegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2* 
_output_shapes
::*
T0*\
_classR
PNloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv
Ц
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Switch/EnterEnter^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/f_acc*
is_constant(*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
:*
T0*\
_classR
PNloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv*
parallel_iterations 
ћ
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPopV2
StackPopV2_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Switch*
_output_shapes
: *
	elem_type0
Ш
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/SumSumXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Muljgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
ъ
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/ReshapeReshapeXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Sumugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
ы
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1Mulegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPopV2ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ@*
T0

`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4
Я
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/f_accStackV2`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Const*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4*
_output_shapes
:*
	elem_type0
л
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/EnterEnter`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
і
fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2StackPushV2mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2/SwitchNhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
М
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2/SwitchSwitch`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/EnterAhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*s
_classi
geloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Enter* 
_output_shapes
::
Џ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/SwitchSwitchggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Switch/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4* 
_output_shapes
::
С
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Switch/EnterEnter`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/f_acc*
is_constant(*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
:*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4*
parallel_iterations 

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPopV2
StackPopV2agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Switch*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
Ю
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Sum_1SumZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1lgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0
Ф
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape_1ReshapeZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Sum_1\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape_1*
_output_shapes
: *
T0
­
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/group_depsNoOp]^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape_^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape_1
т
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/control_dependencyIdentity\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshapef^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/group_deps*
T0*o
_classe
caloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
з
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/control_dependency_1Identity^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape_1f^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/group_deps*
T0*q
_classg
ecloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Reshape_1*
_output_shapes
: 
И
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/ShapeShape;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul*
T0*
_output_shapes
:
А
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape_1Const^gradients/Sub*
valueB"@      *
dtype0*
_output_shapes
:
х
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*`
_classV
TRloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape*
dtype0*
_output_shapes
: 
т
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/f_accStackV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*`
_classV
TRloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape
с
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
с
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/EnterMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape^gradients/Add*
T0*
_output_shapes
:
Ѓ
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
і
ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
­
Kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/SumSumWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
У
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/ReshapeReshapeKgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Sumhgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:@џџџџџџџџџ
Б
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Sum_1SumWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ѕ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Reshape_1ReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Sum_1Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape_1*
T0*
_output_shapes

:@

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/group_depsNoOpP^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/ReshapeR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Reshape_1
Ў
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/control_dependencyIdentityOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/ReshapeY^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/group_deps*'
_output_shapes
:@џџџџџџџџџ*
T0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Reshape
Ћ
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/control_dependency_1IdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Reshape_1Y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Reshape_1*
_output_shapes

:@
Л
gradients/Switch_4Switch@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id*
T0*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4*:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@
U
gradients/Shape_2Shapegradients/Switch_4:1*
T0*
_output_shapes
:

gradients/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*$
_class
loc:@gradients/Shape_2

gradients/f_acc_1StackV2gradients/Const_1*
	elem_type0*$
_class
loc:@gradients/Shape_2*
_output_shapes
:
Н
gradients/Enter_1Entergradients/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context

gradients/StackPushV2_1StackPushV2gradients/Enter_1gradients/Shape_2^gradients/Add*
_output_shapes
:*
T0
т
gradients/Switch_5Switchgradients/Switch_5/EnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPopV2*
T0*$
_class
loc:@gradients/Shape_2* 
_output_shapes
::
є
gradients/Switch_5/EnterEntergradients/f_acc_1*
is_constant(*
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*$
_class
loc:@gradients/Shape_2*
parallel_iterations 
g
gradients/StackPopV2_1
StackPopV2gradients/Switch_5:1*
_output_shapes
:*
	elem_type0
l
gradients/zeros_2/ConstConst^gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_2Fillgradients/StackPopV2_1gradients/zeros_2/Const*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Џ
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch_grad/cond_gradMergemgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/tuple/control_dependencygradients/zeros_2*
T0*
N*)
_output_shapes
:џџџџџџџџџ@: 
з
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMulMatMul`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/control_dependency\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2*
transpose_b(*
T0*
_output_shapes

:@[
ѕ
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose
Л
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/f_accStackV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/Const*Q
_classG
ECloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose*
_output_shapes
:*
	elem_type0
Щ
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Ч
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPushV2StackPushV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/Enter>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose^gradients/Add*
T0*'
_output_shapes
:[џџџџџџџџџ

\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2
StackPopV2bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:[џџџџџџџџџ
о
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
п
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1MatMulYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1/Enter`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/control_dependency*
T0*'
_output_shapes
:[џџџџџџџџџ*
transpose_a(

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1/EnterEntergru_para_gru/w_z/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMulT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1
Џ
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul*
_output_shapes

:@[
О
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1*'
_output_shapes
:[џџџџџџџџџ
Ј
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_accConst*
valueB@*    *
dtype0*
_output_shapes

:@
О
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_1EnterSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc*
parallel_iterations *
_output_shapes

:@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0
Ц
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_2MergeUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_1[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@: 
§
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/SwitchSwitchUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@:@
Н
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/AddAddVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/Switch:1bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0
ш
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/NextIterationNextIterationQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/Add*
T0*
_output_shapes

:@
м
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_3ExitTgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/Switch*
T0*
_output_shapes

:@

gradients/AddN_5AddN[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1_grad/cond_gradggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch_grad/cond_grad*
N*'
_output_shapes
:џџџџџџџџџ@*
T0*n
_classd
b`loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1_grad/cond_grad
ћ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/InvertPermutationInvertPermutationggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/InvertPermutation/Const*
_output_shapes
:
Ш
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/InvertPermutation/ConstConst^gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/transpose	Transposegradients/AddN_5agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/InvertPermutation*
T0*'
_output_shapes
:@џџџџџџџџџ
Ћ
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_accConst*
dtype0*
_output_shapes

:@[*
valueB@[*    
Ф
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_1EnterVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Я
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_2MergeXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_1^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@[: 

Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/SwitchSwitchXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@[:@[
Ф
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/AddAddYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/Switch:1cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes

:@[
ю
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/NextIterationNextIterationTgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/Add*
_output_shapes

:@[*
T0
т
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_3ExitWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/Switch*
T0*
_output_shapes

:@[
Ш
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGradTanhGrad\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPopV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4_grad/transpose*'
_output_shapes
:@џџџџџџџџџ*
T0
№
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/ConstConst*
valueB :
џџџџџџџџџ*L
_classB
@>loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh*
dtype0*
_output_shapes
: 
Ж
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/f_accStackV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/Const*L
_classB
@>loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh*
_output_shapes
:*
	elem_type0
Щ
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Т
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPushV2StackPushV2Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/Enter9hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh^gradients/Add*
T0*'
_output_shapes
:@џџџџџџџџџ

\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPopV2
StackPopV2bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:@џџџџџџџџџ
о
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPopV2/EnterEnterWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
М
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/ShapeShape=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2*
T0*
_output_shapes
:
В
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape_1Const^gradients/Sub*
dtype0*
_output_shapes
:*
valueB"@      
ы
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/f_accStackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/Const*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape*
_output_shapes
:*
	elem_type0
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ћ
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/SumSumQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/ReshapeReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Sumjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:@џџџџџџџџџ
Џ
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Sum_1SumQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGradagradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ћ
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape_1ReshapeOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Sum_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape_1*
T0*
_output_shapes

:@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/ReshapeT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape_1
Ж
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape*'
_output_shapes
:@џџџџџџџџџ
Г
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Reshape_1*
_output_shapes

:@
н
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMulMatMulbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/control_dependency^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPopV2*
T0*
_output_shapes

:@[*
transpose_b(
љ
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/ConstConst*
valueB :
џџџџџџџџџ*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3*
dtype0*
_output_shapes
: 
С
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/f_accStackV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/Const*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3*
_output_shapes
:*
	elem_type0
Э
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Э
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPushV2StackPushV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/Enter@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3^gradients/Add*
T0*'
_output_shapes
:[џџџџџџџџџ

^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPopV2
StackPopV2dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:[џџџџџџџџџ*
	elem_type0
т
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPopV2/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
х
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1MatMul[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1/Enterbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/control_dependency*'
_output_shapes
:[џџџџџџџџџ*
transpose_a(*
T0

[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1/EnterEntergru_para_gru/w_t/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/group_depsNoOpT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMulV^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1
З
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/control_dependencyIdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul*
_output_shapes

:@[
Ц
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/control_dependency_1IdentityUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul_1*'
_output_shapes
:[џџџџџџџџџ
Њ
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_accConst*
valueB@*    *
dtype0*
_output_shapes

:@
Т
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_1EnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes

:@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ь
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_2MergeWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_1]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/NextIteration*
N* 
_output_shapes
:@: *
T0

Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/SwitchSwitchWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@:@
У
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/AddAddXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/Switch:1dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/tuple/control_dependency_1*
_output_shapes

:@*
T0
ь
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/NextIterationNextIterationSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/Add*
T0*
_output_shapes

:@
р
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_3ExitVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/Switch*
_output_shapes

:@*
T0
­
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_accConst*
dtype0*
_output_shapes

:@[*
valueB@[*    
Ш
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_1EnterXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
е
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_2MergeZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_1`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@[: 

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/SwitchSwitchZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@[:@[
Ъ
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/AddAdd[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/Switch:1egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:@[
ђ
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/NextIterationNextIterationVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/Add*
T0*
_output_shapes

:@[
ц
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_3ExitYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/Switch*
T0*
_output_shapes

:@[
ћ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/InvertPermutationInvertPermutationggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/InvertPermutation/Const*
_output_shapes
:
Ш
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/InvertPermutation/ConstConst^gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:
ф
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/transpose	Transposeggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/tuple/control_dependency_1agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/InvertPermutation*
T0*'
_output_shapes
:џџџџџџџџџ[
Є
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/RankConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
Є
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/modFloorModRgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ConstQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Rank*
T0*
_output_shapes
: 
Л
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeShape9hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3*
T0*
_output_shapes
:
г
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeNShapeN^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2_1*
T0*
N* 
_output_shapes
::
ђ
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/ConstConst*
valueB :
џџџџџџџџџ*L
_classB
@>loc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3*
dtype0*
_output_shapes
: 
К
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_accStackV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Const*L
_classB
@>loc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3*
_output_shapes
:*
	elem_type0
Э
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Ц
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2StackPushV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter9hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ

^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2
StackPopV2dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ*
	elem_type0
т
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2/EnterEnterYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
ѓ
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Const_1Const*
valueB :
џџџџџџџџџ*K
_classA
?=loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul*
dtype0*
_output_shapes
: 
Н
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc_1StackV2[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Const_1*
_output_shapes
:*
	elem_type0*K
_classA
?=loc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul
б
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter_1Enter[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
Щ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2_1StackPushV2[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter_18hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul^gradients/Add*
T0*'
_output_shapes
:џџџџџџџџџ@
 
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:џџџџџџџџџ@
ц
fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2_1/EnterEnter[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc_1*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ConcatOffsetConcatOffsetPgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/modSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeNUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
Ѕ
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/SliceSliceYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/transposeYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ConcatOffsetSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN*'
_output_shapes
:џџџџџџџџџ*
Index0*
T0
Ћ
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice_1SliceYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3_grad/transpose[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ConcatOffset:1Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN:1*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@

]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/group_depsNoOpS^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/SliceU^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice_1
О
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/control_dependencyIdentityRgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice*'
_output_shapes
:џџџџџџџџџ
Ф
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/control_dependency_1IdentityTgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice_1^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ@
Н
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/ShapeShape@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2*
T0*
_output_shapes
:
Ї
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape_1Shape(hawkes_rnn/hawkes_rnn_1/while/Identity_3*
T0*
_output_shapes
:

]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgsBroadcastGradientArgshgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*`
_classV
TRloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape*
dtype0*
_output_shapes
: 
т
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_accStackV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*`
_classV
TRloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape*
_output_shapes
:
с
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
с
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/EnterMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape^gradients/Add*
T0*
_output_shapes
:
Ѓ
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
і
ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEntercgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape_1*
dtype0*
_output_shapes
: 
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc_1StackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape_1
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter_1Enteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter_1Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ф
Kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/MulMulggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/control_dependency_1Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2*'
_output_shapes
:џџџџџџџџџ@*
T0
Ё
Kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/SumSumKgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
У
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/ReshapeReshapeKgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Sumhgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:џџџџџџџџџ@
Щ
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1MulXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPopV2ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ@
ѓ
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *
valueB :
џџџџџџџџџ*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2
Е
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/f_accStackV2Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/Const*S
_classI
GEloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2*
_output_shapes
:*
	elem_type0
С
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/EnterEnterSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
С
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPushV2StackPushV2Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/Enter@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2^gradients/Add*'
_output_shapes
:џџџџџџџџџ@*
T0

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPopV2
StackPopV2^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:џџџџџџџџџ@*
	elem_type0
ж
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPopV2/EnterEnterSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Ї
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Sum_1SumMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Reshape_1ReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Sum_1jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*'
_output_shapes
:џџџџџџџџџ@

Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/group_depsNoOpP^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/ReshapeR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Reshape_1
Ў
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/control_dependencyIdentityOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/ReshapeY^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ@
Д
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/control_dependency_1IdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Reshape_1Y^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ@
ћ
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/InvertPermutationInvertPermutationggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/InvertPermutation/Const*
_output_shapes
:
Ш
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/InvertPermutation/ConstConst^gradients/Sub*
valueB"       *
dtype0*
_output_shapes
:
н
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/transpose	Transpose`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/control_dependencyagradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/InvertPermutation*
T0*'
_output_shapes
:@џџџџџџџџџ
л
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGradSigmoidGraddgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPopV2Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2_grad/transpose*
T0*'
_output_shapes
:@џџџџџџџџџ
§
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/ConstConst*
valueB :
џџџџџџџџџ*Q
_classG
ECloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1*
dtype0*
_output_shapes
: 
Ы
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/f_accStackV2_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/Const*Q
_classG
ECloc:@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1*
_output_shapes
:*
	elem_type0
й
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/EnterEnter_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
з
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPushV2StackPushV2_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/Enter>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1^gradients/Add*
T0*'
_output_shapes
:@џџџџџџџџџ
Ј
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPopV2
StackPopV2jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPopV2/Enter^gradients/Sub*
	elem_type0*'
_output_shapes
:@џџџџџџџџџ
ю
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPopV2/EnterEnter_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
М
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/ShapeShape=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1*
T0*
_output_shapes
:
В
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape_1Const^gradients/Sub*
valueB"@      *
dtype0*
_output_shapes
:
ы
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
џџџџџџџџџ*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape*
dtype0*
_output_shapes
: 
ш
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/f_accStackV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*b
_classX
VTloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape
х
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ч
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/EnterOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape^gradients/Add*
_output_shapes
:*
T0
Ї
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
њ
pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnteregradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Г
Mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/SumSumYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
Щ
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/ReshapeReshapeMgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Sumjgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*'
_output_shapes
:@џџџџџџџџџ
З
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Sum_1SumYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGradagradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
Ћ
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape_1ReshapeOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Sum_1Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape_1*
T0*
_output_shapes

:@

Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/group_depsNoOpR^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/ReshapeT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape_1
Ж
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/control_dependencyIdentityQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape*'
_output_shapes
:@џџџџџџџџџ
Г
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/control_dependency_1IdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape_1[^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/group_deps*
_output_shapes

:@*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Reshape_1
л
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMulMatMulbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/control_dependency\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPopV2*
_output_shapes

:@[*
transpose_b(*
T0
х
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1MatMul[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1/Enterbgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/control_dependency*'
_output_shapes
:[џџџџџџџџџ*
transpose_a(*
T0

[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1/EnterEntergru_para_gru/w_r/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context

]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/group_depsNoOpT^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMulV^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1
З
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/control_dependencyIdentitySgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul*
_output_shapes

:@[
Ц
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/control_dependency_1IdentityUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1^^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/group_deps*'
_output_shapes
:[џџџџџџџџџ*
T0*h
_class^
\Zloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/MatMul_1
Њ
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_accConst*
valueB@*    *
dtype0*
_output_shapes

:@
Т
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_1EnterUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc*
parallel_iterations *
_output_shapes

:@*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0
Ь
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_2MergeWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_1]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@: 

Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/SwitchSwitchWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_2gradients/b_count_2*(
_output_shapes
:@:@*
T0
У
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/AddAddXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/Switch:1dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:@
ь
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/NextIterationNextIterationSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/Add*
T0*
_output_shapes

:@
р
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_3ExitVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/Switch*
_output_shapes

:@*
T0
­
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_accConst*
valueB@[*    *
dtype0*
_output_shapes

:@[
Ш
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_1EnterXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc*
T0*
parallel_iterations *
_output_shapes

:@[*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
е
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_2MergeZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_1`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/NextIteration*
T0*
N* 
_output_shapes
:@[: 

Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/SwitchSwitchZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_output_shapes
:@[:@[
Ъ
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/AddAdd[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/Switch:1egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:@[
ђ
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/NextIterationNextIterationVgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/Add*
_output_shapes

:@[*
T0
ц
Zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_3ExitYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/Switch*
T0*
_output_shapes

:@[

gradients/AddN_6AddNegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/tuple/control_dependency_1ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1_grad/tuple/control_dependency_1*
T0*f
_class\
ZXloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul_1*
N*'
_output_shapes
:[џџџџџџџџџ
ї
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/InvertPermutationInvertPermutationegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/InvertPermutation/Const*
_output_shapes
:
Ц
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/InvertPermutation/ConstConst^gradients/Sub*
dtype0*
_output_shapes
:*
valueB"       

Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/transpose	Transposegradients/AddN_6_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/InvertPermutation*'
_output_shapes
:џџџџџџџџџ[*
T0
Ђ
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ConstConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
Ё
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 

Ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/modFloorModPgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ConstOgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Rank*
T0*
_output_shapes
: 
Й
Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeShape9hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3*
_output_shapes
:*
T0
Ц
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeNShapeN^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPopV2Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPopV2*
N* 
_output_shapes
::*
T0

Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ConcatOffsetConcatOffsetNgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/modQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeNSgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeN:1*
N* 
_output_shapes
::

Pgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/SliceSliceWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/transposeWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ConcatOffsetQgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeN*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice_1SliceWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_grad/transposeYgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ConcatOffset:1Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/ShapeN:1*'
_output_shapes
:џџџџџџџџџ@*
Index0*
T0

[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/group_depsNoOpQ^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/SliceS^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice_1
Ж
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/control_dependencyIdentityPgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice*'
_output_shapes
:џџџџџџџџџ
М
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/control_dependency_1IdentityRgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice_1\^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/group_deps*
T0*e
_class[
YWloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Slice_1*'
_output_shapes
:џџџџџџџџџ@

gradients/AddN_7AddNegradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/tuple/control_dependencycgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/control_dependency*
N*'
_output_shapes
:џџџџџџџџџ*
T0*e
_class[
YWloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Slice
ў
jgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3pgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enterrgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter*
_output_shapes

:: 

pgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1*
T0*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
:
Ч
rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter`hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
_output_shapes
: 
Ш
fgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityrgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1k^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*R
_classH
FDloc:@hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter

lgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3jgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3wgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2gradients/AddN_7fgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
њ
rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/ConstConst*
valueB :
џџџџџџџџџ*;
_class1
/-loc:@hawkes_rnn/hawkes_rnn_1/while/Identity_1*
dtype0*
_output_shapes
: 
л
rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_accStackV2rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Const*
_output_shapes
:*
	elem_type0*;
_class1
/-loc:@hawkes_rnn/hawkes_rnn_1/while/Identity_1
џ
rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*;

frame_name-+hawkes_rnn/hawkes_rnn_1/while/while_context
ж
xgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2StackPushV2rgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter(hawkes_rnn/hawkes_rnn_1/while/Identity_1^gradients/Add*
T0*
_output_shapes
: 
Н
wgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
StackPopV2}gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0

}gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2/EnterEnterrgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc*
parallel_iterations *
_output_shapes
:*E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context*
T0*
is_constant(
Й
gradients/AddN_8AddNXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/tuple/control_dependencydgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/tuple/control_dependency_1bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/tuple/control_dependency_1egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/tuple/control_dependency_1*
T0*Y
_classO
MKloc:@gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select*
N*'
_output_shapes
:џџџџџџџџџ@

Vgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_accConst*
dtype0*
_output_shapes
: *
valueB
 *    
М
Xgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterVgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
parallel_iterations *
_output_shapes
: *E

frame_name75gradients/hawkes_rnn/hawkes_rnn_1/while/while_context
Ч
Xgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeXgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_1^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
_output_shapes
: : *
T0
ѓ
Wgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/SwitchSwitchXgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*
_output_shapes
: : 
Х
Tgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/AddAddYgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/Switch:1lgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ц
^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationTgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
к
Xgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitWgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 

Egradients/hawkes_rnn/hawkes_rnn_1/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_8*
T0*'
_output_shapes
:џџџџџџџџџ@
Г
gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV33hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1Xgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*F
_class<
:8loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1*
_output_shapes

:: 
ђ
gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityXgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3^gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*F
_class<
:8loc:@hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1
Т
gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3>hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/rangegradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
ы
gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp^gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Y^gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3
ё
gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentitygradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3^gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*
_class
loc:@gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:
џџџџџџџџџ

gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityXgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3^gradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
_output_shapes
: *
T0*k
_classa
_]loc:@gradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1_grad/b_acc_3
g
%gradients/hawkes_rnn/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 

$gradients/hawkes_rnn/concat_grad/modFloorModhawkes_rnn/concat/axis%gradients/hawkes_rnn/concat_grad/Rank*
T0*
_output_shapes
: 
k
&gradients/hawkes_rnn/concat_grad/ShapeShapeautoencoder/ae/packed*
T0*
_output_shapes
:

'gradients/hawkes_rnn/concat_grad/ShapeNShapeNautoencoder/ae/packeddata_source/event_placeholder*
T0*
N* 
_output_shapes
::
т
-gradients/hawkes_rnn/concat_grad/ConcatOffsetConcatOffset$gradients/hawkes_rnn/concat_grad/mod'gradients/hawkes_rnn/concat_grad/ShapeN)gradients/hawkes_rnn/concat_grad/ShapeN:1*
N* 
_output_shapes
::
е
&gradients/hawkes_rnn/concat_grad/SliceSlicegradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency-gradients/hawkes_rnn/concat_grad/ConcatOffset'gradients/hawkes_rnn/concat_grad/ShapeN*
Index0*
T0*+
_output_shapes
:
џџџџџџџџџ
л
(gradients/hawkes_rnn/concat_grad/Slice_1Slicegradients/hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency/gradients/hawkes_rnn/concat_grad/ConcatOffset:1)gradients/hawkes_rnn/concat_grad/ShapeN:1*
Index0*
T0*+
_output_shapes
:
џџџџџџџџџ

1gradients/hawkes_rnn/concat_grad/tuple/group_depsNoOp'^gradients/hawkes_rnn/concat_grad/Slice)^gradients/hawkes_rnn/concat_grad/Slice_1

9gradients/hawkes_rnn/concat_grad/tuple/control_dependencyIdentity&gradients/hawkes_rnn/concat_grad/Slice2^gradients/hawkes_rnn/concat_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/hawkes_rnn/concat_grad/Slice*+
_output_shapes
:
џџџџџџџџџ

;gradients/hawkes_rnn/concat_grad/tuple/control_dependency_1Identity(gradients/hawkes_rnn/concat_grad/Slice_12^gradients/hawkes_rnn/concat_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/hawkes_rnn/concat_grad/Slice_1*+
_output_shapes
:
џџџџџџџџџ
§
gradients/AddN_9AddN*gradients/loss/dae_loss/unstack_grad/stack9gradients/hawkes_rnn/concat_grad/tuple/control_dependency*
N*+
_output_shapes
:
џџџџџџџџџ*
T0*=
_class3
1/loc:@gradients/loss/dae_loss/unstack_grad/stack
Г
,gradients/autoencoder/ae/packed_grad/unstackUnpackgradients/AddN_9*д
_output_shapesС
О:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*	
num
*
T0
l
5gradients/autoencoder/ae/packed_grad/tuple/group_depsNoOp-^gradients/autoencoder/ae/packed_grad/unstack
Ђ
=gradients/autoencoder/ae/packed_grad/tuple/control_dependencyIdentity,gradients/autoencoder/ae/packed_grad/unstack6^gradients/autoencoder/ae/packed_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack*'
_output_shapes
:џџџџџџџџџ
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_1Identity.gradients/autoencoder/ae/packed_grad/unstack:16^gradients/autoencoder/ae/packed_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_2Identity.gradients/autoencoder/ae/packed_grad/unstack:26^gradients/autoencoder/ae/packed_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack*'
_output_shapes
:џџџџџџџџџ
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_3Identity.gradients/autoencoder/ae/packed_grad/unstack:36^gradients/autoencoder/ae/packed_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack*'
_output_shapes
:џџџџџџџџџ
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_4Identity.gradients/autoencoder/ae/packed_grad/unstack:46^gradients/autoencoder/ae/packed_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack*'
_output_shapes
:џџџџџџџџџ
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_5Identity.gradients/autoencoder/ae/packed_grad/unstack:56^gradients/autoencoder/ae/packed_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_6Identity.gradients/autoencoder/ae/packed_grad/unstack:66^gradients/autoencoder/ae/packed_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack*'
_output_shapes
:џџџџџџџџџ
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_7Identity.gradients/autoencoder/ae/packed_grad/unstack:76^gradients/autoencoder/ae/packed_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_8Identity.gradients/autoencoder/ae/packed_grad/unstack:86^gradients/autoencoder/ae/packed_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack
І
?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_9Identity.gradients/autoencoder/ae/packed_grad/unstack:96^gradients/autoencoder/ae/packed_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*
T0*?
_class5
31loc:@gradients/autoencoder/ae/packed_grad/unstack
Щ
1gradients/autoencoder/ae/Sigmoid_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid=gradients/autoencoder/ae/packed_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_1_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_1?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0
Я
3gradients/autoencoder/ae/Sigmoid_2_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_2?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_2*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_3_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_3?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_3*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_4_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_4?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_4*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_5_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_5?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_5*'
_output_shapes
:џџџџџџџџџ*
T0
Я
3gradients/autoencoder/ae/Sigmoid_6_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_6?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_6*'
_output_shapes
:џџџџџџџџџ*
T0
Я
3gradients/autoencoder/ae/Sigmoid_7_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_7?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_7*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_8_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_8?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_8*
T0*'
_output_shapes
:џџџџџџџџџ
Я
3gradients/autoencoder/ae/Sigmoid_9_grad/SigmoidGradSigmoidGradautoencoder/ae/Sigmoid_9?gradients/autoencoder/ae/packed_grad/tuple/control_dependency_9*'
_output_shapes
:џџџџџџџџџ*
T0
в
+gradients/autoencoder/ae/MatMul_grad/MatMulMatMul1gradients/autoencoder/ae/Sigmoid_grad/SigmoidGrad"auto_encoder_parameter/weight/read*(
_output_shapes
:џџџџџџџџџН*
transpose_b(*
T0
П
-gradients/autoencoder/ae/MatMul_grad/MatMul_1MatMulautoencoder/ae/unstack1gradients/autoencoder/ae/Sigmoid_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(

5gradients/autoencoder/ae/MatMul_grad/tuple/group_depsNoOp,^gradients/autoencoder/ae/MatMul_grad/MatMul.^gradients/autoencoder/ae/MatMul_grad/MatMul_1
Ё
=gradients/autoencoder/ae/MatMul_grad/tuple/control_dependencyIdentity+gradients/autoencoder/ae/MatMul_grad/MatMul6^gradients/autoencoder/ae/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/autoencoder/ae/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџН

?gradients/autoencoder/ae/MatMul_grad/tuple/control_dependency_1Identity-gradients/autoencoder/ae/MatMul_grad/MatMul_16^gradients/autoencoder/ae/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_1_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_1_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџН
Х
/gradients/autoencoder/ae/MatMul_1_grad/MatMul_1MatMulautoencoder/ae/unstack:13gradients/autoencoder/ae/Sigmoid_1_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_1_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_1_grad/MatMul0^gradients/autoencoder/ae/MatMul_1_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_1_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_1_grad/MatMul8^gradients/autoencoder/ae/MatMul_1_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_1_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_1_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_1_grad/MatMul_18^gradients/autoencoder/ae/MatMul_1_grad/tuple/group_deps*
_output_shapes
:	Н*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_1_grad/MatMul_1
ж
-gradients/autoencoder/ae/MatMul_2_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_2_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџН
Х
/gradients/autoencoder/ae/MatMul_2_grad/MatMul_1MatMulautoencoder/ae/unstack:23gradients/autoencoder/ae/Sigmoid_2_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_2_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_2_grad/MatMul0^gradients/autoencoder/ae/MatMul_2_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_2_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_2_grad/MatMul8^gradients/autoencoder/ae/MatMul_2_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_2_grad/MatMul
І
Agradients/autoencoder/ae/MatMul_2_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_2_grad/MatMul_18^gradients/autoencoder/ae/MatMul_2_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_2_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_3_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_3_grad/SigmoidGrad"auto_encoder_parameter/weight/read*(
_output_shapes
:џџџџџџџџџН*
transpose_b(*
T0
Х
/gradients/autoencoder/ae/MatMul_3_grad/MatMul_1MatMulautoencoder/ae/unstack:33gradients/autoencoder/ae/Sigmoid_3_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_3_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_3_grad/MatMul0^gradients/autoencoder/ae/MatMul_3_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_3_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_3_grad/MatMul8^gradients/autoencoder/ae/MatMul_3_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_3_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_3_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_3_grad/MatMul_18^gradients/autoencoder/ae/MatMul_3_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_3_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_4_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_4_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
T0*(
_output_shapes
:џџџџџџџџџН*
transpose_b(
Х
/gradients/autoencoder/ae/MatMul_4_grad/MatMul_1MatMulautoencoder/ae/unstack:43gradients/autoencoder/ae/Sigmoid_4_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_4_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_4_grad/MatMul0^gradients/autoencoder/ae/MatMul_4_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_4_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_4_grad/MatMul8^gradients/autoencoder/ae/MatMul_4_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџН*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_4_grad/MatMul
І
Agradients/autoencoder/ae/MatMul_4_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_4_grad/MatMul_18^gradients/autoencoder/ae/MatMul_4_grad/tuple/group_deps*
_output_shapes
:	Н*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_4_grad/MatMul_1
ж
-gradients/autoencoder/ae/MatMul_5_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_5_grad/SigmoidGrad"auto_encoder_parameter/weight/read*(
_output_shapes
:џџџџџџџџџН*
transpose_b(*
T0
Х
/gradients/autoencoder/ae/MatMul_5_grad/MatMul_1MatMulautoencoder/ae/unstack:53gradients/autoencoder/ae/Sigmoid_5_grad/SigmoidGrad*
_output_shapes
:	Н*
transpose_a(*
T0
Ё
7gradients/autoencoder/ae/MatMul_5_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_5_grad/MatMul0^gradients/autoencoder/ae/MatMul_5_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_5_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_5_grad/MatMul8^gradients/autoencoder/ae/MatMul_5_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_5_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_5_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_5_grad/MatMul_18^gradients/autoencoder/ae/MatMul_5_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_5_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_6_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_6_grad/SigmoidGrad"auto_encoder_parameter/weight/read*(
_output_shapes
:џџџџџџџџџН*
transpose_b(*
T0
Х
/gradients/autoencoder/ae/MatMul_6_grad/MatMul_1MatMulautoencoder/ae/unstack:63gradients/autoencoder/ae/Sigmoid_6_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_6_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_6_grad/MatMul0^gradients/autoencoder/ae/MatMul_6_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_6_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_6_grad/MatMul8^gradients/autoencoder/ae/MatMul_6_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_6_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_6_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_6_grad/MatMul_18^gradients/autoencoder/ae/MatMul_6_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_6_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_7_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_7_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
T0*(
_output_shapes
:џџџџџџџџџН*
transpose_b(
Х
/gradients/autoencoder/ae/MatMul_7_grad/MatMul_1MatMulautoencoder/ae/unstack:73gradients/autoencoder/ae/Sigmoid_7_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_7_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_7_grad/MatMul0^gradients/autoencoder/ae/MatMul_7_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_7_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_7_grad/MatMul8^gradients/autoencoder/ae/MatMul_7_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_7_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_7_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_7_grad/MatMul_18^gradients/autoencoder/ae/MatMul_7_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_7_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_8_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_8_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
T0*(
_output_shapes
:џџџџџџџџџН*
transpose_b(
Х
/gradients/autoencoder/ae/MatMul_8_grad/MatMul_1MatMulautoencoder/ae/unstack:83gradients/autoencoder/ae/Sigmoid_8_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_8_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_8_grad/MatMul0^gradients/autoencoder/ae/MatMul_8_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_8_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_8_grad/MatMul8^gradients/autoencoder/ae/MatMul_8_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_8_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_8_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_8_grad/MatMul_18^gradients/autoencoder/ae/MatMul_8_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_8_grad/MatMul_1*
_output_shapes
:	Н
ж
-gradients/autoencoder/ae/MatMul_9_grad/MatMulMatMul3gradients/autoencoder/ae/Sigmoid_9_grad/SigmoidGrad"auto_encoder_parameter/weight/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџН
Х
/gradients/autoencoder/ae/MatMul_9_grad/MatMul_1MatMulautoencoder/ae/unstack:93gradients/autoencoder/ae/Sigmoid_9_grad/SigmoidGrad*
T0*
_output_shapes
:	Н*
transpose_a(
Ё
7gradients/autoencoder/ae/MatMul_9_grad/tuple/group_depsNoOp.^gradients/autoencoder/ae/MatMul_9_grad/MatMul0^gradients/autoencoder/ae/MatMul_9_grad/MatMul_1
Љ
?gradients/autoencoder/ae/MatMul_9_grad/tuple/control_dependencyIdentity-gradients/autoencoder/ae/MatMul_9_grad/MatMul8^gradients/autoencoder/ae/MatMul_9_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/autoencoder/ae/MatMul_9_grad/MatMul*(
_output_shapes
:џџџџџџџџџН
І
Agradients/autoencoder/ae/MatMul_9_grad/tuple/control_dependency_1Identity/gradients/autoencoder/ae/MatMul_9_grad/MatMul_18^gradients/autoencoder/ae/MatMul_9_grad/tuple/group_deps*
_output_shapes
:	Н*
T0*B
_class8
64loc:@gradients/autoencoder/ae/MatMul_9_grad/MatMul_1
п
gradients/AddN_10AddN0gradients/loss/dae_loss/transpose_grad/transpose?gradients/autoencoder/ae/MatMul_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_1_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_2_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_3_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_4_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_5_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_6_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_7_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_8_grad/tuple/control_dependency_1Agradients/autoencoder/ae/MatMul_9_grad/tuple/control_dependency_1*
T0*C
_class9
75loc:@gradients/loss/dae_loss/transpose_grad/transpose*
N*
_output_shapes
:	Н

beta1_power/initial_valueConst*
valueB
 *fff?*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
: 
}
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shape: *0
_class&
$"loc:@auto_encoder_parameter/weight

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 
|
beta1_power/readIdentitybeta1_power*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *wО?*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
: 
}
beta2_power
VariableV2*
shape: *0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
: 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 
|
beta2_power/readIdentitybeta2_power*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 
­
7gru_para_gru/w_z/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@gru_para_gru/w_z*
valueB"@   [   *
dtype0*
_output_shapes
:

-gru_para_gru/w_z/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@gru_para_gru/w_z*
valueB
 *    
х
'gru_para_gru/w_z/Adam/Initializer/zerosFill7gru_para_gru/w_z/Adam/Initializer/zeros/shape_as_tensor-gru_para_gru/w_z/Adam/Initializer/zeros/Const*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_z

gru_para_gru/w_z/Adam
VariableV2*
dtype0*
_output_shapes

:@[*
shape
:@[*#
_class
loc:@gru_para_gru/w_z
Д
gru_para_gru/w_z/Adam/AssignAssigngru_para_gru/w_z/Adam'gru_para_gru/w_z/Adam/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

gru_para_gru/w_z/Adam/readIdentitygru_para_gru/w_z/Adam*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[
Џ
9gru_para_gru/w_z/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@gru_para_gru/w_z*
valueB"@   [   

/gru_para_gru/w_z/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@gru_para_gru/w_z*
valueB
 *    
ы
)gru_para_gru/w_z/Adam_1/Initializer/zerosFill9gru_para_gru/w_z/Adam_1/Initializer/zeros/shape_as_tensor/gru_para_gru/w_z/Adam_1/Initializer/zeros/Const*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_z

gru_para_gru/w_z/Adam_1
VariableV2*#
_class
loc:@gru_para_gru/w_z*
dtype0*
_output_shapes

:@[*
shape
:@[
К
gru_para_gru/w_z/Adam_1/AssignAssigngru_para_gru/w_z/Adam_1)gru_para_gru/w_z/Adam_1/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

gru_para_gru/w_z/Adam_1/readIdentitygru_para_gru/w_z/Adam_1*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[
­
7gru_para_gru/w_r/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@gru_para_gru/w_r*
valueB"@   [   *
dtype0*
_output_shapes
:

-gru_para_gru/w_r/Adam/Initializer/zeros/ConstConst*#
_class
loc:@gru_para_gru/w_r*
valueB
 *    *
dtype0*
_output_shapes
: 
х
'gru_para_gru/w_r/Adam/Initializer/zerosFill7gru_para_gru/w_r/Adam/Initializer/zeros/shape_as_tensor-gru_para_gru/w_r/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r/Adam
VariableV2*
shape
:@[*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes

:@[
Д
gru_para_gru/w_r/Adam/AssignAssigngru_para_gru/w_r/Adam'gru_para_gru/w_r/Adam/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r/Adam/readIdentitygru_para_gru/w_r/Adam*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[
Џ
9gru_para_gru/w_r/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@gru_para_gru/w_r*
valueB"@   [   

/gru_para_gru/w_r/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@gru_para_gru/w_r*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
)gru_para_gru/w_r/Adam_1/Initializer/zerosFill9gru_para_gru/w_r/Adam_1/Initializer/zeros/shape_as_tensor/gru_para_gru/w_r/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r/Adam_1
VariableV2*#
_class
loc:@gru_para_gru/w_r*
dtype0*
_output_shapes

:@[*
shape
:@[
К
gru_para_gru/w_r/Adam_1/AssignAssigngru_para_gru/w_r/Adam_1)gru_para_gru/w_r/Adam_1/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

gru_para_gru/w_r/Adam_1/readIdentitygru_para_gru/w_r/Adam_1*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_r
­
7gru_para_gru/w_t/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@gru_para_gru/w_t*
valueB"@   [   *
dtype0*
_output_shapes
:

-gru_para_gru/w_t/Adam/Initializer/zeros/ConstConst*#
_class
loc:@gru_para_gru/w_t*
valueB
 *    *
dtype0*
_output_shapes
: 
х
'gru_para_gru/w_t/Adam/Initializer/zerosFill7gru_para_gru/w_t/Adam/Initializer/zeros/shape_as_tensor-gru_para_gru/w_t/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

gru_para_gru/w_t/Adam
VariableV2*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes

:@[*
shape
:@[
Д
gru_para_gru/w_t/Adam/AssignAssigngru_para_gru/w_t/Adam'gru_para_gru/w_t/Adam/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

gru_para_gru/w_t/Adam/readIdentitygru_para_gru/w_t/Adam*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_t
Џ
9gru_para_gru/w_t/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@gru_para_gru/w_t*
valueB"@   [   *
dtype0*
_output_shapes
:

/gru_para_gru/w_t/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@gru_para_gru/w_t*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
)gru_para_gru/w_t/Adam_1/Initializer/zerosFill9gru_para_gru/w_t/Adam_1/Initializer/zeros/shape_as_tensor/gru_para_gru/w_t/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

gru_para_gru/w_t/Adam_1
VariableV2*#
_class
loc:@gru_para_gru/w_t*
dtype0*
_output_shapes

:@[*
shape
:@[
К
gru_para_gru/w_t/Adam_1/AssignAssigngru_para_gru/w_t/Adam_1)gru_para_gru/w_t/Adam_1/Initializer/zeros*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_t

gru_para_gru/w_t/Adam_1/readIdentitygru_para_gru/w_t/Adam_1*
_output_shapes

:@[*
T0*#
_class
loc:@gru_para_gru/w_t
Ё
'gru_para_gru/b_z/Adam/Initializer/zerosConst*#
_class
loc:@gru_para_gru/b_z*
valueB@*    *
dtype0*
_output_shapes

:@

gru_para_gru/b_z/Adam
VariableV2*#
_class
loc:@gru_para_gru/b_z*
dtype0*
_output_shapes

:@*
shape
:@
Д
gru_para_gru/b_z/Adam/AssignAssigngru_para_gru/b_z/Adam'gru_para_gru/b_z/Adam/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

gru_para_gru/b_z/Adam/readIdentitygru_para_gru/b_z/Adam*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@
Ѓ
)gru_para_gru/b_z/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:@*#
_class
loc:@gru_para_gru/b_z*
valueB@*    

gru_para_gru/b_z/Adam_1
VariableV2*
dtype0*
_output_shapes

:@*
shape
:@*#
_class
loc:@gru_para_gru/b_z
К
gru_para_gru/b_z/Adam_1/AssignAssigngru_para_gru/b_z/Adam_1)gru_para_gru/b_z/Adam_1/Initializer/zeros*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_z

gru_para_gru/b_z/Adam_1/readIdentitygru_para_gru/b_z/Adam_1*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@
Ё
'gru_para_gru/b_r/Adam/Initializer/zerosConst*#
_class
loc:@gru_para_gru/b_r*
valueB@*    *
dtype0*
_output_shapes

:@

gru_para_gru/b_r/Adam
VariableV2*
shape
:@*#
_class
loc:@gru_para_gru/b_r*
dtype0*
_output_shapes

:@
Д
gru_para_gru/b_r/Adam/AssignAssigngru_para_gru/b_r/Adam'gru_para_gru/b_r/Adam/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

gru_para_gru/b_r/Adam/readIdentitygru_para_gru/b_r/Adam*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@
Ѓ
)gru_para_gru/b_r/Adam_1/Initializer/zerosConst*#
_class
loc:@gru_para_gru/b_r*
valueB@*    *
dtype0*
_output_shapes

:@

gru_para_gru/b_r/Adam_1
VariableV2*#
_class
loc:@gru_para_gru/b_r*
dtype0*
_output_shapes

:@*
shape
:@
К
gru_para_gru/b_r/Adam_1/AssignAssigngru_para_gru/b_r/Adam_1)gru_para_gru/b_r/Adam_1/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

gru_para_gru/b_r/Adam_1/readIdentitygru_para_gru/b_r/Adam_1*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@
Ё
'gru_para_gru/b_t/Adam/Initializer/zerosConst*#
_class
loc:@gru_para_gru/b_t*
valueB@*    *
dtype0*
_output_shapes

:@

gru_para_gru/b_t/Adam
VariableV2*#
_class
loc:@gru_para_gru/b_t*
dtype0*
_output_shapes

:@*
shape
:@
Д
gru_para_gru/b_t/Adam/AssignAssigngru_para_gru/b_t/Adam'gru_para_gru/b_t/Adam/Initializer/zeros*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_t

gru_para_gru/b_t/Adam/readIdentitygru_para_gru/b_t/Adam*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@
Ѓ
)gru_para_gru/b_t/Adam_1/Initializer/zerosConst*#
_class
loc:@gru_para_gru/b_t*
valueB@*    *
dtype0*
_output_shapes

:@

gru_para_gru/b_t/Adam_1
VariableV2*
dtype0*
_output_shapes

:@*
shape
:@*#
_class
loc:@gru_para_gru/b_t
К
gru_para_gru/b_t/Adam_1/AssignAssigngru_para_gru/b_t/Adam_1)gru_para_gru/b_t/Adam_1/Initializer/zeros*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@

gru_para_gru/b_t/Adam_1/readIdentitygru_para_gru/b_t/Adam_1*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_t
Ч
Dauto_encoder_parameter/weight/Adam/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@auto_encoder_parameter/weight*
valueB"Н      *
dtype0*
_output_shapes
:
Б
:auto_encoder_parameter/weight/Adam/Initializer/zeros/ConstConst*0
_class&
$"loc:@auto_encoder_parameter/weight*
valueB
 *    *
dtype0*
_output_shapes
: 

4auto_encoder_parameter/weight/Adam/Initializer/zerosFillDauto_encoder_parameter/weight/Adam/Initializer/zeros/shape_as_tensor:auto_encoder_parameter/weight/Adam/Initializer/zeros/Const*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
І
"auto_encoder_parameter/weight/Adam
VariableV2*
shape:	Н*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
:	Н
щ
)auto_encoder_parameter/weight/Adam/AssignAssign"auto_encoder_parameter/weight/Adam4auto_encoder_parameter/weight/Adam/Initializer/zeros*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Г
'auto_encoder_parameter/weight/Adam/readIdentity"auto_encoder_parameter/weight/Adam*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Щ
Fauto_encoder_parameter/weight/Adam_1/Initializer/zeros/shape_as_tensorConst*0
_class&
$"loc:@auto_encoder_parameter/weight*
valueB"Н      *
dtype0*
_output_shapes
:
Г
<auto_encoder_parameter/weight/Adam_1/Initializer/zeros/ConstConst*0
_class&
$"loc:@auto_encoder_parameter/weight*
valueB
 *    *
dtype0*
_output_shapes
: 
 
6auto_encoder_parameter/weight/Adam_1/Initializer/zerosFillFauto_encoder_parameter/weight/Adam_1/Initializer/zeros/shape_as_tensor<auto_encoder_parameter/weight/Adam_1/Initializer/zeros/Const*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Ј
$auto_encoder_parameter/weight/Adam_1
VariableV2*0
_class&
$"loc:@auto_encoder_parameter/weight*
dtype0*
_output_shapes
:	Н*
shape:	Н
я
+auto_encoder_parameter/weight/Adam_1/AssignAssign$auto_encoder_parameter/weight/Adam_16auto_encoder_parameter/weight/Adam_1/Initializer/zeros*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
З
)auto_encoder_parameter/weight/Adam_1/readIdentity$auto_encoder_parameter/weight/Adam_1*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
­
-hawkes_rnn/trans_decay/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*)
_class
loc:@hawkes_rnn/trans_decay*
valueB@*    

hawkes_rnn/trans_decay/Adam
VariableV2*)
_class
loc:@hawkes_rnn/trans_decay*
dtype0*
_output_shapes

:@*
shape
:@
Ь
"hawkes_rnn/trans_decay/Adam/AssignAssignhawkes_rnn/trans_decay/Adam-hawkes_rnn/trans_decay/Adam/Initializer/zeros*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@

 hawkes_rnn/trans_decay/Adam/readIdentityhawkes_rnn/trans_decay/Adam*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@
Џ
/hawkes_rnn/trans_decay/Adam_1/Initializer/zerosConst*)
_class
loc:@hawkes_rnn/trans_decay*
valueB@*    *
dtype0*
_output_shapes

:@

hawkes_rnn/trans_decay/Adam_1
VariableV2*
shape
:@*)
_class
loc:@hawkes_rnn/trans_decay*
dtype0*
_output_shapes

:@
в
$hawkes_rnn/trans_decay/Adam_1/AssignAssignhawkes_rnn/trans_decay/Adam_1/hawkes_rnn/trans_decay/Adam_1/Initializer/zeros*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@
Ё
"hawkes_rnn/trans_decay/Adam_1/readIdentityhawkes_rnn/trans_decay/Adam_1*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@
Ѕ
)output_para/weight/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*%
_class
loc:@output_para/weight*
valueB@*    

output_para/weight/Adam
VariableV2*
dtype0*
_output_shapes

:@*
shape
:@*%
_class
loc:@output_para/weight
М
output_para/weight/Adam/AssignAssignoutput_para/weight/Adam)output_para/weight/Adam/Initializer/zeros*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

output_para/weight/Adam/readIdentityoutput_para/weight/Adam*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
Ї
+output_para/weight/Adam_1/Initializer/zerosConst*%
_class
loc:@output_para/weight*
valueB@*    *
dtype0*
_output_shapes

:@

output_para/weight/Adam_1
VariableV2*%
_class
loc:@output_para/weight*
dtype0*
_output_shapes

:@*
shape
:@
Т
 output_para/weight/Adam_1/AssignAssignoutput_para/weight/Adam_1+output_para/weight/Adam_1/Initializer/zeros*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

output_para/weight/Adam_1/readIdentityoutput_para/weight/Adam_1*
_output_shapes

:@*
T0*%
_class
loc:@output_para/weight

'output_para/bias/Adam/Initializer/zerosConst*#
_class
loc:@output_para/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
z
output_para/bias/Adam
VariableV2*#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: *
shape: 
Ќ
output_para/bias/Adam/AssignAssignoutput_para/bias/Adam'output_para/bias/Adam/Initializer/zeros*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

output_para/bias/Adam/readIdentityoutput_para/bias/Adam*
_output_shapes
: *
T0*#
_class
loc:@output_para/bias

)output_para/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@output_para/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
|
output_para/bias/Adam_1
VariableV2*
shape: *#
_class
loc:@output_para/bias*
dtype0*
_output_shapes
: 
В
output_para/bias/Adam_1/AssignAssignoutput_para/bias/Adam_1)output_para/bias/Adam_1/Initializer/zeros*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

output_para/bias/Adam_1/readIdentityoutput_para/bias/Adam_1*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 
ћ
&Adam/update_gru_para_gru/w_z/ApplyAdam	ApplyAdamgru_para_gru/w_zgru_para_gru/w_z/Adamgru_para_gru/w_z/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonXgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter_grad/b_acc_3*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[
§
&Adam/update_gru_para_gru/w_r/ApplyAdam	ApplyAdamgru_para_gru/w_rgru_para_gru/w_r/Adamgru_para_gru/w_r/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter_grad/b_acc_3*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[
§
&Adam/update_gru_para_gru/w_t/ApplyAdam	ApplyAdamgru_para_gru/w_tgru_para_gru/w_t/Adamgru_para_gru/w_t/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonZgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter_grad/b_acc_3*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[
ј
&Adam/update_gru_para_gru/b_z/ApplyAdam	ApplyAdamgru_para_gru/b_zgru_para_gru/b_z/Adamgru_para_gru/b_z/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonUgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter_grad/b_acc_3*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_z
њ
&Adam/update_gru_para_gru/b_r/ApplyAdam	ApplyAdamgru_para_gru/b_rgru_para_gru/b_r/Adamgru_para_gru/b_r/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter_grad/b_acc_3*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@
њ
&Adam/update_gru_para_gru/b_t/ApplyAdam	ApplyAdamgru_para_gru/b_tgru_para_gru/b_t/Adamgru_para_gru/b_t/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter_grad/b_acc_3*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@
і
3Adam/update_auto_encoder_parameter/weight/ApplyAdam	ApplyAdamauto_encoder_parameter/weight"auto_encoder_parameter/weight/Adam$auto_encoder_parameter/weight/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_10*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н

,Adam/update_hawkes_rnn/trans_decay/ApplyAdam	ApplyAdamhawkes_rnn/trans_decayhawkes_rnn/trans_decay/Adamhawkes_rnn/trans_decay/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonKgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter_grad/b_acc_3*
_output_shapes

:@*
T0*)
_class
loc:@hawkes_rnn/trans_decay
ш
(Adam/update_output_para/weight/ApplyAdam	ApplyAdamoutput_para/weightoutput_para/weight/Adamoutput_para/weight/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/prediction/MatMul_grad/tuple/control_dependency_1*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
г
&Adam/update_output_para/bias/ApplyAdam	ApplyAdamoutput_para/biasoutput_para/bias/Adamoutput_para/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/prediction/add_grad/tuple/control_dependency_1*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 
Џ
Adam/mulMulbeta1_power/read
Adam/beta14^Adam/update_auto_encoder_parameter/weight/ApplyAdam'^Adam/update_gru_para_gru/b_r/ApplyAdam'^Adam/update_gru_para_gru/b_t/ApplyAdam'^Adam/update_gru_para_gru/b_z/ApplyAdam'^Adam/update_gru_para_gru/w_r/ApplyAdam'^Adam/update_gru_para_gru/w_t/ApplyAdam'^Adam/update_gru_para_gru/w_z/ApplyAdam-^Adam/update_hawkes_rnn/trans_decay/ApplyAdam'^Adam/update_output_para/bias/ApplyAdam)^Adam/update_output_para/weight/ApplyAdam*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 
Б

Adam/mul_1Mulbeta2_power/read
Adam/beta24^Adam/update_auto_encoder_parameter/weight/ApplyAdam'^Adam/update_gru_para_gru/b_r/ApplyAdam'^Adam/update_gru_para_gru/b_t/ApplyAdam'^Adam/update_gru_para_gru/b_z/ApplyAdam'^Adam/update_gru_para_gru/w_r/ApplyAdam'^Adam/update_gru_para_gru/w_t/ApplyAdam'^Adam/update_gru_para_gru/w_z/ApplyAdam-^Adam/update_hawkes_rnn/trans_decay/ApplyAdam'^Adam/update_output_para/bias/ApplyAdam)^Adam/update_output_para/weight/ApplyAdam*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: *
use_locking( 
й
AdamNoOp^Adam/Assign^Adam/Assign_14^Adam/update_auto_encoder_parameter/weight/ApplyAdam'^Adam/update_gru_para_gru/b_r/ApplyAdam'^Adam/update_gru_para_gru/b_t/ApplyAdam'^Adam/update_gru_para_gru/b_z/ApplyAdam'^Adam/update_gru_para_gru/w_r/ApplyAdam'^Adam/update_gru_para_gru/w_t/ApplyAdam'^Adam/update_gru_para_gru/w_z/ApplyAdam-^Adam/update_hawkes_rnn/trans_decay/ApplyAdam'^Adam/update_output_para/bias/ApplyAdam)^Adam/update_output_para/weight/ApplyAdam
љ
initNoOp*^auto_encoder_parameter/weight/Adam/Assign,^auto_encoder_parameter/weight/Adam_1/Assign%^auto_encoder_parameter/weight/Assign^beta1_power/Assign^beta2_power/Assign^gru_para_gru/b_r/Adam/Assign^gru_para_gru/b_r/Adam_1/Assign^gru_para_gru/b_r/Assign^gru_para_gru/b_t/Adam/Assign^gru_para_gru/b_t/Adam_1/Assign^gru_para_gru/b_t/Assign^gru_para_gru/b_z/Adam/Assign^gru_para_gru/b_z/Adam_1/Assign^gru_para_gru/b_z/Assign^gru_para_gru/w_r/Adam/Assign^gru_para_gru/w_r/Adam_1/Assign^gru_para_gru/w_r/Assign^gru_para_gru/w_t/Adam/Assign^gru_para_gru/w_t/Adam_1/Assign^gru_para_gru/w_t/Assign^gru_para_gru/w_z/Adam/Assign^gru_para_gru/w_z/Adam_1/Assign^gru_para_gru/w_z/Assign#^hawkes_rnn/trans_decay/Adam/Assign%^hawkes_rnn/trans_decay/Adam_1/Assign^hawkes_rnn/trans_decay/Assign^output_para/bias/Adam/Assign^output_para/bias/Adam_1/Assign^output_para/bias/Assign^output_para/weight/Adam/Assign!^output_para/weight/Adam_1/Assign^output_para/weight/Assign

init_all_tablesNoOp
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_fc88b68cb3c94edb988afa2084ffdd7c/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
о
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueјBѕ Bauto_encoder_parameter/weightB"auto_encoder_parameter/weight/AdamB$auto_encoder_parameter/weight/Adam_1Bbeta1_powerBbeta2_powerBgru_para_gru/b_rBgru_para_gru/b_r/AdamBgru_para_gru/b_r/Adam_1Bgru_para_gru/b_tBgru_para_gru/b_t/AdamBgru_para_gru/b_t/Adam_1Bgru_para_gru/b_zBgru_para_gru/b_z/AdamBgru_para_gru/b_z/Adam_1Bgru_para_gru/w_rBgru_para_gru/w_r/AdamBgru_para_gru/w_r/Adam_1Bgru_para_gru/w_tBgru_para_gru/w_t/AdamBgru_para_gru/w_t/Adam_1Bgru_para_gru/w_zBgru_para_gru/w_z/AdamBgru_para_gru/w_z/Adam_1Bhawkes_rnn/trans_decayBhawkes_rnn/trans_decay/AdamBhawkes_rnn/trans_decay/Adam_1Boutput_para/biasBoutput_para/bias/AdamBoutput_para/bias/Adam_1Boutput_para/weightBoutput_para/weight/AdamBoutput_para/weight/Adam_1*
dtype0*
_output_shapes
: 
В
save/SaveV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesauto_encoder_parameter/weight"auto_encoder_parameter/weight/Adam$auto_encoder_parameter/weight/Adam_1beta1_powerbeta2_powergru_para_gru/b_rgru_para_gru/b_r/Adamgru_para_gru/b_r/Adam_1gru_para_gru/b_tgru_para_gru/b_t/Adamgru_para_gru/b_t/Adam_1gru_para_gru/b_zgru_para_gru/b_z/Adamgru_para_gru/b_z/Adam_1gru_para_gru/w_rgru_para_gru/w_r/Adamgru_para_gru/w_r/Adam_1gru_para_gru/w_tgru_para_gru/w_t/Adamgru_para_gru/w_t/Adam_1gru_para_gru/w_zgru_para_gru/w_z/Adamgru_para_gru/w_z/Adam_1hawkes_rnn/trans_decayhawkes_rnn/trans_decay/Adamhawkes_rnn/trans_decay/Adam_1output_para/biasoutput_para/bias/Adamoutput_para/bias/Adam_1output_para/weightoutput_para/weight/Adamoutput_para/weight/Adam_1"/device:CPU:0*.
dtypes$
"2 
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
с
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueјBѕ Bauto_encoder_parameter/weightB"auto_encoder_parameter/weight/AdamB$auto_encoder_parameter/weight/Adam_1Bbeta1_powerBbeta2_powerBgru_para_gru/b_rBgru_para_gru/b_r/AdamBgru_para_gru/b_r/Adam_1Bgru_para_gru/b_tBgru_para_gru/b_t/AdamBgru_para_gru/b_t/Adam_1Bgru_para_gru/b_zBgru_para_gru/b_z/AdamBgru_para_gru/b_z/Adam_1Bgru_para_gru/w_rBgru_para_gru/w_r/AdamBgru_para_gru/w_r/Adam_1Bgru_para_gru/w_tBgru_para_gru/w_t/AdamBgru_para_gru/w_t/Adam_1Bgru_para_gru/w_zBgru_para_gru/w_z/AdamBgru_para_gru/w_z/Adam_1Bhawkes_rnn/trans_decayBhawkes_rnn/trans_decay/AdamBhawkes_rnn/trans_decay/Adam_1Boutput_para/biasBoutput_para/bias/AdamBoutput_para/bias/Adam_1Boutput_para/weightBoutput_para/weight/AdamBoutput_para/weight/Adam_1
Е
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
Н
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
 
save/AssignAssignauto_encoder_parameter/weightsave/RestoreV2*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Љ
save/Assign_1Assign"auto_encoder_parameter/weight/Adamsave/RestoreV2:1*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
:	Н
Ћ
save/Assign_2Assign$auto_encoder_parameter/weight/Adam_1save/RestoreV2:2*
_output_shapes
:	Н*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight

save/Assign_3Assignbeta1_powersave/RestoreV2:3*
_output_shapes
: *
T0*0
_class&
$"loc:@auto_encoder_parameter/weight

save/Assign_4Assignbeta2_powersave/RestoreV2:4*
T0*0
_class&
$"loc:@auto_encoder_parameter/weight*
_output_shapes
: 

save/Assign_5Assigngru_para_gru/b_rsave/RestoreV2:5*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

save/Assign_6Assigngru_para_gru/b_r/Adamsave/RestoreV2:6*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_r

save/Assign_7Assigngru_para_gru/b_r/Adam_1save/RestoreV2:7*
T0*#
_class
loc:@gru_para_gru/b_r*
_output_shapes

:@

save/Assign_8Assigngru_para_gru/b_tsave/RestoreV2:8*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@

save/Assign_9Assigngru_para_gru/b_t/Adamsave/RestoreV2:9*
T0*#
_class
loc:@gru_para_gru/b_t*
_output_shapes

:@

save/Assign_10Assigngru_para_gru/b_t/Adam_1save/RestoreV2:10*
_output_shapes

:@*
T0*#
_class
loc:@gru_para_gru/b_t

save/Assign_11Assigngru_para_gru/b_zsave/RestoreV2:11*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

save/Assign_12Assigngru_para_gru/b_z/Adamsave/RestoreV2:12*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

save/Assign_13Assigngru_para_gru/b_z/Adam_1save/RestoreV2:13*
T0*#
_class
loc:@gru_para_gru/b_z*
_output_shapes

:@

save/Assign_14Assigngru_para_gru/w_rsave/RestoreV2:14*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

save/Assign_15Assigngru_para_gru/w_r/Adamsave/RestoreV2:15*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

save/Assign_16Assigngru_para_gru/w_r/Adam_1save/RestoreV2:16*
T0*#
_class
loc:@gru_para_gru/w_r*
_output_shapes

:@[

save/Assign_17Assigngru_para_gru/w_tsave/RestoreV2:17*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

save/Assign_18Assigngru_para_gru/w_t/Adamsave/RestoreV2:18*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

save/Assign_19Assigngru_para_gru/w_t/Adam_1save/RestoreV2:19*
T0*#
_class
loc:@gru_para_gru/w_t*
_output_shapes

:@[

save/Assign_20Assigngru_para_gru/w_zsave/RestoreV2:20*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

save/Assign_21Assigngru_para_gru/w_z/Adamsave/RestoreV2:21*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

save/Assign_22Assigngru_para_gru/w_z/Adam_1save/RestoreV2:22*
T0*#
_class
loc:@gru_para_gru/w_z*
_output_shapes

:@[

save/Assign_23Assignhawkes_rnn/trans_decaysave/RestoreV2:23*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@

save/Assign_24Assignhawkes_rnn/trans_decay/Adamsave/RestoreV2:24*
_output_shapes

:@*
T0*)
_class
loc:@hawkes_rnn/trans_decay

save/Assign_25Assignhawkes_rnn/trans_decay/Adam_1save/RestoreV2:25*
T0*)
_class
loc:@hawkes_rnn/trans_decay*
_output_shapes

:@

save/Assign_26Assignoutput_para/biassave/RestoreV2:26*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

save/Assign_27Assignoutput_para/bias/Adamsave/RestoreV2:27*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

save/Assign_28Assignoutput_para/bias/Adam_1save/RestoreV2:28*
T0*#
_class
loc:@output_para/bias*
_output_shapes
: 

save/Assign_29Assignoutput_para/weightsave/RestoreV2:29*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

save/Assign_30Assignoutput_para/weight/Adamsave/RestoreV2:30*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@

save/Assign_31Assignoutput_para/weight/Adam_1save/RestoreV2:31*
T0*%
_class
loc:@output_para/weight*
_output_shapes

:@
Ў
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"у	
trainable_variablesЫ	Ш	
n
gru_para_gru/w_z:0gru_para_gru/w_z/Assigngru_para_gru/w_z/read:02$gru_para_gru/w_z/Initializer/mul_1:08
n
gru_para_gru/w_r:0gru_para_gru/w_r/Assigngru_para_gru/w_r/read:02$gru_para_gru/w_r/Initializer/mul_1:08
n
gru_para_gru/w_t:0gru_para_gru/w_t/Assigngru_para_gru/w_t/read:02$gru_para_gru/w_t/Initializer/mul_1:08
n
gru_para_gru/b_z:0gru_para_gru/b_z/Assigngru_para_gru/b_z/read:02$gru_para_gru/b_z/Initializer/zeros:08
n
gru_para_gru/b_r:0gru_para_gru/b_r/Assigngru_para_gru/b_r/read:02$gru_para_gru/b_r/Initializer/zeros:08
n
gru_para_gru/b_t:0gru_para_gru/b_t/Assigngru_para_gru/b_t/read:02$gru_para_gru/b_t/Initializer/zeros:08
Ђ
auto_encoder_parameter/weight:0$auto_encoder_parameter/weight/Assign$auto_encoder_parameter/weight/read:021auto_encoder_parameter/weight/Initializer/mul_1:08

hawkes_rnn/trans_decay:0hawkes_rnn/trans_decay/Assignhawkes_rnn/trans_decay/read:023hawkes_rnn/trans_decay/Initializer/random_uniform:08
v
output_para/weight:0output_para/weight/Assignoutput_para/weight/read:02&output_para/weight/Initializer/mul_1:08
w
output_para/bias:0output_para/bias/Assignoutput_para/bias/read:02-output_para/bias/Initializer/random_uniform:08"щЄ
while_contextжЄвЄ
ЮЄ
+hawkes_rnn/hawkes_rnn_1/while/while_context *(hawkes_rnn/hawkes_rnn_1/while/LoopCond:02%hawkes_rnn/hawkes_rnn_1/while/Merge:0:(hawkes_rnn/hawkes_rnn_1/while/Identity:0B$hawkes_rnn/hawkes_rnn_1/while/Exit:0B&hawkes_rnn/hawkes_rnn_1/while/Exit_1:0B&hawkes_rnn/hawkes_rnn_1/while/Exit_2:0B&hawkes_rnn/hawkes_rnn_1/while/Exit_3:0Bgradients/f_count_2:0JЬ
data_source/base_intensity:0
data_source/event_placeholder:0
data_source/mutual_intensity:0
data_source/task_index:0
data_source/time_list:0
gradients/Add/y:0
gradients/Add:0
gradients/Enter:0
gradients/Enter_1:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Shape_1:0
gradients/Shape_2:0
gradients/StackPushV2:0
gradients/StackPushV2_1:0
gradients/Switch:0
gradients/Switch:1
gradients/Switch_2:0
gradients/Switch_2:1
gradients/Switch_4:0
gradients/Switch_4:1
gradients/f_acc:0
gradients/f_acc_1:0
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
Mgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/Enter:0
Sgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/StackPushV2:0
Mgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/Enter:0
Wgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/StackPushV2:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/f_acc:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/Enter:0
agradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/f_acc:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/Enter:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/StackPushV2:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/f_acc:0
Egradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Shape:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/Enter:0
_gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/StackPushV2:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/f_acc:0
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/Enter:0
Ogradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/StackPushV2:0
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/f_acc:0
Cgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/Enter:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/StackPushV2:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/f_acc:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/Enter:0
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/StackPushV2:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/f_acc:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/Enter:0
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/StackPushV2:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/f_acc:0
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/Enter:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/StackPushV2:0
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/f_acc:0
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/Enter:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/StackPushV2:0
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/f_acc:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/Enter:0
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/StackPushV2:0
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/f_acc:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/Enter:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/Shape:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/Enter:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/Shape:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter_1:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/StackPushV2_1:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc_1:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape:0
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/Shape_1:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/Enter:0
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/StackPushV2:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/f_acc:0
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/Shape:0
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/Shape:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter:0
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter_1:0
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2:0
cgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/StackPushV2_1:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc:0
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc_1:0
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_grad/Shape:0
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/Enter:0
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/StackPushV2:0
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/f_acc:0
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter:0
vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2/Switch:0
zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1/Switch:0
|gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc:0
vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Enter:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2/Switch:0
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/f_acc:0
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Enter:0
qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2/Switch:0
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2:0
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/f_acc:0
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape:0
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1:0
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Enter:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2/Switch:0
xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Enter:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2/Switch:0
fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2:0
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/f_acc:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Enter:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2/Switch:0
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/f_acc:0
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter_1:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/Enter:0
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/StackPushV2:0
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape:0
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Shape_1:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter_1:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc:0
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/Enter:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/StackPushV2:0
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/f_acc:0
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/Enter:0
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/StackPushV2:0
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape:0
Sgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Shape_1:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter_1:0
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc:0
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc_1:0
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/Enter:0
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/StackPushV2:0
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/f_acc:0
Ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Shape_1:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/Enter:0
kgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/StackPushV2:0
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/f_acc:0
Qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/Shape_1:0
Ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/Enter:0
Tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/StackPushV2:0
Ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/f_acc:0
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/Enter:0
Xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/StackPushV2:0
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/f_acc:0
tgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
zgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2:0
tgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
gru_para_gru/b_r/read:0
gru_para_gru/b_t/read:0
gru_para_gru/b_z/read:0
gru_para_gru/w_r/read:0
gru_para_gru/w_t/read:0
gru_para_gru/w_z/read:0
3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray:0
bhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
5hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1:0
%hawkes_rnn/hawkes_rnn_1/while/Enter:0
'hawkes_rnn/hawkes_rnn_1/while/Enter_1:0
'hawkes_rnn/hawkes_rnn_1/while/Enter_2:0
'hawkes_rnn/hawkes_rnn_1/while/Enter_3:0
$hawkes_rnn/hawkes_rnn_1/while/Exit:0
&hawkes_rnn/hawkes_rnn_1/while/Exit_1:0
&hawkes_rnn/hawkes_rnn_1/while/Exit_2:0
&hawkes_rnn/hawkes_rnn_1/while/Exit_3:0
(hawkes_rnn/hawkes_rnn_1/while/Identity:0
*hawkes_rnn/hawkes_rnn_1/while/Identity_1:0
*hawkes_rnn/hawkes_rnn_1/while/Identity_2:0
*hawkes_rnn/hawkes_rnn_1/while/Identity_3:0
*hawkes_rnn/hawkes_rnn_1/while/Less/Enter:0
$hawkes_rnn/hawkes_rnn_1/while/Less:0
&hawkes_rnn/hawkes_rnn_1/while/Less_1:0
*hawkes_rnn/hawkes_rnn_1/while/LogicalAnd:0
(hawkes_rnn/hawkes_rnn_1/while/LoopCond:0
%hawkes_rnn/hawkes_rnn_1/while/Merge:0
%hawkes_rnn/hawkes_rnn_1/while/Merge:1
'hawkes_rnn/hawkes_rnn_1/while/Merge_1:0
'hawkes_rnn/hawkes_rnn_1/while/Merge_1:1
'hawkes_rnn/hawkes_rnn_1/while/Merge_2:0
'hawkes_rnn/hawkes_rnn_1/while/Merge_2:1
'hawkes_rnn/hawkes_rnn_1/while/Merge_3:0
'hawkes_rnn/hawkes_rnn_1/while/Merge_3:1
-hawkes_rnn/hawkes_rnn_1/while/NextIteration:0
/hawkes_rnn/hawkes_rnn_1/while/NextIteration_1:0
/hawkes_rnn/hawkes_rnn_1/while/NextIteration_2:0
/hawkes_rnn/hawkes_rnn_1/while/NextIteration_3:0
&hawkes_rnn/hawkes_rnn_1/while/Switch:0
&hawkes_rnn/hawkes_rnn_1/while/Switch:1
(hawkes_rnn/hawkes_rnn_1/while/Switch_1:0
(hawkes_rnn/hawkes_rnn_1/while/Switch_1:1
(hawkes_rnn/hawkes_rnn_1/while/Switch_2:0
(hawkes_rnn/hawkes_rnn_1/while/Switch_2:1
(hawkes_rnn/hawkes_rnn_1/while/Switch_3:0
(hawkes_rnn/hawkes_rnn_1/while/Switch_3:1
%hawkes_rnn/hawkes_rnn_1/while/add/y:0
#hawkes_rnn/hawkes_rnn_1/while/add:0
'hawkes_rnn/hawkes_rnn_1/while/add_1/y:0
%hawkes_rnn/hawkes_rnn_1/while/add_1:0
7hawkes_rnn/hawkes_rnn_1/while/decay_node/GreaterEqual:0
1hawkes_rnn/hawkes_rnn_1/while/decay_node/Select:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape/Enter:0
Phawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape:0
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/Enter:0
Phawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/y:0
Nhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add:0
Phawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add_1:0
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack:0
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_1:0
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice/stack_2:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice:0
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/Enter:0
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_1:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/stack_2:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Const:0
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Less/y:0
Uhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/Less:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mul/y:0
Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/mul:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packed/1:0
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros/packed:0
Phawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/zeros:0
Rhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/Const:0
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_1:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2:0
_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter:0
dhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/iteration_counter:0
ehawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterations:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter:0
.hawkes_rnn/hawkes_rnn_1/while/decay_node/mul:0
6hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter:0
0hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/Enter:0
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/y:0
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater:0
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter:0
=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul:0
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter:0
?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1:0
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter:0
?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2:0
>hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid:0
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1:0
;hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh:0
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter:0
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat/axis:0
=hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1/axis:0
?hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1:0
Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge:0
Ahawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge:1
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch:1
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:1
Hhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast:0
Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/GreaterEqual:0
Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1:0
`hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/RandomUniform:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/max:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/min:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/mul:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/sub:0
Rhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform:0
Hhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/rate:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub/x:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub:0
Mhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv/x:0
Khawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv:0
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_t:0
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub/x:0
:hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub:0
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose/perm:0
@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1/perm:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_1:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2/perm:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_2:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3/perm:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_3:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4/perm:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4:0
<hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual/Enter:0
6hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual:0
6hawkes_rnn/hawkes_rnn_1/while/new_state/Select/Enter:0
0hawkes_rnn/hawkes_rnn_1/while/new_state/Select:0
2hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1:0
Ahawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter:0
Chawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1:0
;hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3:0
Vhawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Phawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3:0
1hawkes_rnn/input_shape_hawkes_rnn/strided_slice:0
(hawkes_rnn/prepare_ops_hawkes_rnn/time:0
)hawkes_rnn/prepare_ops_hawkes_rnn/zeros:0
,hawkes_rnn/sequence_length/sequence_length:0
hawkes_rnn/trans_decay/read:0
phase_indicator:0ж
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc_1:0igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter_1:0Ю
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc:0egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter:0№
vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1:0vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1:0`
gru_para_gru/w_t/read:0Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2/Enter:0А
Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/f_acc:0Vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Merge_grad/Enter:0І
Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/f_acc:0Qgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/zeros_like/Enter:0W
hawkes_rnn/trans_decay/read:06hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/f_acc_1:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/BroadcastGradientArgs/Enter_1:0^
gru_para_gru/w_z/read:0Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul/Enter:0&
gradients/f_acc:0gradients/Enter:0Ј
Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/f_acc:0Rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/zeros_like/Enter:0z
5hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray_1:0Ahawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter:0 
Ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/f_acc:0Ngradients/hawkes_rnn/hawkes_rnn_1/while/new_state/Select_1_grad/Select/Enter:0Ю
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/f_acc:0egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_grad/BroadcastGradientArgs/Enter:0Ж
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/f_acc:0Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Tanh_grad/TanhGrad/Enter:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/f_acc:0Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Shape_1/Enter:0q
data_source/time_list:0Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/Shape/Enter:0
Mgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/f_acc:0Mgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/Select_grad/Select/Enter:0c
)hawkes_rnn/prepare_ops_hawkes_rnn/zeros:06hawkes_rnn/hawkes_rnn_1/while/new_state/Select/Enter:0*
gradients/f_acc_1:0gradients/Enter_1:0Ш
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/f_acc:0bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Enter:0Ш
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/f_acc:0bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Enter:0Ж
Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/f_acc:0Ygradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_grad/MatMul/Enter:0
data_source/event_placeholder:0hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter:0`
gru_para_gru/w_r/read:0Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_1/Enter:0Ў
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/f_acc:0Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_grad/Mul_1/Enter:0ш
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/f_acc:0rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Enter:0ж
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc_1:0igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter_1:0Љ
bhawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0Chawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3/Enter_1:0К
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc:0[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter:0Ь
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/f_acc:0dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Enter:0Ж
Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/f_acc:0Ygradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/BroadcastGradientArgs/Enter:0В
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/f_acc:0Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul_1/Enter:0
(hawkes_rnn/prepare_ops_hawkes_rnn/time:0_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter:0]
gru_para_gru/b_t/read:0Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2/Enter:0ь
tgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0tgradients/hawkes_rnn/hawkes_rnn_1/while/read_data/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
data_source/base_intensity:0`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/strided_slice_1/Enter:0К
[gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/f_acc:0[gradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/BroadcastGradientArgs/Enter:0ь
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/f_acc:0tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/f_acc:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/BroadcastGradientArgs/Enter:0[
gru_para_gru/b_z/read:0@hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/f_acc:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/BroadcastGradientArgs/Enter:0l
,hawkes_rnn/sequence_length/sequence_length:0<hawkes_rnn/hawkes_rnn_1/while/new_state/GreaterEqual/Enter:0
3hawkes_rnn/hawkes_rnn_1/prepare_io_ta/TensorArray:0Vhawkes_rnn/hawkes_rnn_1/while/write_out_ta/TensorArrayWrite/TensorArrayWriteV3/Enter:0ж
igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc_1:0igradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter_1:0Ц
agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/f_acc:0agradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_1_grad/SigmoidGrad/Enter:0Ю
egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/f_acc:0egradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/sub_grad/BroadcastGradientArgs/Enter:0Т
_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/f_acc:0_gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Sigmoid_grad/SigmoidGrad/Enter:0]
gru_para_gru/b_r/read:0Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1/Enter:0К
[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/f_acc:0[gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/MatMul_2_grad/MatMul/Enter:0
Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/f_acc:0Igradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_grad/Mul_1/Enter:0
data_source/mutual_intensity:0hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/f_acc:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_3_grad/BroadcastGradientArgs/Enter:0p
data_source/task_index:0Thawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/base_intensity/add/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/f_acc:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_2_grad/BroadcastGradientArgs/Enter:0Ф
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/f_acc:0`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Enter:0в
ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/f_acc:0ggradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/add_1_grad/BroadcastGradientArgs/Enter:0Y
phase_indicator:0Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/Greater/Enter:0О
]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/f_acc_1:0]gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/concat_1_grad/ShapeN/Enter_1:0
Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/f_acc:0Kgradients/hawkes_rnn/hawkes_rnn_1/while/decay_node/mul_1_grad/Mul_1/Enter:0Ў
Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/f_acc:0Ugradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_2_grad/Mul/Enter:0_
1hawkes_rnn/input_shape_hawkes_rnn/strided_slice:0*hawkes_rnn/hawkes_rnn_1/while/Less/Enter:0В
Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/f_acc:0Wgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/mul_1_grad/Mul_1/Enter:0R%hawkes_rnn/hawkes_rnn_1/while/Enter:0R'hawkes_rnn/hawkes_rnn_1/while/Enter_1:0R'hawkes_rnn/hawkes_rnn_1/while/Enter_2:0R'hawkes_rnn/hawkes_rnn_1/while/Enter_3:0Rgradients/f_count_1:0Z1hawkes_rnn/input_shape_hawkes_rnn/strided_slice:0bЭ
Ъ
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/cond_textChawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_t:0 *ѕ
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:1
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_t:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4:0Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/Switch_1:1
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0b§1
њ1
Ehawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/cond_text_1Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f:0*Ѕ0
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter:0
vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2/Switch:0
zgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1/Switch:0
|gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Enter:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2/Switch:0
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2:0
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Enter:0
qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2/Switch:0
jgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2:0
^gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape:0
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Shape_1:0
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Enter:0
gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2/Switch:0
xgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Enter:0
mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2/Switch:0
fgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2:0
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Enter:0
ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2/Switch:0
hgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2:0
\gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Shape:0
Hhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Cast:0
Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/GreaterEqual:0
Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1:0
`hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/RandomUniform:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/max:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/min:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/mul:0
Vhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform/sub:0
Rhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/random_uniform:0
Hhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/rate:0
Ihawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub/x:0
Ghawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/sub:0
Mhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv/x:0
Khawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/truediv:0
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0
Dhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/switch_f:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4:0б
`gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/Enter:0mgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul/StackPushV2/Switch:0е
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/Enter:0ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul/StackPushV2/Switch:0ў
vgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1:0gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1/Switch:0ѕ
rgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/Enter:0gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/BroadcastGradientArgs/StackPushV2/Switch:0е
bgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/Enter:0ogradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_grad/Mul_1/StackPushV2/Switch:0
Bhawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/transpose_4:0Phawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/Shape/Switch:0њ
tgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/Enter:0gradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2/Switch:0й
dgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/Enter:0qgradients/hawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/dropout/mul_1_grad/Mul_1/StackPushV2/Switch:0
Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0Chawkes_rnn/hawkes_rnn_1/while/new_state/GRU_Internal/cond/pred_id:0bоKлK
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/while_context *[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCond:02Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge:0:[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity:0BWhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit:0BYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_1:0BYhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2:0JиC
data_source/event_placeholder:0
data_source/mutual_intensity:0
data_source/task_index:0
data_source/time_list:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_1:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_2:0
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_1:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exit_2:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Exp:0
ahawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims/dim:0
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims:0
chawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1/dim:0
_hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ExpandDims_1:0
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity:0
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_1:0
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Identity_2:0
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less/Enter:0
Whawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less:0
ahawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1:0
]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LogicalAnd:0
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/LoopCond:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/MatMul:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge:1
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_1:1
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_2:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Merge_2:1
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_1:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/NextIteration_2:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch:0
Yhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch:1
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_1:0
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_1:1
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_2:0
[hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Switch_2:1
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/ToFloat:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add/y:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1/y:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_1:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2/y:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_2:0
^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/Enter:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/y:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4/y:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_4:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_5:0
Zhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6/y:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_6:0
ehawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterations:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul/y:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul:0
Xhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/mul_1:0
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/Enter:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack/0:0
fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1/0:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_1:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/stack_2:0
`hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack/0:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack:0
lhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1/0:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_1:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1/stack_2:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_1:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter_1:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_1:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/stack_2:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter_1:0
hhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_1:0
jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/stack_2:0
bhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3:0
Vhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/sub:0
(hawkes_rnn/prepare_ops_hawkes_rnn/time:0z
data_source/task_index:0^hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/add_3/Enter:0
(hawkes_rnn/prepare_ops_hawkes_rnn/time:0ahawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less_1/Enter_1:0
data_source/time_list:0fhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice/Enter:0
data_source/mutual_intensity:0jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_2/Enter_1:0Ц
ehawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterations:0]hawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Less/Enter:0
data_source/event_placeholder:0jhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/strided_slice_3/Enter_1:0RXhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter:0RZhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_1:0RZhawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/Enter_2:0Zehawkes_rnn/hawkes_rnn_1/while/decay_node/hawkes_intensity/mutual_intensity/while/maximum_iterations:0"Й!
	variablesЋ!Ј!
n
gru_para_gru/w_z:0gru_para_gru/w_z/Assigngru_para_gru/w_z/read:02$gru_para_gru/w_z/Initializer/mul_1:08
n
gru_para_gru/w_r:0gru_para_gru/w_r/Assigngru_para_gru/w_r/read:02$gru_para_gru/w_r/Initializer/mul_1:08
n
gru_para_gru/w_t:0gru_para_gru/w_t/Assigngru_para_gru/w_t/read:02$gru_para_gru/w_t/Initializer/mul_1:08
n
gru_para_gru/b_z:0gru_para_gru/b_z/Assigngru_para_gru/b_z/read:02$gru_para_gru/b_z/Initializer/zeros:08
n
gru_para_gru/b_r:0gru_para_gru/b_r/Assigngru_para_gru/b_r/read:02$gru_para_gru/b_r/Initializer/zeros:08
n
gru_para_gru/b_t:0gru_para_gru/b_t/Assigngru_para_gru/b_t/read:02$gru_para_gru/b_t/Initializer/zeros:08
Ђ
auto_encoder_parameter/weight:0$auto_encoder_parameter/weight/Assign$auto_encoder_parameter/weight/read:021auto_encoder_parameter/weight/Initializer/mul_1:08

hawkes_rnn/trans_decay:0hawkes_rnn/trans_decay/Assignhawkes_rnn/trans_decay/read:023hawkes_rnn/trans_decay/Initializer/random_uniform:08
v
output_para/weight:0output_para/weight/Assignoutput_para/weight/read:02&output_para/weight/Initializer/mul_1:08
w
output_para/bias:0output_para/bias/Assignoutput_para/bias/read:02-output_para/bias/Initializer/random_uniform:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0

gru_para_gru/w_z/Adam:0gru_para_gru/w_z/Adam/Assigngru_para_gru/w_z/Adam/read:02)gru_para_gru/w_z/Adam/Initializer/zeros:0

gru_para_gru/w_z/Adam_1:0gru_para_gru/w_z/Adam_1/Assigngru_para_gru/w_z/Adam_1/read:02+gru_para_gru/w_z/Adam_1/Initializer/zeros:0

gru_para_gru/w_r/Adam:0gru_para_gru/w_r/Adam/Assigngru_para_gru/w_r/Adam/read:02)gru_para_gru/w_r/Adam/Initializer/zeros:0

gru_para_gru/w_r/Adam_1:0gru_para_gru/w_r/Adam_1/Assigngru_para_gru/w_r/Adam_1/read:02+gru_para_gru/w_r/Adam_1/Initializer/zeros:0

gru_para_gru/w_t/Adam:0gru_para_gru/w_t/Adam/Assigngru_para_gru/w_t/Adam/read:02)gru_para_gru/w_t/Adam/Initializer/zeros:0

gru_para_gru/w_t/Adam_1:0gru_para_gru/w_t/Adam_1/Assigngru_para_gru/w_t/Adam_1/read:02+gru_para_gru/w_t/Adam_1/Initializer/zeros:0

gru_para_gru/b_z/Adam:0gru_para_gru/b_z/Adam/Assigngru_para_gru/b_z/Adam/read:02)gru_para_gru/b_z/Adam/Initializer/zeros:0

gru_para_gru/b_z/Adam_1:0gru_para_gru/b_z/Adam_1/Assigngru_para_gru/b_z/Adam_1/read:02+gru_para_gru/b_z/Adam_1/Initializer/zeros:0

gru_para_gru/b_r/Adam:0gru_para_gru/b_r/Adam/Assigngru_para_gru/b_r/Adam/read:02)gru_para_gru/b_r/Adam/Initializer/zeros:0

gru_para_gru/b_r/Adam_1:0gru_para_gru/b_r/Adam_1/Assigngru_para_gru/b_r/Adam_1/read:02+gru_para_gru/b_r/Adam_1/Initializer/zeros:0

gru_para_gru/b_t/Adam:0gru_para_gru/b_t/Adam/Assigngru_para_gru/b_t/Adam/read:02)gru_para_gru/b_t/Adam/Initializer/zeros:0

gru_para_gru/b_t/Adam_1:0gru_para_gru/b_t/Adam_1/Assigngru_para_gru/b_t/Adam_1/read:02+gru_para_gru/b_t/Adam_1/Initializer/zeros:0
Д
$auto_encoder_parameter/weight/Adam:0)auto_encoder_parameter/weight/Adam/Assign)auto_encoder_parameter/weight/Adam/read:026auto_encoder_parameter/weight/Adam/Initializer/zeros:0
М
&auto_encoder_parameter/weight/Adam_1:0+auto_encoder_parameter/weight/Adam_1/Assign+auto_encoder_parameter/weight/Adam_1/read:028auto_encoder_parameter/weight/Adam_1/Initializer/zeros:0

hawkes_rnn/trans_decay/Adam:0"hawkes_rnn/trans_decay/Adam/Assign"hawkes_rnn/trans_decay/Adam/read:02/hawkes_rnn/trans_decay/Adam/Initializer/zeros:0
 
hawkes_rnn/trans_decay/Adam_1:0$hawkes_rnn/trans_decay/Adam_1/Assign$hawkes_rnn/trans_decay/Adam_1/read:021hawkes_rnn/trans_decay/Adam_1/Initializer/zeros:0

output_para/weight/Adam:0output_para/weight/Adam/Assignoutput_para/weight/Adam/read:02+output_para/weight/Adam/Initializer/zeros:0

output_para/weight/Adam_1:0 output_para/weight/Adam_1/Assign output_para/weight/Adam_1/read:02-output_para/weight/Adam_1/Initializer/zeros:0

output_para/bias/Adam:0output_para/bias/Adam/Assignoutput_para/bias/Adam/read:02)output_para/bias/Adam/Initializer/zeros:0

output_para/bias/Adam_1:0output_para/bias/Adam_1/Assignoutput_para/bias/Adam_1/read:02+output_para/bias/Adam_1/Initializer/zeros:0"q
lossesg
e
1loss/pred_loss/sigmoid_cross_entropy_loss/value:0
0loss/dae_loss/sigmoid_cross_entropy_loss/value:0"
train_op

Adam"Ц
cond_contextЕВ
а
$autoencoder/add_noise/cond/cond_text$autoencoder/add_noise/cond/pred_id:0%autoencoder/add_noise/cond/switch_t:0 *и
%autoencoder/add_noise/cond/Switch_1:0
%autoencoder/add_noise/cond/Switch_1:1
$autoencoder/add_noise/cond/pred_id:0
%autoencoder/add_noise/cond/switch_t:0
!data_source/context_placeholder:0J
!data_source/context_placeholder:0%autoencoder/add_noise/cond/Switch_1:1L
$autoencoder/add_noise/cond/pred_id:0$autoencoder/add_noise/cond/pred_id:0
м	
&autoencoder/add_noise/cond/cond_text_1$autoencoder/add_noise/cond/pred_id:0%autoencoder/add_noise/cond/switch_f:0*ф
)autoencoder/add_noise/cond/dropout/Cast:0
1autoencoder/add_noise/cond/dropout/GreaterEqual:0
1autoencoder/add_noise/cond/dropout/Shape/Switch:0
*autoencoder/add_noise/cond/dropout/Shape:0
(autoencoder/add_noise/cond/dropout/mul:0
*autoencoder/add_noise/cond/dropout/mul_1:0
Aautoencoder/add_noise/cond/dropout/random_uniform/RandomUniform:0
7autoencoder/add_noise/cond/dropout/random_uniform/max:0
7autoencoder/add_noise/cond/dropout/random_uniform/min:0
7autoencoder/add_noise/cond/dropout/random_uniform/mul:0
7autoencoder/add_noise/cond/dropout/random_uniform/sub:0
3autoencoder/add_noise/cond/dropout/random_uniform:0
)autoencoder/add_noise/cond/dropout/rate:0
*autoencoder/add_noise/cond/dropout/sub/x:0
(autoencoder/add_noise/cond/dropout/sub:0
.autoencoder/add_noise/cond/dropout/truediv/x:0
,autoencoder/add_noise/cond/dropout/truediv:0
$autoencoder/add_noise/cond/pred_id:0
%autoencoder/add_noise/cond/switch_f:0
!data_source/context_placeholder:0L
$autoencoder/add_noise/cond/pred_id:0$autoencoder/add_noise/cond/pred_id:0V
!data_source/context_placeholder:01autoencoder/add_noise/cond/dropout/Shape/Switch:0"*
saved_model_main_op

init_all_tables*Я
predictУ
 
phase
phase_indicator:0 
;
	time_list.
data_source/time_list:0џџџџџџџџџ

C
sequence_length0
data_source/sequence_length:0џџџџџџџџџ
&
task
data_source/task_index:0 
2
base*
data_source/base_intensity:0
6
mutual,
data_source/mutual_intensity:0
'
batch
data_source/batch_size:0 
C
event:
data_source/event_placeholder:0
џџџџџџџџџ
H
context=
!data_source/context_placeholder:0
џџџџџџџџџН5
scores+
prediction/Sigmoid:0џџџџџџџџџtensorflow/serving/predict*з
serving_defaultУ
 
phase
phase_indicator:0 
;
	time_list.
data_source/time_list:0џџџџџџџџџ

C
sequence_length0
data_source/sequence_length:0џџџџџџџџџ
2
base*
data_source/base_intensity:0
&
task
data_source/task_index:0 
6
mutual,
data_source/mutual_intensity:0
'
batch
data_source/batch_size:0 
C
event:
data_source/event_placeholder:0
џџџџџџџџџ
H
context=
!data_source/context_placeholder:0
џџџџџџџџџН5
scores+
prediction/Sigmoid:0џџџџџџџџџtensorflow/serving/predict