       БK"	  └HTМоAbrain.Event:2љ`=hС/      'г"/	«╠╩HTМоA"п_
F
XPlaceholder*
_output_shapes
:*
dtype0*
shape:
F
YPlaceholder*
_output_shapes
:*
dtype0*
shape:
J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
weights
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
shape: *
	container 
ј
weights/AssignAssignweightsConst*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@weights
^
weights/readIdentityweights*
T0*
_output_shapes
: *
_class
loc:@weights
L
Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
h
bias
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
shape: *
	container 
Є
bias/AssignAssignbiasConst_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@bias
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
>
mulMulweights/readX*
T0*
_output_shapes
:
=
addAddmul	bias/read*
T0*
_output_shapes
:
5
subSubYadd*
T0*
_output_shapes
:
6
lossSquaresub*
T0*
_output_shapes
:
3
RankRankloss*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
_output_shapes
: *
dtype0
M
range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:         *

Tidx0
Y
MeanMeanlossrange*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
\
gradients/ShapeShapeMean*
out_type0*
T0*#
_output_shapes
:         
T
gradients/ConstConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
f
gradients/Mean_grad/ShapeShapeloss*
out_type0*
T0*#
_output_shapes
:         
џ
gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
out_type0*
T0*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape
Џ
gradients/Mean_grad/addAddrangegradients/Mean_grad/Size*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
▓
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
а
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
out_type0*
T0*
_output_shapes
:*,
_class"
 loc:@gradients/Mean_grad/Shape
Ј
gradients/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
Ј
gradients/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
П
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*#
_output_shapes
:         *

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
ј
gradients/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
╣
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
ђ
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*
N*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
Ї
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
─
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
╝
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
і
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
љ
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*
_output_shapes
:*

Tmultiples0
h
gradients/Mean_grad/Shape_2Shapeloss*
out_type0*
T0*#
_output_shapes
:         
h
gradients/Mean_grad/Shape_3ShapeMean*
out_type0*
T0*#
_output_shapes
:         
Њ
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
к
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Ћ
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
╩
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Љ
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Х
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_2
┤
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_2
p
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0
}
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
|
gradients/loss_grad/mul/xConst^gradients/Mean_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
a
gradients/loss_grad/mulMulgradients/loss_grad/mul/xsub*
T0*
_output_shapes
:
y
gradients/loss_grad/mul_1Mulgradients/Mean_grad/truedivgradients/loss_grad/mul*
T0*
_output_shapes
:
b
gradients/sub_grad/ShapeShapeY*
out_type0*
T0*#
_output_shapes
:         
f
gradients/sub_grad/Shape_1Shapeadd*
out_type0*
T0*#
_output_shapes
:         
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
б
gradients/sub_grad/SumSumgradients/loss_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ѕ
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
д
gradients/sub_grad/Sum_1Sumgradients/loss_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
ї
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
╦
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/sub_grad/Reshape
Л
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
d
gradients/add_grad/ShapeShapemul*
out_type0*
T0*#
_output_shapes
:         
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Х
gradients/add_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ѕ
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
║
gradients/add_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ї
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
╦
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/add_grad/Reshape
¤
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
[
gradients/mul_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
d
gradients/mul_grad/Shape_1ShapeX*
out_type0*
T0*#
_output_shapes
:         
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
p
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*
_output_shapes
:
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
є
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
}
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ј
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╔
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
Л
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oЃ:*
_output_shapes
: *
dtype0
­
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
ж
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
ђ
GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent"Y5ў4Щ9      =сMN	$╦HTМоAJЬs
щс
9
Add
x"T
y"T
z"T"
Ttype:
2	
ђ
ApplyGradientDescent
var"Tђ

alpha"T

delta"T
out"Tђ"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	љ
і
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	љ
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
і
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Square
x"T
y"T"
Ttype:
	2	
9
Sub
x"T
y"T
z"T"
Ttype:
2	
Ѕ
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ*1.4.02
b'unknown'п_
F
XPlaceholder*
_output_shapes
:*
dtype0*
shape:
F
YPlaceholder*
_output_shapes
:*
dtype0*
shape:
J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
weights
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
shape: *
	container 
