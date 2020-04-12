// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_floats = [
            DEG_TO_RAD,
//          ^^^^^^^^^^ constant.language.float
            PI,
//          ^^ constant.language.float
            PI_BY_TWO,
//          ^^^^^^^^^ constant.language.float
            RAD_TO_DEG,
//          ^^^^^^^^^^ constant.language.float
            SQRT2,
//          ^^^^^ constant.language.float
            TWO_PI
//          ^^^^^^ constant.language.float
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_floats));
    }
}
