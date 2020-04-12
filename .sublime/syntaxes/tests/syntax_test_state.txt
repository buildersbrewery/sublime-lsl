// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
// <- entity.name.class.state
 // <- entity.name.class.state
//^^^^^ entity.name.class.state
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "state default");
    }

    touch_end(integer num_detected)
    {
        state other;
//      ^^^^^^^^^^^ meta.target.class.state
//                 ^ punctuation.terminator.statement
    }
}

state other
// <- entity.name.class.state
 // <- entity.name.class.state
//^^^^^^^^^ entity.name.class.state
{
    state_entry()
    {
        llSay(PUBLIC_CHANNEL, "state other");
    }

    touch_end(integer num_detected)
    {
        state default;
//      ^^^^^^^^^^^^^ meta.target.class.state
//                   ^ punctuation.terminator.statement
    }
}
