// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;

        list invalid_deprecated = [
            ATTACH_LPEC,
//          ^^^^^^^^^^^ invalid.deprecated
            ATTACH_RPEC,
//          ^^^^^^^^^^^ invalid.deprecated
            DATA_RATING,
//          ^^^^^^^^^^^ invalid.deprecated
            LAND_LARGE_BRUSH,
//          ^^^^^^^^^^^^^^^^ invalid.deprecated
            LAND_MEDIUM_BRUSH,
//          ^^^^^^^^^^^^^^^^^ invalid.deprecated
            LAND_SMALL_BRUSH,
//          ^^^^^^^^^^^^^^^^ invalid.deprecated
            PRIM_MATERIAL_LIGHT,
//          ^^^^^^^^^^^^^^^^^^^ invalid.deprecated
            PRIM_TYPE_LEGACY,
//          ^^^^^^^^^^^^^^^^ invalid.deprecated
            PSYS_SRC_INNERANGLE,
//          ^^^^^^^^^^^^^^^^^^^ invalid.deprecated
            PSYS_SRC_OUTERANGLE,
//          ^^^^^^^^^^^^^^^^^^^ invalid.deprecated
            VEHICLE_FLAG_NO_FLY_UP
//          ^^^^^^^^^^^^^^^^^^^^^^ invalid.deprecated
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(invalid_deprecated));

        float f;
        integer i;
        string s;
        vector v;

        llMakeExplosion(i, f, f, f, f, s, v);
//      ^^^^^^^^^^^^^^^ invalid.deprecated
        llMakeFire(i, f, f, f, f, s, v);
//      ^^^^^^^^^^ invalid.deprecated
        llMakeFountain(i, f, f, f, f, i, s, v, f);
//      ^^^^^^^^^^^^^^ invalid.deprecated
        llMakeSmoke(i, f, f, f, f, s, v);
//      ^^^^^^^^^^^ invalid.deprecated
        llRemoteDataSetRegion();
//      ^^^^^^^^^^^^^^^^^^^^^ invalid.deprecated
        llSound(s, f, i, i);
//      ^^^^^^^ invalid.deprecated
        llSoundPreload(s);
//      ^^^^^^^^^^^^^^ invalid.deprecated
        s = llXorBase64Strings(s, s);
//          ^^^^^^^^^^^^^^^^^^ invalid.deprecated
        s = llXorBase64StringsCorrect(s, s);
//          ^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.deprecated
    }
}
