 #Inclib "SoftPixelEngineWrapper"
 
 #Include "SoftPixelEngineWrapperConsts.bi"

 Declare Sub extHideWindow Alias "extHideWindow"(Byval HANDLE As Integer) 
 Declare Function WrapperVersion Alias "spwWrapperVersion_ex"() As ZString Ptr
 '
 Declare Sub UseOpenGL Alias "spwUseOpenGL_ex"() 
 Declare Sub UseDirect3D9 Alias "spwUseDirect3D9_ex"() 
 Declare Sub UseDirect3D11 Alias "spwUseDirect3D11_ex"() 
 Declare Sub UseDummy Alias "spwUseDummy_ex"() 
 '
 Declare Sub MultiSamples Alias "spwMultiSamples_ex"(Byval MultiSamples As Integer) 
 Declare Sub Vsync Alias "spwVsync_ex"(Byval Enable As Integer) 
 '
 Declare Sub spwGraphics3D Alias "spwGraphics3D"(Byval Width_ As Integer,Byval Height As Integer,Byval Depth As Integer,Byval Mode As Integer) 
 Declare Sub spwGraphics Alias "spwGraphics"(Byval Width_ As Integer,Byval Height As Integer,Byval Depth As Integer,Byval Mode As Integer) 
 Declare Sub spwEndGraphics Alias "spwEndGraphics"() 
 Declare Sub OpenDebugLog Alias "spwOpenDebugLog_ex"(Byval Enable As Integer,Byval File As ZString Ptr) 
 '
 Declare Sub spwAppTitle Alias "spwAppTitle"(Byval Title As ZString ptr,Byval EndMessage As ZString ptr) 
 Declare Function spwGraphicsWidth Alias "spwGraphicsWidth"() As Integer
 Declare Function spwGraphicsHeight Alias "spwGraphicsHeight"() As Integer
 Declare Function spwGraphicsDepth Alias "spwGraphicsDepth"() As Integer
 Declare Function RenderSystem Alias "spwRenderSystem_ex"() As Integer
 Declare Function VDVersion Alias "spwVDVersion_ex"() As ZString Ptr
 Declare Function VDVendor Alias "spwVDVendor_ex"() As ZString Ptr
 Declare Function VDRenderer Alias "spwVDRenderer_ex"() As ZString Ptr
 Declare Sub spwMessageBox Alias "spwMessageBox"(Byval Message As ZString Ptr,Byval ObjType As Integer) 
 Declare Sub spwBeep Alias "spwBeep_ex"(Byval Frequency As Integer,Byval Duration As Integer) 
 Declare Sub FrameRate Alias "spwFrameRate_ex"(Byval FPS As Integer) 
 Declare Function FPS Alias "spwFPS_ex"() As Integer
 Declare Function spwGetKey Alias "spwGetKey"() As Integer
 Declare Sub spwWaitKey Alias "spwWaitKey"() 
 Declare Function spwKeyDown Alias "spwKeyDown"(Byval Scancode As Integer) As Integer
 Declare Function spwKeyHit Alias "spwKeyHit"(Byval Scancode As Integer) As Integer
 Declare Function KeyReleased Alias "spwKeyReleased_ex"(Byval Scancode As Integer) As Integer
 Declare Function spwGetMouse Alias "spwGetMouse"() As Integer
 Declare Function spwMouseDown Alias "spwMouseDown"(Byval Scancode As Integer) As Integer
 Declare Function spwMouseHit Alias "spwMouseHit"(Byval Scancode As Integer) As Integer
 Declare Function MouseReleased Alias "spwMouseReleased_ex"(Byval Scancode As Integer) As Integer
 Declare Function spwMouseX Alias "spwMouseX"() As Integer
 Declare Function spwMouseY Alias "spwMouseY"() As Integer
 Declare Function spwMouseZ Alias "spwMouseZ"() As Integer
 Declare Function spwMouseXSpeed Alias "spwMouseXSpeed"() As Integer
 Declare Function spwMouseYSpeed Alias "spwMouseYSpeed"() As Integer
 Declare Function spwMouseZSpeed Alias "spwMouseZSpeed"() As Integer
 Declare Sub spwShowPointer Alias "spwShowPointer"() 
 Declare Sub spwHidePointer Alias "spwHidePointer"() 
 Declare Sub spwMoveMouse Alias "spwMoveMouse"(Byval X As Integer,Byval Y As Integer) 
 Declare Sub spwWaitMouse Alias "spwWaitMouse"() 
 Declare Sub spwMouseWait Alias "spwMouseWait"() 
 Declare Function spwCreateListener Alias "spwCreateListener"(Byval Parent As Integer,Byval RollOff As Single,Byval DopplerScale As Single,Byval DistanceScale As Single) As Integer
 Declare Function spwLoadSound Alias "spwLoadSound"(Byval File As ZString Ptr) As Integer
 Declare Function spwLoad3DSound Alias "spwLoad3DSound"(Byval File As ZString Ptr) As Integer
 Declare Sub spwFreeSound Alias "spwFreeSound"(Byval Sound As Integer) 
 Declare Sub spwLoopSound Alias "spwLoopSound"(Byval Sound As Integer) 
 Declare Sub spwPlaySound Alias "spwPlaySound"(Byval Sound As Integer) 
 Declare Sub spwSoundPitch Alias "spwSoundPitch"(Byval Sound As Integer,Byval Frequency As Integer) 
 Declare Sub spwSoundPan Alias "spwSoundPan"(Byval Sound As Integer,Byval Balance As Single) 
 Declare Sub spwSoundVolume Alias "spwSoundVolume"(Byval Sound As Integer,Byval Volume As Single) 
 Declare Sub spwEmitSound Alias "spwEmitSound"(Byval Sound As Integer,Byval Entity As Integer) 
 Declare Sub SetMelodySpeed Alias "spwSetMelodySpeed_ex"(Byval Speed As Single) 
 Declare Sub PlayMelody Alias "spwPlayMelody_ex"(Byval CmdStr As ZString Ptr) 
 Declare Sub spwMoveCameraFree Alias "spwMoveCameraFree"(Byval Camera As Integer,Byval MoveSpeed As Single,Byval TurnSpeed As Single,Byval MaxTurnDegree As Single,Byval UseArrowKeys As Integer) 
 Declare Sub spwCombineModels Alias "spwCombineModels"(Byval MeshA As Integer,Byval MeshB As Integer,Byval Mode As Integer,Byval Precision As Single) 
 Declare Function spwLoadScriptFile Alias "spwLoadScriptFile"(Byval File As ZString Ptr) As Integer
 Declare Function spwCreateCamera Alias "spwCreateCamera"(Byval Parent As Integer) As Integer
 Declare Function spwCreateLight Alias "spwCreateLight"(Byval ObjType As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCopyEntity Alias "spwCopyEntity"(Byval Entity As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreatePivot Alias "spwCreatePivot"(Byval Parent As Integer) As Integer
 Declare Function spwCreateMesh Alias "spwCreateMesh"(Byval Parent As Integer) As Integer
 Declare Function spwCreateCube Alias "spwCreateCube"(Byval Parent As Integer) As Integer
 Declare Function spwCreateCone Alias "spwCreateCone"(Byval Segments As Integer,Byval Solid As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreateCylinder Alias "spwCreateCylinder"(Byval Segments As Integer,Byval Solid As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreatePipe Alias "spwCreatePipe"(Byval Segments As Integer,Byval OuterRadius As Single,Byval InnerRadius As Single,Byval Parent As Integer) As Integer
 Declare Function spwCreateSphere Alias "spwCreateSphere"(Byval Segments As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreateIcoSphere Alias "spwCreateIcoSphere"(Byval Segments As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreateTorus Alias "spwCreateTorus"(Byval Segments As Integer,Byval OuterRadius As Single,Byval InnerRadius As Single,Byval Parent As Integer) As Integer
 Declare Function spwCreateSpiral Alias "spwCreateSpiral"(Byval Segments As Integer,Byval OuterRadius As Single,Byval InnerRadius As Single,Byval DegreeLength As Single,Byval DegreeHeight As Single,Byval Solid As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreatePlane Alias "spwCreatePlane"(Byval Segments As Integer,Byval Parent As Integer,Byval Radius As Single) As Integer
 Declare Function spwCreateTetrahedron Alias "spwCreateTetrahedron"(Byval Parent As Integer) As Integer
 Declare Function spwCreateDodecahedron Alias "spwCreateDodecahedron"(Byval Parent As Integer) As Integer
 Declare Function spwCreateIcosahedron Alias "spwCreateIcosahedron"(Byval Parent As Integer) As Integer
 Declare Function spwCreateCuboctahedron Alias "spwCreateCuboctahedron"(Byval Parent As Integer) As Integer
 Declare Function spwCreateOctahedron Alias "spwCreateOctahedron"(Byval Parent As Integer) As Integer
 Declare Function spwCreateTeapot Alias "spwCreateTeapot"(Byval Parent As Integer) As Integer
 Declare Function spwCreateSkyBox Alias "spwCreateSkyBox"(Byval TexBack As Integer,Byval TexFront As Integer,Byval TexTop As Integer,Byval TexBottom As Integer,Byval TexLeft As Integer,Byval TexRight As Integer,Byval Radius As Single) As Integer
 Declare Function spwLoadHeightField Alias "spwLoadHeightField"(Byval File As ZString Ptr,Byval Segments As Integer,Byval Parent As Integer) As Integer
 Declare Function spwLoadTerrain Alias "spwLoadTerrain"(Byval File As ZString Ptr,Byval Parent As Integer) As Integer
 Declare Function spwLoadMesh Alias "spwLoadMesh"(Byval File As ZString Ptr,Byval Parent As Integer) As Integer
 Declare Function spwLoadAnimMesh Alias "spwLoadAnimMesh"(Byval File As ZString Ptr,Byval Parent As Integer) As Integer
 Declare Function spwLoadMD2 Alias "spwLoadMD2"(Byval File As ZString Ptr,Byval Parent As Integer) As Integer
 Declare Function spwLoadBSP Alias "spwLoadBSP"(Byval File As ZString Ptr,Byval Gamma As Single,Byval Parent As Integer) As Integer
 Declare Sub SaveMesh Alias "spwSaveMesh_ex"(Byval Mesh As Integer,Byval File As ZString Ptr) 
 Declare Sub spwBSPLighting Alias "spwBSPLighting"(Byval BSP As Integer,Byval UseLightmaps As Integer) 
 Declare Function spwLoadSprite Alias "spwLoadSprite"(Byval File As ZString Ptr,Byval Flags As Integer,Byval Parent As Integer) As Integer
 Declare Function spwCreateSprite Alias "spwCreateSprite"(Byval Parent As Integer) As Integer
 Declare Sub spwRotateSprite Alias "spwRotateSprite"(Byval Sprite As Integer,Byval Angle As Single) 
 Declare Sub spwScaleSprite Alias "spwScaleSprite"(Byval Sprite As Integer,Byval Width As Single,Byval Height As Single) 
 Declare Sub spwHandleSprite Alias "spwHandleSprite"(Byval Sprite As Integer,Byval X As Single,Byval Y As Single) 
 Declare Sub spwSpriteViewMode Alias "spwSpriteViewMode"(Byval Sprite As Integer,Byval Mode As Integer) 
 Declare Sub spwMeshReference Alias "spwMeshReference"(Byval Mesh As Integer,Byval MeshReference As Integer,Byval CopyLocation As Integer,Byval CopyMaterial As Integer) 
 Declare Sub spwSurfaceReference Alias "spwSurfaceReference"(Byval Surface As Integer,Byval SurfaceReference As Integer,Byval CopyTextures As Integer) 
 Declare Sub EntityBoundingBox Alias "spwEntityBoundingBox_ex"(Byval Entity As Integer) 
 Declare Sub EntityBoundingSphere Alias "spwEntityBoundingSphere_ex"(Byval Entity As Integer,Byval Radius As Single) 
 Declare Sub EntityNoneBounding Alias "spwEntityNoneBounding_ex"(Byval Entity As Integer) 
 Declare Sub spwAnimateMD2 Alias "spwAnimateMD2"(Byval Entity As Integer,Byval Mode As Integer,Byval Speed As Single,Byval FirstFrame As Integer,Byval LastFrame As Integer,Byval Transition As Single) 
 Declare Sub spwAnimate Alias "spwAnimate"(Byval Entity As Integer,Byval Mode As Integer,Byval Speed As Single,Byval Sequence As Integer,Byval Transition As Single) 
 Declare Function spwAnimating Alias "spwAnimating"(Byval Entity As Integer) As Integer
 Declare Function spwAnimLength Alias "spwAnimLength"(Byval Entity As Integer) As Integer
 Declare Function spwAnimSeq Alias "spwAnimSeq"(Byval Entity As Integer) As Integer
 Declare Function spwAnimTime Alias "spwAnimTime"(Byval Entity As Integer) As Single
 Declare Sub spwSetAnimKey Alias "spwSetAnimKey"(Byval Entity As Integer,Byval Frame As Integer,Byval PosKey As Integer,Byval RotKey As Integer,Byval SclKey As Integer) 
 Declare Sub spwAddAnimSeq Alias "spwAddAnimSeq"(Byval Entity As Integer,Byval Length As Integer) 
 Declare Sub spwAnimSpline Alias "spwAnimSpline"(Byval Entity As Integer,Byval Enable As Integer,Byval Expansion As Single) 
 Declare Function spwExtractAnimSeq Alias "spwExtractAnimSeq"(Byval Entity As Integer,Byval FirstFrame As Integer,Byval LastFrame As Integer,Byval Sequence As Integer) As Integer
 Declare Sub spwEntityParent Alias "spwEntityParent"(Byval Entity As Integer,Byval Parent As Integer,Byval isGlobal As Integer) 
 Declare Function spwGetParent Alias "spwGetParent"(Byval Entity As Integer) As Integer
 Declare Function spwCountChildren Alias "spwCountChildren"(Byval Entity As Integer) As Integer
 Declare Function spwGetChild Alias "spwGetChild"(Byval Entity As Integer,Byval Index As Integer) As Integer
 Declare Sub spwShowEntity Alias "spwShowEntity"(Byval Entity As Integer) 
 Declare Sub spwHideEntity Alias "spwHideEntity"(Byval Entity As Integer) 
 Declare Sub spwFreeEntity Alias "spwFreeEntity"(Byval Entity As Integer) 
 Declare Sub spwPositionEntity Alias "spwPositionEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval isGlobal As Integer) 
 Declare Sub spwMoveEntity Alias "spwMoveEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwTranslateEntity Alias "spwTranslateEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval isGlobal As Integer) 
 Declare Sub spwRotateEntity Alias "spwRotateEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval isGlobal As Integer) 
 Declare Sub spwTurnEntity Alias "spwTurnEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval isGlobal As Integer) 
 Declare Sub spwScaleEntity Alias "spwScaleEntity"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval isGlobal As Integer) 
 Declare Sub spwPointEntity Alias "spwPointEntity"(Byval Entity As Integer,Byval Target As Integer,Byval Roll As Single) 
 Declare Sub spwRotateEntityQuat Alias "spwRotateEntityQuat"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval W As Single,Byval isGlobal As Integer) 
 Declare Sub spwScaleMesh Alias "spwScaleMesh"(Byval Mesh As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwFlipMesh Alias "spwFlipMesh"(Byval Mesh As Integer) 
 Declare Sub spwFitMesh Alias "spwFitMesh"(Byval Mesh As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval Width As Single,Byval Height As Single,Byval Depth As Single,Byval Uniform As Integer) 
 Declare Sub spwRotateMesh Alias "spwRotateMesh"(Byval Mesh As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwPositionMesh Alias "spwPositionMesh"(Byval Mesh As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwUpdateNormals Alias "spwUpdateNormals"(Byval Mesh As Integer) 
 Declare Sub UpdateTangentSpace Alias "spwUpdateTangentSpace_ex"(Byval Mesh As Integer) 
 Declare Sub UpdateTangentSpaceTexLayers Alias "spwUpdateTangentSpaceTexLayers_ex"(Byval Mesh As Integer,Byval TangentLayer As Integer,Byval BinormalLayer As Integer) 
 Declare Function spwCreateSurface Alias "spwCreateSurface"(Byval Mesh As Integer,Byval Brush As Integer) As Integer
 Declare Sub FreeSurface Alias "spwFreeSurface_ex"(Byval Surface As Integer) 
 Declare Sub spwClearSurface Alias "spwClearSurface"(Byval Surface As Integer,Byval ClearVertices As Integer,Byval ClearTriangles As Integer) 
 Declare Function spwGetSurface Alias "spwGetSurface"(Byval Mesh As Integer,Byval Index As Integer) As Integer
 Declare Function spwFindSurface Alias "spwFindSurface"(Byval Mesh As Integer,Byval Brush As Integer) As Integer
 Declare Function spwAddVertex Alias "spwAddVertex"(Byval Surface As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval U As Single,Byval V As Single,Byval W As Single) As Integer
 Declare Function spwAddTriangle Alias "spwAddTriangle"(Byval Surface As Integer,Byval v0 As Integer,Byval v1 As Integer,Byval v2 As Integer) As Integer
 Declare Sub PatchAnchorPoint Alias "spwPatchAnchorPoint_ex"(Byval IndexVert As Integer,Byval IndexHorz As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub AddPatchAnchorPoint Alias "spwAddPatchAnchorPoint_ex"(Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwAddBezierPatch Alias "spwAddBezierPatch"(Byval Surface As Integer,Byval Segments As Integer) 
 Declare Function spwCountSurfaces Alias "spwCountSurfaces"(Byval Mesh As Integer) As Integer
 Declare Function spwCountVertices Alias "spwCountVertices"(Byval Surface As Integer) As Integer
 Declare Function spwCountTriangles Alias "spwCountTriangles"(Byval Surface As Integer) As Integer
 Declare Sub spwVertexCoords Alias "spwVertexCoords"(Byval Surface As Integer,Byval Index As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwVertexNormal Alias "spwVertexNormal"(Byval Surface As Integer,Byval Index As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwVertexBinormal Alias "spwVertexBinormal"(Byval Surface As Integer,Byval Index As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwVertexTangent Alias "spwVertexTangent"(Byval Surface As Integer,Byval Index As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub spwVertexColor Alias "spwVertexColor"(Byval Surface As Integer,Byval Index As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha As Single) 
 Declare Sub spwVertexTexCoords Alias "spwVertexTexCoords"(Byval Surface As Integer,Byval Index As Integer,Byval U As Single,Byval V As Single,Byval W As Single,Byval Layer As Integer) 
 Declare Sub UpdateMeshImmediate Alias "spwUpdateMeshImmediate_ex"(Byval Mesh As Integer,Byval Enable As Integer) 
 Declare Sub spwUpdateMeshBuffer Alias "spwUpdateMeshBuffer"(Byval Mesh As Integer,Byval Surface As Integer) 
 Declare Function spwVertexX Alias "spwVertexX"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexY Alias "spwVertexY"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexZ Alias "spwVertexZ"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexNX Alias "spwVertexNX"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexNY Alias "spwVertexNY"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexNZ Alias "spwVertexNZ"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexBX Alias "spwVertexBX"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexBY Alias "spwVertexBY"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexBZ Alias "spwVertexBZ"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexTX Alias "spwVertexTX"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexTY Alias "spwVertexTY"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexTZ Alias "spwVertexTZ"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexRed Alias "spwVertexRed"(Byval Surface As Integer,Byval Index As Integer) As Integer
 Declare Function spwVertexGreen Alias "spwVertexGreen"(Byval Surface As Integer,Byval Index As Integer) As Integer
 Declare Function spwVertexBlue Alias "spwVertexBlue"(Byval Surface As Integer,Byval Index As Integer) As Integer
 Declare Function spwVertexAlpha Alias "spwVertexAlpha"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexU Alias "spwVertexU"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexV Alias "spwVertexV"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwVertexW Alias "spwVertexW"(Byval Surface As Integer,Byval Index As Integer) As Single
 Declare Function spwTriangleVertex Alias "spwTriangleVertex"(Byval Surface As Integer,Byval Index As Integer,Byval Corner As Integer) As Integer
 Declare Sub spwEntityColor Alias "spwEntityColor"(Byval Entity As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) 
 Declare Sub spwEntityAlpha Alias "spwEntityAlpha"(Byval Entity As Integer,Byval Alpha As Single) 
 Declare Sub spwEntityShininess Alias "spwEntityShininess"(Byval Entity As Integer,Byval Shininess As Single) 
 Declare Sub spwEntityFX Alias "spwEntityFX"(Byval Entity As Integer,Byval Mode As Integer) 
 Declare Sub spwEntityBlend Alias "spwEntityBlend"(Byval Entity As Integer,Byval Mode As Integer) 
 Declare Sub spwEntityOrder Alias "spwEntityOrder"(Byval Entity As Integer,Byval Order As Integer) 
 Declare Sub MeshCullMode Alias "spwMeshCullMode_ex"(Byval Entity As Integer,Byval Mode As Integer) 
 Declare Function spwEntityX Alias "spwEntityX"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Function spwEntityY Alias "spwEntityY"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Function spwEntityZ Alias "spwEntityZ"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Function spwEntityPitch Alias "spwEntityPitch"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Function spwEntityYaw Alias "spwEntityYaw"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Function spwEntityRoll Alias "spwEntityRoll"(Byval Entity As Integer,Byval isGlobal As Integer) As Single
 Declare Sub spwEntityMatrix Alias "spwEntityMatrix"(Byval Entity As Integer,Byval MatrixOut As Integer,Byval isGlobal As Integer) 
 Declare Function spwMeshWidth Alias "spwMeshWidth"(Byval Mesh As Integer) As Single
 Declare Function spwMeshHeight Alias "spwMeshHeight"(Byval Mesh As Integer) As Single
 Declare Function spwMeshDepth Alias "spwMeshDepth"(Byval Mesh As Integer) As Single
 Declare Function spwEntityName Alias "spwEntityName"(Byval Entity As Integer) As ZString Ptr
 Declare Sub spwNameEntity Alias "spwNameEntity"(Byval Entity As Integer,Byval Name_ As ZString Ptr) 
 Declare Function spwEntityDistance Alias "spwEntityDistance"(Byval SrcEntity As Integer,Byval DestEntity As Integer) As Single
 Declare Sub spwCameraViewport Alias "spwCameraViewport"(Byval Camera As Integer,Byval X As Integer,Byval Y As Integer,Byval Width_ As Integer,Byval Height As Integer) 
 Declare Sub spwCameraRange Alias "spwCameraRange"(Byval Camera As Integer,Byval Near As Single,Byval Far As Single) 
 Declare Sub spwCameraZoom Alias "spwCameraZoom"(Byval Camera As Integer,Byval Zoom As Single) 
 Declare Sub CameraFOV Alias "spwCameraFOV_ex"(Byval Camera As Integer,Byval FOV As Single) 
 Declare Sub spwCameraProjMode Alias "spwCameraProjMode"(Byval Camera As Integer,Byval Mode As Integer) 
 Declare Sub CameraMirror Alias "spwCameraMirror_ex"(Byval Camera As Integer,Byval Enable As Integer) 
 Declare Sub CameraMirrorMatrix Alias "spwCameraMirrorMatrix_ex"(Byval Camera As Integer,Byval Matrix As Integer) 
 Declare Sub spwLightColor Alias "spwLightColor"(Byval Light As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) 
 Declare Sub spwLightRange Alias "spwLightRange"(Byval Light As Integer,Byval Range As Single) 
 Declare Sub spwLightConeAngles Alias "spwLightConeAngles"(Byval Light As Integer,Byval InnerAngle As Single,Byval OuterAngle As Single) 
 Declare Sub spwAmbientLight Alias "spwAmbientLight"(Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) 
 Declare Sub spwCaptureWorld Alias "spwCaptureWorld"() 
 Declare Sub spwRenderWorld Alias "spwRenderWorld"(Byval Tween As Single) 
 Declare Sub spwRenderWorldStereo Alias "spwRenderWorldStereo"(Byval Camera As Integer,Byval CamDegree As Single,Byval CamDist As Single) 
 Declare Sub spwUpdateWorld Alias "spwUpdateWorld"() 
 Declare Sub spwWireFrame Alias "spwWireFrame"(Byval Mode As Integer) 
 Declare Sub MeshWireFrame Alias "spwMeshWireFrame_ex"(Byval Entity As Integer,Byval Mode As Integer) 
 Declare Sub spwEntityType Alias "spwEntityType"(Byval Entity As Integer,Byval CollisionType As Integer,Byval Recursive As Integer) 
 Declare Sub spwEntityRadius Alias "spwEntityRadius"(Byval Entity As Integer,Byval RadiusX As Single,Byval RadiusY As Single) 
 Declare Sub spwResetEntity Alias "spwResetEntity"(Byval Entity As Integer) 
 Declare Sub spwCollisions Alias "spwCollisions"(Byval SrcType As Integer,Byval DestType As Integer,Byval Method As Integer,Byval Response As Integer) 
 Declare Function spwCountCollisions Alias "spwCountCollisions"(Byval Entity As Integer) As Integer
 Declare Function spwCollisionEntity Alias "spwCollisionEntity"(Byval Entity As Integer,Byval Index As Integer) As Integer
 Declare Function spwCollisionSurface Alias "spwCollisionSurface"(Byval Entity As Integer,Byval Index As Integer) As Integer
 Declare Function spwCollisionTriangle Alias "spwCollisionTriangle"(Byval Entity As Integer,Byval Index As Integer) As Integer
 Declare Function spwCollisionX Alias "spwCollisionX"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwCollisionY Alias "spwCollisionY"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwCollisionZ Alias "spwCollisionZ"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwCollisionNX Alias "spwCollisionNX"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwCollisionNY Alias "spwCollisionNY"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwCollisionNZ Alias "spwCollisionNZ"(Byval Entity As Integer,Byval Index As Integer) As Single
 Declare Function spwEntityCollided Alias "spwEntityCollided"(Byval Entity As Integer,Byval ObjType As Integer) As Integer
 Declare Function spwMeshesIntersect Alias "spwMeshesIntersect"(Byval MeshA As Integer,Byval MeshB As Integer) As Integer
 Declare Sub spwEntityPickMode Alias "spwEntityPickMode"(Byval Entity As Integer,Byval Geometry As Integer,Byval Obscurer As Integer) 
 Declare Function spwCameraPick Alias "spwCameraPick"(Byval Camera As Integer,Byval X As Integer,Byval Y As Integer,Byval PickLength As Single) As Integer
 Declare Function spwLinePick Alias "spwLinePick"(Byval X As Single,Byval Y As Single,Byval Z As Single,Byval DX As Single,Byval DY As Single,Byval DZ As Single,Byval Radius As Single) As Integer
 Declare Function spwEntityPick Alias "spwEntityPick"(Byval Entity As Integer,Byval Range As Single) As Integer
 Declare Function CountPicked Alias "spwCountPicked_ex"() As Integer
 Declare Function NextPicked Alias "spwNextPicked_ex"() As Integer
 Declare Function PreviousPicked Alias "spwPreviousPicked_ex"() As Integer
 Declare Function spwPickedEntity Alias "spwPickedEntity"() As Integer
 Declare Function spwPickedSurface Alias "spwPickedSurface"() As Integer
 Declare Function spwPickedTriangle Alias "spwPickedTriangle"() As Integer
 Declare Function spwPickedX Alias "spwPickedX"() As Single
 Declare Function spwPickedY Alias "spwPickedY"() As Single
 Declare Function spwPickedZ Alias "spwPickedZ"() As Single
 Declare Function spwPickedNX Alias "spwPickedNX"() As Single
 Declare Function spwPickedNY Alias "spwPickedNY"() As Single
 Declare Function spwPickedNZ Alias "spwPickedNZ"() As Single
 Declare Function spwPickedTime Alias "spwPickedTime"() As Single
 Declare Sub spwCameraProject Alias "spwCameraProject"(Byval Camera As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function spwProjectedX Alias "spwProjectedX"() As Integer
 Declare Function spwProjectedY Alias "spwProjectedY"() As Integer
 Declare Function spwProjectedZ Alias "spwProjectedZ"() As Integer
 Declare Sub MeshShadow Alias "spwMeshShadow_ex"(Byval Entity As Integer,Byval Enable As Integer) 
 Declare Sub LightShadow Alias "spwLightShadow_ex"(Byval Light As Integer,Byval Enable As Integer) 
 Declare Sub spwEntityBoundBox Alias "spwEntityBoundBox"(Byval Entity As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval Width As Single,Byval Height As Single,Byval Depth As Single,Byval Enable As Integer) 
 Declare Sub spwEntityBoundSphere Alias "spwEntityBoundSphere"(Byval Entity As Integer,Byval Radius As Single,Byval Enable As Integer) 
 Declare Sub spwMeshBoundBox Alias "spwMeshBoundBox"(Byval Mesh As Integer,Byval Enable As Integer) 
 Declare Function CreateMatrix Alias "spwCreateMatrix_ex"() As Integer
 Declare Sub FreeMatrix Alias "spwFreeMatrix_ex"(Byval Matrix As Integer) 
 Declare Sub WorldMatrix Alias "spwWorldMatrix_ex"(Byval MatrixOut As Integer) 
 Declare Sub ViewMatrix Alias "spwViewMatrix_ex"(Byval MatrixOut As Integer) 
 Declare Sub ProjectionMatrix Alias "spwProjectionMatrix_ex"(Byval MatrixOut As Integer) 
 Declare Function MatrixGetValue Alias "spwMatrixGetValue_ex"(Byval Matrix As Integer,Byval Index As Integer) As Single
 Declare Sub MatrixSetValue Alias "spwMatrixSetValue_ex"(Byval Matrix As Integer,Byval Index As Integer,Byval Value As Single) 
 Declare Sub MatrixReset Alias "spwMatrixReset_ex"(Byval Matrix As Integer) 
 Declare Sub MatrixTranslate Alias "spwMatrixTranslate_ex"(Byval Matrix As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub MatrixScale Alias "spwMatrixScale_ex"(Byval Matrix As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub MatrixRotate Alias "spwMatrixRotate_ex"(Byval Matrix As Integer,Byval Angle As Single,Byval NX As Single,Byval NY As Single,Byval NZ As Single) 
 Declare Sub MatrixRotateX Alias "spwMatrixRotateX_ex"(Byval Matrix As Integer,Byval Angle As Single) 
 Declare Sub MatrixRotateY Alias "spwMatrixRotateY_ex"(Byval Matrix As Integer,Byval Angle As Single) 
 Declare Sub MatrixRotateZ Alias "spwMatrixRotateZ_ex"(Byval Matrix As Integer,Byval Angle As Single) 
 Declare Sub MultMatrix Alias "spwMultMatrix_ex"(Byval MatrixOut As Integer,Byval MatrixA As Integer,Byval MatrixB As Integer) 
 Declare Sub InverseMatrix Alias "spwInverseMatrix_ex"(Byval Matrix As Integer) 
 Declare Function CreateBuffer Alias "spwCreateBuffer_ex"(Byval Size As Integer) As Integer
 Declare Sub FreeBuffer Alias "spwFreeBuffer_ex"(Byval Buffer As Integer) 
 Declare Sub spwUpdateSimulation Alias "spwUpdateSimulation"(Byval StepTime As Single) 
 Declare Function CreateStaticBody Alias "spwCreateStaticBody_ex"(Byval MeshGeom As Integer) As Integer
 Declare Sub DeleteStaticBody Alias "spwDeleteStaticBody_ex"(Byval Object_ As Integer) 
 Declare Function spwCreateRigidBodyNode Alias "spwCreateRigidBodyNode"(Byval RootNode As Integer,Byval ObjType As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single,Byval Radius As Single,Byval Height As Single,Byval Mass As Single) As Integer
 Declare Function spwCreateRigidBodyMesh Alias "spwCreateRigidBodyMesh"(Byval MeshGeom As Integer,Byval Mass As Single) As Integer
 Declare Sub DeleteRigidBody Alias "spwDeleteRigidBody_ex"(Byval Object_ As Integer) 
 Declare Sub SetPhysicsSolverModel Alias "spwSetPhysicsSolverModel_ex"(Byval Model As Integer) 
 Declare Sub SetPhysicsGravity Alias "spwSetPhysicsGravity_ex"(Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function GetPhysicsGravityX Alias "spwGetPhysicsGravityX_ex"() As Single
 Declare Function GetPhysicsGravityY Alias "spwGetPhysicsGravityY_ex"() As Single
 Declare Function GetPhysicsGravityZ Alias "spwGetPhysicsGravityZ_ex"() As Single
 Declare Sub SetPhysicsThreadCount Alias "spwSetPhysicsThreadCount_ex"(Byval Count As Integer) 
 Declare Function GetPhysicsThreadCount Alias "spwGetPhysicsThreadCount_ex"() As Single
 Declare Function GetPhysicsVersion Alias "spwGetPhysicsVersion_ex"() As ZString Ptr
 Declare Sub SetPhysicsObjectPosition Alias "spwSetPhysicsObjectPosition_ex"(Byval Object_ As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function GetPhysicsObjectPositionX Alias "spwGetPhysicsObjectPositionX_ex"(Byval Object_ As Integer) As Single
 Declare Function GetPhysicsObjectPositionY Alias "spwGetPhysicsObjectPositionY_ex"(Byval Object_ As Integer) As Single
 Declare Function GetPhysicsObjectPositionZ Alias "spwGetPhysicsObjectPositionZ_ex"(Byval Object_ As Integer) As Single
 Declare Sub SetPhysicsObjectRotation Alias "spwSetPhysicsObjectRotation_ex"(Byval Object_ As Integer,Byval Matrix As Integer) 
 Declare Sub GetPhysicsObjectRotation Alias "spwGetPhysicsObjectRotation_ex"(Byval Object_ As Integer,Byval Matrix As Integer) 
 Declare Sub SetRigidBodyMass Alias "spwSetRigidBodyMass_ex"(Byval Object_ As Integer,Byval Mass As Single) 
 Declare Function GetRigidBodyMass Alias "spwGetRigidBodyMass_ex"(Byval Object_ As Integer) As Single
 Declare Sub SetRigidBodyAutoSleep Alias "spwSetRigidBodyAutoSleep_ex"(Byval Object_ As Integer,Byval Enable As Integer) 
 Declare Function GetRigidBodyAutoSleep Alias "spwGetRigidBodyAutoSleep_ex"(Byval Object_ As Integer) As Integer
 Declare Sub SetRigidBodyBalancePoint Alias "spwSetRigidBodyBalancePoint_ex"(Byval Object_ As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function GetRigidBodyBalancePointX Alias "spwGetRigidBodyBalancePointX_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyBalancePointY Alias "spwGetRigidBodyBalancePointY_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyBalancePointZ Alias "spwGetRigidBodyBalancePointZ_ex"(Byval Object_ As Integer) As Single
 Declare Sub AddRigidBodyVelocity Alias "spwAddRigidBodyVelocity_ex"(Byval Object_ As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Sub SetRigidBodyVelocity Alias "spwSetRigidBodyVelocity_ex"(Byval Object_ As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function GetRigidBodyVelocityX Alias "spwGetRigidBodyVelocityX_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyVelocityY Alias "spwGetRigidBodyVelocityY_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyVelocityZ Alias "spwGetRigidBodyVelocityZ_ex"(Byval Object_ As Integer) As Single
 Declare Sub AddRigidBodyImpulse Alias "spwAddRigidBodyImpulse_ex"(Byval Object_ As Integer,Byval DirX As Single,Byval DirY As Single,Byval DirZ As Single,Byval PointX As Single,Byval PointY As Single,Byval PointZ As Single) 
 Declare Function spwAddRigidBodyJoint Alias "spwAddRigidBodyJoint"(Byval Object_ As Integer,Byval Child As Integer,Byval ObjType As Integer,Byval PointX As Single,Byval PointY As Single,Byval PointZ As Single,Byval DirX As Single,Byval DirY As Single,Byval DirZ As Single,Byval Dir2X As Single,Byval Dir2Y As Single,Byval Dir2Z As Single) As Integer
 Declare Sub RemoveRigidBodyJoint Alias "spwRemoveRigidBodyJoint_ex"(Byval Object_ As Integer,Byval Joint As Integer) 
 Declare Sub SetRigidBodyGravity Alias "spwSetRigidBodyGravity_ex"(Byval Object_ As Integer,Byval X As Single,Byval Y As Single,Byval Z As Single) 
 Declare Function GetRigidBodyGravityX Alias "spwGetRigidBodyGravityX_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyGravityY Alias "spwGetRigidBodyGravityY_ex"(Byval Object_ As Integer) As Single
 Declare Function GetRigidBodyGravityZ Alias "spwGetRigidBodyGravityZ_ex"(Byval Object_ As Integer) As Single
 Declare Function spwFlip Alias "spwFlip"(Byval Vsync As Integer) As Integer
 Declare Function CreateShaderTable Alias "spwCreateShaderTable_ex"() As Integer
 Declare Function ShaderTableLink Alias "spwShaderTableLink_ex"(Byval ShaderTable As Integer) As Integer
 Declare Function LoadShader Alias "spwLoadShader_ex"(Byval ShaderTable As Integer,Byval ObjType As Integer,Byval Version As Integer,Byval FileName_ As ZString Ptr,Byval EntryPoint As ZString Ptr) As Integer
 Declare Sub SetShader Alias "spwSetShader_ex"(Byval Entity As Integer,Byval ShaderTable As Integer) 
 Declare Sub BindShader Alias "spwBindShader_ex"(Byval ShaderTable As Integer) 
 Declare Sub UnbindShader Alias "spwUnbindShader_ex"(Byval ShaderTable As Integer) 
 Declare Function SetShaderInt Alias "spwSetShaderInt_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval Value As Integer) As Integer
 Declare Function SetShaderFloat Alias "spwSetShaderFloat_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval Value As Single) As Integer
 Declare Function SetShaderVec Alias "spwSetShaderVec_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval X As Single,Byval Y As Single,Byval Z As Single) As Integer
 Declare Function SetShaderColor Alias "spwSetShaderColor_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha_ As Integer) As Integer
 Declare Function SetShaderMat Alias "spwSetShaderMat_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval Matrix As Integer) As Integer
 Declare Function SetShaderBuffer Alias "spwSetShaderBuffer_ex"(Byval Shader As Integer,Byval Name_ As ZString Ptr,Byval Buffer As Integer ptr) As Integer
 Declare Sub FreeShaderTable Alias "spwFreeShaderTable_ex"(Byval ShaderTable As Integer) 
 Declare Sub FreeShader Alias "spwFreeShader_ex"(Byval Shader As Integer) 
 Declare Sub ClippingPlane Alias "spwClippingPlane_ex"(Byval Index As Integer,Byval Enable As Integer,Byval NX As Single,Byval NY As Single,Byval NZ As Single,Byval PlaneDistance As Single) 
 Declare Sub FrontCulling Alias "spwFrontCulling_ex"(Byval Enable As Integer) 
 Declare Sub SetRenderState Alias "spwSetRenderState_ex"(Byval ObjType As Integer,Byval State As Integer) 
 Declare Function GetRenderState Alias "spwGetRenderState_ex"(Byval ObjType As Integer) As Integer
 Declare Sub spwColor Alias "spwColor"(Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha_ As Integer) 
 Declare Sub spwGetColor Alias "spwGetColor"(Byval X As Integer,Byval Y As Integer) 
 Declare Function spwColorRed Alias "spwColorRed"() As Integer
 Declare Function spwColorGreen Alias "spwColorGreen"() As Integer
 Declare Function spwColorBlue Alias "spwColorBlue"() As Integer
 Declare Sub spwMultiColor Alias "spwMultiColor"(Byval Index As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha As Single) 
 Declare Sub EnableMultiColor Alias "spwEnableMultiColor_ex"(Byval Enable As Integer) 
 Declare Sub spwWritePixelFast Alias "spwWritePixelFast"(Byval X As Integer,Byval Y As Integer,Byval Color_ As Integer,Byval Buffer As Integer) 
 Declare Sub spwWritePixel Alias "spwWritePixel"(Byval X As Integer,Byval Y As Integer,Byval Color_ As Integer,Byval Buffer As Integer) 
 Declare Function spwReadPixelFast Alias "spwReadPixelFast"(Byval X As Integer,Byval Y As Integer,Byval Buffer As Integer) As Integer
 Declare Function spwReadPixel Alias "spwReadPixel"(Byval X As Integer,Byval Y As Integer,Byval Buffer As Integer) As Integer
 Declare Sub spwCopyPixelFast Alias "spwCopyPixelFast"(Byval SrcX As Integer,Byval SrcY As Integer,Byval SrcBuffer As Integer,Byval DestX As Integer,Byval DestY As Integer,Byval DestBuffer As Integer) 
 Declare Sub spwCopyPixel Alias "spwCopyPixel"(Byval SrcX As Integer,Byval SrcY As Integer,Byval SrcBuffer As Integer,Byval DestX As Integer,Byval DestY As Integer,Byval DestBuffer As Integer) 
 Declare Sub spwCopyRect Alias "spwCopyRect"(Byval SrcX As Integer,Byval SrcY As Integer,Byval SrcWidth_ As Integer,Byval SrcHeight As Integer,Byval DestX As Integer,Byval DestY As Integer,Byval SrcBuffer As Integer,Byval DestBuffer As Integer) 
 Declare Sub spwPlot Alias "spwPlot"(Byval X As Integer,Byval Y As Integer) 
 Declare Sub spwLine Alias "spwLine"(Byval X1 As Integer,Byval Y1 As Integer,Byval X2 As Integer,Byval Y2 As Integer) 
 Declare Sub spwRect Alias "spwRect"(Byval X As Integer,Byval Y As Integer,Byval Width_ As Integer,Byval Height As Integer,Byval Solid As Integer) 
 Declare Sub spwOval Alias "spwOval"(Byval X As Integer,Byval Y As Integer,Byval Width_ As Integer,Byval Height As Integer,Byval Solid As Integer) 
 Declare Function spwCreateTexture Alias "spwCreateTexture"(Byval Width_ As Integer,Byval Height As Integer,Byval Flags As Integer,Byval Frames As Integer) As Integer
 Declare Function spwLoadTexture Alias "spwLoadTexture"(Byval File As ZString Ptr,Byval Flags As Integer) As Integer
 Declare Function spwLoadAnimTexture Alias "spwLoadAnimTexture"(Byval File As ZString Ptr,Byval Flags As Integer,Byval FrameWidth_ As Integer,Byval FrameHeight As Integer,Byval FirstFrame As Integer,Byval FrameCount As Integer) As Integer
 Declare Function CopyTexture Alias "spwCopyTexture_ex"(Byval SourceTexture As Integer) As Integer
 Declare Sub spwFreeTexture Alias "spwFreeTexture"(Byval Texture As Integer) 
 Declare Sub spwScaleTexture Alias "spwScaleTexture"(Byval Texture As Integer,Byval Width As Single,Byval Height As Single) 
 Declare Sub spwPositionTexture Alias "spwPositionTexture"(Byval Texture As Integer,Byval X As Single,Byval Y As Single) 
 Declare Sub spwRotateTexture Alias "spwRotateTexture"(Byval Texture As Integer,Byval Angle As Single) 
 Declare Sub spwTextureBlend Alias "spwTextureBlend"(Byval Texture As Integer,Byval Mode As Integer) 
 Declare Sub spwTextureCoords Alias "spwTextureCoords"(Byval Texture As Integer,Byval Coords As Integer) 
 Declare Sub spwEntityTexture Alias "spwEntityTexture"(Byval Entity As Integer,Byval Texture As Integer,Byval Frame As Integer,Byval Index As Integer) 
 Declare Sub spwPaintEntity Alias "spwPaintEntity"(Byval Entity As Integer,Byval Brush As Integer) 
 Declare Sub spwPaintSurface Alias "spwPaintSurface"(Byval Surface As Integer,Byval Brush As Integer) 
 Declare Function spwCreateBrush Alias "spwCreateBrush"(Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) As Integer
 Declare Function spwLoadBrush Alias "spwLoadBrush"(Byval File As ZString Ptr,Byval Flags As Integer,Byval Width As Single,Byval Height As Single) As Integer
 Declare Sub spwFreeBrush Alias "spwFreeBrush"(Byval Brush As Integer) 
 Declare Sub spwBrushTexture Alias "spwBrushTexture"(Byval Brush As Integer,Byval Texture As Integer,Byval Frame As Integer,Byval Index As Integer) 
 Declare Sub spwPaintMesh Alias "spwPaintMesh"(Byval Mesh As Integer,Byval Brush As Integer) 
 Declare Sub spwBrushShininess Alias "spwBrushShininess"(Byval Brush As Integer,Byval Shininess As Single) 
 Declare Sub spwMidHandle Alias "spwMidHandle"(Byval ObjHandle As Integer,Byval Enable As Integer) 
 Declare Function spwLoadImage Alias "spwLoadImage"(Byval File As ZString Ptr) As Integer
 Declare Function spwLoadAnimImage Alias "spwLoadAnimImage"(Byval File As ZString Ptr,Byval FrameWidth_ As Integer,Byval FrameHeight As Integer,Byval FirstFrame As Integer,Byval FrameCount As Integer,Byval Flags As Integer) As Integer
 Declare Function spwCreateImage Alias "spwCreateImage"(Byval Width_ As Integer,Byval Height As Integer,Byval Frames As Integer) As Integer
 Declare Function spwCopyImage Alias "spwCopyImage"(Byval ObjHandle As Integer) As Integer
 Declare Function spwImageWidth Alias "spwImageWidth"(Byval ObjHandle As Integer) As Integer
 Declare Function spwImageHeight Alias "spwImageHeight"(Byval ObjHandle As Integer) As Integer
 Declare Sub spwMaskImage Alias "spwMaskImage"(Byval ObjHandle As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha_ As Integer) 
 Declare Sub spwScaleImage Alias "spwScaleImage"(Byval ObjHandle As Integer,Byval Width As Single,Byval Height As Single) 
 Declare Sub spwResizeImage Alias "spwResizeImage"(Byval ObjHandle As Integer,Byval Width_ As Integer,Byval Height As Integer) 
 Declare Sub spwRotateImage Alias "spwRotateImage"(Byval ObjHandle As Integer,Byval Angle As Single) 
 Declare Sub spwAutoMidHandle Alias "spwAutoMidHandle"(Byval Enable As Integer) 
 Declare Sub spwGrabImage Alias "spwGrabImage"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer) 
 Declare Function spwTextureWidth Alias "spwTextureWidth"(Byval ObjHandle As Integer) As Integer
 Declare Function spwTextureHeight Alias "spwTextureHeight"(Byval ObjHandle As Integer) As Integer
 Declare Sub spwDrawImage Alias "spwDrawImage"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval Frame As Integer) 
 Declare Sub spwDrawImageRect Alias "spwDrawImageRect"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval RectX As Integer,Byval RectY As Integer,Byval RectWidth_ As Integer,Byval RectHeight As Integer,Byval Frame As Integer) 
 Declare Sub spwDrawImageStretch Alias "spwDrawImageStretch"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval Width_ As Integer,Byval Height As Integer,Byval MapX1 As Single,Byval MapY1 As Single,Byval MapX2 As Single,Byval MapY2 As Single,Byval Frame As Integer) 
 Declare Sub spwDrawImageRotate Alias "spwDrawImageRotate"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval Angle As Single,Byval Radius As Single,Byval Frame As Integer) 
 Declare Sub spwTileImage Alias "spwTileImage"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval Frame As Integer) 
 Declare Sub spwDrawBlock Alias "spwDrawBlock"(Byval ObjHandle As Integer,Byval X As Integer,Byval Y As Integer,Byval Frame As Integer) 
 Declare Sub spwCls Alias "spwCls"() 
 Declare Sub spwClsColor Alias "spwClsColor"(Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha_ As Integer) 
 Declare Sub spwMaskColor Alias "spwMaskColor"(Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer,Byval Alpha_ As Integer) 
 Declare Sub spwCameraClsColor Alias "spwCameraClsColor"(Byval Camera As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) 
 Declare Sub spwCameraClsMode Alias "spwCameraClsMode"(Byval Camera As Integer,Byval ClsColor_ As Integer,Byval ClsZBuffer As Integer) 
 Declare Sub spwCameraFogColor Alias "spwCameraFogColor"(Byval Camera As Integer,Byval Red As Integer,Byval Green As Integer,Byval Blue As Integer) 
 Declare Sub spwCameraFogMode Alias "spwCameraFogMode"(Byval Camera As Integer,Byval Mode As Integer) 
 Declare Sub spwCameraFogRange Alias "spwCameraFogRange"(Byval Camera As Integer,Byval Near As Single,Byval Far As Single,Byval FallOff As Single) 
 Declare Sub spwHWMultiTex Alias "spwHWMultiTex"(Byval Enable As Integer) 
 Declare Function spwTextureBuffer Alias "spwTextureBuffer"(Byval Texture As Integer,Byval Frame As Integer) As Integer
 Declare Function spwImageBuffer Alias "spwImageBuffer"(Byval Image_ As Integer,Byval Frame As Integer) As Integer
 Declare Function spwFrontBuffer Alias "spwFrontBuffer"() As Integer
 Declare Function spwBackBuffer Alias "spwBackBuffer"() As Integer
 Declare Sub spwSetBuffer Alias "spwSetBuffer"(Byval Buffer As Integer) 
 Declare Function spwLoadFont Alias "spwLoadFont"(Byval FontName_ As ZString Ptr,Byval Height As Integer,Byval Bold As Integer,Byval Italic As Integer,Byval Underlined As Integer,Byval StrikeOut As Integer) As Integer
 Declare Sub spwFreeFont Alias "spwFreeFont"(Byval Font As Integer) 
 Declare Sub spwSetFont Alias "spwSetFont"(Byval Font As Integer) 
 Declare Function spwStringWidth Alias "spwStringWidth"(Byval TextString As ZString Ptr) As Integer
 Declare Function spwStringHeight Alias "spwStringHeight"(Byval TextString As ZString Ptr) As Integer
 Declare Function spwFontWidth Alias "spwFontWidth"() As Integer
 Declare Function spwFontHeight Alias "spwFontHeight"() As Integer
 Declare Sub spwText Alias "spwText"(Byval X As Integer,Byval Y As Integer,Byval TextString As ZString Ptr,Byval CenterX As Integer,Byval CenterY As Integer) 
 Declare Function spwOpenMovie Alias "spwOpenMovie"(Byval File As ZString ptr,Byval Resolution As Integer,Byval Play As Integer) As Integer
 Declare Sub spwCloseMovie Alias "spwCloseMovie"(Byval Movie As Integer) 
 Declare Sub spwDrawMovie Alias "spwDrawMovie"(Byval Movie As Integer,Byval X As Integer,Byval Y As Integer,Byval Width_ As Integer,Byval Height As Integer) 
 Declare Function spwMovieWidth Alias "spwMovieWidth"(Byval Movie As Integer) As Integer
 Declare Function spwMovieHeight Alias "spwMovieHeight"(Byval Movie As Integer) As Integer
 Declare Function spwMoviePlaying Alias "spwMoviePlaying"(Byval Movie As Integer) As Integer
 Declare Function spwMovieSound Alias "spwMovieSound"(Byval Movie As Integer) As Integer
 Declare Sub spwMipMapFilter Alias "spwMipMapFilter"(ByVal Mode As Integer,Byval Anisotropy As Integer) 
