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

        i = llEdgeOfWorld(v, v);
//          ^^^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llGetScriptState(s);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llGetStatus(i);
//          ^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llOverMyLand(k);
//          ^^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llSameGroup(k);
//          ^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llSetMemoryLimit(i);
//          ^^^^^^^^^^^^^^^^ support.function.builtin.integer.boolean
        i = llScriptDanger(v);
//          ^^^^^^^^^^^^^^ support.function.builtin.integer.boolean
    }
}
