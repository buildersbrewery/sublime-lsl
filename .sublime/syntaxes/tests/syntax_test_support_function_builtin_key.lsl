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

        k = llAvatarOnLinkSitTarget(i);
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llAvatarOnSitTarget();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llCreateKeyValue(s, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llDataSizeKeyValue();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llDeleteKeyValue(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llDetectedKey(i);
//          ^^^^^^^^^^^^^ support.function.builtin.key
        k = llDetectedOwner(i);
//          ^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGenerateKey();
//          ^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetCreator();
//          ^^^^^^^^^^^^ support.function.builtin.key
        k = llGetInventoryCreator(s);
//          ^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetInventoryKey(s);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetKey();
//          ^^^^^^^^ support.function.builtin.key
        k = llGetLandOwnerAt(v);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetLinkKey(i);
//          ^^^^^^^^^^^^ support.function.builtin.key
        k = llGetNotecardLine(s, i);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetNumberOfNotecardLines(s);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetOwner();
//          ^^^^^^^^^^ support.function.builtin.key
        k = llGetOwnerKey(k);
//          ^^^^^^^^^^^^^ support.function.builtin.key
        k = llGetPermissionsKey();
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llHTTPRequest(s, l, s);
//          ^^^^^^^^^^^^^ support.function.builtin.key
        k = llKeyCountKeyValue();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llKeysKeyValue(i, i);
//          ^^^^^^^^^^^^^^ support.function.builtin.key
        k = llList2Key(l, i);
//          ^^^^^^^^^^ support.function.builtin.key
        k = llName2Key(s);
//          ^^^^^^^^^^ support.function.builtin.key
        k = llReadKeyValue(s);
//          ^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestAgentData(k, i);
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestDisplayName(k);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestInventoryData(s);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestSecureURL();
//          ^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestSimulatorData(s, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestUserKey(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestURL();
//          ^^^^^^^^^^^^ support.function.builtin.key
        k = llRequestUsername(k);
//          ^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llSendRemoteData(k, s, i, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llTransferLindenDollars(k, i);
//          ^^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.key
        k = llUpdateKeyValue(s, s, i, s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.key
    }
}
