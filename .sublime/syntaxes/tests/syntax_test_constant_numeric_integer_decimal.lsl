// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

integer int_a = 0;
//              ^ constant.numeric.integer.decimal
integer int_b = 1;
//              ^ constant.numeric.integer.decimal
integer int_c = -1;
//              ^^ constant.numeric.integer.decimal


reassign()
{
    int_a = 0;
//          ^ constant.numeric.integer.decimal
    int_b = 1;
//          ^ constant.numeric.integer.decimal
    int_c = -1;
//          ^^ constant.numeric.integer.decimal
}

default
{
    touch_start(integer num_detected)
    {
        reassign();
    }

    touch_end(integer num_detected)
    {
        int_a = 0;
//              ^ constant.numeric.integer.decimal
        int_b = 1;
//              ^ constant.numeric.integer.decimal
        int_c = -1;
//              ^^ constant.numeric.integer.decimal

        if (TRUE)
        {
            int_a = 0;
//                  ^ constant.numeric.integer.decimal
            int_b = 1;
//                  ^ constant.numeric.integer.decimal
            int_c = -1;
//                  ^^ constant.numeric.integer.decimal
        }
    }
}
