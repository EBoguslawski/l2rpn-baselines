��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
t
value_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namevalue_out/bias
m
"value_out/bias/Read/ReadVariableOpReadVariableOpvalue_out/bias*
_output_shapes
:*
dtype0
|
value_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:}*!
shared_namevalue_out/kernel
u
$value_out/kernel/Read/ReadVariableOpReadVariableOpvalue_out/kernel*
_output_shapes

:}*
dtype0
v
action_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:}* 
shared_nameaction_out/bias
o
#action_out/bias/Read/ReadVariableOpReadVariableOpaction_out/bias*
_output_shapes
:}*
dtype0

action_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�}*"
shared_nameaction_out/kernel
x
%action_out/kernel/Read/ReadVariableOpReadVariableOpaction_out/kernel*
_output_shapes
:	�}*
dtype0
�
layer_val_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:}*&
shared_namelayer_val_hidden/bias
{
)layer_val_hidden/bias/Read/ReadVariableOpReadVariableOplayer_val_hidden/bias*
_output_shapes
:}*
dtype0
�
layer_val_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�}*(
shared_namelayer_val_hidden/kernel
�
+layer_val_hidden/kernel/Read/ReadVariableOpReadVariableOplayer_val_hidden/kernel*
_output_shapes
:	�}*
dtype0
q
layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_4/bias
j
 layer_4/bias/Read/ReadVariableOpReadVariableOplayer_4/bias*
_output_shapes	
:�*
dtype0
z
layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_4/kernel
s
"layer_4/kernel/Read/ReadVariableOpReadVariableOplayer_4/kernel* 
_output_shapes
:
��*
dtype0
q
layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_3/bias
j
 layer_3/bias/Read/ReadVariableOpReadVariableOplayer_3/bias*
_output_shapes	
:�*
dtype0
z
layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_3/kernel
s
"layer_3/kernel/Read/ReadVariableOpReadVariableOplayer_3/kernel* 
_output_shapes
:
��*
dtype0
q
layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_2/bias
j
 layer_2/bias/Read/ReadVariableOpReadVariableOplayer_2/bias*
_output_shapes	
:�*
dtype0
z
layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_2/kernel
s
"layer_2/kernel/Read/ReadVariableOpReadVariableOplayer_2/kernel* 
_output_shapes
:
��*
dtype0
q
layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namelayer_1/bias
j
 layer_1/bias/Read/ReadVariableOpReadVariableOplayer_1/bias*
_output_shapes	
:�*
dtype0
z
layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namelayer_1/kernel
s
"layer_1/kernel/Read/ReadVariableOpReadVariableOplayer_1/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_observationsPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_observationslayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasvalue_out/kernelvalue_out/biasaction_out/kernelaction_out/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_54150784

NoOpNoOp
�7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�7
value�7B�7 B�7
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

activation

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

activation

 kernel
!bias*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

activation

(kernel
)bias*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

activation

0kernel
1bias*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

activation

8kernel
9bias*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias*
j
0
1
 2
!3
(4
)5
06
17
88
99
@10
A11
H12
I13*
j
0
1
 2
!3
(4
)5
06
17
88
99
@10
A11
H12
I13*
* 
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
6
Strace_0
Ttrace_1
Utrace_2
Vtrace_3* 
* 

Wserving_default* 

0
1*

0
1*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
^X
VARIABLE_VALUElayer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
^X
VARIABLE_VALUElayer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

qtrace_0* 

rtrace_0* 
^X
VARIABLE_VALUElayer_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*

00
11*
* 
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

xtrace_0* 

ytrace_0* 
^X
VARIABLE_VALUElayer_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

trace_0* 

�trace_0* 
ga
VARIABLE_VALUElayer_val_hidden/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUElayer_val_hidden/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEaction_out/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEaction_out/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

H0
I1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEvalue_out/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEvalue_out/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasaction_out/kernelaction_out/biasvalue_out/kernelvalue_out/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_save_54151204
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biaslayer_val_hidden/kernellayer_val_hidden/biasaction_out/kernelaction_out/biasvalue_out/kernelvalue_out/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference__traced_restore_54151256��
�?
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150906

inputs:
&layer_1_matmul_readvariableop_resource:
��6
'layer_1_biasadd_readvariableop_resource:	�:
&layer_2_matmul_readvariableop_resource:
��6
'layer_2_biasadd_readvariableop_resource:	�:
&layer_3_matmul_readvariableop_resource:
��6
'layer_3_biasadd_readvariableop_resource:	�:
&layer_4_matmul_readvariableop_resource:
��6
'layer_4_biasadd_readvariableop_resource:	�B
/layer_val_hidden_matmul_readvariableop_resource:	�}>
0layer_val_hidden_biasadd_readvariableop_resource:}:
(value_out_matmul_readvariableop_resource:}7
)value_out_biasadd_readvariableop_resource:<
)action_out_matmul_readvariableop_resource:	�}8
*action_out_biasadd_readvariableop_resource:}
identity

