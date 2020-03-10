// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

user_func(integer input_a, integer input_b)
{
    llSay(PUBLIC_CHANNEL, (string)(input_a * input_b));
}

default
{
    touch_end(integer num_detected)
    {
        return;

        ////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////

        float f;
        integer i;
        key k;
        list l;
        rotation r;
        string s;
        vector v;

        user_func(num_detected, 0);

        i = llAbs(i);
//          ^^^^^ support.function.builtin
        f = llAcos(f);
//          ^^^^^^ support.function.builtin
        llAddToLandBanList(k, f);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAddToLandPassList(k, f);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAdjustSoundVolume(f);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llAgentInExperience(k);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAllowInventoryDrop(i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llAngleBetween(r, r);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llApplyImpulse(v, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llApplyRotationalImpulse(v, i);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llAsin(f);
//          ^^^^^^ support.function.builtin
        f = llAtan2(f, f);
//          ^^^^^^^ support.function.builtin
        llAttachToAvatar(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llAttachToAvatarTemp(i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llAvatarOnLinkSitTarget(i);
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llAvatarOnSitTarget();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llAxes2Rot(v, v, v);
//          ^^^^^^^^^^ support.function.builtin
        r = llAxisAngle2Rot(v, f);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llBase64ToInteger(s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llBase64ToString(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llBreakAllLinks();
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llBreakLink(i);
//      ^^^^^^^^^^^ support.function.builtin
        l = llCSV2List(s);
//          ^^^^^^^^^^ support.function.builtin
        l = llCastRay(v, v, l);
//          ^^^^^^^^^ support.function.builtin
        i = llCeil(f);
//          ^^^^^^ support.function.builtin
        llClearCameraParams();
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llClearLinkMedia(i, i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        i = llClearPrimMedia(i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llCloseRemoteDataChannel(k);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llCollisionFilter(s, k, i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llCollisionSound(s, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llCos(f);
//          ^^^^^ support.function.builtin
        llCreateCharacter(l);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llCreateKeyValue(s, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llCreateLink(k, i);
//      ^^^^^^^^^^^^ support.function.builtin
        k = llDataSizeKeyValue();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llDeleteCharacter();
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llDeleteKeyValue(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        l = llDeleteSubList(l, i, i);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        s = llDeleteSubString(s, i, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        llDetachFromAvatar();
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedGrab(i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        i = llDetectedGroup(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        k = llDetectedKey(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        i = llDetectedLinkNumber(i);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llDetectedName(i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        k = llDetectedOwner(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedPos(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        r = llDetectedRot(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedTouchBinormal(i);
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llDetectedTouchFace(i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedTouchNormal(i);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedTouchPos(i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedTouchST(i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedTouchUV(i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llDetectedType(i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        v = llDetectedVel(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        llDialog(k, s, l, i);
//      ^^^^^^^^ support.function.builtin
        llDie();
//      ^^^^^ support.function.builtin
        s = llDumpList2String(l, s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llEdgeOfWorld(v, v);
//          ^^^^^^^^^^^^^ support.function.builtin
        llEjectFromLand(k);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llEmail(s, s, s);
//      ^^^^^^^ support.function.builtin
        s = llEscapeURL(s);
//          ^^^^^^^^^^^ support.function.builtin
        r = llEuler2Rot(v);
//          ^^^^^^^^^^^ support.function.builtin
        llEvade(k, l);
//      ^^^^^^^ support.function.builtin
        llExecCharacterCmd(i, l);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llFabs(f);
//          ^^^^^^ support.function.builtin
        llFleeFrom(v, f, l);
//      ^^^^^^^^^^ support.function.builtin
        i = llFloor(f);
//          ^^^^^^^ support.function.builtin
        llForceMouselook(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llFrand(f);
//          ^^^^^^^ support.function.builtin
        k = llGenerateKey();
//          ^^^^^^^^^^^^^ support.function.builtin
        v = llGetAccel();
//          ^^^^^^^^^^ support.function.builtin
        i = llGetAgentInfo(k);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llGetAgentLanguage(k);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetAgentList(i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin
        v = llGetAgentSize(k);
//          ^^^^^^^^^^^^^^ support.function.builtin
        f = llGetAlpha(i);
//          ^^^^^^^^^^ support.function.builtin
        f = llGetAndResetTime();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetAnimation(k);
//          ^^^^^^^^^^^^^^ support.function.builtin
        l = llGetAnimationList(k);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetAnimationOverride(s);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetAttached();
//          ^^^^^^^^^^^^^ support.function.builtin
        l = llGetAttachedList(k);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetBoundingBox(k);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetCameraPos();
//          ^^^^^^^^^^^^^^ support.function.builtin
        r = llGetCameraRot();
//          ^^^^^^^^^^^^^^ support.function.builtin
        v = llGetCenterOfMass();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetClosestNavPoint(v, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetColor(i);
//          ^^^^^^^^^^ support.function.builtin
        k = llGetCreator();
//          ^^^^^^^^^^^^ support.function.builtin
        s = llGetDate();
//          ^^^^^^^^^ support.function.builtin
        i = llGetDayLength();
//          ^^^^^^^^^^^^^^ support.function.builtin
        i = llGetDayOffset();
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llGetDisplayName(k);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetEnergy();
//          ^^^^^^^^^^^ support.function.builtin
        s = llGetEnv(s);
//          ^^^^^^^^ support.function.builtin
        l = llGetEnvironment(v, l);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetExperienceDetails(k);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetExperienceErrorMessage(i);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetForce();
//          ^^^^^^^^^^ support.function.builtin
        i = llGetFreeMemory();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetFreeURLs();
//          ^^^^^^^^^^^^^ support.function.builtin
        f = llGetGMTclock();
//          ^^^^^^^^^^^^^ support.function.builtin
        v = llGetGeometricCenter();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetHTTPHeader(k, s);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetInventoryCreator(s);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetInventoryKey(s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetInventoryName(i, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetInventoryNumber(i);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetInventoryPermMask(s, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetInventoryType(s);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetKey();
//          ^^^^^^^^ support.function.builtin
        k = llGetLandOwnerAt(v);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetLinkKey(i);
//          ^^^^^^^^^^^^ support.function.builtin
        l = llGetLinkMedia(i, i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llGetLinkName(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        i = llGetLinkNumber();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetLinkNumberOfSides(i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetLinkPrimitiveParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetListEntryType(l, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetListLength(l);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetLocalPos();
//          ^^^^^^^^^^^^^ support.function.builtin
        r = llGetLocalRot();
//          ^^^^^^^^^^^^^ support.function.builtin
        f = llGetMass();
//          ^^^^^^^^^ support.function.builtin
        f = llGetMassMKS();
//          ^^^^^^^^^^^^ support.function.builtin
        f = llGetMaxScaleFactor();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetMemoryLimit();
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetMinScaleFactor();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetMoonDirection();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetMoonRotation();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        llGetNextEmail(s, s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        k = llGetNotecardLine(s, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetNumberOfNotecardLines(s);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetNumberOfPrims();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetNumberOfSides();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetObjectAnimationNames();
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetObjectDesc();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetObjectDetails(k, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetObjectMass(k);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetObjectName();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetObjectPermMask(i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetObjectPrimCount(k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetOmega();
//          ^^^^^^^^^^ support.function.builtin
        k = llGetOwner();
//          ^^^^^^^^^^ support.function.builtin
        k = llGetOwnerKey(k);
//          ^^^^^^^^^^^^^ support.function.builtin
        l = llGetParcelDetails(v, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetParcelFlags(v);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetParcelMaxPrims(v, i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetParcelMusicURL();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetParcelPrimCount(v, i, i);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetParcelPrimOwners(v);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetPermissions();
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        k = llGetPermissionsKey();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetPhysicsMaterial();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetPos();
//          ^^^^^^^^ support.function.builtin
        l = llGetPrimMediaParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetPrimitiveParams(l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetRegionAgentCount();
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetRegionCorner();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetRegionDayLength();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetRegionDayOffset();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetRegionFPS();
//          ^^^^^^^^^^^^^^ support.function.builtin
        i = llGetRegionFlags();
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetRegionMoonDirection();
//          ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetRegionMoonRotation();
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetRegionName();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetRegionSunDirection();
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetRegionSunRotation();
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetRegionTimeDilation();
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetRegionTimeOfDay();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetRootPosition();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetRootRotation();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetRot();
//          ^^^^^^^^ support.function.builtin
        i = llGetSPMaxMemory();
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetScale();
//          ^^^^^^^^^^ support.function.builtin
        s = llGetScriptName();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetScriptState(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetSimStats(i);
//          ^^^^^^^^^^^^^ support.function.builtin
        s = llGetSimulatorHostname();
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetStartParameter();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llGetStaticPath(v, v, f, l);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        i = llGetStatus(i);
//          ^^^^^^^^^^^ support.function.builtin
        s = llGetSubString(s, i, i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        v = llGetSunDirection();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llGetSunRotation();
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetTexture(i);
//          ^^^^^^^^^^^^ support.function.builtin
        v = llGetTextureOffset(i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetTextureRot(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        v = llGetTextureScale(i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        f = llGetTime();
//          ^^^^^^^^^ support.function.builtin
        f = llGetTimeOfDay();
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llGetTimestamp();
//          ^^^^^^^^^^^^^^ support.function.builtin
        v = llGetTorque();
//          ^^^^^^^^^^^ support.function.builtin
        i = llGetUnixTime();
//          ^^^^^^^^^^^^^ support.function.builtin
        i = llGetUsedMemory();
//          ^^^^^^^^^^^^^^^ support.function.builtin
        s = llGetUsername(k);
//          ^^^^^^^^^^^^^ support.function.builtin
        v = llGetVel();
//          ^^^^^^^^ support.function.builtin
        f = llGetWallclock();
//          ^^^^^^^^^^^^^^ support.function.builtin
        llGiveInventory(k, s);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llGiveInventoryList(k, s, l);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llGiveMoney(k, i);
//          ^^^^^^^^^^^ support.function.builtin
        f = llGround(v);
//          ^^^^^^^^ support.function.builtin
        v = llGroundContour(v);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        v = llGroundNormal(v);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llGroundRepel(f, i, f);
//      ^^^^^^^^^^^^^ support.function.builtin
        v = llGroundSlope(v);
//          ^^^^^^^^^^^^^ support.function.builtin
        k = llHTTPRequest(s, l, s);
//          ^^^^^^^^^^^^^ support.function.builtin
        llHTTPResponse(k, i, s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        s = llInsertString(s, i, s);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llInstantMessage(k, s);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        s = llIntegerToBase64(i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llJson2List(s);
//          ^^^^^^^^^^^ support.function.builtin
        s = llJsonGetValue(s, l);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llJsonSetValue(s, l, s);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llJsonValueType(s, l);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        s = llKey2Name(k);
//          ^^^^^^^^^^ support.function.builtin
        k = llKeyCountKeyValue();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llKeysKeyValue(i, i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llLinkParticleSystem(i, l);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llLinkSitTarget(i, v, r);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        s = llList2CSV(l);
//          ^^^^^^^^^^ support.function.builtin
        f = llList2Float(l, i);
//          ^^^^^^^^^^^^ support.function.builtin
        i = llList2Integer(l, i);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llList2Json(s, l);
//          ^^^^^^^^^^^ support.function.builtin
        k = llList2Key(l, i);
//          ^^^^^^^^^^ support.function.builtin
        l = llList2List(l, i, i);
//          ^^^^^^^^^^^ support.function.builtin
        l = llList2ListStrided(l, i, i, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        r = llList2Rot(l, i);
//          ^^^^^^^^^^ support.function.builtin
        s = llList2String(l, i);
//          ^^^^^^^^^^^^^ support.function.builtin
        v = llList2Vector(l, i);
//          ^^^^^^^^^^^^^ support.function.builtin
        i = llListFindList(l, l);
//          ^^^^^^^^^^^^^^ support.function.builtin
        l = llListInsertList(l, l, i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        l = llListRandomize(l, i);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        l = llListReplaceList(l, l, i, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llListSort(l, i, i);
//          ^^^^^^^^^^ support.function.builtin
        f = llListStatistics(i, l);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        i = llListen(i, s, k, s);
//          ^^^^^^^^ support.function.builtin
        llListenControl(i, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llListenRemove(i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llLoadURL(k, s, s);
//      ^^^^^^^^^ support.function.builtin
        f = llLog(f);
//          ^^^^^ support.function.builtin
        f = llLog10(f);
//          ^^^^^^^ support.function.builtin
        llLookAt(v, f, f);
//      ^^^^^^^^ support.function.builtin
        llLoopSound(s, f);
//      ^^^^^^^^^^^ support.function.builtin
        llLoopSoundMaster(s, f);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llLoopSoundSlave(s, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        s = llMD5String(s, i);
//          ^^^^^^^^^^^ support.function.builtin
        i = llManageEstateAccess(i, k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llMapDestination(s, v, v);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llMessageLinked(i, i, s, k);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llMinEventDelay(f);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        i = llModPow(i, i, i);
//          ^^^^^^^^ support.function.builtin
        llModifyLand(i, i);
//      ^^^^^^^^^^^^ support.function.builtin
        llMoveToTarget(v, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
        k = llName2Key(s);
//          ^^^^^^^^^^ support.function.builtin
        llNavigateTo(v, l);
//      ^^^^^^^^^^^^ support.function.builtin
        llOffsetTexture(f, f, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llOpenRemoteDataChannel();
//      ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llOverMyLand(k);
//          ^^^^^^^^^^^^ support.function.builtin
        llOwnerSay(s);
//      ^^^^^^^^^^ support.function.builtin
        llParcelMediaCommandList(l);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llParcelMediaQuery(l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llParseString2List(s, l, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        l = llParseStringKeepNulls(s, l, l);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llParticleSystem(l);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llPassCollisions(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llPassTouches(i);
//      ^^^^^^^^^^^^^ support.function.builtin
        llPatrolPoints(l, l);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llPlaySound(s, f);
//      ^^^^^^^^^^^ support.function.builtin
        llPlaySoundSlave(s, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llPow(f, f);
//          ^^^^^ support.function.builtin
        llPreloadSound(s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llPursue(k, l);
//      ^^^^^^^^ support.function.builtin
        llPushObject(k, v, v, i);
//      ^^^^^^^^^^^^ support.function.builtin
        k = llReadKeyValue(s);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llRegionSay(i, s);
//      ^^^^^^^^^^^ support.function.builtin
        llRegionSayTo(k, i, s);
//      ^^^^^^^^^^^^^ support.function.builtin
        llReleaseControls();
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llReleaseURL(s);
//      ^^^^^^^^^^^^ support.function.builtin
        llRemoteDataReply(k, k, s, i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llRemoteLoadScriptPin(k, s, i, i, i);
//      ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRemoveFromLandBanList(k);
//      ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRemoveFromLandPassList(k);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRemoveInventory(s);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llRemoveVehicleFlags(i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llReplaceAgentEnvironment(k, f, s);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestAgentData(k, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestDisplayName(k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRequestExperiencePermissions(k, s);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestInventoryData(s);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRequestPermissions(k, i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestSecureURL();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestSimulatorData(s, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestUserKey(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        k = llRequestURL();
//          ^^^^^^^^^^^^ support.function.builtin
        k = llRequestUsername(k);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin
        llResetAnimationOverride(s);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llResetLandBanList();
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llResetLandPassList();
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llResetOtherScript(s);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llResetScript();
//      ^^^^^^^^^^^^^ support.function.builtin
        llResetTime();
//      ^^^^^^^^^^^ support.function.builtin
        i = llReturnObjectsByID(l);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        I = llReturnObjectsByOwner(k, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRezAtRoot(s, v, v, r, i);
//      ^^^^^^^^^^^ support.function.builtin
        llRezObject(s, v, v, r, i);
//      ^^^^^^^^^^^ support.function.builtin
        f = llRot2Angle(r);
//          ^^^^^^^^^^^ support.function.builtin
        v = llRot2Axis(r);
//          ^^^^^^^^^^ support.function.builtin
        v = llRot2Euler(r);
//          ^^^^^^^^^^^ support.function.builtin
        v = llRot2Fwd(r);
//          ^^^^^^^^^ support.function.builtin
        v = llRot2Left(r);
//          ^^^^^^^^^^ support.function.builtin
        v = llRot2Up(r);
//          ^^^^^^^^ support.function.builtin
        r = llRotBetween(v, v);
//          ^^^^^^^^^^^^ support.function.builtin
        llRotLookAt(r, f, f);
//      ^^^^^^^^^^^ support.function.builtin
        i = llRotTarget(r, f);
//          ^^^^^^^^^^^ support.function.builtin
        llRotTargetRemove(i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llRotateTexture(f, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        i = llRound(f);
//          ^^^^^^^ support.function.builtin
        s = llSHA1String(s);
//          ^^^^^^^^^^^^ support.function.builtin
        i = llSameGroup(k);
//          ^^^^^^^^^^^ support.function.builtin
        llSay(i, s);
//      ^^^^^ support.function.builtin
        i = llScaleByFactor(f);
//          ^^^^^^^^^^^^^^^ support.function.builtin
        llScaleTexture(f, f, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        i = llScriptDanger(v);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llScriptProfiler(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        k = llSendRemoteData(k, s, i, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llSensor(s, k, i, f, f);
//      ^^^^^^^^ support.function.builtin
        llSensorRemove();
//      ^^^^^^^^^^^^^^ support.function.builtin
        llSensorRepeat(s, k, i, f, f, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
        i = llSetAgentEnvironment(k, f, l);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetAlpha(f, i);
//      ^^^^^^^^^^ support.function.builtin
        llSetAngularVelocity(v, i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetAnimationOverride(s, s);
//      ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetBuoyancy(f);
//      ^^^^^^^^^^^^^ support.function.builtin
        llSetCameraAtOffset(v);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetCameraEyeOffset(v);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetCameraParams(l);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetClickAction(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetColor(v, i);
//      ^^^^^^^^^^ support.function.builtin
        llSetContentType(k, i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetDamage(f);
//      ^^^^^^^^^^^ support.function.builtin
        llSetForce(v, i);
//      ^^^^^^^^^^ support.function.builtin
        llSetForceAndTorque(v, v, i);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetHoverHeight(f, i, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetKeyframedMotion(l, l);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkAlpha(i, f, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkCamera(i, v, v);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkColor(i, v, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        i = llSetLinkMedia(i, i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkPrimitiveParams(i, l);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkPrimitiveParamsFast(i, l);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkTexture(i, s, i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetLinkTextureAnim(i, i, i, i, i, f, f, f);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetLocalRot(r);
//      ^^^^^^^^^^^^^ support.function.builtin
        i = llSetMemoryLimit(i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetObjectDesc(s);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llSetObjectName(s);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llSetParcelMusicURL(s);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetPayPrice(i, l);
//      ^^^^^^^^^^^^^ support.function.builtin
        llSetPhysicsMaterial(i, f, f, f, f);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetPos(v);
//      ^^^^^^^^ support.function.builtin
        i = llSetPrimMediaParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetPrimitiveParams(l);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        i = llSetRegionPos(v);
//          ^^^^^^^^^^^^^^ support.function.builtin
        llSetRemoteScriptAccessPin(i);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetRot(r);
//      ^^^^^^^^ support.function.builtin
        llSetScale(v);
//      ^^^^^^^^^^ support.function.builtin
        llSetScriptState(s, i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetSitText(s);
//      ^^^^^^^^^^^^ support.function.builtin
        llSetSoundQueueing(i);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetSoundRadius(f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetStatus(i, i);
//      ^^^^^^^^^^^ support.function.builtin
        llSetText(s, v, f);
//      ^^^^^^^^^ support.function.builtin
        llSetTexture(s, i);
//      ^^^^^^^^^^^^ support.function.builtin
        llSetTextureAnim(i, i, i, i, f, f, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetTimerEvent(f);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llSetTorque(v, i);
//      ^^^^^^^^^^^ support.function.builtin
        llSetTouchText(s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llSetVehicleFlags(i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetVehicleFloatParam(i, f);
//      ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetVehicleRotationParam(i, r);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetVehicleType(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSetVehicleVectorParam(i, v);
//      ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llSetVelocity(v, i);
//      ^^^^^^^^^^^^^ support.function.builtin
        llShout(i, s);
//      ^^^^^^^ support.function.builtin
        f = llSin(f);
//          ^^^^^ support.function.builtin
        i = llSitOnLink(k, i);
//          ^^^^^^^^^^^ support.function.builtin
        llSitTarget(v, r);
//      ^^^^^^^^^^^ support.function.builtin
        llSleep(f);
//      ^^^^^^^ support.function.builtin
        f = llSqrt(f);
//          ^^^^^^ support.function.builtin
        llStartAnimation(s);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llStartObjectAnimation(s);
//      ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llStopAnimation(s);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llStopHover();
//      ^^^^^^^^^^^ support.function.builtin
        llStopLookAt();
//      ^^^^^^^^^^^^ support.function.builtin
        llStopMoveToTarget();
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llStopObjectAnimation(s);
//      ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llStopSound();
//      ^^^^^^^^^^^ support.function.builtin
        i = llStringLength(s);
//          ^^^^^^^^^^^^^^ support.function.builtin
        s = llStringToBase64(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        s = llStringTrim(s, i);
//          ^^^^^^^^^^^^ support.function.builtin
        i = llSubStringIndex(s, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        llTakeControls(i, i, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        f = llTan(f);
//          ^^^^^ support.function.builtin
        i = llTarget(v, f);
//          ^^^^^^^^ support.function.builtin
        llTargetOmega(v, f, f);
//      ^^^^^^^^^^^^^ support.function.builtin
        llTargetRemove(i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llTeleportAgent(k, s, v, v);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llTeleportAgentGlobalCoords(k, v, v, v);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llTeleportAgentHome(k);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llTextBox(k, s, i);
//      ^^^^^^^^^ support.function.builtin
        s = llToLower(s);
//          ^^^^^^^^^ support.function.builtin
        s = llToUpper(s);
//          ^^^^^^^^^ support.function.builtin
        k = llTransferLindenDollars(k, i);
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llTriggerSound(s, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llTriggerSoundLimited(s, f, v, v);
//      ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llUnSit(k);
//      ^^^^^^^ support.function.builtin
        s = llUnescapeURL(s);
//          ^^^^^^^^^^^^^ support.function.builtin
        llUpdateCharacter(l);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        k = llUpdateKeyValue(s, s, i, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin
        f = llVecDist(v, v);
//          ^^^^^^^^^ support.function.builtin
        f = llVecMag(v);
//          ^^^^^^^^ support.function.builtin
        v = llVecNorm(v);
//          ^^^^^^^^^ support.function.builtin
        llVolumeDetect(i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llWanderWithin(v, v, l);
//      ^^^^^^^^^^^^^^ support.function.builtin
        f = llWater(v);
//          ^^^^^^^ support.function.builtin
        llWhisper(i, s);
//      ^^^^^^^^^ support.function.builtin
        v = llWind(v);
//          ^^^^^^ support.function.builtin
        s = llXorBase64(s, s);
//          ^^^^^^^^^^^ support.function.builtin
    }
}
