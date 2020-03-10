// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_integers = [
            STATUS_BLOCK_GRAB,
//          ^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_BLOCK_GRAB_OBJECT,
//          ^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_DIE_AT_EDGE,
//          ^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_PHANTOM,
//          ^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_PHYSICS,
//          ^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_RETURN_AT_EDGE,
//          ^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_ROTATE_X,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_ROTATE_Y,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_ROTATE_Z,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            STATUS_SANDBOX,
//          ^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_CAMERA_DECOUPLED,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_HOVER_GLOBAL_HEIGHT,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_HOVER_TERRAIN_ONLY,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_HOVER_UP_ONLY,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_HOVER_WATER_ONLY,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_LIMIT_MOTOR_UP,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_LIMIT_ROLL_ONLY,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_MOUSELOOK_BANK,
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
            VEHICLE_FLAG_MOUSELOOK_STEER
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field.bit_mask
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_integers));
    }
}
