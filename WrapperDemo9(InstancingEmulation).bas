' SPE Wrapper Demo9 - 7.6.2010
' For bug report, please join our community at: "www.hlc-games.de/forum"

#Include "SoftPixelEngineWrapper.bas"

OpenDebugLog(True, "spDebugLog.txt")

' Choose the renderer (by default Direct3D9)
Select Case 0
	Case 0
		UseDirect3D9()
	Case 1
		UseDirect3D11()
	Case 2
		UseOpenGL()
	'Case 3
	'	UseSoftware()
End Select

Graphics3D(640, 480, 32, 0)
AppTitle("Instancing emulation")

HidePointer

Var Cam = CreateCamera()
PositionEntity(Cam, 0, 10, -15)

Var Lit = CreateLight()
RotateEntity(Lit, 25, 25, 0)

' Load our animated model
Var obj = LoadMD2("./media/dragon.md2")
ScaleEntity(Obj, 0.1, 0.1, 0.1)
RotateEntity(Obj, 0, 180, 0)

Var tex = LoadTexture("./media/dragon.bmp")
EntityTexture(Obj, Tex)

' Animate the model
AnimateMD2(Obj, 1, 0.05)

' Create all copies (instances)
Const CopyCountHorz = 25
Const CopyCountVert = 25

' Allocate an array for all object copies
Dim As Integer ObjCopies(CopyCountHorz, CopyCountVert)

For i As Integer= 0 To CopyCountHorz
	For j As Integer= 0 To CopyCountVert
		
		' Create an empty mesh object
		ObjCopies(i, j) = CreateMesh()
		
		' Sets the mesh reference. This occurs that the mesh buffers will refer to the "Obj" mesh.
		' The 3rd parameter specifies to copy all information about the location (we only need the scaling).
		' The last parameter specifies to copy all information about the material (color, shininess etc.).
		' Now the current object copy is a kind of an instance (software emulated). This is very useful when
		' using a lot of equal objects in combination with animations (e.g. for animated grass).
		MeshReference(ObjCopies(i, j), Obj, True, True)
		
		' To speed up the whole thing we set a bounding box for each copy. This is used for "Frustum Culling".
		' When the object is completely outside the camera view vrustum it won't be passed to the renderer.
		' Thus the renderer doesn't need to pass each object's triangle.
		EntityBoundingBox(ObjCopies(i, j))
		
		' Set the new position for the object copy
		PositionEntity(ObjCopies(i, j), (i - CopyCountHorz/2) * 10, 0, j * 10 + 25)
		
		' To see how the scene looks when all copies are rotated arbitrary remove the comment character (')
		'TurnEntity(ObjCopies(i, j), 0, Rnd(360), 0)
		
	Next
Next

CameraClsColor(Cam, 100, 100, 100)

While KeyDown(1)=0 ' ESC key
	
	' Move the camea free with the speed 0.1 (use W/A/S/D or arrow keys)
	MoveCameraFree(Cam, 0.1)
	
	UpdateWorld
	RenderWorld
	
	spwFlip(1)
	
Wend

EndGraphics
End


' ====================