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
' * ********************** HLC SoftPixelEngine - (03/01/2008) ************************
' *
' * (c) Copyright 2008 - Lukas Hermanns
' *
' * SoftPixel Engine Wrapper for BlitzBasic
' * Auto generated code from 20:09:51 30/08/2011
' *
' * FreeBasic Conversion by Joseba Epalza <jepalza@gmail.com> (2022)
' *

#Include "SoftPixelEngineWrapper.bi"

' 3D
Sub Graphics3D(Width_ as integer, Height as integer, Depth as integer = 32, Mode as Integer = 0)
    spwGraphics3D(Width_,Height,Depth,Mode)
End Sub

' 2D
Sub Graphics(Width_ as Integer, Height as integer, Depth as integer = 32, Mode as Integer = 0)
    spwGraphics(Width_,Height,Depth,Mode)
End Sub

Sub EndGraphics()
    spwEndGraphics()
End Sub

Sub AppTitle(Title As Zstring Ptr, EndMessage As Zstring Ptr = 0)
    spwAppTitle(Title,EndMessage)
End Sub

Function GraphicsWidth() as Integer
    Return spwGraphicsWidth()
End Function

Function GraphicsHeight() as Integer
    Return spwGraphicsHeight()
End Function

Function GraphicsDepth() as Integer
    Return spwGraphicsDepth()
End Function

Sub sMessageBox(Message As Zstring Ptr, ObjType as Integer = 0)
    spwMessageBox(Message,ObjType)
End Sub

Function sGetKey() as Integer
    Return spwGetKey()
End Function

Sub WaitKey()
    spwWaitKey()
End Sub

Function KeyDown(Scancode as Integer) as integer
    Return spwKeyDown(Scancode)
End Function

Function KeyHit(Scancode as Integer) as integer
    Return spwKeyHit(Scancode)
End Function

Function GetMouse() as Integer
    Return spwGetMouse()
End Function

Function MouseDown(Scancode as Integer) as integer
    Return spwMouseDown(Scancode)
End Function

Function MouseHit(Scancode as Integer) as integer
    Return spwMouseHit(Scancode)
End Function

Function MouseX() as Integer
    Return spwMouseX()
End Function

Function MouseY() as Integer
    Return spwMouseY()
End Function

Function MouseZ() as Integer
    Return spwMouseZ()
End Function

Function MouseXSpeed() as Integer
    Return spwMouseXSpeed()
End Function

Function MouseYSpeed() as Integer
    Return spwMouseYSpeed()
End Function

Function MouseZSpeed() as Integer
    Return spwMouseZSpeed()
End Function

Sub ShowPointer()
    spwShowPointer()
End Sub

Sub HidePointer()
    spwHidePointer()
End Sub

Sub MoveMouse(X as integer, Y as Integer)
    spwMoveMouse(X,Y)
End Sub

Sub WaitMouse()
    spwWaitMouse()
End Sub

Sub MouseWait()
    spwMouseWait()
End Sub

Function CreateListener(Parent as Integer, RollOff as Single = 1.0, DopplerScale as Single = 1.0, DistanceScale as Single = 1.0) as integer
    Return spwCreateListener(Parent,RollOff,DopplerScale,DistanceScale)
End Function

Function LoadSound(File As Zstring Ptr) as Integer
    Return spwLoadSound(File)
End Function

Function Load3DSound(File As Zstring Ptr) as Integer
    Return spwLoad3DSound(File)
End Function

Sub FreeSound(Sound as Integer)
    spwFreeSound(Sound)
End Sub

Sub LoopSound(Sound as Integer)
    spwLoopSound(Sound)
End Sub

Sub PlaySound(Sound as Integer)
    spwPlaySound(Sound)
End Sub

Sub SoundPitch(Sound as integer, Frequency as Integer)
    spwSoundPitch(Sound,Frequency)
End Sub

Sub SoundPan(Sound as Integer, Balance as Single)
    spwSoundPan(Sound,Balance)
End Sub

Sub SoundVolume(Sound as Integer, Volume as Single)
    spwSoundVolume(Sound,Volume)
End Sub

Sub EmitSound(Sound as integer, Entity as Integer)
    spwEmitSound(Sound,Entity)
End Sub

Sub MoveCameraFree(Camera as integer = 0, MoveSpeed as Single = 0.25, TurnSpeed as Single = 0.25, MaxTurnDegree as Single = 90.0, UseArrowKeys as Integer = True)
    spwMoveCameraFree(Camera,MoveSpeed,TurnSpeed,MaxTurnDegree,UseArrowKeys)
End Sub

Sub CombineModels(MeshA as integer, MeshB as integer, Mode as Integer = 0, Precision as Single = 0.00001)
    spwCombineModels(MeshA,MeshB,Mode,Precision)
End Sub

Function LoadScriptFile(File As Zstring Ptr) as Integer
    Return spwLoadScriptFile(File)
End Function

Function CreateCamera(Parent as Integer = 0) as integer
    Return spwCreateCamera(Parent)
End Function

Function CreateLight(ObjType as integer = 1, Parent as Integer = 0) as integer
    Return spwCreateLight(ObjType,Parent)
End Function

Function CopyEntity(Entity as integer, Parent as Integer = 0) as integer
    Return spwCopyEntity(Entity,Parent)
End Function

Function CreatePivot(Parent as Integer = 0) as integer
    Return spwCreatePivot(Parent)
End Function

Function CreateMesh(Parent as Integer = 0) as integer
    Return spwCreateMesh(Parent)
End Function

Function CreateCube(Parent as Integer = 0) as integer
    Return spwCreateCube(Parent)
End Function

