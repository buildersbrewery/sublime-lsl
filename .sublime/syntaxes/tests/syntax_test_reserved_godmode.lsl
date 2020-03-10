// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;

        integer i;
        key k;
        string s;
        vector v;

        llGodLikeRezObject(k, v);
//      ^^^^^^^^^^^^^^^^^^ reserved.godmode

        llSetInventoryPermMask(s, i, i);
//      ^^^^^^^^^^^^^^^^^^^^^^ reserved.godmode

        llSetObjectPermMask(i, i);
//      ^^^^^^^^^^^^^^^^^^^ reserved.godmode

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, "test");
    }
}