ј
weights/AssignAssignweightsConst*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@weights
^
weights/readIdentityweights*
T0*
_output_shapes
: *
_class
loc:@weights
L
Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
h
bias
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
shape: *
	container 
Є
bias/AssignAssignbiasConst_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@bias
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
>
mulMulweights/readX*
T0*
_output_shapes
:
=
addAddmul	bias/read*
T0*
_output_shapes
:
5
subSubYadd*
T0*
_output_shapes
:
6
lossSquaresub*
T0*
_output_shapes
:
3
RankRankloss*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
_output_shapes
: *
dtype0
M
range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:         *

Tidx0
Y
MeanMeanlossrange*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
\
gradients/ShapeShapeMean*
out_type0*
T0*#
_output_shapes
:         
T
gradients/ConstConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
f
gradients/Mean_grad/ShapeShapeloss*
out_type0*
T0*#
_output_shapes
:         
џ
gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
out_type0*
T0*
_output_shapes
: *,
_class"
 loc:@gradients/Mean_grad/Shape
Џ
gradients/Mean_grad/addAddrangegradients/Mean_grad/Size*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
▓
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
а
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
out_type0*
T0*
_output_shapes
:*,
_class"
 loc:@gradients/Mean_grad/Shape
Ј
gradients/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
Ј
gradients/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
П
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*#
_output_shapes
:         *

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
ј
gradients/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
╣
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
ђ
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*
N*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
Ї
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
─
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
╝
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*#
_output_shapes
:         *,
_class"
 loc:@gradients/Mean_grad/Shape
і
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
љ
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*
_output_shapes
:*

Tmultiples0
h
gradients/Mean_grad/Shape_2Shapeloss*
out_type0*
T0*#
_output_shapes
:         
h
gradients/Mean_grad/Shape_3ShapeMean*
out_type0*
T0*#
_output_shapes
:         
Њ
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
к
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Ћ
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
╩
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Љ
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_2
Х
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_2
┤
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_2
p
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0
}
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
|
gradients/loss_grad/mul/xConst^gradients/Mean_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
a
gradients/loss_grad/mulMulgradients/loss_grad/mul/xsub*
T0*
_output_shapes
:
y
gradients/loss_grad/mul_1Mulgradients/Mean_grad/truedivgradients/loss_grad/mul*
T0*
_output_shapes
:
b
gradients/sub_grad/ShapeShapeY*
out_type0*
T0*#
_output_shapes
:         
f
gradients/sub_grad/Shape_1Shapeadd*
out_type0*
T0*#
_output_shapes
:         
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
б
gradients/sub_grad/SumSumgradients/loss_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ѕ
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
д
gradients/sub_grad/Sum_1Sumgradients/loss_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
ї
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
╦
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/sub_grad/Reshape
Л
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
d
gradients/add_grad/ShapeShapemul*
out_type0*
T0*#
_output_shapes
:         
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Х
gradients/add_grad/SumSum-gradients/sub_grad/tuple/control_dependency_1(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ѕ
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
║
gradients/add_grad/Sum_1Sum-gradients/sub_grad/tuple/control_dependency_1*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ї
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
╦
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/add_grad/Reshape
¤
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
[
gradients/mul_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
d
gradients/mul_grad/Shape_1ShapeX*
out_type0*
T0*#
_output_shapes
:         
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
p
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*
_output_shapes
:
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
є
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
}
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ј
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╔
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
Л
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oЃ:*
_output_shapes
: *
dtype0
­
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
ж
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
ђ
GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent""~
trainable_variablesge
4
	weights:0weights/Assignweights/read:02Const:0
-
bias:0bias/Assignbias/read:02	Const_1:0"t
	variablesge
4
	weights:0weights/Assignweights/read:02Const:0
-
bias:0bias/Assignbias/read:02	Const_1:0"
train_op

GradientDescent~▀|ѕ