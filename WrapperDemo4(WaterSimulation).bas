' SPE Wrapper Demo4 - 23.5.2010
' === Shader demonstration ===
' For bug report, please join our community at: "www.hlc-games.de/forum"

' SoftPixel Engine Wrapper include file
#Include "SoftPixelEngineWrapper.bas"

Declare Sub UpdateMovement()
Declare Sub RenderWaterPlane()
	
	
' Initialization
Const ScrWidth = 800
Const ScrHeight = 600

' This version only runs with OpenGL because the shader files are GLSL-Shader!
UseOpenGL()

' Set log file for debugging
'OpenDebugLog(True, "DebugLog.txt")

' Create graphics device
Graphics3D(ScrWidth, ScrHeight, 32)
AppTitle("SPE Wrapper Demo4 - Shader Demonstration")

HidePointer

' 70 frames per second (0 means maximal speed)
FrameRate(70)

' Create basic objects
Dim Shared As Integer Cam 
cam= CreateCamera()
PositionEntity(cam, 0, 1, 0)

Var light = CreateLight()
TurnEntity(light, 45, 0, 0)

CameraRange(cam, 0.1, 1000.0)

' Load all textures
Var HeightMapFile	= "../media/HeightField.jpg"

Var HeightMapTex	= LoadTexture(HeightMapFile)
Var GroundTex		= LoadTexture("../media/Grass.jpg")
Var DetailTex		= LoadTexture("../media/DetailTexture.jpg")

Var SkyTexBack		= LoadTexture("../media/sky_north.jpg", 48)
Var SkyTexFront		= LoadTexture("../media/sky_south.jpg", 48)
Var SkyTexTop		= LoadTexture("../media/sky_up.jpg", 48)
Var SkyTexBottom	= LoadTexture("../media/sky_down.jpg", 48)
Var SkyTexLeft		= LoadTexture("../media/sky_west.jpg", 48)
Var SkyTexRight		= LoadTexture("../media/sky_east.jpg", 48)

Dim Shared as integer RefractionMap	
RefractionMap= CreateTexture(ScrWidth, ScrHeight, 1)
Dim Shared as integer ReflectionMap	
ReflectionMap= CreateTexture(ScrWidth, ScrHeight, 1)
Dim Shared as Integer BumpMap			
BumpMap= LoadTexture("../media/WaterBumpMap.jpg")
Dim Shared as integer WaterSurfaceMap
WaterSurfaceMap= LoadTexture("../media/WaterSurface.jpg")

Var HeightMapWidth  = TextureWidth(HeightMapTex)
Var HeightMapHeight = TextureHeight(HeightMapTex)

ScaleTexture(GroundTex, HeightMapWidth, HeightMapHeight)
ScaleTexture(DetailTex, HeightMapWidth/15.0, HeightMapHeight/15.0)
ScaleTexture(BumpMap, 1.0/14, 1.0/14)
ScaleTexture(WaterSurfaceMap, 1.0/10, 1.0/10)

' Load height field:
' Parameters: { HeightFieldTexture, GridSize (64*64*2 triangles), Parent }
Var ground = LoadHeightField(HeightMapFile, 64)

ScaleMesh(ground, 1.0/HeightMapWidth, 1, 1.0/HeightMapHeight)
PositionMesh(ground, -0.5, 0, -0.5)

PositionEntity(ground, 0, -1, 0)
ScaleEntity(ground, 50, 6, 50)

' New blend modes:
' 6: add signed (for detail textures)
' 7: subtract
TextureBlend(DetailTex, 6)

EntityTexture(ground, GroundTex, 0, 0)
EntityTexture(ground, DetailTex, 0, 1)

' Create a house
Var house = LoadMesh("../media/dom.3ds")
PositionEntity(house, 20, 4.5, -20)
RotateEntity(house, 0, 80, 0)

' Create a skybox
Dim Shared as integer skybox 
skybox = CreateSkyBox(SkyTexBack, SkyTexFront, SkyTexTop, SkyTexBottom, SkyTexLeft, SkyTexRight, 100)

' Water plane (no endless plane)
Dim Shared as integer water 
water= CreatePlane(1, 0, 1.0)
ScaleEntity(water, 50, 50, 50)
Dim Shared as single WaterPlaneHeight = 0.0

' Set water plane cull mode:
' Parameters: { Entity, Mode (0 -> front culling, 1 -> back culling, 2 -> no culling/ both sides are visible) }
MeshCullMode(water, 2)

' Configure fog for under water effect
CameraFogColor(cam, 30, 100, 70)
CameraFogRange(cam, 30, 70)
ClsColor(255, 255, 255)

' Create a shader table which can hold several shaders (vertex, pixel, geometry)
Var WaterShaderTable = CreateShaderTable()