identity_1��!action_out/BiasAdd/ReadVariableOp� action_out/MatMul/ReadVariableOp�layer_1/BiasAdd/ReadVariableOp�layer_1/MatMul/ReadVariableOp�layer_2/BiasAdd/ReadVariableOp�layer_2/MatMul/ReadVariableOp�layer_3/BiasAdd/ReadVariableOp�layer_3/MatMul/ReadVariableOp�layer_4/BiasAdd/ReadVariableOp�layer_4/MatMul/ReadVariableOp�'layer_val_hidden/BiasAdd/ReadVariableOp�&layer_val_hidden/MatMul/ReadVariableOp� value_out/BiasAdd/ReadVariableOp�value_out/MatMul/ReadVariableOp�
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_1/re_lu_2/ReluRelulayer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2/MatMulMatMul"layer_1/re_lu_2/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_2/re_lu_2/ReluRelulayer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_3/MatMulMatMul"layer_2/re_lu_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_3/re_lu_2/ReluRelulayer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_4/MatMulMatMul"layer_3/re_lu_2/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_4/re_lu_2/ReluRelulayer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&layer_val_hidden/MatMul/ReadVariableOpReadVariableOp/layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
layer_val_hidden/MatMulMatMul"layer_4/re_lu_2/Relu:activations:0.layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
'layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp0layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
layer_val_hidden/BiasAddBiasAdd!layer_val_hidden/MatMul:product:0/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}z
layer_val_hidden/re_lu_2/ReluRelu!layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:���������}�
value_out/MatMul/ReadVariableOpReadVariableOp(value_out_matmul_readvariableop_resource*
_output_shapes

:}*
dtype0�
value_out/MatMulMatMul+layer_val_hidden/re_lu_2/Relu:activations:0'value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 value_out/BiasAdd/ReadVariableOpReadVariableOp)value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_out/BiasAddBiasAddvalue_out/MatMul:product:0(value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 action_out/MatMul/ReadVariableOpReadVariableOp)action_out_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
action_out/MatMulMatMul"layer_4/re_lu_2/Relu:activations:0(action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
!action_out/BiasAdd/ReadVariableOpReadVariableOp*action_out_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
action_out/BiasAddBiasAddaction_out/MatMul:product:0)action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}j
IdentityIdentityaction_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������}k

Identity_1Identityvalue_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^action_out/BiasAdd/ReadVariableOp!^action_out/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp(^layer_val_hidden/BiasAdd/ReadVariableOp'^layer_val_hidden/MatMul/ReadVariableOp!^value_out/BiasAdd/ReadVariableOp ^value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2F
!action_out/BiasAdd/ReadVariableOp!action_out/BiasAdd/ReadVariableOp2D
 action_out/MatMul/ReadVariableOp action_out/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp2R
'layer_val_hidden/BiasAdd/ReadVariableOp'layer_val_hidden/BiasAdd/ReadVariableOp2P
&layer_val_hidden/MatMul/ReadVariableOp&layer_val_hidden/MatMul/ReadVariableOp2D
 value_out/BiasAdd/ReadVariableOp value_out/BiasAdd/ReadVariableOp2B
value_out/MatMul/ReadVariableOpvalue_out/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_layer_3_layer_call_fn_54151007

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54151058

inputs1
matmul_readvariableop_resource:	�}-
biasadd_readvariableop_resource:}
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}X
re_lu_2/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������}i
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�o
�
!__inference__traced_save_54151204
file_prefix9
%read_disablecopyonread_layer_1_kernel:
��4
%read_1_disablecopyonread_layer_1_bias:	�;
'read_2_disablecopyonread_layer_2_kernel:
��4
%read_3_disablecopyonread_layer_2_bias:	�;
'read_4_disablecopyonread_layer_3_kernel:
��4
%read_5_disablecopyonread_layer_3_bias:	�;
'read_6_disablecopyonread_layer_4_kernel:
��4
%read_7_disablecopyonread_layer_4_bias:	�C
0read_8_disablecopyonread_layer_val_hidden_kernel:	�}<
.read_9_disablecopyonread_layer_val_hidden_bias:}>
+read_10_disablecopyonread_action_out_kernel:	�}7
)read_11_disablecopyonread_action_out_bias:}<
*read_12_disablecopyonread_value_out_kernel:}6
(read_13_disablecopyonread_value_out_bias:
savev2_const
identity_29��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_layer_1_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_layer_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_layer_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_layer_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_layer_3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_layer_3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_layer_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_layer_4_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_layer_4_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_layer_4_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_8/DisableCopyOnReadDisableCopyOnRead0read_8_disablecopyonread_layer_val_hidden_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp0read_8_disablecopyonread_layer_val_hidden_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�}*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�}f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�}�
Read_9/DisableCopyOnReadDisableCopyOnRead.read_9_disablecopyonread_layer_val_hidden_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp.read_9_disablecopyonread_layer_val_hidden_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:}*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:}a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:}�
Read_10/DisableCopyOnReadDisableCopyOnRead+read_10_disablecopyonread_action_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp+read_10_disablecopyonread_action_out_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�}*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�}f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�}~
Read_11/DisableCopyOnReadDisableCopyOnRead)read_11_disablecopyonread_action_out_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp)read_11_disablecopyonread_action_out_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:}*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:}a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_value_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_value_out_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:}*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:}e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:}}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_value_out_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_value_out_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�
�
*__inference_model_1_layer_call_fn_54150854

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�}
	unknown_8:}
	unknown_9:}

