// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_integer_booleans = [
            TRUE,
//          ^^^^ constant.language.integer.boolean
            FALSE
//          ^^^^^ constant.language.integer.boolean
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_integer_booleans));
    }
}
