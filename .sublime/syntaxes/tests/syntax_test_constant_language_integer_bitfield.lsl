// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_integers = [
            AGENT_ALWAYS_RUN,
//          ^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_ATTACHMENTS,
//          ^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_AUTOPILOT,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_AWAY,
//          ^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_BUSY,
//          ^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_CROUCHING,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_FLYING,
//          ^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_IN_AIR,
//          ^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_MOUSELOOK,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_ON_OBJECT,
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_SCRIPTED,
//          ^^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_SITTING,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_TYPING,
//          ^^^^^^^^^^^^ constant.language.integer.bit_field
            AGENT_WALKING,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_ALLOWED_DROP,
//          ^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_COLOR,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_INVENTORY,
//          ^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_LINK,
//          ^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_MEDIA,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_OWNER,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_REGION,
//          ^^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_REGION_START,
//          ^^^^^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_SCALE,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_SHAPE,
//          ^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_TELEPORT,
//          ^^^^^^^^^^^^^^^^ constant.language.integer.bit_field
            CHANGED_TEXTURE
//          ^^^^^^^^^^^^^^^ constant.language.integer.bit_field
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_integers));
    }
}
