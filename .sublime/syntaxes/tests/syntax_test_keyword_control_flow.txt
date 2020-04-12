// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

run_test()
{
    integer a = 5;

    jump over;
//  ^^^^ keyword.control.flow
//       ^^^^ meta.target.label

    @in;
//  ^ keyword.control.flow
//   ^^ entity.name.target

    a = 6;
    @over;
    llSay(PUBLIC_CHANNEL, "Test: " + (string)a);
    if(a < 6)
    {
        jump in;
    }
}

default
{
    state_entry()
    {
        integer a = 5;

        jump over;
//      ^^^^ keyword.control.flow
//           ^^^^ meta.target.label

        @in;
//      ^ keyword.control.flow
//       ^^ entity.name.target

        a = 6;
        @over;
        llSay(PUBLIC_CHANNEL, "Test: " + (string)a);
        if(a < 6)
        {
            jump in;
        }
    }

    touch_end(integer num_detected)
    {
        run_test();
    }
}
