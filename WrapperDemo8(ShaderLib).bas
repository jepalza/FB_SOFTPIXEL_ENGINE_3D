' SPE Wrapper Demo8 - 7.6.2010
' For bug report, please join our community at: "www.hlc-games.de/forum"

#Include "SoftPixelEngineWrapper.bas"

' try it your config (0 to 2)
Function VideoDriver() As Integer
	Return 2
End Function

'OpenDebugLog(True, "DebugLog.txt")

' Choose the renderer (by default Direct3D9)
Select Case 0
	Case 0
		UseDirect3D9()
	Case 1
		UseOpenGL()
	Case 2
		UseDirect3D11()
	'Case 3
	'	UseSoftware()
End Select

Graphics3D(640, 480, 32, 0)
AppTitle("Shader examples", "END?")

Var Cam = CreateCamera()
PositionEntity(cam, 0, 0, -5)

Var light = CreateLight()

Var obj = CreateCube()
ScaleEntity(obj, 2, 0.75, 2)

Var tex = LoadTexture("./media/SoftPixelEngineLogo.png")
EntityTexture(obj, tex)

Var img = CreateImage(GraphicsWidth(), GraphicsHeight())

Var ShaderTable = CreateShaderTable()

' I found the shader examples at:
' http://blogs.microsoft.co.il/blogs/tamir/archive/2008/06/17/hlsl-pixel-shader-effects-tutorial.aspx
Var VertexShader=0
Var PixelShader=0
If VideoDriver() = 2 Then
	' Load DirectX shader (HLSL). The last parameter is the main function names for the vertex- and pixel shader.
	VertexShader = LoadShader(ShaderTable, SHADER_VERTEX, HLSL_VERTEX_2_0, "./media/ShaderLibHLSL.txt", "VertexMain")
	PixelShader  = LoadShader(ShaderTable, SHADER_PIXEL, HLSL_PIXEL_2_0, "./media/ShaderLibHLSL.txt", "PixelMain")
ElseIf VideoDriver() = 1 Then 
	' Load OpenGL shader (GLSL). The last parameter can be empty ("") because in GLSL there are no entry points.
	VertexShader = LoadShader(ShaderTable, SHADER_VERTEX, GLSL_VERSION_1_20, "./media/ShaderLibVert.txt", "")
	PixelShader  = LoadShader(ShaderTable, SHADER_PIXEL, GLSL_VERSION_1_20, "./media/ShaderLibFrag.txt", "")
Else
	' The "Ray" Software Renderer does not support any shaders!
	VertexShader = 0
	PixelShader  = 0
EndIf

' Link (or rather compile) the whole shader table
If ShaderTable Then ShaderTableLink(ShaderTable)

Var ShaderExample = 2
Print "Shader Nr ";ShaderExample
		
' Set pixel shader constant
If PixelShader <> 0 then
	SetShaderInt(PixelShader, "Example", ShaderExample)
EndIf

' Main loop
While KeyDown(1)=0
	
	TurnEntity(obj, 0, 0.25, 0)
	
	If ShaderTable then
		' Render into the image buffer
		SetBuffer(ImageBuffer(img))
		RenderWorld
		SetBuffer(BackBuffer())
		
		' Bind shader for 2D drawing (in 3D automatically set for each object when shaders are used)
		BindShader(ShaderTable)
		DrawImage(img, 0, 0)
		UnbindShader(ShaderTable)
	Else
		' Render directly into the screen's pixel buffer
		RenderWorld
	EndIf
	
	' Draw some information text
	Text(0, 0,  "Press Enter to switch between the shaders (0 - 5)")
	Text(0, 15, "Shader example: " + Str(ShaderExample))
	Text(0, 30, "Renderer: " + *VDVersion())
	
	If KeyHit(28) Then
		' Change shader's constant "Example" value
		ShaderExample = ShaderExample + 1
		If ShaderExample > 5 Then ShaderExample = 0
		Print "Shader Nr ";ShaderExample
	EndIf
	
	If PixelShader <> 0 Then
		SetShaderInt(PixelShader, "Example", ShaderExample)
	EndIf
	
	spwFlip(1)
	
Wend

' End graphics and quit the program
EndGraphics
End


' ====================