unknown_10:

unknown_11:	�}

unknown_12:}
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_54150574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_54150784
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�}
	unknown_8:}
	unknown_9:}

unknown_10:

unknown_11:	�}

unknown_12:}
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_54150293o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�(
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150456
observations$
layer_1_54150419:
��
layer_1_54150421:	�$
layer_2_54150424:
��
layer_2_54150426:	�$
layer_3_54150429:
��
layer_3_54150431:	�$
layer_4_54150434:
��
layer_4_54150436:	�,
layer_val_hidden_54150439:	�}'
layer_val_hidden_54150441:}$
value_out_54150444:} 
value_out_54150446:&
action_out_54150449:	�}!
action_out_54150451:}
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallobservationslayer_1_54150419layer_1_54150421*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_54150424layer_2_54150426*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_54150429layer_3_54150431*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_54150434layer_4_54150436*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_54150439layer_val_hidden_54150441*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_54150444value_out_54150446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_value_out_layer_call_and_return_conditional_losses_54150392�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_54150449action_out_54150451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_action_out_layer_call_and_return_conditional_losses_54150408z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�'
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150499

inputs$
layer_1_54150462:
��
layer_1_54150464:	�$
layer_2_54150467:
��
layer_2_54150469:	�$
layer_3_54150472:
��
layer_3_54150474:	�$
layer_4_54150477:
��
layer_4_54150479:	�,
layer_val_hidden_54150482:	�}'
layer_val_hidden_54150484:}$
value_out_54150487:} 
value_out_54150489:&
action_out_54150492:	�}!
action_out_54150494:}
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_54150462layer_1_54150464*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_54150467layer_2_54150469*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_54150472layer_3_54150474*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_54150477layer_4_54150479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_54150482layer_val_hidden_54150484*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_54150487value_out_54150489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_value_out_layer_call_and_return_conditional_losses_54150392�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_54150492action_out_54150494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_action_out_layer_call_and_return_conditional_losses_54150408z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
H__inference_action_out_layer_call_and_return_conditional_losses_54150408

inputs1
matmul_readvariableop_resource:	�}-
biasadd_readvariableop_resource:}
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_model_1_layer_call_fn_54150607
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�}
	unknown_8:}
	unknown_9:}

unknown_10:

unknown_11:	�}

unknown_12:}
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_54150574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�

�
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�?
�
$__inference__traced_restore_54151256
file_prefix3
assignvariableop_layer_1_kernel:
��.
assignvariableop_1_layer_1_bias:	�5
!assignvariableop_2_layer_2_kernel:
��.
assignvariableop_3_layer_2_bias:	�5
!assignvariableop_4_layer_3_kernel:
��.
assignvariableop_5_layer_3_bias:	�5
!assignvariableop_6_layer_4_kernel:
��.
assignvariableop_7_layer_4_bias:	�=
*assignvariableop_8_layer_val_hidden_kernel:	�}6
(assignvariableop_9_layer_val_hidden_bias:}8
%assignvariableop_10_action_out_kernel:	�}1
#assignvariableop_11_action_out_bias:}6
$assignvariableop_12_value_out_kernel:}0
"assignvariableop_13_value_out_bias:
identity_15��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_layer_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_layer_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp*assignvariableop_8_layer_val_hidden_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp(assignvariableop_9_layer_val_hidden_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_action_out_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp#assignvariableop_11_action_out_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_value_out_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_value_out_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_layer_4_layer_call_fn_54151027

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_model_1_layer_call_fn_54150532
observations
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�}
	unknown_8:}
	unknown_9:}

unknown_10:

unknown_11:	�}

unknown_12:}
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_54150499o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�

�
E__inference_layer_4_layer_call_and_return_conditional_losses_54151038

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�H
�
#__inference__wrapped_model_54150293
observationsB
.model_1_layer_1_matmul_readvariableop_resource:
��>
/model_1_layer_1_biasadd_readvariableop_resource:	�B
.model_1_layer_2_matmul_readvariableop_resource:
��>
/model_1_layer_2_biasadd_readvariableop_resource:	�B
.model_1_layer_3_matmul_readvariableop_resource:
��>
/model_1_layer_3_biasadd_readvariableop_resource:	�B
.model_1_layer_4_matmul_readvariableop_resource:
��>
/model_1_layer_4_biasadd_readvariableop_resource:	�J
7model_1_layer_val_hidden_matmul_readvariableop_resource:	�}F
8model_1_layer_val_hidden_biasadd_readvariableop_resource:}B
0model_1_value_out_matmul_readvariableop_resource:}?
1model_1_value_out_biasadd_readvariableop_resource:D
1model_1_action_out_matmul_readvariableop_resource:	�}@
2model_1_action_out_biasadd_readvariableop_resource:}
identity

identity_1��)model_1/action_out/BiasAdd/ReadVariableOp�(model_1/action_out/MatMul/ReadVariableOp�&model_1/layer_1/BiasAdd/ReadVariableOp�%model_1/layer_1/MatMul/ReadVariableOp�&model_1/layer_2/BiasAdd/ReadVariableOp�%model_1/layer_2/MatMul/ReadVariableOp�&model_1/layer_3/BiasAdd/ReadVariableOp�%model_1/layer_3/MatMul/ReadVariableOp�&model_1/layer_4/BiasAdd/ReadVariableOp�%model_1/layer_4/MatMul/ReadVariableOp�/model_1/layer_val_hidden/BiasAdd/ReadVariableOp�.model_1/layer_val_hidden/MatMul/ReadVariableOp�(model_1/value_out/BiasAdd/ReadVariableOp�'model_1/value_out/MatMul/ReadVariableOp�
%model_1/layer_1/MatMul/ReadVariableOpReadVariableOp.model_1_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_1/MatMulMatMulobservations-model_1/layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_1/BiasAddBiasAdd model_1/layer_1/MatMul:product:0.model_1/layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
model_1/layer_1/re_lu_2/ReluRelu model_1/layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_2/MatMul/ReadVariableOpReadVariableOp.model_1_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_2/MatMulMatMul*model_1/layer_1/re_lu_2/Relu:activations:0-model_1/layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_2/BiasAddBiasAdd model_1/layer_2/MatMul:product:0.model_1/layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
model_1/layer_2/re_lu_2/ReluRelu model_1/layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_3/MatMul/ReadVariableOpReadVariableOp.model_1_layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_3/MatMulMatMul*model_1/layer_2/re_lu_2/Relu:activations:0-model_1/layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_3/BiasAddBiasAdd model_1/layer_3/MatMul:product:0.model_1/layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
model_1/layer_3/re_lu_2/ReluRelu model_1/layer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%model_1/layer_4/MatMul/ReadVariableOpReadVariableOp.model_1_layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_1/layer_4/MatMulMatMul*model_1/layer_3/re_lu_2/Relu:activations:0-model_1/layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_1/layer_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/layer_4/BiasAddBiasAdd model_1/layer_4/MatMul:product:0.model_1/layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
model_1/layer_4/re_lu_2/ReluRelu model_1/layer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
.model_1/layer_val_hidden/MatMul/ReadVariableOpReadVariableOp7model_1_layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
model_1/layer_val_hidden/MatMulMatMul*model_1/layer_4/re_lu_2/Relu:activations:06model_1/layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
/model_1/layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp8model_1_layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
 model_1/layer_val_hidden/BiasAddBiasAdd)model_1/layer_val_hidden/MatMul:product:07model_1/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
%model_1/layer_val_hidden/re_lu_2/ReluRelu)model_1/layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:���������}�
'model_1/value_out/MatMul/ReadVariableOpReadVariableOp0model_1_value_out_matmul_readvariableop_resource*
_output_shapes

:}*
dtype0�
model_1/value_out/MatMulMatMul3model_1/layer_val_hidden/re_lu_2/Relu:activations:0/model_1/value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_1/value_out/BiasAdd/ReadVariableOpReadVariableOp1model_1_value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/value_out/BiasAddBiasAdd"model_1/value_out/MatMul:product:00model_1/value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_1/action_out/MatMul/ReadVariableOpReadVariableOp1model_1_action_out_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
model_1/action_out/MatMulMatMul*model_1/layer_4/re_lu_2/Relu:activations:00model_1/action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
)model_1/action_out/BiasAdd/ReadVariableOpReadVariableOp2model_1_action_out_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
model_1/action_out/BiasAddBiasAdd#model_1/action_out/MatMul:product:01model_1/action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}r
IdentityIdentity#model_1/action_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������}s

