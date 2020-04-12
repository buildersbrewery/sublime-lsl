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

        r = llAxes2Rot(v, v, v);
//          ^^^^^^^^^^ support.function.builtin.rotation
        r = llAxisAngle2Rot(v, f);
//          ^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llDetectedRot(i);
//          ^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llEuler2Rot(v);
//          ^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetCameraRot();
//          ^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetLocalRot();
//          ^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetMoonRotation();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetRegionMoonRotation();
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetRegionSunRotation();
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetRootRotation();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llGetRot();
//          ^^^^^^^^ support.function.builtin.rotation
        r = llGetSunRotation();
//          ^^^^^^^^^^^^^^^^ support.function.builtin.rotation
        r = llList2Rot(l, i);
//          ^^^^^^^^^^ support.function.builtin.rotation
        r = llRotBetween(v, v);
//          ^^^^^^^^^^^^ support.function.builtin.rotation
    }
}
