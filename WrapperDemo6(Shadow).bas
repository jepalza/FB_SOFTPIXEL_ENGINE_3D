' SPE Wrapper Demo6 - 2.6.2010
' For bug report, please join our community at: "www.hlc-games.de/forum"

#Include "SoftPixelEngineWrapper.bas"

Graphics3D(640, 480, 32, 0)
AppTitle("Shadow example")

Var Cam = CreateCamera()
PositionEntity(cam, 0, 0, -8)

Var node = CreatePivot()
EntityParent(cam, node)

Var light = CreateLight(2)
PositionEntity(light, 0, 10, 0)

Var obj = CreateDodecahedron()
PositionEntity(obj, 0, 3, 0)
EntityColor(obj, 255, 255, 0)

MeshShadow(obj, True)
LightShadow(light, True)

Var ground = CreateCube()
PositionEntity(ground, 0, -3, 0)
ScaleEntity(ground, 10, 0.5, 10)
EntityColor(ground, 0, 255, 255)

Var wall1 = CreateCube()
PositionEntity(wall1, -2.5, -1, -1)
ScaleEntity(wall1, 0.5, 2, 0.5)
EntityColor(wall1, 0, 0, 255)

Var wall2 = CreateCube()
PositionEntity(wall2, 0, -2.5, 0)
ScaleEntity(wall2, 0.5, 0.5, 4)
EntityColor(wall2, 255, 0, 0)

Var wall3 = CreateCube()
PositionEntity(wall3, 2.5, -1, 1)
ScaleEntity(wall3, 0.5, 2, 0.5)
RotateEntity(wall3, 25, 15, 7)
EntityColor(wall3, 0, 255, 0)

CameraClsColor(cam, 0, 32, 100)

Var Deg=0.0
While KeyDown(1)=0
	
	TurnEntity(obj, 0.25, 0.25, 0.25)
	
	Deg = Deg + 0.25
	RotateEntity(node, Sin(Deg)*15 + 10, Deg, 0)
	
	RenderWorld
	
	spwFlip(1)
	
Wend

EndGraphics
End


' ====================