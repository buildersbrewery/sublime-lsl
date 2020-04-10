// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

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

        llAddToLandBanList(k, f);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAddToLandPassList(k, f);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAdjustSoundVolume(f);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAllowInventoryDrop(i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llApplyImpulse(v, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llApplyRotationalImpulse(v, i);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llAttachToAvatar(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llAttachToAvatarTemp(i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llBreakAllLinks();
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llBreakLink(i);
//      ^^^^^^^^^^^ support.function.builtin
        llClearCameraParams();
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llCloseRemoteDataChannel(k);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llCollisionFilter(s, k, i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llCollisionSound(s, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llCreateCharacter(l);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llCreateLink(k, i);
//      ^^^^^^^^^^^^ support.function.builtin
        llDeleteCharacter();
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llDetachFromAvatar();
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llDialog(k, s, l, i);
//      ^^^^^^^^ support.function.builtin
        llDie();
//      ^^^^^ support.function.builtin
        llEjectFromLand(k);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llEmail(s, s, s);
//      ^^^^^^^ support.function.builtin
        llEvade(k, l);
//      ^^^^^^^ support.function.builtin
        llExecCharacterCmd(i, l);
//      ^^^^^^^^^^^^^^^^^^ support.function.builtin
        llFleeFrom(v, f, l);
//      ^^^^^^^^^^ support.function.builtin
        llForceMouselook(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llGetNextEmail(s, s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llGiveInventory(k, s);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llGiveInventoryList(k, s, l);
//      ^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llGroundRepel(f, i, f);
//      ^^^^^^^^^^^^^ support.function.builtin
        llHTTPResponse(k, i, s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llInstantMessage(k, s);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llLinkParticleSystem(i, l);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llLinkSitTarget(i, v, r);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llListenControl(i, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llListenRemove(i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llLoadURL(k, s, s);
//      ^^^^^^^^^ support.function.builtin
        llLookAt(v, f, f);
//      ^^^^^^^^ support.function.builtin
        llLoopSound(s, f);
//      ^^^^^^^^^^^ support.function.builtin
        llLoopSoundMaster(s, f);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llLoopSoundSlave(s, f);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llMapDestination(s, v, v);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llMessageLinked(i, i, s, k);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llMinEventDelay(f);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llModifyLand(i, i);
//      ^^^^^^^^^^^^ support.function.builtin
        llMoveToTarget(v, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llNavigateTo(v, l);
//      ^^^^^^^^^^^^ support.function.builtin
        llOffsetTexture(f, f, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llOpenRemoteDataChannel();
//      ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llOwnerSay(s);
//      ^^^^^^^^^^ support.function.builtin
        llParcelMediaCommandList(l);
//      ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
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
        llPreloadSound(s);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llPursue(k, l);
//      ^^^^^^^^ support.function.builtin
        llPushObject(k, v, v, i);
//      ^^^^^^^^^^^^ support.function.builtin
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
        llRequestExperiencePermissions(k, s);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llRequestPermissions(k, i);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
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
        llRezAtRoot(s, v, v, r, i);
//      ^^^^^^^^^^^ support.function.builtin
        llRezObject(s, v, v, r, i);
//      ^^^^^^^^^^^ support.function.builtin
        llRotLookAt(r, f, f);
//      ^^^^^^^^^^^ support.function.builtin
        llRotTargetRemove(i);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llRotateTexture(f, i);
//      ^^^^^^^^^^^^^^^ support.function.builtin
        llSay(i, s);
//      ^^^^^ support.function.builtin
        llScaleTexture(f, f, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llScriptProfiler(i);
//      ^^^^^^^^^^^^^^^^ support.function.builtin
        llSensor(s, k, i, f, f);
//      ^^^^^^^^ support.function.builtin
        llSensorRemove();
//      ^^^^^^^^^^^^^^ support.function.builtin
        llSensorRepeat(s, k, i, f, f, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
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
        llSetPrimitiveParams(l);
//      ^^^^^^^^^^^^^^^^^^^^ support.function.builtin
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
        llSitTarget(v, r);
//      ^^^^^^^^^^^ support.function.builtin
        llSleep(f);
//      ^^^^^^^ support.function.builtin
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
        llTakeControls(i, i, i);
//      ^^^^^^^^^^^^^^ support.function.builtin
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
        llTriggerSound(s, f);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llTriggerSoundLimited(s, f, v, v);
//      ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin
        llUnSit(k);
//      ^^^^^^^ support.function.builtin
        llUpdateCharacter(l);
//      ^^^^^^^^^^^^^^^^^ support.function.builtin
        llVolumeDetect(i);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llWanderWithin(v, v, l);
//      ^^^^^^^^^^^^^^ support.function.builtin
        llWhisper(i, s);
//      ^^^^^^^^^ support.function.builtin
    }
}