' Load the vertex- and pixel (for OpenGL "fragment") shader:
' Parameters: {
'   Shader table (can be 0 For a single shader), Filename, Type (Vertex/ Pixel/ Geometry/ Hull/ Domain/ Compute),
'   Version, EntryPoint (only for DirectX's HLSL)
' }
Dim Shared as integer WaterVertexShader 
WaterVertexShader= LoadShader(WaterShaderTable, SHADER_VERTEX, GLSL_VERSION_1_20, "../media/ShaderWaterVert.txt", "")
Dim Shared as integer WaterPixelShader 
WaterPixelShader= LoadShader(WaterShaderTable, SHADER_PIXEL, GLSL_VERSION_1_20, "../media/ShaderWaterFrag.txt", "")

' Link (or rather compile) the whole shader table
ShaderTableLink(WaterShaderTable)

' Set the shader constants
SetShaderInt(WaterPixelShader, "RefractionMap", 0)
SetShaderInt(WaterPixelShader, "ReflectionMap", 1)
SetShaderInt(WaterPixelShader, "WaterSurfaceMap", 2)
SetShaderInt(WaterPixelShader, "BumpMap", 3)

SetShaderFloat(WaterPixelShader, "Width", csng(ScrWidth))
SetShaderFloat(WaterPixelShader, "Height", CSng(ScrHeight))

' Add the textures to the water plane
EntityTexture(water, RefractionMap, 0, 0)
EntityTexture(water, ReflectionMap, 0, 1)
EntityTexture(water, WaterSurfaceMap, 0, 2)
EntityTexture(water, BumpMap, 0, 3)

Dim Shared as Single TexPos = 0.0
Dim Shared as integer MirrorMat 
MirrorMat= CreateMatrix()

' Bind the water shader table
SetShader(water, WaterShaderTable)
Print
Print "ESC exit"
Print "UP and DOWN to move Water Height"
Print "ESC exit"
Print
' Main loop
While keydown(1)=0 ' ESC key
	
	UpdateMovement()
	
	RenderWaterPlane()
	
	RenderWorld
	
	spwFlip(1)
	
wend

' Don't forget to end graphics! Otherwise your application will cause a memory leek
EndGraphics
End





' Update movement function (user control etc.)
Sub UpdateMovement()
	
	' Move camera free (use W/A/S/D)
	' Parameters: { Camera (default 0 -> current camera), MoveSpeed (default 0.25),
	'          		TurnSpeed (Default 0.25), MaxTurnDegree (Default 90.0), UseArrowKeys (default true) }
	MoveCameraFree(cam, 0.1, 0.25, 90.0, False)
	
	' Move the water plane up/down
	If KeyDown(200) Then WaterPlaneHeight = WaterPlaneHeight + 0.01
	If KeyDown(208) Then WaterPlaneHeight = WaterPlaneHeight - 0.01
	
	PositionEntity(water, 0, WaterPlaneHeight, 0)
	
	' Move water surface texture
	PositionTexture(BumpMap, 0, TexPos)
	PositionTexture(WaterSurfaceMap, 0, TexPos)
	TexPos = TexPos + 0.005
	
	' Set the skybox's position
	PositionEntity(skybox, EntityX(cam), EntityY(cam), EntityZ(cam))
	
End Sub

' Water shader effect function
Sub RenderWaterPlane()
	
	' Temporary variables
	Var UnderWater	= False
	Var PlaneDir	= 1.0
	
	' Configure under water statement
	HideEntity(water)
	
	If EntityY(cam, True) < EntityY(water, True) Then UnderWater = True
	
	SetShaderInt(WaterPixelShader, "UnderWater", UnderWater)
	
	If UnderWater Then
		CameraFogMode(cam, 1)
		PlaneDir = -1.0
	Else
		CameraFogMode(cam, 0)
	EndIf
	
	' Set clipping plane:
	' Parameters: { Index (0 - 7), Enable, Plane Normal NX, NY, NZ, Plane Distance }
	ClippingPlane(0, True, 0, -PlaneDir, 0, PlaneDir * WaterPlaneHeight)
	
	SetBuffer(TextureBuffer(RefractionMap))
	RenderWorld
	SetBuffer(BackBuffer())
	
	' Configure reflection scene
	If Not UnderWater then
		' Set mirror matrix
		MatrixReset(MirrorMat)
		MatrixTranslate(MirrorMat, 0, WaterPlaneHeight*2, 0)
		MatrixScale(MirrorMat, 1, -1, 1)
		
		CameraMirrorMatrix(cam, MirrorMat)
		CameraMirror(cam, True)
		
		' Disable front face culling
		FrontCulling(False)
		
		' Set clipping plane
		ClippingPlane(0, True, 0, 1, 0, -WaterPlaneHeight)
		
		SetBuffer(TextureBuffer(ReflectionMap))
		RenderWorld
		SetBuffer(BackBuffer())
		
		' Disable camera's mirror matrix and front face culling
		CameraMirror(cam, False)
		FrontCulling(True)
	EndIf
	
	' Back settings
	ClippingPlane(0, False, 0, 0, 0, 0)
	
	ShowEntity(water)
	
End sub




' ====================