Identity_1Identity"model_1/value_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_1/action_out/BiasAdd/ReadVariableOp)^model_1/action_out/MatMul/ReadVariableOp'^model_1/layer_1/BiasAdd/ReadVariableOp&^model_1/layer_1/MatMul/ReadVariableOp'^model_1/layer_2/BiasAdd/ReadVariableOp&^model_1/layer_2/MatMul/ReadVariableOp'^model_1/layer_3/BiasAdd/ReadVariableOp&^model_1/layer_3/MatMul/ReadVariableOp'^model_1/layer_4/BiasAdd/ReadVariableOp&^model_1/layer_4/MatMul/ReadVariableOp0^model_1/layer_val_hidden/BiasAdd/ReadVariableOp/^model_1/layer_val_hidden/MatMul/ReadVariableOp)^model_1/value_out/BiasAdd/ReadVariableOp(^model_1/value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2V
)model_1/action_out/BiasAdd/ReadVariableOp)model_1/action_out/BiasAdd/ReadVariableOp2T
(model_1/action_out/MatMul/ReadVariableOp(model_1/action_out/MatMul/ReadVariableOp2P
&model_1/layer_1/BiasAdd/ReadVariableOp&model_1/layer_1/BiasAdd/ReadVariableOp2N
%model_1/layer_1/MatMul/ReadVariableOp%model_1/layer_1/MatMul/ReadVariableOp2P
&model_1/layer_2/BiasAdd/ReadVariableOp&model_1/layer_2/BiasAdd/ReadVariableOp2N
%model_1/layer_2/MatMul/ReadVariableOp%model_1/layer_2/MatMul/ReadVariableOp2P
&model_1/layer_3/BiasAdd/ReadVariableOp&model_1/layer_3/BiasAdd/ReadVariableOp2N
%model_1/layer_3/MatMul/ReadVariableOp%model_1/layer_3/MatMul/ReadVariableOp2P
&model_1/layer_4/BiasAdd/ReadVariableOp&model_1/layer_4/BiasAdd/ReadVariableOp2N
%model_1/layer_4/MatMul/ReadVariableOp%model_1/layer_4/MatMul/ReadVariableOp2b
/model_1/layer_val_hidden/BiasAdd/ReadVariableOp/model_1/layer_val_hidden/BiasAdd/ReadVariableOp2`
.model_1/layer_val_hidden/MatMul/ReadVariableOp.model_1/layer_val_hidden/MatMul/ReadVariableOp2T
(model_1/value_out/BiasAdd/ReadVariableOp(model_1/value_out/BiasAdd/ReadVariableOp2R
'model_1/value_out/MatMul/ReadVariableOp'model_1/value_out/MatMul/ReadVariableOp:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�
�
,__inference_value_out_layer_call_fn_54151086

inputs
unknown:}
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_value_out_layer_call_and_return_conditional_losses_54150392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������}: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������}
 
_user_specified_nameinputs
�(
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150416
observations$
layer_1_54150309:
��
layer_1_54150311:	�$
layer_2_54150326:
��
layer_2_54150328:	�$
layer_3_54150343:
��
layer_3_54150345:	�$
layer_4_54150360:
��
layer_4_54150362:	�,
layer_val_hidden_54150377:	�}'
layer_val_hidden_54150379:}$
value_out_54150393:} 
value_out_54150395:&
action_out_54150409:	�}!
action_out_54150411:}
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallobservationslayer_1_54150309layer_1_54150311*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_54150326layer_2_54150328*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_54150343layer_3_54150345*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_54150360layer_4_54150362*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_54150377layer_val_hidden_54150379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_54150393value_out_54150395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_value_out_layer_call_and_return_conditional_losses_54150392�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_54150409action_out_54150411*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_action_out_layer_call_and_return_conditional_losses_54150408z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:V R
(
_output_shapes
:����������
&
_user_specified_nameobservations
�

�
E__inference_layer_1_layer_call_and_return_conditional_losses_54150978

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150574

inputs$
layer_1_54150537:
��
layer_1_54150539:	�$
layer_2_54150542:
��
layer_2_54150544:	�$
layer_3_54150547:
��
layer_3_54150549:	�$
layer_4_54150552:
��
layer_4_54150554:	�,
layer_val_hidden_54150557:	�}'
layer_val_hidden_54150559:}$
value_out_54150562:} 
value_out_54150564:&
action_out_54150567:	�}!
action_out_54150569:}
identity

identity_1��"action_out/StatefulPartitionedCall�layer_1/StatefulPartitionedCall�layer_2/StatefulPartitionedCall�layer_3/StatefulPartitionedCall�layer_4/StatefulPartitionedCall�(layer_val_hidden/StatefulPartitionedCall�!value_out/StatefulPartitionedCall�
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_54150537layer_1_54150539*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308�
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_54150542layer_2_54150544*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325�
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_54150547layer_3_54150549*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_54150342�
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_54150552layer_4_54150554*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_54150359�
(layer_val_hidden/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0layer_val_hidden_54150557layer_val_hidden_54150559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376�
!value_out/StatefulPartitionedCallStatefulPartitionedCall1layer_val_hidden/StatefulPartitionedCall:output:0value_out_54150562value_out_54150564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_value_out_layer_call_and_return_conditional_losses_54150392�
"action_out/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0action_out_54150567action_out_54150569*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_action_out_layer_call_and_return_conditional_losses_54150408z
IdentityIdentity+action_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}{

Identity_1Identity*value_out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^action_out/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall)^layer_val_hidden/StatefulPartitionedCall"^value_out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2H
"action_out/StatefulPartitionedCall"action_out/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall2T
(layer_val_hidden/StatefulPartitionedCall(layer_val_hidden/StatefulPartitionedCall2F
!value_out/StatefulPartitionedCall!value_out/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
G__inference_value_out_layer_call_and_return_conditional_losses_54151096

inputs0
matmul_readvariableop_resource:}-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������}: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������}
 
_user_specified_nameinputs
�	
�
H__inference_action_out_layer_call_and_return_conditional_losses_54151077

inputs1
matmul_readvariableop_resource:	�}-
biasadd_readvariableop_resource:}
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_layer_2_layer_call_and_return_conditional_losses_54150998

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�?
�
E__inference_model_1_layer_call_and_return_conditional_losses_54150958

inputs:
&layer_1_matmul_readvariableop_resource:
��6
'layer_1_biasadd_readvariableop_resource:	�:
&layer_2_matmul_readvariableop_resource:
��6
'layer_2_biasadd_readvariableop_resource:	�:
&layer_3_matmul_readvariableop_resource:
��6
'layer_3_biasadd_readvariableop_resource:	�:
&layer_4_matmul_readvariableop_resource:
��6
'layer_4_biasadd_readvariableop_resource:	�B
/layer_val_hidden_matmul_readvariableop_resource:	�}>
0layer_val_hidden_biasadd_readvariableop_resource:}:
(value_out_matmul_readvariableop_resource:}7
)value_out_biasadd_readvariableop_resource:<
)action_out_matmul_readvariableop_resource:	�}8
*action_out_biasadd_readvariableop_resource:}
identity

identity_1��!action_out/BiasAdd/ReadVariableOp� action_out/MatMul/ReadVariableOp�layer_1/BiasAdd/ReadVariableOp�layer_1/MatMul/ReadVariableOp�layer_2/BiasAdd/ReadVariableOp�layer_2/MatMul/ReadVariableOp�layer_3/BiasAdd/ReadVariableOp�layer_3/MatMul/ReadVariableOp�layer_4/BiasAdd/ReadVariableOp�layer_4/MatMul/ReadVariableOp�'layer_val_hidden/BiasAdd/ReadVariableOp�&layer_val_hidden/MatMul/ReadVariableOp� value_out/BiasAdd/ReadVariableOp�value_out/MatMul/ReadVariableOp�
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_1/re_lu_2/ReluRelulayer_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2/MatMulMatMul"layer_1/re_lu_2/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_2/re_lu_2/ReluRelulayer_2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_3/MatMulMatMul"layer_2/re_lu_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_3/re_lu_2/ReluRelulayer_3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_4/MatMulMatMul"layer_3/re_lu_2/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
layer_4/re_lu_2/ReluRelulayer_4/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&layer_val_hidden/MatMul/ReadVariableOpReadVariableOp/layer_val_hidden_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
layer_val_hidden/MatMulMatMul"layer_4/re_lu_2/Relu:activations:0.layer_val_hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
'layer_val_hidden/BiasAdd/ReadVariableOpReadVariableOp0layer_val_hidden_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
layer_val_hidden/BiasAddBiasAdd!layer_val_hidden/MatMul:product:0/layer_val_hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}z
layer_val_hidden/re_lu_2/ReluRelu!layer_val_hidden/BiasAdd:output:0*
T0*'
_output_shapes
:���������}�
value_out/MatMul/ReadVariableOpReadVariableOp(value_out_matmul_readvariableop_resource*
_output_shapes

:}*
dtype0�
value_out/MatMulMatMul+layer_val_hidden/re_lu_2/Relu:activations:0'value_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 value_out/BiasAdd/ReadVariableOpReadVariableOp)value_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_out/BiasAddBiasAddvalue_out/MatMul:product:0(value_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 action_out/MatMul/ReadVariableOpReadVariableOp)action_out_matmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0�
action_out/MatMulMatMul"layer_4/re_lu_2/Relu:activations:0(action_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}�
!action_out/BiasAdd/ReadVariableOpReadVariableOp*action_out_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype0�
action_out/BiasAddBiasAddaction_out/MatMul:product:0)action_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}j
IdentityIdentityaction_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������}k

Identity_1Identityvalue_out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^action_out/BiasAdd/ReadVariableOp!^action_out/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp(^layer_val_hidden/BiasAdd/ReadVariableOp'^layer_val_hidden/MatMul/ReadVariableOp!^value_out/BiasAdd/ReadVariableOp ^value_out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 2F
!action_out/BiasAdd/ReadVariableOp!action_out/BiasAdd/ReadVariableOp2D
 action_out/MatMul/ReadVariableOp action_out/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp2R
'layer_val_hidden/BiasAdd/ReadVariableOp'layer_val_hidden/BiasAdd/ReadVariableOp2P
&layer_val_hidden/MatMul/ReadVariableOp&layer_val_hidden/MatMul/ReadVariableOp2D
 value_out/BiasAdd/ReadVariableOp value_out/BiasAdd/ReadVariableOp2B
value_out/MatMul/ReadVariableOpvalue_out/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_layer_3_layer_call_and_return_conditional_losses_54151018

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_action_out_layer_call_fn_54151067

inputs
unknown:	�}
	unknown_0:}
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_action_out_layer_call_and_return_conditional_losses_54150408o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_model_1_layer_call_fn_54150819

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�}
	unknown_8:}
	unknown_9:}

unknown_10:

unknown_11:	�}

unknown_12:}
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������}:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_54150499o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_layer_2_layer_call_fn_54150987

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_54150325p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376

inputs1
matmul_readvariableop_resource:	�}-
biasadd_readvariableop_resource:}
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}X
re_lu_2/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������}i
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*'
_output_shapes
:���������}w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
G__inference_value_out_layer_call_and_return_conditional_losses_54150392

inputs0
matmul_readvariableop_resource:}-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:}*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������}: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������}
 
_user_specified_nameinputs
�
�
*__inference_layer_1_layer_call_fn_54150967

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_layer_1_layer_call_and_return_conditional_losses_54150308

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Y
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������j
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
3__inference_layer_val_hidden_layer_call_fn_54151047

inputs
unknown:	�}
	unknown_0:}
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������}*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54150376o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
F
observations6
serving_default_observations:0����������>

action_out0
StatefulPartitionedCall:0���������}=
	value_out0
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

activation

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

activation

 kernel
!bias"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

activation

(kernel
)bias"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

activation

0kernel
1bias"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

activation

8kernel
9bias"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
�
0
1
 2
!3
(4
)5
06
17
88
99
@10
A11
H12
I13"
trackable_list_wrapper
�
0
1
 2
!3
(4
)5
06
17
88
99
@10
A11
H12
I13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32�
*__inference_model_1_layer_call_fn_54150532
*__inference_model_1_layer_call_fn_54150607
*__inference_model_1_layer_call_fn_54150819
*__inference_model_1_layer_call_fn_54150854�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
�
Strace_0
Ttrace_1
Utrace_2
Vtrace_32�
E__inference_model_1_layer_call_and_return_conditional_losses_54150416
E__inference_model_1_layer_call_and_return_conditional_losses_54150456
E__inference_model_1_layer_call_and_return_conditional_losses_54150906
E__inference_model_1_layer_call_and_return_conditional_losses_54150958�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0zTtrace_1zUtrace_2zVtrace_3
�B�
#__inference__wrapped_model_54150293observations"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
Wserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
]trace_02�
*__inference_layer_1_layer_call_fn_54150967�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
�
^trace_02�
E__inference_layer_1_layer_call_and_return_conditional_losses_54150978�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
": 
��2layer_1/kernel
:�2layer_1/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_02�
*__inference_layer_2_layer_call_fn_54150987�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
�
ktrace_02�
E__inference_layer_2_layer_call_and_return_conditional_losses_54150998�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0
": 
��2layer_2/kernel
:�2layer_2/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
qtrace_02�
*__inference_layer_3_layer_call_fn_54151007�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
�
rtrace_02�
E__inference_layer_3_layer_call_and_return_conditional_losses_54151018�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
": 
��2layer_3/kernel
:�2layer_3/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
xtrace_02�
*__inference_layer_4_layer_call_fn_54151027�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
�
ytrace_02�
E__inference_layer_4_layer_call_and_return_conditional_losses_54151038�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0
": 
��2layer_4/kernel
:�2layer_4/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
trace_02�
3__inference_layer_val_hidden_layer_call_fn_54151047�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
�
�trace_02�
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54151058�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(	�}2layer_val_hidden/kernel
#:!}2layer_val_hidden/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_action_out_layer_call_fn_54151067�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_action_out_layer_call_and_return_conditional_losses_54151077�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"	�}2action_out/kernel
:}2action_out/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_value_out_layer_call_fn_54151086�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_value_out_layer_call_and_return_conditional_losses_54151096�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": }2value_out/kernel
:2value_out/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_model_1_layer_call_fn_54150532observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_model_1_layer_call_fn_54150607observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_model_1_layer_call_fn_54150819inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_model_1_layer_call_fn_54150854inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_model_1_layer_call_and_return_conditional_losses_54150416observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_model_1_layer_call_and_return_conditional_losses_54150456observations"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_model_1_layer_call_and_return_conditional_losses_54150906inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_model_1_layer_call_and_return_conditional_losses_54150958inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_signature_wrapper_54150784observations"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_layer_1_layer_call_fn_54150967inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_layer_1_layer_call_and_return_conditional_losses_54150978inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_layer_2_layer_call_fn_54150987inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_layer_2_layer_call_and_return_conditional_losses_54150998inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_layer_3_layer_call_fn_54151007inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_layer_3_layer_call_and_return_conditional_losses_54151018inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_layer_4_layer_call_fn_54151027inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_layer_4_layer_call_and_return_conditional_losses_54151038inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_layer_val_hidden_layer_call_fn_54151047inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54151058inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_action_out_layer_call_fn_54151067inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_action_out_layer_call_and_return_conditional_losses_54151077inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_value_out_layer_call_fn_54151086inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_value_out_layer_call_and_return_conditional_losses_54151096inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
#__inference__wrapped_model_54150293� !()0189HI@A6�3
,�)
'�$
observations����������
� "i�f
2

action_out$�!

action_out���������}
0
	value_out#� 
	value_out����������
H__inference_action_out_layer_call_and_return_conditional_losses_54151077d@A0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������}
� �
-__inference_action_out_layer_call_fn_54151067Y@A0�-
&�#
!�
inputs����������
� "!�
unknown���������}�
E__inference_layer_1_layer_call_and_return_conditional_losses_54150978e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_layer_1_layer_call_fn_54150967Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_layer_2_layer_call_and_return_conditional_losses_54150998e !0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_layer_2_layer_call_fn_54150987Z !0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_layer_3_layer_call_and_return_conditional_losses_54151018e()0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_layer_3_layer_call_fn_54151007Z()0�-
&�#
!�
inputs����������
� ""�
unknown�����������
E__inference_layer_4_layer_call_and_return_conditional_losses_54151038e010�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
*__inference_layer_4_layer_call_fn_54151027Z010�-
&�#
!�
inputs����������
� ""�
unknown�����������
N__inference_layer_val_hidden_layer_call_and_return_conditional_losses_54151058d890�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������}
� �
3__inference_layer_val_hidden_layer_call_fn_54151047Y890�-
&�#
!�
inputs����������
� "!�
unknown���������}�
E__inference_model_1_layer_call_and_return_conditional_losses_54150416� !()0189HI@A>�;
4�1
'�$
observations����������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������}
$�!

tensor_0_1���������
� �
E__inference_model_1_layer_call_and_return_conditional_losses_54150456� !()0189HI@A>�;
4�1
'�$
observations����������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������}
$�!

tensor_0_1���������
� �
E__inference_model_1_layer_call_and_return_conditional_losses_54150906� !()0189HI@A8�5
.�+
!�
inputs����������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������}
$�!

tensor_0_1���������
� �
E__inference_model_1_layer_call_and_return_conditional_losses_54150958� !()0189HI@A8�5
.�+
!�
inputs����������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������}
$�!

tensor_0_1���������
� �
*__inference_model_1_layer_call_fn_54150532� !()0189HI@A>�;
4�1
'�$
observations����������
p

 
� "K�H
"�
tensor_0���������}
"�
tensor_1����������
*__inference_model_1_layer_call_fn_54150607� !()0189HI@A>�;
4�1
'�$
observations����������
p 

 
� "K�H
"�
tensor_0���������}
"�
tensor_1����������
*__inference_model_1_layer_call_fn_54150819� !()0189HI@A8�5
.�+
!�
inputs����������
p

 
� "K�H
"�
tensor_0���������}
"�
tensor_1����������
*__inference_model_1_layer_call_fn_54150854� !()0189HI@A8�5
.�+
!�
inputs����������
p 

 
� "K�H
"�
tensor_0���������}
"�
tensor_1����������
&__inference_signature_wrapper_54150784� !()0189HI@AF�C
� 
<�9
7
observations'�$
observations����������"i�f
2

action_out$�!

action_out���������}
0
	value_out#� 
	value_out����������
G__inference_value_out_layer_call_and_return_conditional_losses_54151096cHI/�,
%�"
 �
inputs���������}
� ",�)
"�
tensor_0���������
� �
,__inference_value_out_layer_call_fn_54151086XHI/�,
%�"
 �
inputs���������}
� "!�
unknown���������