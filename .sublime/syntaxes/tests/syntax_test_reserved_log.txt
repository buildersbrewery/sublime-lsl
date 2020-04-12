// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;// don't spam!

        print(0.0);
//      ^^^^^ reserved.log
        print(0);
//      ^^^^^ reserved.log
        print(NULL_KEY);
//      ^^^^^ reserved.log
        print([]);
//      ^^^^^ reserved.log
        print(ZERO_ROTATION);
//      ^^^^^ reserved.log
        print(EOF);
//      ^^^^^ reserved.log
        print(ZERO_VECTOR);
//      ^^^^^ reserved.log

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, "test");
    }
}
