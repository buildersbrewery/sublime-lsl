// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

user_func(integer input_a, integer input_b)
{
    llSay(PUBLIC_CHANNEL, (string)(input_a * input_b));
}

default
{
    touch_end(integer num_detected)
    {
        return;

        user_func(num_detected, 0);
    }
}
