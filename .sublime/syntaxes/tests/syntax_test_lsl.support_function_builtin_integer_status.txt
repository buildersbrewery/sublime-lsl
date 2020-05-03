// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;

        float f;
        integer i;
        key k;
        list l;
        rotation r;
        string s;
        vector v;

        i = llClearLinkMedia(i, i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.status
        i = llClearPrimMedia(i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.status
        i = llSetLinkMedia(i, i, l);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer.status
        i = llSetPrimMediaParams(i, l);
//          ^^^^^^^^^^^^^^^^^^^^ support.function.builtin.integer.status
        i = llSitOnLink(k, i);
//          ^^^^^^^^^^^ support.function.builtin.integer.status
    }
}
