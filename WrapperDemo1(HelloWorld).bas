' SPE Wrapper Demo1 - 25.3.2010

' This is the first demonstration of the "SoftPixel Engine Wrapper - v.2.x"
' Here you can see a normal Blitz3D "Hello World" example

' This is the only one you have to write at the top of your applications
' For bug report, please join our community at: "www.hlc-games.de/forum"

#Include "SoftPixelEngineWrapper.bas"

Dim As Integer parent=0

UseOpenGL()

'extHideWindow(-1)

Graphics3D(800, 600, 32, 0) ' 0 window, 1 fullscreen
AppTitle("Demo SoftPixel","End Demo?")

Dim As integer cam = CreateCamera()
PositionEntity(cam, 0, 0,-5 )


Dim As integer  light = CreateLight(1)

Dim As integer  obj = CreateCube()
EntityColor(obj, 100, 100,0 )

Print "Version Wrapper --> ";*WrapperVersion

CameraClsColor(cam,100,0,100 )
While KeyDown(1)=0

	TurnEntity(obj, 1, 1, 1 )

	'spwUpdateWorld()
	RenderWorld(1)

	spwFlip(1)
	
Wend

spwEndGraphics()
