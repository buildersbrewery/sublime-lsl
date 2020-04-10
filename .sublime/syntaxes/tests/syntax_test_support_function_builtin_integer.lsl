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

        i = llAbs(i);
//          ^^^^^ support.function.builtin.integer
        i = llAgentInExperience(k);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llBase64ToInteger(s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llCeil(f);
//          ^^^^^^ support.function.builtin.integer
        i = llDetectedGroup(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llDetectedTouchFace(i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llDetectedType(i);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llFloor(f);
//          ^^^^^^^ support.function.builtin.integer
        i = llGetAttached();
//          ^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetDayLength();
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetDayOffset();
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetFreeMemory();
//          ^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetFreeURLs();
//          ^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetInventoryNumber(i);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetInventoryType(s);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetLinkNumberOfSides(i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetListEntryType(l, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetListLength(l);
//          ^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetMemoryLimit();
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetNumberOfPrims();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetNumberOfSides();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetObjectPrimCount(k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetParcelMaxPrims(v, i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetParcelPrimCount(v, i, i);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetRegionAgentCount();
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetRegionDayLength();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetRegionDayOffset();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetSPMaxMemory();
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetStartParameter();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetUnixTime();
//          ^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGetUsedMemory();
//          ^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llGiveMoney(k, i);
//          ^^^^^^^^^^^ support.function.builtin.integer
        i = llList2Integer(l, i);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llListFindList(l, l);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llManageEstateAccess(i, k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llModPow(i, i, i);
//          ^^^^^^^^ support.function.builtin.integer
        i = llReplaceAgentEnvironment(k, f, s);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llReturnObjectsByID(l);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llReturnObjectsByOwner(k, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llRound(f);
//          ^^^^^^^ support.function.builtin.integer
        i = llScaleByFactor(f);
//          ^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llSetAgentEnvironment(k, f, l);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llSetRegionPos(v);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llStringLength(s);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer
        i = llSubStringIndex(s, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer
    }
}
