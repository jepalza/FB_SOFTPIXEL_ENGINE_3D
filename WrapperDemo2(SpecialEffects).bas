' SPE Wrapper Demo2 - 25.3.2010

' This is the second demonstration of the "SoftPixel Engine Wrapper - v.2.x"
' Here you can see special functions you normally do not have in standard Blitz3D
' You will find some stupid things but it is implemented for just showing you some new features! '-)

#Include "SoftPixelEngineWrapper.bas"

Var render3d=0 ' 0 to 2 
Var mode3d=0 ' 0 to 4

Select case render3d
	Case 0
		' Use Direct3D9 (default)
		UseDirect3D9()
	Case 1
		' Or use Direct3D11 (if supported - currently not supported, wrapper needs to be compiled with VisualC++!)
		UseDirect3D11()
	Case 2
		' Or use OpenGL (1.1 - 2.0)
		UseOpenGL()
End Select

MultiSamples(4)

Graphics3D(640, 480, 32, 0)

Var cam = CreateCamera()
PositionEntity(cam, 2, 0, -5)

Var light = CreateLight()

' Here is something new: much more standard 'primitives' (in alpha version not full support)
Var obj=0
Var obj2=0
Select Case mode3d
	Case 0
		obj = CreateDodecahedron()
		EntityFX obj, 4
	Case 1
		obj = CreateIcoSphere()
		EntityFX obj, 4
	Case 2
		obj = CreateIcosahedron()
		EntityFX obj, 4
	Case 3
		obj = CreateTorus()
	Case 4
		obj = CreateTeapot()
End Select

UpdateNormals(obj)
ScaleEntity(obj, 0.5, 0.5, 0.5)

obj2 = CreateSphere()
PositionEntity(obj2, 4, 0, 0)

MeshWireFrame(obj2, 1) ' wireframe types: 0 = solid, 1 = lines, 2 = points

' Set a clipping plane (index [0 - 7], enable, nx, ny, nz, distance)
ClippingPlane(0, TRUE, 1.0, 0.0, 1.0, 0.5)

While KeyDown(1)=0
	
	TurnEntity(obj, 0.25, 0.25, 0.25)
	
	RenderWorld
	
	sColor(255, 255, 255, 222) ' r, g, b, a (a default to 255)
	
	Text(0, 0, "Second SPE Demo")
	
	' Just to show you how to draw with multi colors and transparency
	EnableMultiColor(True)
	MultiColor(0, 255,   0,   0, 0.5) ' Index (0 - 3), r, g, b, a (a default to 1.0)
	MultiColor(1,   0, 255,   0, 1.0)
	MultiColor(2,   0,   0, 255, 0.5)
	MultiColor(3, 255, 255,   0, 1.0)
	sRect(0, 0, GraphicsWidth(), 50)
	
	spwFlip(1)
	
Wend

EndGraphics
End


' ====================