Function CreateCone(Segments as integer = 8, Solid as integer = True, Parent as Integer = 0) as integer
    Return spwCreateCone(Segments,Solid,Parent)
End Function

Function CreateCylinder(Segments as integer = 8, Solid as integer = True, Parent as Integer = 0) as integer
    Return spwCreateCylinder(Segments,Solid,Parent)
End Function

Function CreatePipe(Segments as integer = 8, OuterRadius as Single = 1.0, InnerRadius as Single = 0.5, Parent as Integer = 0) as integer
    Return spwCreatePipe(Segments,OuterRadius,InnerRadius,Parent)
End Function

Function CreateSphere(Segments as integer = 8, Parent as Integer = 0) as integer
    Return spwCreateSphere(Segments,Parent)
End Function

Function CreateIcoSphere(Segments as integer = 3, Parent as Integer = 0) as integer
    Return spwCreateIcoSphere(Segments,Parent)
End Function

Function CreateTorus(Segments as integer = 8, OuterRadius as Single = 1.0, InnerRadius as Single = 0.5, Parent as Integer = 0) as integer
    Return spwCreateTorus(Segments,OuterRadius,InnerRadius,Parent)
End Function

Function CreateSpiral(Segments as integer = 8, OuterRadius as Single = 1.0, InnerRadius as Single = 0.5, DegreeLength as Single = 360.0, DegreeHeight as Single = 2.0, Solid as integer = True, Parent as Integer = 0) as integer
    Return spwCreateSpiral(Segments,OuterRadius,InnerRadius,DegreeLength,DegreeHeight,Solid,Parent)
End Function

Function CreatePlane(Segments as integer = 1, Parent as Integer = 0, Radius as Single = 1000.0) as integer
    Return spwCreatePlane(Segments,Parent,Radius)
End Function

Function CreateTetrahedron(Parent as Integer = 0) as integer
    Return spwCreateTetrahedron(Parent)
End Function

Function CreateDodecahedron(Parent as Integer = 0) as integer
    Return spwCreateDodecahedron(Parent)
End Function

Function CreateIcosahedron(Parent as Integer = 0) as integer
    Return spwCreateIcosahedron(Parent)
End Function

Function CreateCuboctahedron(Parent as Integer = 0) as integer
    Return spwCreateCuboctahedron(Parent)
End Function

Function CreateOctahedron(Parent as Integer = 0) as integer
    Return spwCreateOctahedron(Parent)
End Function

Function CreateTeapot(Parent as Integer = 0) as integer
    Return spwCreateTeapot(Parent)
End Function

Function CreateSkyBox(TexBack as integer, TexFront as integer, TexTop as integer, TexBottom as integer, TexLeft as integer, TexRight as Integer, Radius as Single = 100.0) as integer
    Return spwCreateSkyBox(TexBack,TexFront,TexTop,TexBottom,TexLeft,TexRight,Radius)
End Function

Function LoadHeightField(File As Zstring Ptr, Segments as integer = -1, Parent as Integer = 0) as integer
    Return spwLoadHeightField(File,Segments,Parent)
End Function

Function LoadTerrain(File As Zstring Ptr, Parent as Integer = 0) as integer
    Return spwLoadTerrain(File,Parent)
End Function

Function LoadMesh(File As Zstring Ptr, Parent as Integer = 0) as integer
    Return spwLoadMesh(File,Parent)
End Function

Function LoadAnimMesh(File As Zstring Ptr, Parent as Integer = 0) as integer
    Return spwLoadAnimMesh(File,Parent)
End Function

Function LoadMD2(File As Zstring Ptr, Parent as Integer = 0) as integer
    Return spwLoadMD2(File,Parent)
End Function

Function LoadBSP(File As Zstring Ptr, Gamma as Single = 0.0, Parent as Integer = 0) as integer
    Return spwLoadBSP(File,Gamma,Parent)
End Function

Sub BSPLighting(BSP as integer, UseLightmaps as Integer)
    spwBSPLighting(BSP,UseLightmaps)
End Sub

Function LoadSprite(File As Zstring Ptr, Flags as integer = 9, Parent as Integer = 0) as integer
    Return spwLoadSprite(File,Flags,Parent)
End Function

Function CreateSprite(Parent as Integer = 0) as integer
    Return spwCreateSprite(Parent)
End Function

Sub RotateSprite(Sprite as Integer, Angle as Single)
    spwRotateSprite(Sprite,Angle)
End Sub

Sub ScaleSprite(Sprite as Integer, Width_ as Single, Height as Single)
    spwScaleSprite(Sprite,Width_,Height)
End Sub

Sub HandleSprite(Sprite as Integer, X as Single, Y as Single)
    spwHandleSprite(Sprite,X,Y)
End Sub

Sub SpriteViewMode(Sprite as integer, Mode as Integer)
    spwSpriteViewMode(Sprite,Mode)
End Sub

Sub MeshReference(Mesh as integer, MeshReference_ as integer, CopyLocation as integer = False, CopyMaterial as Integer = False)
    spwMeshReference(Mesh,MeshReference_,CopyLocation,CopyMaterial)
End Sub

Sub SurfaceReference(Surface as integer, SurfaceReference_ as integer, CopyTextures as Integer = False)
    spwSurfaceReference(Surface,SurfaceReference_,CopyTextures)
End Sub

Sub AnimateMD2(Entity as integer, Mode as integer = 1, Speed as Single = 1.0, FirstFrame as integer = 0, LastFrame as Integer = 0, Transition as Single = 0.0)
    spwAnimateMD2(Entity,Mode,Speed,FirstFrame,LastFrame,Transition)
End Sub

