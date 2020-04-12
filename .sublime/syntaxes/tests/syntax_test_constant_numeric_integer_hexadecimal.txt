// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

integer int_a = 0x1;
//              ^^^ constant.numeric.integer.hexadecimal
integer int_b = -0x1;
//              ^^^^ constant.numeric.integer.hexadecimal

reassign()
{
    int_a = 0x1;
//          ^^^ constant.numeric.integer.hexadecimal
    int_b = -0x1;
//          ^^^^ constant.numeric.integer.hexadecimal
}

default
{
    touch_start(integer num_detected)
    {
        reassign();
    }

    touch_end(integer num_detected)
    {
        int_a = 0x1;
//              ^^^ constant.numeric.integer.hexadecimal
        int_b = -0x1;
//              ^^^^ constant.numeric.integer.hexadecimal

        if (TRUE)
        {
            int_a = 0x1;
//                  ^^^ constant.numeric.integer.hexadecimal
            int_b = -0x1;
//                  ^^^^ constant.numeric.integer.hexadecimal
        }
    }
}
