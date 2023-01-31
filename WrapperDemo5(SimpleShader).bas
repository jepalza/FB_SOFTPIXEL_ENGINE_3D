' SPE Wrapper Demo5 - 30.5.2010
' For bug report, please join our community at: "www.hlc-games.de/forum"

#Include "SoftPixelEngineWrapper.bas"


OpenDebugLog(True, "spDebugLog.txt")

UseOpenGL()

Graphics3D(640, 480, 32, 0)

Var Cam = CreateCamera()
PositionEntity(cam, 0, 0, -3)

Var obj = CreateCube()

Var tex = LoadTexture("../media/SoftPixelEngineLogo.png")
EntityTexture(obj, tex)

' Create the shader table to combine several shaders
Var ShaderTable  = CreateShaderTable()

' Load the vertex- and pixel shader
Var VertexShader = LoadShader(ShaderTable, SHADER_VERTEX, GLSL_VERSION_1_20, "../media/ShaderTestVert.txt", "")
Var PixelShader  = LoadShader(ShaderTable, SHADER_PIXEL, GLSL_VERSION_1_20, "../media/ShaderTestFrag.txt", "")

' Link (or rather combine) the shaders
ShaderTableLink(ShaderTable)

' Set the object's shader
SetShader(obj, ShaderTable)

Var Deg=0.0
Var Factor=0.0

While KeyDown(1)=0
	
	Deg = Deg + 0.25
	Factor = Sin(Deg)*0.015
	
	' Sets the pixel shader constant "Factor" to a new value
	SetShaderFloat(PixelShader, "Factor", Factor)
	
	TurnEntity(obj, 0, 0.1, 0)
	
	RenderWorld
	
	spwFlip(1)
	
Wend

EndGraphics
End


' ====================