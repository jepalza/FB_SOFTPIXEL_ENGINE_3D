' SPE Wrapper Demo7 - 6.6.2010
' For bug report, please join our community at: "www.hlc-games.de/forum"

Declare Function CreateTeapotPatch(Mesh As integer, surf As integer, Segs As integer) As integer

#Include "SoftPixelEngineWrapper.bas"

'UseOpenGL()
'UseDirect3D9()

OpenDebugLog(True, "spDebugLog.txt")

' Initialization
Graphics3D(640, 480, 32, 0)
AppTitle("Bezier Patch Example")

Var Cam = CreateCamera()
PositionEntity(cam, 0, 1.5, -4)
TurnEntity(cam, 20, 0, 0)

Var light = CreateLight()
TurnEntity(light, 70, 25, 0)

Var Segments = 10
Var LastSegments = Segments

' Create the teapot
Var obj  = CreateMesh()
Var surf = CreateSurface(obj)

'Print "AddBezierPatch(surf, Segs) Don't work?":Sleep:end

CreateTeapotPatch(obj, surf, Segments)

' Create a texture
Var tex = CreateTexture(64, 64)

SetBuffer(TextureBuffer(tex))
	sColor(255, 255, 255)
	sRect(0, 0, 64, 64)
	sColor(255, 180, 0)
	sRect(0, 0, 32, 32)
	sRect(32, 32, 32, 32)
SetBuffer(BackBuffer())

ScaleTexture(tex, 0.5, 0.5)
EntityTexture(obj, tex)

Var Frame=0

' Main loop
While KeyDown(1)=0
	
	TurnEntity(obj, 0, 0.25, 0)
	
	RenderWorld()
	
	sColor(255, 255, 255)
	Text 0, 0,  "Segments = " + Str(Segments)
	Text 0, 25, "Vertices: "  + Str(CountVertices(surf))
	Text 0, 40, "Triangles: " + Str(CountTriangles(surf))
	Text 0, 65, "Use mouse wheel to change segments"
	Text 0, 80, "Press W to switch wireframe mode"
	
	spwFlip(1)
	
	' Change segments
	Segments = Segments + MouseZSpeed()
	
	If Segments <  1 Then Segments = 1
	If Segments > 15 Then Segments = 15
	
	If Segments <> LastSegments  Then
		ClearSurface(surf)
		obj = CreateTeapotPatch(obj, surf, Segments)
		LastSegments = Segments
	EndIf
	
	' Wireframe mode
	If KeyHit(17) Then
		frame = frame + 1
		If frame > 2 Then frame = 0
		WireFrame(frame)
	EndIf
	
Wend

EndGraphics
End


' Function to create a teapot consisting of bezier patches

