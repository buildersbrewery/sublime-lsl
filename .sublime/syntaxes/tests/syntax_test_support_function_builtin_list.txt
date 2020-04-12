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

        l = llCSV2List(s);
//          ^^^^^^^^^^ support.function.builtin.list
        l = llCastRay(v, v, l);
//          ^^^^^^^^^ support.function.builtin.list
        l = llDeleteSubList(l, i, i);
//          ^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetAgentList(i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetAnimationList(k);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetAttachedList(k);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetBoundingBox(k);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetClosestNavPoint(v, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetEnvironment(v, l);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetExperienceDetails(k);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetLinkMedia(i, i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetLinkPrimitiveParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetObjectAnimationNames();
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetObjectDetails(k, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetParcelDetails(v, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetParcelPrimOwners(v);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetPhysicsMaterial();
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetPrimMediaParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetPrimitiveParams(l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llGetStaticPath(v, v, f, l);
//          ^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llJson2List(s);
//          ^^^^^^^^^^^ support.function.builtin.list
        l = llList2List(l, i, i);
//          ^^^^^^^^^^^ support.function.builtin.list
        l = llList2ListStrided(l, i, i, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llListInsertList(l, l, i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llListRandomize(l, i);
//          ^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llListReplaceList(l, l, i, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llListSort(l, i, i);
//          ^^^^^^^^^^ support.function.builtin.list
        l = llParcelMediaQuery(l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llParseString2List(s, l, l);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.list
        l = llParseStringKeepNulls(s, l, l);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.list
    }
}
