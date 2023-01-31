' *
' * **********************************
' *                                   *
' * HLC Games - Software Entertainment *
' *                                     *
' * (c) Copyright 2003 - Lukas Hermanns  *
' *                                       *
' * ****************************************
' *  ___    ___    ___          _____
' * /\  \  /\  \  /\  \        /  ___\
' * \ \  \_\_\  \ \ \  \      /\  \__/
' *  \ \   ___   \ \ \  \     \ \  \
' *   \ \  \__/\  \ \ \  \____ \ \  \___
' *    \ \__\ \ \__\ \ \______\ \ \_____\
' *     \/__/  \/__/  \/______/  \/_____/
' *
' * ****************************************
' *
' * ********************** HLC SoftPixelEngine - (3.1.2008) ************************
' *
' * (c) Copyright 2008 - Lukas Hermanns
' *
' * SoftPixel Engine Wrapper for BlitzBasic
' *

'  === Shader types: ===
Const SHADER_DUMMY			= 0
Const SHADER_VERTEX_PROGRAM	= 1
Const SHADER_PIXEL_PROGRAM	= 2
Const SHADER_VERTEX			= 3
Const SHADER_PIXEL			= 4
Const SHADER_GEOMETRY		= 5
Const SHADER_HULL			= 6
Const SHADER_DOMAIN			= 7
Const SHADER_COMPUTE		= 8

'  === Shader versions: ===
Const DUMMYSHADER_VERSION	= 0

Const GLSL_VERSION_1_20		= 0
Const GLSL_VERSION_1_30		= 1
Const GLSL_VERSION_1_40		= 2
Const GLSL_VERSION_1_50		= 3
Const GLSL_VERSION_3_30_6	= 4
Const GLSL_VERSION_4_00_8	= 5

Const HLSL_VERTEX_1_0		= 0
Const HLSL_VERTEX_2_0		= 1
Const HLSL_VERTEX_2_a		= 2
Const HLSL_VERTEX_3_0		= 3
Const HLSL_VERTEX_4_0		= 4
Const HLSL_VERTEX_4_1		= 5
Const HLSL_VERTEX_5_0		= 6

Const HLSL_PIXEL_1_0		= 0
Const HLSL_PIXEL_1_1		= 1
Const HLSL_PIXEL_1_2		= 2
Const HLSL_PIXEL_1_3		= 3
Const HLSL_PIXEL_1_4		= 4
Const HLSL_PIXEL_2_0		= 5
Const HLSL_PIXEL_2_a		= 6
Const HLSL_PIXEL_2_b		= 7
Const HLSL_PIXEL_3_0		= 8
Const HLSL_PIXEL_4_0		= 9
Const HLSL_PIXEL_4_1		= 10
Const HLSL_PIXEL_5_0		= 11

'  Since DirectX 10
Const HLSL_GEOMETRY_4_0		= 0
Const HLSL_GEOMETRY_4_1		= 1
Const HLSL_GEOMETRY_5_0		= 2

'  Since DirectX 11
Const HLSL_HULL_5_0			= 0

Const HLSL_DOMAIN_5_0		= 0

Const HLSL_COMPUTE_4_0		= 0
Const HLSL_COMPUTE_4_1		= 1
Const HLSL_COMPUTE_5_0		= 2

'  === Physics types: ===
Const RIGIDBODY_BOX				= 0 '  Normal box.
Const RIGIDBODY_CONE			= 1 '  Normal cone.
Const RIGIDBODY_SPHERE			= 2 '  Normal sphere.
Const RIGIDBODY_CYLINDER		= 3 '  Normal cylinder.
Const RIGIDBODY_CHAMFERCYLINDER	= 4 '  Cylinder with smooth edges at top And bottom.
Const RIGIDBODY_CAPSULE			= 5 '  Cylinder with half spheres at top And bottom.
Const RIGIDBODY_MESH			= 6 '  Universal mesh Object.

Const JOINT_BALL				= 0 '  Can be used For a rope.
Const JOINT_HINGE				= 1 '  Can be used For a door.
Const JOINT_SLIDER				= 2 '  Can be used For a sliding Object.
Const JOINT_CORKSCREW			= 3 '  Can be used For a sliding And rotating Object.
Const JOINT_UNIVERSAL			= 4 '  Can be used For a free rotating Object.



'  ===================================================