Sub Animate(Entity as integer, Mode as integer = 1, Speed as Single = 1.0, Sequence as Integer = 0, Transition as Single = 0.0)
    spwAnimate(Entity,Mode,Speed,Sequence,Transition)
End Sub

Function Animating(Entity as Integer) as integer
    Return spwAnimating(Entity)
End Function

Function AnimLength(Entity as Integer) as integer
    Return spwAnimLength(Entity)
End Function

Function AnimSeq(Entity as Integer) as integer
    Return spwAnimSeq(Entity)
End Function

Function AnimTime(Entity as Integer) as Single
    Return spwAnimTime(Entity)
End Function

Sub SetAnimKey(Entity as integer, Frame as integer, PosKey as integer = True, RotKey as integer = True, SclKey as Integer = True)
    spwSetAnimKey(Entity,Frame,PosKey,RotKey,SclKey)
End Sub

Sub AddAnimSeq(Entity as integer, Length as Integer)
    spwAddAnimSeq(Entity,Length)
End Sub

Sub AnimSpline(Entity as integer, Enable as Integer, Expansion as Single = 1.0)
    spwAnimSpline(Entity,Enable,Expansion)
End Sub

Function ExtractAnimSeq(Entity as integer, FirstFrame as integer, LastFrame as integer, Sequence as Integer = 0) as integer
    Return spwExtractAnimSeq(Entity,FirstFrame,LastFrame,Sequence)
End Function

Sub EntityParent(Entity as integer, Parent as integer, isGlobal as Integer = True)
    spwEntityParent(Entity,Parent,isGlobal)
End Sub

Function GetParent(Entity as Integer) as integer
    Return spwGetParent(Entity)
End Function

Function CountChildren(Entity as Integer) as integer
    Return spwCountChildren(Entity)
End Function

Function GetChild(Entity as integer, Index as Integer) as integer
    Return spwGetChild(Entity,Index)
End Function

Sub ShowEntity(Entity as Integer)
    spwShowEntity(Entity)
End Sub

Sub HideEntity(Entity as Integer)
    spwHideEntity(Entity)
End Sub

Sub FreeEntity(Entity as Integer)
    spwFreeEntity(Entity)
End Sub

Sub PositionEntity(Entity as integer, X as Single, Y as Single, Z as Single, isGlobal as Integer = False)
    spwPositionEntity(Entity,X,Y,Z,isGlobal)
End Sub

Sub MoveEntity(Entity as Integer, X as Single, Y as Single, Z as Single)
    spwMoveEntity(Entity,X,Y,Z)
End Sub

Sub TranslateEntity(Entity as integer, X as Single, Y as Single, Z as Single, isGlobal as Integer = False)
    spwTranslateEntity(Entity,X,Y,Z,isGlobal)
End Sub

Sub RotateEntity(Entity as integer, X as Single, Y as Single, Z as Single, isGlobal as Integer = False)
    spwRotateEntity(Entity,X,Y,Z,isGlobal)
End Sub

Sub TurnEntity(Entity as integer, X as Single, Y as Single, Z as Single, isGlobal as Integer = False)
    spwTurnEntity(Entity,X,Y,Z,isGlobal)
End Sub

Sub ScaleEntity(Entity as integer, X as Single, Y as Single, Z as Single, isGlobal as Integer = False)
    spwScaleEntity(Entity,X,Y,Z,isGlobal)
End Sub

Sub PointEntity(Entity as integer, Target as Integer, Roll as Single = 0.0)
    spwPointEntity(Entity,Target,Roll)
End Sub

Sub RotateEntityQuat(Entity as integer, X as Single, Y as Single, Z as Single, W as Single, isGlobal as Integer = False)
    spwRotateEntityQuat(Entity,X,Y,Z,W,isGlobal)
End Sub

Sub ScaleMesh(Mesh as Integer, X as Single, Y as Single, Z as Single)
    spwScaleMesh(Mesh,X,Y,Z)
End Sub

Sub FlipMesh(Mesh as Integer)
    spwFlipMesh(Mesh)
End Sub

Sub FitMesh(Mesh as integer, X as Single, Y as Single, Z as Single, Width_ as Single, Height as Single, Depth as Single, Uniform as Integer = False)
    spwFitMesh(Mesh,X,Y,Z,Width_,Height,Depth,Uniform)
End Sub

Sub RotateMesh(Mesh as Integer, X as Single, Y as Single, Z as Single)
    spwRotateMesh(Mesh,X,Y,Z)
End Sub

Sub PositionMesh(Mesh as Integer, X as Single, Y as Single, Z as Single)
    spwPositionMesh(Mesh,X,Y,Z)
End Sub

Sub UpdateNormals(Mesh as Integer)
    spwUpdateNormals(Mesh)
End Sub

Function CreateSurface(Mesh as integer, Brush as Integer = 0) as integer
    Return spwCreateSurface(Mesh,Brush)
End Function

Sub ClearSurface(Surface as integer, ClearVertices as integer = TRUE , ClearTriangles as Integer = TRUE )
    spwClearSurface(Surface,ClearVertices,ClearTriangles)
End Sub

Function GetSurface(Mesh as integer, Index as Integer) as integer
    Return spwGetSurface(Mesh,Index)
End Function

Function FindSurface(Mesh as integer, Brush as Integer) as integer
    Return spwFindSurface(Mesh,Brush)
End Function

Function AddVertex(Surface as Integer, X as Single, Y as Single, Z as Single, U as Single = 0.0, V as Single = 0.0, W as Single = 0.0) as integer
    Return spwAddVertex(Surface,X,Y,Z,U,V,W)
End Function

