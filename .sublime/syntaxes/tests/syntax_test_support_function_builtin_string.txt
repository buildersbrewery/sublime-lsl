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

        s = llBase64ToString(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llDeleteSubString(s, i, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llDetectedName(i);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llDumpList2String(l, s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llEscapeURL(s);
//          ^^^^^^^^^^^ support.function.builtin.string
        s = llGetAgentLanguage(k);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetAnimation(k);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetAnimationOverride(s);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetDate();
//          ^^^^^^^^^ support.function.builtin.string
        s = llGetDisplayName(k);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetEnv(s);
//          ^^^^^^^^ support.function.builtin.string
        s = llGetExperienceErrorMessage(i);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetHTTPHeader(k, s);
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetInventoryName(i, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetLinkName(i);
//          ^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetObjectDesc();
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetObjectName();
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetParcelMusicURL();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetRegionName();
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetScriptName();
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetSimulatorHostname();
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetSubString(s, i, i);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetTexture(i);
//          ^^^^^^^^^^^^ support.function.builtin.string
        s = llGetTimestamp();
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llGetUsername(k);
//          ^^^^^^^^^^^^^ support.function.builtin.string
        s = llInsertString(s, i, s);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llIntegerToBase64(i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llJsonGetValue(s, l);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llJsonSetValue(s, l, s);
//          ^^^^^^^^^^^^^^ support.function.builtin.string
        s = llJsonValueType(s, l);
//          ^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llKey2Name(k);
//          ^^^^^^^^^^ support.function.builtin.string
        s = llList2CSV(l);
//          ^^^^^^^^^^ support.function.builtin.string
        s = llList2Json(s, l);
//          ^^^^^^^^^^^ support.function.builtin.string
        s = llList2String(l, i);
//          ^^^^^^^^^^^^^ support.function.builtin.string
        s = llMD5String(s, i);
//          ^^^^^^^^^^^ support.function.builtin.string
        s = llSHA1String(s);
//          ^^^^^^^^^^^^ support.function.builtin.string
        s = llStringToBase64(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.string
        s = llStringTrim(s, i);
//          ^^^^^^^^^^^^ support.function.builtin.string
        s = llToLower(s);
//          ^^^^^^^^^ support.function.builtin.string
        s = llToUpper(s);
//          ^^^^^^^^^ support.function.builtin.string
        s = llUnescapeURL(s);
//          ^^^^^^^^^^^^^ support.function.builtin.string
        s = llXorBase64(s, s);
//          ^^^^^^^^^^^ support.function.builtin.string
    }
}
