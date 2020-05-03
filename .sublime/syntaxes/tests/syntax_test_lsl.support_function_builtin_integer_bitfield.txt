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

        i = llGetAgentInfo(k);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
        i = llGetInventoryPermMask(s, i);
//          ^^^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
        i = llGetObjectPermMask(i);
//          ^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
        i = llGetParcelFlags(v);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
        i = llGetRegionFlags();
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
        i = llGetPermissions();
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.bitfield
    }
}
