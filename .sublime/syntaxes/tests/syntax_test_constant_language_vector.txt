// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_vectors = [
            TOUCH_INVALID_TEXCOORD,
//          ^^^^^^^^^^^^^^^^^^^^^^ constant.language.vector
            TOUCH_INVALID_VECTOR,
//          ^^^^^^^^^^^^^^^^^^^^ constant.language.vector
            ZERO_VECTOR
//          ^^^^^^^^^^^ constant.language.vector
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_vectors));
    }
}
