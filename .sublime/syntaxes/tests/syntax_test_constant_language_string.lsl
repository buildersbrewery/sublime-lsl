// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

default
{
    touch_end(integer num_detected)
    {
        list lsl_strings = [
            EOF,
//          ^^^ constant.language.string
            IMG_USE_BAKED_AUX1,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_AUX2,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_AUX3,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_EYES,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_HAIR,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_HEAD,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_LEFTARM,
//          ^^^^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_LEFTLEG,
//          ^^^^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_LOWER,
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_SKIRT,
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string
            IMG_USE_BAKED_UPPER,
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string
            JSON_ARRAY,
//          ^^^^^^^^^^ constant.language.string
            JSON_DELETE,
//          ^^^^^^^^^^^ constant.language.string
            JSON_FALSE,
//          ^^^^^^^^^^ constant.language.string
            JSON_INVALID,
//          ^^^^^^^^^^^^ constant.language.string
            JSON_NULL,
//          ^^^^^^^^^ constant.language.string
            JSON_NUMBER,
//          ^^^^^^^^^^^ constant.language.string
            JSON_OBJECT,
//          ^^^^^^^^^^^ constant.language.string
            JSON_STRING,
//          ^^^^^^^^^^^ constant.language.string
            JSON_TRUE,
//          ^^^^^^^^^ constant.language.string
            NULL_KEY,
//          ^^^^^^^^ constant.language.string
            TEXTURE_BLANK,
//          ^^^^^^^^^^^^^ constant.language.string
            TEXTURE_DEFAULT,
//          ^^^^^^^^^^^^^^^ constant.language.string
            TEXTURE_MEDIA,
//          ^^^^^^^^^^^^^ constant.language.string
            TEXTURE_PLYWOOD,
//          ^^^^^^^^^^^^^^^ constant.language.string
            TEXTURE_TRANSPARENT,
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string
            URL_REQUEST_DENIED,
//          ^^^^^^^^^^^^^^^^^^ constant.language.string
            URL_REQUEST_GRANTED
//          ^^^^^^^^^^^^^^^^^^^ constant.language.string
        ];

        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, (string)llGetListLength(lsl_strings));
    }
}
