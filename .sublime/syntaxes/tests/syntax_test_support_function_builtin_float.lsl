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

        f = llAcos(f);
//          ^^^^^^ support.function.builtin.float
        f = llAngleBetween(r, r);
//          ^^^^^^^^^^^^^^ support.function.builtin.float
        f = llAsin(f);
//          ^^^^^^ support.function.builtin.float
        f = llAtan2(f, f);
//          ^^^^^^^ support.function.builtin.float
        f = llCos(f);
//          ^^^^^ support.function.builtin.float
        f = llFabs(f);
//          ^^^^^^ support.function.builtin.float
        f = llFrand(f);
//          ^^^^^^^ support.function.builtin.float
        f = llGetAlpha(i);
//          ^^^^^^^^^^ support.function.builtin.float
        f = llGetAndResetTime();
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetEnergy();
//          ^^^^^^^^^^^ support.function.builtin.float
        f = llGetGMTclock();
//          ^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetMass();
//          ^^^^^^^^^ support.function.builtin.float
        f = llGetMassMKS();
//          ^^^^^^^^^^^^ support.function.builtin.float
        f = llGetMaxScaleFactor();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetMinScaleFactor();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetObjectMass(k);
//          ^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetRegionFPS();
//          ^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetRegionTimeDilation();
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetRegionTimeOfDay();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetSimStats(i);
//          ^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetTextureRot(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetTime();
//          ^^^^^^^^^ support.function.builtin.float
        f = llGetTimeOfDay();
//          ^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGetWallclock();
//          ^^^^^^^^^^^^^^ support.function.builtin.float
        f = llGround(v);
//          ^^^^^^^^ support.function.builtin.float
        f = llList2Float(l, i);
//          ^^^^^^^^^^^^ support.function.builtin.float
        f = llListStatistics(i, l);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.float
        f = llLog(f);
//          ^^^^^ support.function.builtin.float
        f = llLog10(f);
//          ^^^^^^^ support.function.builtin.float
        f = llPow(f, f);
//          ^^^^^ support.function.builtin.float
        f = llRot2Angle(r);
//          ^^^^^^^^^^^ support.function.builtin.float
        f = llSin(f);
//          ^^^^^ support.function.builtin.float
        f = llSqrt(f);
//          ^^^^^^ support.function.builtin.float
        f = llTan(f);
//          ^^^^^ support.function.builtin.float
        f = llVecDist(v, v);
//          ^^^^^^^^^ support.function.builtin.float
        f = llVecMag(v);
//          ^^^^^^^^ support.function.builtin.float
        f = llWater(v);
//          ^^^^^^^ support.function.builtin.float
    }
}