Function CreateTeapotPatch(Mesh As integer, surf As integer, Segs As integer) As Integer
	' For each bezier patch there must be 4 x 4 anchor points.
	' You can use "PatchAnchorPoint(IndexVert, IndexHorz, X, Y, Z)" or "AddPatchAnchorPoint(X, Y, Z)"
	' After setting up the 16 points call "AddBezierPatch" to add the patch to the given surface with the specified segments
	' There is absolut no limit for the segments! Thus you should avoid a value of more then 100 '-)
	' Otherwise the process will during very, very long ^^
	
	AddPatchAnchorPoint(-80.0, 0.0, 30.0) : AddPatchAnchorPoint(-80.0, -44.80, 30.0) : AddPatchAnchorPoint(-44.80, -80.0, 30.0) : AddPatchAnchorPoint(0.0, -80.0, 30.0)
	AddPatchAnchorPoint(-80.0, 0.0, 12.0) : AddPatchAnchorPoint(-80.0, -44.80, 12.0) : AddPatchAnchorPoint(-44.80, -80.0, 12.0) : AddPatchAnchorPoint(0.0, -80.0, 12.0)
	AddPatchAnchorPoint(-60.0, 0.0, 3.0)  : AddPatchAnchorPoint(-60.0, -33.60, 3.0)  : AddPatchAnchorPoint(-33.60, -60.0, 3.0)  : AddPatchAnchorPoint(0.0, -60.0, 3.0)
	AddPatchAnchorPoint(-60.0, 0.0, 0.0)  : AddPatchAnchorPoint(-60.0, -33.60, 0.0)  : AddPatchAnchorPoint(-33.60, -60.0, 0.0) :  AddPatchAnchorPoint(0.0, -60.0, 0.0)
	AddBezierPatch(surf, Segs)
	
	AddPatchAnchorPoint(0.0, -80.0, 30.0) : AddPatchAnchorPoint(44.80, -80.0, 30.0) : AddPatchAnchorPoint(80.0, -44.80, 30.0) : AddPatchAnchorPoint(80.0, 0.0, 30.0)
	AddPatchAnchorPoint(0.0, -80.0, 12.0) : AddPatchAnchorPoint(44.80, -80.0, 12.0) : AddPatchAnchorPoint(80.0, -44.80, 12.0) : AddPatchAnchorPoint(80.0, 0.0, 12.0)
	AddPatchAnchorPoint(0.0, -60.0, 3.0)  : AddPatchAnchorPoint(33.60, -60.0, 3.0)  : AddPatchAnchorPoint(60.0, -33.60, 3.0)  : AddPatchAnchorPoint(60.0, 0.0, 3.0)
	AddPatchAnchorPoint(0.0, -60.0, 0.0)  : AddPatchAnchorPoint(33.60, -60.0, 0.0)  : AddPatchAnchorPoint(60.0, -33.60, 0.0)  : AddPatchAnchorPoint(60.0, 0.0, 0.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-60.0, 0.0, 90.0) : AddPatchAnchorPoint(-60.0, -33.60, 90.0) : AddPatchAnchorPoint(-33.60, -60.0, 90.0) : AddPatchAnchorPoint(0.0, -60.0, 90.0)
	AddPatchAnchorPoint(-70.0, 0.0, 69.0) : AddPatchAnchorPoint(-70.0, -39.20, 69.0) : AddPatchAnchorPoint(-39.20, -70.0, 69.0) : AddPatchAnchorPoint(0.0, -70.0, 69.0)
	AddPatchAnchorPoint(-80.0, 0.0, 48.0) : AddPatchAnchorPoint(-80.0, -44.80, 48.0) : AddPatchAnchorPoint(-44.80, -80.0, 48.0) : AddPatchAnchorPoint(0.0, -80.0, 48.0)
	AddPatchAnchorPoint(-80.0, 0.0, 30.0) : AddPatchAnchorPoint(-80.0, -44.80, 30.0) : AddPatchAnchorPoint(-44.80, -80.0, 30.0) : AddPatchAnchorPoint(0.0, -80.0, 30.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, -60.0, 90.0) : AddPatchAnchorPoint(33.60, -60.0, 90.0) : AddPatchAnchorPoint(60.0, -33.60, 90.0) : AddPatchAnchorPoint(60.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, -70.0, 69.0) : AddPatchAnchorPoint(39.20, -70.0, 69.0) : AddPatchAnchorPoint(70.0, -39.20, 69.0) : AddPatchAnchorPoint(70.0, 0.0, 69.0)
	AddPatchAnchorPoint(0.0, -80.0, 48.0) : AddPatchAnchorPoint(44.80, -80.0, 48.0) : AddPatchAnchorPoint(80.0, -44.80, 48.0) : AddPatchAnchorPoint(80.0, 0.0, 48.0)
	AddPatchAnchorPoint(0.0, -80.0, 30.0) : AddPatchAnchorPoint(44.80, -80.0, 30.0) : AddPatchAnchorPoint(80.0, -44.80, 30.0) : AddPatchAnchorPoint(80.0, 0.0, 30.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-56.0, 0.0, 90.0)   : AddPatchAnchorPoint(-56.0, -31.36, 90.0)   : AddPatchAnchorPoint(-31.36, -56.0, 90.0)   : AddPatchAnchorPoint(0.0, -56.0, 90.0)
	AddPatchAnchorPoint(-53.50, 0.0, 95.25) : AddPatchAnchorPoint(-53.50, -29.96, 95.25) : AddPatchAnchorPoint(-29.96, -53.50, 95.25) : AddPatchAnchorPoint(0.0, -53.50, 95.25)
	AddPatchAnchorPoint(-57.50, 0.0, 95.25) : AddPatchAnchorPoint(-57.50, -32.20, 95.25) : AddPatchAnchorPoint(-32.20, -57.50, 95.25) : AddPatchAnchorPoint(0.0, -57.50, 95.25)
	AddPatchAnchorPoint(-60.0, 0.0, 90.0)   : AddPatchAnchorPoint(-60.0, -33.60, 90.0)   : AddPatchAnchorPoint(-33.60, -60.0, 90.0)   : AddPatchAnchorPoint(0.0, -60.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, -56.0, 90.0)   : AddPatchAnchorPoint(31.36, -56.0, 90.0)   : AddPatchAnchorPoint(56.0, -31.36, 90.0)   : AddPatchAnchorPoint(56.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, -53.50, 95.25) : AddPatchAnchorPoint(29.96, -53.50, 95.25) : AddPatchAnchorPoint(53.50, -29.96, 95.25) : AddPatchAnchorPoint(53.50, 0.0, 95.25)
	AddPatchAnchorPoint(0.0, -57.50, 95.25) : AddPatchAnchorPoint(32.20, -57.50, 95.25) : AddPatchAnchorPoint(57.50, -32.20, 95.25) : AddPatchAnchorPoint(57.50, 0.0, 95.25)
	AddPatchAnchorPoint(0.0, -60.0, 90.0)   : AddPatchAnchorPoint(33.60, -60.0, 90.0)   : AddPatchAnchorPoint(60.0, -33.60, 90.0)   : AddPatchAnchorPoint(60.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(80.0, 0.0, 30.0) : AddPatchAnchorPoint(80.0, 44.80, 30.0) : AddPatchAnchorPoint(44.80, 80.0, 30.0) : AddPatchAnchorPoint(0.0, 80.0, 30.0)
	AddPatchAnchorPoint(80.0, 0.0, 12.0) : AddPatchAnchorPoint(80.0, 44.80, 12.0) : AddPatchAnchorPoint(44.80, 80.0, 12.0) : AddPatchAnchorPoint(0.0, 80.0, 12.0)
	AddPatchAnchorPoint(60.0, 0.0, 3.0)  : AddPatchAnchorPoint(60.0, 33.60, 3.0)  : AddPatchAnchorPoint(33.60, 60.0, 3.0)  : AddPatchAnchorPoint(0.0, 60.0, 3.0)
	AddPatchAnchorPoint(60.0, 0.0, 0.0)  : AddPatchAnchorPoint(60.0, 33.60, 0.0)  : AddPatchAnchorPoint(33.60, 60.0, 0.0)  : AddPatchAnchorPoint(0.0, 60.0, 0.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 80.0, 30.0) : AddPatchAnchorPoint(-44.80, 80.0, 30.0) : AddPatchAnchorPoint(-80.0, 44.80, 30.0) : AddPatchAnchorPoint(-80.0, 0.0, 30.0)
	AddPatchAnchorPoint(0.0, 80.0, 12.0) : AddPatchAnchorPoint(-44.80, 80.0, 12.0) : AddPatchAnchorPoint(-80.0, 44.80, 12.0) : AddPatchAnchorPoint(-80.0, 0.0, 12.0)
	AddPatchAnchorPoint(0.0, 60.0, 3.0)  : AddPatchAnchorPoint(-33.60, 60.0, 3.0)  : AddPatchAnchorPoint(-60.0, 33.60, 3.0)  : AddPatchAnchorPoint(-60.0, 0.0, 3.0)
	AddPatchAnchorPoint(0.0, 60.0, 0.0)  : AddPatchAnchorPoint(-33.60, 60.0, 0.0)  : AddPatchAnchorPoint(-60.0, 33.60, 0.0)  : AddPatchAnchorPoint(-60.0, 0.0, 0.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(60.0, 0.0, 90.0) : AddPatchAnchorPoint(60.0, 33.60, 90.0) : AddPatchAnchorPoint(33.60, 60.0, 90.0) : AddPatchAnchorPoint(0.0, 60.0, 90.0)
	AddPatchAnchorPoint(70.0, 0.0, 69.0) : AddPatchAnchorPoint(70.0, 39.20, 69.0) : AddPatchAnchorPoint(39.20, 70.0, 69.0) : AddPatchAnchorPoint(0.0, 70.0, 69.0)
	AddPatchAnchorPoint(80.0, 0.0, 48.0) : AddPatchAnchorPoint(80.0, 44.80, 48.0) : AddPatchAnchorPoint(44.80, 80.0, 48.0) : AddPatchAnchorPoint(0.0, 80.0, 48.0)
	AddPatchAnchorPoint(80.0, 0.0, 30.0) : AddPatchAnchorPoint(80.0, 44.80, 30.0) : AddPatchAnchorPoint(44.80, 80.0, 30.0) : AddPatchAnchorPoint(0.0, 80.0, 30.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 60.0, 90.0) : AddPatchAnchorPoint(-33.60, 60.0, 90.0) : AddPatchAnchorPoint(-60.0, 33.60, 90.0) : AddPatchAnchorPoint(-60.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, 70.0, 69.0) : AddPatchAnchorPoint(-39.20, 70.0, 69.0) : AddPatchAnchorPoint(-70.0, 39.20, 69.0) : AddPatchAnchorPoint(-70.0, 0.0, 69.0)
	AddPatchAnchorPoint(0.0, 80.0, 48.0) : AddPatchAnchorPoint(-44.80, 80.0, 48.0) : AddPatchAnchorPoint(-80.0, 44.80, 48.0) : AddPatchAnchorPoint(-80.0, 0.0, 48.0)
	AddPatchAnchorPoint(0.0, 80.0, 30.0) : AddPatchAnchorPoint(-44.80, 80.0, 30.0) : AddPatchAnchorPoint(-80.0, 44.80, 30.0) : AddPatchAnchorPoint(-80.0, 0.0, 30.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(56.0, 0.0, 90.0)   : AddPatchAnchorPoint(56.0, 31.36, 90.0)   : AddPatchAnchorPoint(31.36, 56.0, 90.0)   : AddPatchAnchorPoint(0.0, 56.0, 90.0)
	AddPatchAnchorPoint(53.50, 0.0, 95.25) : AddPatchAnchorPoint(53.50, 29.96, 95.25) : AddPatchAnchorPoint(29.96, 53.50, 95.25) : AddPatchAnchorPoint(0.0, 53.50, 95.25)
	AddPatchAnchorPoint(57.50, 0.0, 95.25) : AddPatchAnchorPoint(57.50, 32.20, 95.25) : AddPatchAnchorPoint(32.20, 57.50, 95.25) : AddPatchAnchorPoint(0.0, 57.50, 95.25)
	AddPatchAnchorPoint(60.0, 0.0, 90.0)   : AddPatchAnchorPoint(60.0, 33.60, 90.0)   : AddPatchAnchorPoint(33.60, 60.0, 90.0)   : AddPatchAnchorPoint(0.0, 60.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 56.0, 90.0)   : AddPatchAnchorPoint(-31.36, 56.0, 90.0)   : AddPatchAnchorPoint(-56.0, 31.36, 90.0)   : AddPatchAnchorPoint(-56.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, 53.50, 95.25) : AddPatchAnchorPoint(-29.96, 53.50, 95.25) : AddPatchAnchorPoint(-53.50, 29.96, 95.25) : AddPatchAnchorPoint(-53.50, 0.0, 95.25)
	AddPatchAnchorPoint(0.0, 57.50, 95.25) : AddPatchAnchorPoint(-32.20, 57.50, 95.25) : AddPatchAnchorPoint(-57.50, 32.20, 95.25) : AddPatchAnchorPoint(-57.50, 0.0, 95.25)
	AddPatchAnchorPoint(0.0, 60.0, 90.0)   : AddPatchAnchorPoint(-33.60, 60.0, 90.0)   : AddPatchAnchorPoint(-60.0, 33.60, 90.0)   : AddPatchAnchorPoint(-60.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-64.0, 0.0, 75.0)  : AddPatchAnchorPoint(-64.0, 12.0, 75.0)  : AddPatchAnchorPoint(-60.0, 12.0, 84.0)  : AddPatchAnchorPoint(-60.0, 0.0, 84.0)
	AddPatchAnchorPoint(-92.0, 0.0, 75.0)  : AddPatchAnchorPoint(-92.0, 12.0, 75.0)  : AddPatchAnchorPoint(-100.0, 12.0, 84.0) : AddPatchAnchorPoint(-100.0, 0.0, 84.0)
	AddPatchAnchorPoint(-108.0, 0.0, 75.0) : AddPatchAnchorPoint(-108.0, 12.0, 75.0) : AddPatchAnchorPoint(-120.0, 12.0, 84.0) : AddPatchAnchorPoint(-120.0, 0.0, 84.0)
	AddPatchAnchorPoint(-108.0, 0.0, 66.0) : AddPatchAnchorPoint(-108.0, 12.0, 66.0) : AddPatchAnchorPoint(-120.0, 12.0, 66.0) : AddPatchAnchorPoint(-120.0, 0.0, 66.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-60.0, 0.0, 84.0)  : AddPatchAnchorPoint(-60.0, -12.0, 84.0)  : AddPatchAnchorPoint(-64.0, -12.0, 75.0)  : AddPatchAnchorPoint(-64.0, 0.0, 75.0)
	AddPatchAnchorPoint(-100.0, 0.0, 84.0) : AddPatchAnchorPoint(-100.0, -12.0, 84.0) : AddPatchAnchorPoint(-92.0, -12.0, 75.0)  : AddPatchAnchorPoint(-92.0, 0.0, 75.0)
	AddPatchAnchorPoint(-120.0, 0.0, 84.0) : AddPatchAnchorPoint(-120.0, -12.0, 84.0) : AddPatchAnchorPoint(-108.0, -12.0, 75.0) : AddPatchAnchorPoint(-108.0, 0.0, 75.0)
	AddPatchAnchorPoint(-120.0, 0.0, 66.0) : AddPatchAnchorPoint(-120.0, -12.0, 66.0) : AddPatchAnchorPoint(-108.0, -12.0, 66.0) : AddPatchAnchorPoint(-108.0, 0.0, 66.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-108.0, 0.0, 66.0) : AddPatchAnchorPoint(-108.0, 12.0, 66.0) : AddPatchAnchorPoint(-120.0, 12.0, 66.0)  : AddPatchAnchorPoint(-120.0, 0.0, 66.0)
	AddPatchAnchorPoint(-108.0, 0.0, 57.0) : AddPatchAnchorPoint(-108.0, 12.0, 57.0) : AddPatchAnchorPoint(-120.0, 12.0, 48.0)  : AddPatchAnchorPoint(-120.0, 0.0, 48.0)
	AddPatchAnchorPoint(-100.0, 0.0, 39.0) : AddPatchAnchorPoint(-100.0, 12.0, 39.0) : AddPatchAnchorPoint(-106.0, 12.0, 31.50) : AddPatchAnchorPoint(-106.0, 0.0, 31.50)
	AddPatchAnchorPoint(-80.0, 0.0, 30.0)  : AddPatchAnchorPoint(-80.0, 12.0, 30.0)  : AddPatchAnchorPoint(-76.0, 12.0, 18.0)   : AddPatchAnchorPoint(-76.0, 0.0, 18.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-120.0, 0.0, 66.0) : AddPatchAnchorPoint(-120.0, -12.0, 66.0) : AddPatchAnchorPoint(-108.0, -12.0, 66.0) : AddPatchAnchorPoint(-108.0, 0.0, 66.0)
	AddPatchAnchorPoint(-120.0, 0.0, 48.0) : AddPatchAnchorPoint(-120.0, -12.0, 48.0) : AddPatchAnchorPoint(-108.0, -12.0, 57.0) : AddPatchAnchorPoint(-108.0, 0.0, 57.0)
	AddPatchAnchorPoint(-106.0, 0.0, 31.50): AddPatchAnchorPoint(-106.0, -12.0, 31.50): AddPatchAnchorPoint(-100.0, -12.0, 39.0) : AddPatchAnchorPoint(-100.0, 0.0, 39.0)
	AddPatchAnchorPoint(-76.0, 0.0, 18.0)  : AddPatchAnchorPoint(-76.0, -12.0, 18.0)  : AddPatchAnchorPoint(-80.0, -12.0, 30.0)  : AddPatchAnchorPoint(-80.0, 0.0, 30.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(68.0, 0.0, 51.0)  : AddPatchAnchorPoint(68.0, 26.40, 51.0)  : AddPatchAnchorPoint(68.0, 26.40, 18.0)  : AddPatchAnchorPoint(68.0, 0.0, 18.0)
	AddPatchAnchorPoint(104.0, 0.0, 51.0) : AddPatchAnchorPoint(104.0, 26.40, 51.0) : AddPatchAnchorPoint(124.0, 26.40, 27.0) : AddPatchAnchorPoint(124.0, 0.0, 27.0)
	AddPatchAnchorPoint(92.0, 0.0, 78.0)  : AddPatchAnchorPoint(92.0, 10.0, 78.0)   : AddPatchAnchorPoint(96.0, 10.0, 75.0)   : AddPatchAnchorPoint(96.0, 0.0, 75.0)
	AddPatchAnchorPoint(108.0, 0.0, 90.0) : AddPatchAnchorPoint(108.0, 10.0, 90.0)  : AddPatchAnchorPoint(132.0, 10.0, 90.0)  : AddPatchAnchorPoint(132.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(68.0, 0.0, 18.0)  : AddPatchAnchorPoint(68.0, -26.40, 18.0)  : AddPatchAnchorPoint(68.0, -26.40, 51.0)  : AddPatchAnchorPoint(68.0, 0.0, 51.0)
	AddPatchAnchorPoint(124.0, 0.0, 27.0) : AddPatchAnchorPoint(124.0, -26.40, 27.0) : AddPatchAnchorPoint(104.0, -26.40, 51.0) : AddPatchAnchorPoint(104.0, 0.0, 51.0)
	AddPatchAnchorPoint(96.0, 0.0, 75.0)  : AddPatchAnchorPoint(96.0, -10.0, 75.0)   : AddPatchAnchorPoint(92.0, -10.0, 78.0)   : AddPatchAnchorPoint(92.0, 0.0, 78.0)
	AddPatchAnchorPoint(132.0, 0.0, 90.0) : AddPatchAnchorPoint(132.0, -10.0, 90.0)  : AddPatchAnchorPoint(108.0, -10.0, 90.0)  : AddPatchAnchorPoint(108.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(108.0, 0.0, 90.0) : AddPatchAnchorPoint(108.0, 10.0, 90.0) : AddPatchAnchorPoint(132.0, 10.0, 90.0)  : AddPatchAnchorPoint(132.0, 0.0, 90.0)
	AddPatchAnchorPoint(112.0, 0.0, 93.0) : AddPatchAnchorPoint(112.0, 10.0, 93.0) : AddPatchAnchorPoint(141.0, 10.0, 93.75) : AddPatchAnchorPoint(141.0, 0.0, 93.75)
	AddPatchAnchorPoint(116.0, 0.0, 93.0) : AddPatchAnchorPoint(116.0, 6.0, 93.0)  : AddPatchAnchorPoint(138.0, 6.0, 94.50)  : AddPatchAnchorPoint(138.0, 0.0, 94.50)
	AddPatchAnchorPoint(112.0, 0.0, 90.0) : AddPatchAnchorPoint(112.0, 6.0, 90.0)  : AddPatchAnchorPoint(128.0, 6.0, 90.0)  : AddPatchAnchorPoint(128.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(132.0, 0.0, 90.0)  : AddPatchAnchorPoint(132.0, -10.0, 90.0) : AddPatchAnchorPoint(108.0, -10.0, 90.0) : AddPatchAnchorPoint(108.0, 0.0, 90.0)
	AddPatchAnchorPoint(141.0, 0.0, 93.75) : AddPatchAnchorPoint(141.0, -10.0, 93.75): AddPatchAnchorPoint(112.0, -10.0, 93.0) : AddPatchAnchorPoint(112.0, 0.0, 93.0)
	AddPatchAnchorPoint(138.0, 0.0, 94.50) : AddPatchAnchorPoint(138.0, -6.0, 94.50) : AddPatchAnchorPoint(116.0, -6.0, 93.0)  : AddPatchAnchorPoint(116.0, 0.0, 93.0)
	AddPatchAnchorPoint(128.0, 0.0, 90.0)  : AddPatchAnchorPoint(128.0, -6.0, 90.0)  : AddPatchAnchorPoint(112.0, -6.0, 90.0)  : AddPatchAnchorPoint(112.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(50.0, 0.0, 90.0) : AddPatchAnchorPoint(50.0, 28.0, 90.0)  : AddPatchAnchorPoint(28.0, 50.0, 90.0)  : AddPatchAnchorPoint(0.0, 50.0, 90.0)
	AddPatchAnchorPoint(52.0, 0.0, 90.0) : AddPatchAnchorPoint(52.0, 29.12, 90.0) : AddPatchAnchorPoint(29.12, 52.0, 90.0) : AddPatchAnchorPoint(0.0, 52.0, 90.0)
	AddPatchAnchorPoint(54.0, 0.0, 90.0) : AddPatchAnchorPoint(54.0, 30.24, 90.0) : AddPatchAnchorPoint(30.24, 54.0, 90.0) : AddPatchAnchorPoint(0.0, 54.0, 90.0)
	AddPatchAnchorPoint(56.0, 0.0, 90.0) : AddPatchAnchorPoint(56.0, 31.36, 90.0) : AddPatchAnchorPoint(31.36, 56.0, 90.0) : AddPatchAnchorPoint(0.0, 56.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 50.0, 90.0) : AddPatchAnchorPoint(-28.0, 50.0, 90.0)  : AddPatchAnchorPoint(-50.0, 28.0, 90.0)  : AddPatchAnchorPoint(-50.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, 52.0, 90.0) : AddPatchAnchorPoint(-29.12, 52.0, 90.0) : AddPatchAnchorPoint(-52.0, 29.12, 90.0) : AddPatchAnchorPoint(-52.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, 54.0, 90.0) : AddPatchAnchorPoint(-30.24, 54.0, 90.0) : AddPatchAnchorPoint(-54.0, 30.24, 90.0) : AddPatchAnchorPoint(-54.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, 56.0, 90.0) : AddPatchAnchorPoint(-31.36, 56.0, 90.0) : AddPatchAnchorPoint(-56.0, 31.36, 90.0) : AddPatchAnchorPoint(-56.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-50.0, 0.0, 90.0) : AddPatchAnchorPoint(-50.0, -28.0, 90.0)  : AddPatchAnchorPoint(-28.0, -50.0, 90.0)  : AddPatchAnchorPoint(0.0, -50.0, 90.0)
	AddPatchAnchorPoint(-52.0, 0.0, 90.0) : AddPatchAnchorPoint(-52.0, -29.12, 90.0) : AddPatchAnchorPoint(-29.12, -52.0, 90.0) : AddPatchAnchorPoint(0.0, -52.0, 90.0)
	AddPatchAnchorPoint(-54.0, 0.0, 90.0) : AddPatchAnchorPoint(-54.0, -30.24, 90.0) : AddPatchAnchorPoint(-30.24, -54.0, 90.0) : AddPatchAnchorPoint(0.0, -54.0, 90.0)
	AddPatchAnchorPoint(-56.0, 0.0, 90.0) : AddPatchAnchorPoint(-56.0, -31.36, 90.0) : AddPatchAnchorPoint(-31.36, -56.0, 90.0) : AddPatchAnchorPoint(0.0, -56.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, -50.0, 90.0) : AddPatchAnchorPoint(28.0, -50.0, 90.0)  : AddPatchAnchorPoint(50.0, -28.0, 90.0)  : AddPatchAnchorPoint(50.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, -52.0, 90.0) : AddPatchAnchorPoint(29.12, -52.0, 90.0) : AddPatchAnchorPoint(52.0, -29.12, 90.0) : AddPatchAnchorPoint(52.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, -54.0, 90.0) : AddPatchAnchorPoint(30.24, -54.0, 90.0) : AddPatchAnchorPoint(54.0, -30.24, 90.0) : AddPatchAnchorPoint(54.0, 0.0, 90.0)
	AddPatchAnchorPoint(0.0, -56.0, 90.0) : AddPatchAnchorPoint(31.36, -56.0, 90.0) : AddPatchAnchorPoint(56.0, -31.36, 90.0) : AddPatchAnchorPoint(56.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(8.0, 0.0, 102.0) : AddPatchAnchorPoint(8.0, 4.48, 102.0)  : AddPatchAnchorPoint(4.48, 8.0, 102.0)  : AddPatchAnchorPoint(0.0, 8.0, 102.0)
	AddPatchAnchorPoint(16.0, 0.0, 96.0) : AddPatchAnchorPoint(16.0, 8.96, 96.0)  : AddPatchAnchorPoint(8.96, 16.0, 96.0)  : AddPatchAnchorPoint(0.0, 16.0, 96.0)
	AddPatchAnchorPoint(52.0, 0.0, 96.0) : AddPatchAnchorPoint(52.0, 29.12, 96.0) : AddPatchAnchorPoint(29.12, 52.0, 96.0) : AddPatchAnchorPoint(0.0, 52.0, 96.0)
	AddPatchAnchorPoint(52.0, 0.0, 90.0) : AddPatchAnchorPoint(52.0, 29.12, 90.0) : AddPatchAnchorPoint(29.12, 52.0, 90.0) : AddPatchAnchorPoint(0.0, 52.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 8.0, 102.0) : AddPatchAnchorPoint(-4.48, 8.0, 102.0)  : AddPatchAnchorPoint(-8.0, 4.48, 102.0)  : AddPatchAnchorPoint(-8.0, 0.0, 102.0)
	AddPatchAnchorPoint(0.0, 16.0, 96.0) : AddPatchAnchorPoint(-8.96, 16.0, 96.0)  : AddPatchAnchorPoint(-16.0, 8.96, 96.0)  : AddPatchAnchorPoint(-16.0, 0.0, 96.0)
	AddPatchAnchorPoint(0.0, 52.0, 96.0) : AddPatchAnchorPoint(-29.12, 52.0, 96.0) : AddPatchAnchorPoint(-52.0, 29.12, 96.0) : AddPatchAnchorPoint(-52.0, 0.0, 96.0)
	AddPatchAnchorPoint(0.0, 52.0, 90.0) : AddPatchAnchorPoint(-29.12, 52.0, 90.0) : AddPatchAnchorPoint(-52.0, 29.12, 90.0) : AddPatchAnchorPoint(-52.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(-8.0, 0.0, 102.0) : AddPatchAnchorPoint(-8.0, -4.48, 102.0)  : AddPatchAnchorPoint(-4.48, -8.0, 102.0)  : AddPatchAnchorPoint(0.0, -8.0, 102.0)
	AddPatchAnchorPoint(-16.0, 0.0, 96.0) : AddPatchAnchorPoint(-16.0, -8.96, 96.0)  : AddPatchAnchorPoint(-8.96, -16.0, 96.0)  : AddPatchAnchorPoint(0.0, -16.0, 96.0)
	AddPatchAnchorPoint(-52.0, 0.0, 96.0) : AddPatchAnchorPoint(-52.0, -29.12, 96.0) : AddPatchAnchorPoint(-29.12, -52.0, 96.0) : AddPatchAnchorPoint(0.0, -52.0, 96.0)
	AddPatchAnchorPoint(-52.0, 0.0, 90.0) : AddPatchAnchorPoint(-52.0, -29.12, 90.0) : AddPatchAnchorPoint(-29.12, -52.0, 90.0) : AddPatchAnchorPoint(0.0, -52.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, -8.0, 102.0) : AddPatchAnchorPoint(4.48, -8.0, 102.0)  : AddPatchAnchorPoint(8.0, -4.48, 102.0)  : AddPatchAnchorPoint(8.0, 0.0, 102.0)
	AddPatchAnchorPoint(0.0, -16.0, 96.0) : AddPatchAnchorPoint(8.96, -16.0, 96.0)  : AddPatchAnchorPoint(16.0, -8.96, 96.0)  : AddPatchAnchorPoint(16.0, 0.0, 96.0)
	AddPatchAnchorPoint(0.0, -52.0, 96.0) : AddPatchAnchorPoint(29.12, -52.0, 96.0) : AddPatchAnchorPoint(52.0, -29.12, 96.0) : AddPatchAnchorPoint(52.0, 0.0, 96.0)
	AddPatchAnchorPoint(0.0, -52.0, 90.0) : AddPatchAnchorPoint(29.12, -52.0, 90.0) : AddPatchAnchorPoint(52.0, -29.12, 90.0) : AddPatchAnchorPoint(52.0, 0.0, 90.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 0.0, 120.0)  : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)
	AddPatchAnchorPoint(32.0, 0.0, 120.0) : AddPatchAnchorPoint(32.0, 18.0, 120.0) : AddPatchAnchorPoint(18.0, 32.0, 120.0) : AddPatchAnchorPoint(0.0, 32.0, 120.0)
	AddPatchAnchorPoint(0.0, 0.0, 108.0)  : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)
	AddPatchAnchorPoint(8.0, 0.0, 102.0)  : AddPatchAnchorPoint(8.0, 4.48, 102.0)  : AddPatchAnchorPoint(4.48, 8.0, 102.0)  : AddPatchAnchorPoint(0.0, 8.0, 102.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 0.0, 120.0)  : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)
	AddPatchAnchorPoint(0.0, 32.0, 120.0) : AddPatchAnchorPoint(-18.0, 32.0, 120.0): AddPatchAnchorPoint(-32.0, 18.0, 120.0): AddPatchAnchorPoint(-32.0, 0.0, 120.0)
	AddPatchAnchorPoint(0.0, 0.0, 108.0)  : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)
	AddPatchAnchorPoint(0.0, 8.0, 102.0)  : AddPatchAnchorPoint(-4.48, 8.0, 102.0) : AddPatchAnchorPoint(-8.0, 4.48, 102.0) : AddPatchAnchorPoint(-8.0, 0.0, 102.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 0.0, 120.0)  : AddPatchAnchorPoint(0.0, 0.0, 120.0)    : AddPatchAnchorPoint(0.0, 0.0, 120.0)    : AddPatchAnchorPoint(0.0, 0.0, 120.0)
	AddPatchAnchorPoint(-32.0, 0.0, 120.0): AddPatchAnchorPoint(-32.0, -18.0, 120.0): AddPatchAnchorPoint(-18.0, -32.0, 120.0): AddPatchAnchorPoint(0.0, -32.0, 120.0)
	AddPatchAnchorPoint(0.0, 0.0, 108.0)  : AddPatchAnchorPoint(0.0, 0.0, 108.0)    : AddPatchAnchorPoint(0.0, 0.0, 108.0)    : AddPatchAnchorPoint(0.0, 0.0, 108.0)
	AddPatchAnchorPoint(-8.0, 0.0, 102.0) : AddPatchAnchorPoint(-8.0, -4.48, 102.0) : AddPatchAnchorPoint(-4.48, -8.0, 102.0) : AddPatchAnchorPoint(0.0, -8.0, 102.0)
	AddBezierPatch(Surf, Segs)
	
	AddPatchAnchorPoint(0.0, 0.0, 120.0)  : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)   : AddPatchAnchorPoint(0.0, 0.0, 120.0)
	AddPatchAnchorPoint(0.0, -32.0, 120.0): AddPatchAnchorPoint(18.0, -32.0, 120.0): AddPatchAnchorPoint(32.0, -18.0, 120.0): AddPatchAnchorPoint(32.0, 0.0, 120.0)
	AddPatchAnchorPoint(0.0, 0.0, 108.0)  : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)   : AddPatchAnchorPoint(0.0, 0.0, 108.0)
	AddPatchAnchorPoint(0.0, -8.0, 102.0) : AddPatchAnchorPoint(4.48, -8.0, 102.0) : AddPatchAnchorPoint(8.0, -4.48, 102.0) : AddPatchAnchorPoint(8.0, 0.0, 102.0)
	AddBezierPatch(Surf, Segs)
	
	' Finish mesh creation
	ScaleMesh(Mesh, 0.02, 0.02, 0.02)
	RotateMesh(Mesh, -90, 0, 0)
	PositionMesh(Mesh, 0, -MeshHeight(Mesh)/2, 0)
	
	EntityFX(Mesh, 0)
	UpdateNormals(Mesh)
	
	Return Mesh
	
End Function




' ====================