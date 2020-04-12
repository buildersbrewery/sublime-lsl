// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        return;

        list lsl_invalid = [
            CHARACTER_MAX_ANGULAR_ACCEL,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            CHARACTER_MAX_ANGULAR_SPEED,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            CHARACTER_TURN_SPEED_MULTIPLIER,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            KFM_CMD_SET_MODE,
//          ^^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_ATTACHMENT_GEOMETRY_BYTES,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_ATTACHMENT_SURFACE_AREA,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_RETURN_TIME,
//          ^^^^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_REZ_TIME,
//          ^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_SAT_UPON,
//          ^^^^^^^^^^^^^^^ invalid.illegal
            OBJECT_SELECTED,
//          ^^^^^^^^^^^^^^^ invalid.illegal
            PERMISSION_EXPERIENCE,
//          ^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            PRIM_PHYSICS_MATERIAL,
//          ^^^^^^^^^^^^^^^^^^^^^ invalid.illegal
            0b01,
//          ^^^^ invalid.illegal.constant.numeric.integer.binary
            0B01,
//          ^^^^ invalid.illegal.constant.numeric.integer.binary
            -0b01,
//          ^^^^^ invalid.illegal.constant.numeric.integer.binary
            -0B01,
//          ^^^^^ invalid.illegal.constant.numeric.integer.binary
            0o01,
//          ^^^^ invalid.illegal.constant.numeric.integer.octal
            0O01,
//          ^^^^ invalid.illegal.constant.numeric.integer.octal
            -0o01,
//          ^^^^^ invalid.illegal.constant.numeric.integer.octal
            -0O01
//          ^^^^^ invalid.illegal.constant.numeric.integer.octal
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_invalid));


        integer a = 1:2;
//                   ^ invalid.illegal.keyword.operator.assignment.division
        a := 2;
//        ^^ invalid.illegal.keyword.operator.assignment.augmented.division
        string b = "\'";
//                  ^^ invalid.illegal.constant.character.escape
        integer c = 4 <<<= 1;
//                    ^^^^ invalid.illegal.keyword.operator.bitwise.shift.left
        integer d = 4 <<= 1;
//                    ^^^ invalid.illegal.keyword.operator.bitwise.shift.left
        integer e = 1 =>>> 4;
//                    ^^^^ invalid.illegal.keyword.operator.bitwise.shift.right
        integer f = 1 =>> 4;
//                    ^^^ invalid.illegal.keyword.operator.bitwise.shift.right
        integer g = 1 === 1;
//                    ^^^ invalid.illegal.keyword.operator.comparison.equal.value-and-type
        integer h = 1 !== 2;
//                    ^^^ invalid.illegal.keyword.operator.comparison.not-equal.value-and-type
    }
}