Function AddTriangle(Surface as integer, v0 as integer, v1 as integer, v2 as Integer) as integer
    Return spwAddTriangle(Surface,v0,v1,v2)
End Function

Sub AddBezierPatch(Surface as integer, Segments as Integer = 10)
    spwAddBezierPatch(Surface,Segments)
End Sub

Function CountSurfaces(Mesh as Integer) as integer
    Return spwCountSurfaces(Mesh)
End Function

Function CountVertices(Surface as Integer) as integer
    Return spwCountVertices(Surface)
End Function

Function CountTriangles(Surface as Integer) as integer
    Return spwCountTriangles(Surface)
End Function

Sub VertexCoords(Surface as integer, Index as Integer, X as Single, Y as Single, Z as Single)
    spwVertexCoords(Surface,Index,X,Y,Z)
End Sub

Sub VertexNormal(Surface as integer, Index as Integer, X as Single, Y as Single, Z as Single)
    spwVertexNormal(Surface,Index,X,Y,Z)
End Sub

Sub VertexBinormal(Surface as integer, Index as Integer, X as Single, Y as Single, Z as Single)
    spwVertexBinormal(Surface,Index,X,Y,Z)
End Sub

Sub VertexTangent(Surface as integer, Index as Integer, X as Single, Y as Single, Z as Single)
    spwVertexTangent(Surface,Index,X,Y,Z)
End Sub

Sub VertexColor(Surface as integer, Index as integer, Red as integer, Green as integer, Blue as Integer, Alpha_ as Single = 1.0)
    spwVertexColor(Surface,Index,Red,Green,Blue,Alpha_)
End Sub

Sub VertexTexCoords(Surface as integer, Index as integer, U as Single, V as Single, W as Single = 0.0, Layer as Integer = 0)
    spwVertexTexCoords(Surface,Index,U,V,W,Layer)
End Sub

Sub UpdateMeshBuffer(Mesh as integer, Surface as Integer = 0)
    spwUpdateMeshBuffer(Mesh,Surface)
End Sub

Function VertexX(Surface as integer, Index as Integer) as Single
    Return spwVertexX(Surface,Index)
End Function

Function VertexY(Surface as integer, Index as Integer) as Single
    Return spwVertexY(Surface,Index)
End Function

Function VertexZ(Surface as integer, Index as Integer) as Single
    Return spwVertexZ(Surface,Index)
End Function

Function VertexNX(Surface as integer, Index as Integer) as Single
    Return spwVertexNX(Surface,Index)
End Function

Function VertexNY(Surface as integer, Index as Integer) as Single
    Return spwVertexNY(Surface,Index)
End Function

Function VertexNZ(Surface as integer, Index as Integer) as Single
    Return spwVertexNZ(Surface,Index)
End Function

Function VertexBX(Surface as integer, Index as Integer) as Single
    Return spwVertexBX(Surface,Index)
End Function

Function VertexBY(Surface as integer, Index as Integer) as Single
    Return spwVertexBY(Surface,Index)
End Function

Function VertexBZ(Surface as integer, Index as Integer) as Single
    Return spwVertexBZ(Surface,Index)
End Function

Function VertexTX(Surface as integer, Index as Integer) as Single
    Return spwVertexTX(Surface,Index)
End Function

Function VertexTY(Surface as integer, Index as Integer) as Single
    Return spwVertexTY(Surface,Index)
End Function

Function VertexTZ(Surface as integer, Index as Integer) as Single
    Return spwVertexTZ(Surface,Index)
End Function

Function VertexRed(Surface as integer, Index as Integer) as integer
    Return spwVertexRed(Surface,Index)
End Function

Function VertexGreen(Surface as integer, Index as Integer) as integer
    Return spwVertexGreen(Surface,Index)
End Function

Function VertexBlue(Surface as integer, Index as Integer) as integer
    Return spwVertexBlue(Surface,Index)
End Function

Function VertexAlpha(Surface as integer, Index as Integer) as Single
    Return spwVertexAlpha(Surface,Index)
End Function

Function VertexU(Surface as integer, Index as Integer) as Single
    Return spwVertexU(Surface,Index)
End Function

Function VertexV(Surface as integer, Index as Integer) as Single
    Return spwVertexV(Surface,Index)
End Function

Function VertexW(Surface as integer, Index as Integer) as Single
    Return spwVertexW(Surface,Index)
End Function

Function TriangleVertex(Surface as integer, Index as integer, Corner as Integer) as integer
    Return spwTriangleVertex(Surface,Index,Corner)
End Function

Sub EntityColor(Entity as integer, Red as integer, Green as integer, Blue as Integer)
    spwEntityColor(Entity,Red,Green,Blue)
End Sub

Sub EntityAlpha(Entity as Integer, Alpha_ as Single)
    spwEntityAlpha(Entity,Alpha_)
End Sub

Sub EntityShininess(Entity as Integer, Shininess as Single)
    spwEntityShininess(Entity,Shininess)
End Sub

Sub EntityFX(Entity as integer, Mode as Integer)
    spwEntityFX(Entity,Mode)
End Sub

Sub EntityBlend(Entity as integer, Mode as Integer)
    spwEntityBlend(Entity,Mode)
End Sub

Sub EntityOrder(Entity as integer, Order as Integer)
    spwEntityOrder(Entity,Order)
End Sub

