// COLOR SCHEME TEST "=BB= LSL/.sublime/color-schemes/LSL.hidden-color-scheme" "LSL"

// comment
// <- fg=#cd4d26
 // <- fg=#cd4d26
//^^^^^^^^ fg=#cd4d26

// TODO: do it now
// <- fg=#cd4d26
 // <- fg=#cd4d26
// ^^^^^ fg=#cd4d26
//      ^^^^^^^^^^ fg=#f2f0ec bg=#cd4d26

default
// <- fg=#801a4d
 // <- fg=#801a4d
//^^^^^ fg=#801a4d
{
    state_entry()
//  ^^^^^^^^^^^ fg=#004d80
    {
        llSay(PUBLIC_CHANNEL, "A string with an\nescape character.");
//      ^^^^^ fg=#820124
//            ^^^^^^^^^^^^^^ fg=#242687
//                            ^^^^^^^^^^^^^^^^^ fg=#006600
//                                             ^^ fg=#cd4d26
//                                               ^^^^^^^^^^^^^^^^^^ fg=#006600

        return;
//      ^^^^^^ fg=#0000cd

        float f = PI;
        integer i = FALSE;
        key k = NULL_KEY;
        rotation r = ZERO_ROTATION;
        string s = EOF;
        vector v = ZERO_VECTOR;

        llSay(PUBLIC_CHANNEL, llList2CSV([f, i, k, r, s, v]));
    }
}
