' SPE Wrapper Demo3 - 25.3.2010

' This is the third demonstration of the "SoftPixel Engine Wrapper - v.2.x"
' Here you can see new 2D drawing features (texture and images are now the same!)

#Include "SoftPixelEngineWrapper.bas"



Graphics(800, 600, 32, 0)


Var img = LoadImage("./media/SoftPixelEngineLogo.png")
MaskImage(img, 0, 0, 0, 255)

Dim As Single Angle = 0.0
Dim As Single Radius = 150.0

While KeyDown(1)=0
	
	
	' Enable multi color effect
	EnableMultiColor(True)
	
	' Set the multi color values
	' Parameters: { Ingdex [0 .. 3], Red, Green, Blue, Alpha# [0.0 .. 1.0] -> by default 1.0 }
	MultiColor(0, 255,   0,   0)
	MultiColor(1,   0, 255,   0)
	MultiColor(2,   0,   0, 255)
	MultiColor(3, 255, 255,   0)
	
	' Draw the rectangle now with several colors for each corner
	sRect(0, 0, 800, 600,1)
	
	Angle = Angle + 1.0
	
	' Disable multi color effect
	EnableMultiColor(False)
	
	' Draw a streched image
	' Parameters: { img, x, y, width, height, map1x, map1y, map2x, map2y }
	DrawImageStretch(img, 0, 600/2 - 150/2, 800, 150, 0.0, 0.0, 4.0, 2.0)
	
	' Draw a rotating image
	DrawImageRotate(img, 800/2, 600/2, Angle, Radius)
	
	spwFlip(1)
	
Wend


End


' ====================