Function EntityX(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityX(Entity,isGlobal)
End Function

Function EntityY(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityY(Entity,isGlobal)
End Function

Function EntityZ(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityZ(Entity,isGlobal)
End Function

Function EntityPitch(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityPitch(Entity,isGlobal)
End Function

Function EntityYaw(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityYaw(Entity,isGlobal)
End Function

Function EntityRoll(Entity as integer, isGlobal as Integer = False) as Single
    Return spwEntityRoll(Entity,isGlobal)
End Function

Sub EntityMatrix(Entity as integer, MatrixOut as integer, isGlobal as Integer = True)
    spwEntityMatrix(Entity,MatrixOut,isGlobal)
End Sub

Function MeshWidth(Mesh as Integer) as Single
    Return spwMeshWidth(Mesh)
End Function

Function MeshHeight(Mesh as Integer) as Single
    Return spwMeshHeight(Mesh)
End Function

Function MeshDepth(Mesh as Integer) as Single
    Return spwMeshDepth(Mesh)
End Function

Function EntityName(Entity as Integer) As Zstring Ptr
    Return spwEntityName(Entity)
End Function

Sub NameEntity(Entity as Integer, Name_ As Zstring Ptr)
    spwNameEntity(Entity,Name_)
End Sub

Function EntityDistance(SrcEntity as integer, DestEntity as Integer) as Single
    Return spwEntityDistance(SrcEntity,DestEntity)
End Function

Sub CameraViewport(Camera as integer, X as integer, Y as integer, Width_ as Integer, Height as Integer)
    spwCameraViewport(Camera,X,Y,Width_,Height)
End Sub

Sub CameraRange(Camera as Integer, Near as Single, Far as Single)
    spwCameraRange(Camera,Near,Far)
End Sub

Sub CameraZoom(Camera as Integer, Zoom as Single)
    spwCameraZoom(Camera,Zoom)
End Sub

Sub CameraProjMode(Camera as integer, Mode as Integer)
    spwCameraProjMode(Camera,Mode)
End Sub

Sub LightColor(Light as integer, Red as integer, Green as integer, Blue as Integer)
    spwLightColor(Light,Red,Green,Blue)
End Sub

Sub LightRange(Light as Integer, Range as Single)
    spwLightRange(Light,Range)
End Sub

Sub LightConeAngles(Light as Integer, InnerAngle as Single, OuterAngle as Single)
    spwLightConeAngles(Light,InnerAngle,OuterAngle)
End Sub

Sub AmbientLight(Red as integer, Green as integer, Blue as Integer)
    spwAmbientLight(Red,Green,Blue)
End Sub

Sub CaptureWorld()
    spwCaptureWorld()
End Sub

Sub RenderWorld(Tween as Single = 1.0)
    spwRenderWorld(Tween)
End Sub

Sub RenderWorldStereo(Camera as Integer, CamDegree as Single, CamDist as Single = 0.25)
    spwRenderWorldStereo(Camera,CamDegree,CamDist)
End Sub

Sub UpdateWorld()
    spwUpdateWorld()
End Sub

Sub WireFrame(Mode as Integer)
    spwWireFrame(Mode)
End Sub

Sub EntityType(Entity as integer, CollisionType as integer, Recursive as Integer = False)
    spwEntityType(Entity,CollisionType,Recursive)
End Sub

Sub EntityRadius(Entity as Integer, RadiusX as Single, RadiusY as Single = -1.0)
    spwEntityRadius(Entity,RadiusX,RadiusY)
End Sub

Sub ResetEntity(Entity as Integer)
    spwResetEntity(Entity)
End Sub

Sub Collisions(SrcType as integer, DestType as integer, Method as integer, Response as Integer)
    spwCollisions(SrcType,DestType,Method,Response)
End Sub

Function CountCollisions(Entity as Integer) as integer
    Return spwCountCollisions(Entity)
End Function

Function CollisionEntity(Entity as integer, Index as Integer) as integer
    Return spwCollisionEntity(Entity,Index)
End Function

Function CollisionSurface(Entity as integer, Index as Integer) as integer
    Return spwCollisionSurface(Entity,Index)
End Function

Function CollisionTriangle(Entity as integer, Index as Integer) as integer
    Return spwCollisionTriangle(Entity,Index)
End Function

Function CollisionX(Entity as integer, Index as Integer) as Single
    Return spwCollisionX(Entity,Index)
End Function

Function CollisionY(Entity as integer, Index as Integer) as Single
    Return spwCollisionY(Entity,Index)
End Function

Function CollisionZ(Entity as integer, Index as Integer) as Single
    Return spwCollisionZ(Entity,Index)
End Function

Function CollisionNX(Entity as integer, Index as Integer) as Single
    Return spwCollisionNX(Entity,Index)
End Function

Function CollisionNY(Entity as integer, Index as Integer) as Single
    Return spwCollisionNY(Entity,Index)
End Function

Function CollisionNZ(Entity as integer, Index as Integer) as Single
    Return spwCollisionNZ(Entity,Index)
End Function

Function EntityCollided(Entity as integer, ObjType as Integer) as integer
    Return spwEntityCollided(Entity,ObjType)
End Function

Function MeshesIntersect(MeshA as integer, MeshB as Integer) as integer
    Return spwMeshesIntersect(MeshA,MeshB)
End Function

Sub EntityPickMode(Entity as integer, Geometry as integer = 0, Obscurer as Integer = True)
    spwEntityPickMode(Entity,Geometry,Obscurer)
End Sub

Function CameraPick(Camera as integer, X as integer, Y as Integer, PickLength as Single = -1.0) as integer
    Return spwCameraPick(Camera,X,Y,PickLength)
End Function

Function LinePick(X as Single, Y as Single, Z as Single, DX as Single, DY as Single, DZ as Single, Radius as Single = 0.0) as Integer
    Return spwLinePick(X,Y,Z,DX,DY,DZ,Radius)
End Function

Function EntityPick(Entity as Integer, Range as Single) as integer
    Return spwEntityPick(Entity,Range)
End Function

Function PickedEntity() as Integer
    Return spwPickedEntity()
End Function

Function PickedSurface() as Integer
    Return spwPickedSurface()
End Function

Function PickedTriangle() as Integer
    Return spwPickedTriangle()
End Function

Function PickedX() as Single
    Return spwPickedX()
End Function

Function PickedY() as Single
    Return spwPickedY()
End Function

Function PickedZ() as Single
    Return spwPickedZ()
End Function

Function PickedNX() as Single
    Return spwPickedNX()
End Function

Function PickedNY() as Single
    Return spwPickedNY()
End Function

Function PickedNZ() as Single
    Return spwPickedNZ()
End Function

Function PickedTime() as Single
    Return spwPickedTime()
End Function

Sub CameraProject(Camera as Integer, X as Single, Y as Single, Z as Single)
    spwCameraProject(Camera,X,Y,Z)
End Sub

Function ProjectedX() as Integer
    Return spwProjectedX()
End Function

Function ProjectedY() as Integer
    Return spwProjectedY()
End Function

Function ProjectedZ() as Integer
    Return spwProjectedZ()
End Function

Sub EntityBoundBox(Entity as integer, X as Single, Y as Single, Z as Single, Width_ as Single, Height as Single, Depth as Single, Enable as Integer = True)
    spwEntityBoundBox(Entity,X,Y,Z,Width_,Height,Depth,Enable)
End Sub

Sub EntityBoundSphere(Entity as integer, Radius as Single, Enable as Integer = True)
    spwEntityBoundSphere(Entity,Radius,Enable)
End Sub

Sub MeshBoundBox(Mesh as integer, Enable as Integer = True)
    spwMeshBoundBox(Mesh,Enable)
End Sub

Sub UpdateSimulation(StepTime as Single = 0.017)
    spwUpdateSimulation(StepTime)
End Sub

Function CreateRigidBodyNode(RootNode as integer, ObjType as Integer, X as Single = 0.5, Y as Single = 0.5, Z as Single = 0.5, Radius as Single = 0.5, Height as Single = 0.5, Mass as Single = 25.0) as integer
    Return spwCreateRigidBodyNode(RootNode,ObjType,X,Y,Z,Radius,Height,Mass)
End Function

Function CreateRigidBodyMesh(MeshGeom as Integer, Mass as Single = 25.0) as integer
    Return spwCreateRigidBodyMesh(MeshGeom,Mass)
End Function

Function AddRigidBodyJoint(Object_ as integer, Child as integer, ObjType as Integer, PointX as Single, PointY as Single, PointZ as Single, DirX as Single = 0.0, DirY as Single = 1.0, DirZ as Single = 0.0, Dir2X as Single = 0.0, Dir2Y as Single = 1.0, Dir2Z as Single = 0.0) as integer
    Return spwAddRigidBodyJoint(Object_,Child,ObjType,PointX,PointY,PointZ,DirX,DirY,DirZ,Dir2X,Dir2Y,Dir2Z)
End Function

Sub sColor(Red as integer, Green as integer, Blue as integer, Alpha_ as Integer = 255)
    spwColor(Red,Green,Blue,Alpha_)
End Sub

Sub GetColor(X as integer, Y as Integer)
    spwGetColor(X,Y)
End Sub

Function ColorRed() as Integer
    Return spwColorRed()
End Function

Function ColorGreen() as Integer
    Return spwColorGreen()
End Function

Function ColorBlue() as Integer
    Return spwColorBlue()
End Function

Sub MultiColor(Index as integer, Red as integer, Green as integer, Blue as Integer, Alpha_ as Single = 1.0)
    spwMultiColor(Index,Red,Green,Blue,Alpha_)
End Sub

Sub WritePixelFast(X as integer, Y as integer, Color_ as integer, Buffer as Integer = 0)
    spwWritePixelFast(X,Y,Color_,Buffer)
End Sub

Sub WritePixel(X as integer, Y as integer, Color_ as integer, Buffer as Integer = 0)
    spwWritePixel(X,Y,Color_,Buffer)
End Sub

Function ReadPixelFast(X as integer, Y as integer, Buffer as Integer = 0) as integer
    Return spwReadPixelFast(X,Y,Buffer)
End Function

Function ReadPixel(X as integer, Y as integer, Buffer as Integer = 0) as integer
    Return spwReadPixel(X,Y,Buffer)
End Function

Sub CopyPixelFast(SrcX as integer, SrcY as integer, SrcBuffer as integer, DestX as integer, DestY as integer, DestBuffer as Integer = 0)
    spwCopyPixelFast(SrcX,SrcY,SrcBuffer,DestX,DestY,DestBuffer)
End Sub

Sub CopyPixel(SrcX as integer, SrcY as integer, SrcBuffer as integer, DestX as integer, DestY as integer, DestBuffer as Integer = 0)
    spwCopyPixel(SrcX,SrcY,SrcBuffer,DestX,DestY,DestBuffer)
End Sub

Sub sCopyRect(SrcX as integer, SrcY as integer, SrcWidth as Integer, SrcHeight as integer, DestX as integer, DestY as integer, SrcBuffer as integer = 0, DestBuffer as Integer = 0)
    spwCopyRect(SrcX,SrcY,SrcWidth,SrcHeight,DestX,DestY,SrcBuffer,DestBuffer)
End Sub

Sub Plot(X as integer, Y as Integer)
    spwPlot(X,Y)
End Sub

Sub sLine(X1 as integer, Y1 as integer, X2 as integer, Y2 as Integer)
    spwLine(X1,Y1,X2,Y2)
End Sub

Sub sRect(X as integer, Y as integer, Width_ as Integer, Height as integer, Solid as Integer = True)
    spwRect(X,Y,Width_,Height,Solid)
End Sub

Sub Oval(X as integer, Y as integer, Width_ as Integer, Height as integer, Solid as Integer = True)
    spwOval(X,Y,Width_,Height,Solid)
End Sub

Function CreateTexture(Width_ as Integer, Height as integer, Flags as integer = 9, Frames as Integer = 0) as integer
    Return spwCreateTexture(Width_,Height,Flags,Frames)
End Function

Function LoadTexture(File As Zstring Ptr, Flags as Integer = 9) as integer
    Return spwLoadTexture(File,Flags)
End Function

Function LoadAnimTexture(File As Zstring Ptr, Flags as integer, FrameWidth as Integer, FrameHeight as integer, FirstFrame as integer, FrameCount as Integer) as integer
    Return spwLoadAnimTexture(File,Flags,FrameWidth,FrameHeight,FirstFrame,FrameCount)
End Function

Sub FreeTexture(Texture as Integer)
    spwFreeTexture(Texture)
End Sub

Sub ScaleTexture(Texture as Integer, Width_ as Single, Height as Single)
    spwScaleTexture(Texture,Width_,Height)
End Sub

Sub PositionTexture(Texture as Integer, X as Single, Y as Single)
    spwPositionTexture(Texture,X,Y)
End Sub

Sub RotateTexture(Texture as Integer, Angle as Single)
    spwRotateTexture(Texture,Angle)
End Sub

Sub TextureBlend(Texture as integer, Mode as Integer)
    spwTextureBlend(Texture,Mode)
End Sub

Sub TextureCoords(Texture as integer, Coords as Integer)
    spwTextureCoords(Texture,Coords)
End Sub

Sub EntityTexture(Entity as integer, Texture as integer, Frame as integer = 0, Index as Integer = 0)
    spwEntityTexture(Entity,Texture,Frame,Index)
End Sub

Sub PaintEntity(Entity as integer, Brush as Integer)
    spwPaintEntity(Entity,Brush)
End Sub

Sub PaintSurface(Surface as integer, Brush as Integer)
    spwPaintSurface(Surface,Brush)
End Sub

Function CreateBrush(Red as integer = 0, Green as integer = 0, Blue as Integer = 0) as integer
    Return spwCreateBrush(Red,Green,Blue)
End Function

Function LoadBrush(File As Zstring Ptr, Flags as Integer = 9, Width_ as Single = 1.0, Height as Single = 1.0) as integer
    Return spwLoadBrush(File,Flags,Width_,Height)
End Function

Sub FreeBrush(Brush as Integer)
    spwFreeBrush(Brush)
End Sub

Sub BrushTexture(Brush as integer, Texture as integer, Frame as integer = 0, Index as Integer = 0)
    spwBrushTexture(Brush,Texture,Frame,Index)
End Sub

Sub PaintMesh(Mesh as integer, Brush as Integer)
    spwPaintMesh(Mesh,Brush)
End Sub

Sub BrushShininess(Brush as Integer, Shininess as Single)
    spwBrushShininess(Brush,Shininess)
End Sub

Sub MidHandle(ObjHandle as integer, Enable as Integer = True)
    spwMidHandle(ObjHandle,Enable)
End Sub

Function LoadImage(File As Zstring Ptr) as Integer
    Return spwLoadImage(File)
End Function

Function LoadAnimImage(File As Zstring Ptr, FrameWidth as Integer, FrameHeight as integer, FirstFrame as integer, FrameCount as integer, Flags as Integer = 9) as integer
    Return spwLoadAnimImage(File,FrameWidth,FrameHeight,FirstFrame,FrameCount,Flags)
End Function

Function CreateImage(Width_ as Integer, Height as integer, Frames as Integer = 0) as integer
    Return spwCreateImage(Width_,Height,Frames)
End Function

Function CopyImage(ObjHandle as Integer) as integer
    Return spwCopyImage(ObjHandle)
End Function

Function ImageWidth(ObjHandle as Integer) as Integer
    Return spwImageWidth(ObjHandle)
End Function

Function ImageHeight(ObjHandle as Integer) as integer
    Return spwImageHeight(ObjHandle)
End Function

Sub MaskImage(ObjHandle as integer, Red as integer, Green as integer, Blue as integer, Alpha_ as Integer = 0)
    spwMaskImage(ObjHandle,Red,Green,Blue,Alpha_)
End Sub

Sub ScaleImage(ObjHandle as Integer, Width_ as Single, Height as Single)
    spwScaleImage(ObjHandle,Width_,Height)
End Sub

Sub ResizeImage(ObjHandle as integer, Width_ as Integer, Height as Integer)
    spwResizeImage(ObjHandle,Width_,Height)
End Sub

Sub RotateImage(ObjHandle as Integer, Angle as Single)
    spwRotateImage(ObjHandle,Angle)
End Sub

Sub AutoMidHandle(Enable as Integer)
    spwAutoMidHandle(Enable)
End Sub

Sub GrabImage(ObjHandle as integer, X as integer, Y as Integer)
    spwGrabImage(ObjHandle,X,Y)
End Sub

Function TextureWidth(ObjHandle as Integer) as Integer
    Return spwTextureWidth(ObjHandle)
End Function

Function TextureHeight(ObjHandle as Integer) as integer
    Return spwTextureHeight(ObjHandle)
End Function

Sub DrawImage(ObjHandle as integer, X as integer, Y as integer, Frame as Integer = 0)
    spwDrawImage(ObjHandle,X,Y,Frame)
End Sub

Sub DrawImageRect(ObjHandle as integer, X as integer, Y as integer, RectX as integer, RectY as integer, RectWidth as Integer, RectHeight as integer, Frame as Integer = 0)
    spwDrawImageRect(ObjHandle,X,Y,RectX,RectY,RectWidth,RectHeight,Frame)
End Sub

Sub DrawImageStretch(ObjHandle as integer, X as integer, Y as integer, Width_ as Integer, Height as integer, MapX1 as Single = 0.0, MapY1 as Single = 0.0, MapX2 as Single = 1.0, MapY2 as Single = 1.0, Frame as Integer = 0)
    spwDrawImageStretch(ObjHandle,X,Y,Width_,Height,MapX1,MapY1,MapX2,MapY2,Frame)
End Sub

Sub DrawImageRotate(ObjHandle as integer, X as integer, Y as integer, Angle as Single, Radius as Single, Frame as Integer = 0)
    spwDrawImageRotate(ObjHandle,X,Y,Angle,Radius,Frame)
End Sub

Sub TileImage(ObjHandle as integer, X as integer, Y as integer, Frame as Integer = 0)
    spwTileImage(ObjHandle,X,Y,Frame)
End Sub

Sub DrawBlock(ObjHandle as integer, X as integer, Y as integer, Frame as Integer = 0)
    spwDrawBlock(ObjHandle,X,Y,Frame)
End Sub

Sub sCls()
    spwCls()
End Sub

Sub ClsColor(Red as integer, Green as integer, Blue as integer, Alpha_ as Integer = 255)
    spwClsColor(Red,Green,Blue,Alpha_)
End Sub

Sub MaskColor(Red as integer, Green as integer, Blue as integer, Alpha_ as Integer = True)
    spwMaskColor(Red,Green,Blue,Alpha_)
End Sub

Sub CameraClsColor(Camera as integer, Red as integer, Green as integer, Blue as Integer)
    spwCameraClsColor(Camera,Red,Green,Blue)
End Sub

Sub CameraClsMode(Camera as integer, ClsColor_ as integer, ClsZBuffer as Integer)
    spwCameraClsMode(Camera,ClsColor_,ClsZBuffer)
End Sub

Sub CameraFogColor(Camera as integer, Red as integer, Green as integer, Blue as Integer)
    spwCameraFogColor(Camera,Red,Green,Blue)
End Sub

Sub CameraFogMode(Camera as integer, Mode as Integer)
    spwCameraFogMode(Camera,Mode)
End Sub

Sub CameraFogRange(Camera as Integer, Near as Single, Far as Single, FallOff as Single = 0.1)
    spwCameraFogRange(Camera,Near,Far,FallOff)
End Sub

Sub HWMultiTex(Enable as Integer)
    spwHWMultiTex(Enable)
End Sub

Function TextureBuffer(Texture as integer, Frame as Integer = 0) as integer
    Return spwTextureBuffer(Texture,Frame)
End Function

Function ImageBuffer(Image as integer, Frame as Integer = 0) as integer
    Return spwImageBuffer(IMAGE,Frame)
End Function

Function FrontBuffer() as Integer
    Return spwFrontBuffer()
End Function

Function BackBuffer() as Integer
    Return spwBackBuffer()
End Function

Sub SetBuffer(Buffer as Integer)
    spwSetBuffer(Buffer)
End Sub

Function LoadFont(FontName As Zstring Ptr, Height as integer = 0, Bold as integer = False, Italic as integer = False, Underlined as integer = False, StrikeOut as Integer = False) as integer
    Return spwLoadFont(FontName,Height,Bold,Italic,Underlined,StrikeOut)
End Function

Sub FreeFont(Font as Integer)
    spwFreeFont(Font)
End Sub

Sub SetFont(Font as Integer)
    spwSetFont(Font)
End Sub

Function StringWidth(TextString As Zstring Ptr) as Integer
    Return spwStringWidth(TextString)
End Function

Function StringHeight(TextString As Zstring Ptr) as Integer
    Return spwStringHeight(TextString)
End Function

Function FontWidth() as Integer
    Return spwFontWidth()
End Function

Function FontHeight() as Integer
    Return spwFontHeight()
End Function

Sub Text(X as integer, Y as integer, TextString As Zstring Ptr, CenterX as integer = False, CenterY as Integer = False)
    spwText(X,Y,TextString,CenterX,CenterY)
End Sub

Function OpenMovie(File as ZString ptr, Resolution as integer = 512, Play as Integer = True) as integer
    Return spwOpenMovie(File,Resolution,Play)
End Function

Sub CloseMovie(Movie as Integer)
    spwCloseMovie(Movie)
End Sub

Sub DrawMovie(Movie as integer, X as integer, Y as integer, Width_ as Integer = -1, Height as Integer = -1)
    spwDrawMovie(Movie,X,Y,Width_,Height)
End Sub

Function MovieWidth(Movie as Integer) as Integer
    Return spwMovieWidth(Movie)
End Function

Function MovieHeight(Movie as Integer) as integer
    Return spwMovieHeight(Movie)
End Function

Function MoviePlaying(Movie as Integer) as integer
    Return spwMoviePlaying(Movie)
End Function

Function MovieSound(Movie as Integer) as integer
    Return spwMovieSound(Movie)
End Function

Sub MipMapFilter(Mode as integer, Anisotropy as Integer = 2)
    spwMipMapFilter(Mode,Anisotropy)
End Sub

Sub sFlip(Vsync_ as Integer = False) '  Special case
    If spwFlip(Vsync_)=0 Then
        spwEndGraphics()
        End
    EndIf
End Sub
