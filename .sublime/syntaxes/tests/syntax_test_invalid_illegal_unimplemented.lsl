// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;

        list invalid_illegal_unimplemented = [
            PERMISSION_CHANGE_JOINTS,
//          ^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            PERMISSION_CHANGE_PERMISSIONS,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            PERMISSION_RELEASE_OWNERSHIP,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            PERMISSION_REMAP_CONTROLS,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            PRIM_CAST_SHADOWS,
//          ^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            PSYS_SRC_OBJ_REL_MASK,
//          ^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            SKY_ABSORPTION_CONFIG,
//          ^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            SKY_DENSITY_PROFILE_COUNTS,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            SKY_MIE_CONFIG,
//          ^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            SKY_RAYLEIGH_CONFIG,
//          ^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            STATUS_CAST_SHADOWS,
//          ^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
            event
//          ^^^^^ invalid.illegal.unimplemented
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(invalid_illegal_unimplemented));

        float f;
        integer i;
        key k;
        list l;
        string s;
        vector v;

        llClearExperiencePermissions(k);
//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
        f = llCloud(v);
//          ^^^^^^^ invalid.illegal.unimplemented
        llCollisionSprite(s);
//      ^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
        l = llGetExperienceList(k);
//          ^^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
        llPointAt(v);
//      ^^^^^^^^^ invalid.illegal.unimplemented
        llStopPointAt();
//      ^^^^^^^^^^^^^ invalid.illegal.unimplemented
        llRefreshPrimURL();
//      ^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
        llSetPrimURL(s);
//      ^^^^^^^^^^^^ invalid.illegal.unimplemented
        llReleaseCamera(k);
//      ^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
        llTakeCamera(k);
//      ^^^^^^^^^^^^ invalid.illegal.unimplemented
        llRemoteLoadScript(k, s, i, i);
//      ^^^^^^^^^^^^^^^^^^ invalid.illegal.unimplemented
    }
}
