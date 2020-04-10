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

        i = llListen(i, s, k, s);
//          ^^^^^^^^ support.function.builtin.integer.handle
        i = llRotTarget(r, f);
//          ^^^^^^^^^^^ support.function.builtin.integer.handle
        i = llTarget(v, f);
//          ^^^^^^^^ support.function.builtin.integer.handle
    }
}
