// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

// <- source.lsl

default
// <- entity.name.class.state
 // <- entity.name.class.state
//^^^^^ entity.name.class.state
{
// <- punctuation.section.class.state.begin

// <- meta.class.state.body
    state_entry()
    {
//  ^ punctuation.section.block.begin
        ;
    }
//  ^ punctuation.section.block.end

    touch_end(integer num_detected)
    {
        llSay(PUBLIC_CHANNEL, (string)num_detected);
    }
}
