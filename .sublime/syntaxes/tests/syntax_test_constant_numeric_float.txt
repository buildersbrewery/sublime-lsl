// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

float float_a = 0.0;
//              ^^^ constant.numeric.float
float float_b = -0.0;
//              ^^^^ constant.numeric.float
float float_c = 0;
//              ^ constant.numeric.integer.decimal
float float_d = -0;
//              ^^ constant.numeric.integer.decimal
float float_e = 1;
//              ^ constant.numeric.integer.decimal
float float_f = -1;
//              ^^ constant.numeric.integer.decimal
float float_g = 0.1;
//              ^^^ constant.numeric.float
float float_h = -0.1;
//              ^^^^ constant.numeric.float
float float_i = .1;
//              ^^ constant.numeric.float
float float_j = -.1;
//              ^^^ constant.numeric.float
float float_k = 1.0;
//              ^^^ constant.numeric.float
float float_l = -1.0;
//              ^^^^ constant.numeric.float
float float_m = 0E1;
//              ^^^ constant.numeric.float
float float_n = 0E+1;
//              ^^^^ constant.numeric.float
float float_o = 0E-1;
//              ^^^^ constant.numeric.float
float float_p = 1E1;
//              ^^^ constant.numeric.float
float float_q = 1E+1;
//              ^^^^ constant.numeric.float
float float_r = 1E-1;
//              ^^^^ constant.numeric.float
float float_s = 0.0E1;
//              ^^^^^ constant.numeric.float
float float_t = 0.0E+1;
//              ^^^^^^ constant.numeric.float
float float_u = 0.0E-1;
//              ^^^^^^ constant.numeric.float
float float_v = -0.0E1;
//              ^^^^^^ constant.numeric.float
float float_w = -0.0E+1;
//              ^^^^^^^ constant.numeric.float
float float_x = -0.0E-1;
//              ^^^^^^^ constant.numeric.float
float float_y = .0E1;
//              ^^^^ constant.numeric.float
float float_z = .0E+1;
//              ^^^^^ constant.numeric.float
float float_aa = .0E-1;
//               ^^^^^ constant.numeric.float
float float_ab = -.0E1;
//               ^^^^^ constant.numeric.float
float float_ac = -.0E+1;
//               ^^^^^^ constant.numeric.float
float float_ad = -.0E-1;
//               ^^^^^^ constant.numeric.float
float float_ae = 1.0E1;
//               ^^^^^ constant.numeric.float
float float_af = 1.0E+1;
//               ^^^^^^ constant.numeric.float
float float_ag = 1.0E-1;
//               ^^^^^^ constant.numeric.float
float float_ah = .1E1;
//               ^^^^ constant.numeric.float
float float_ai = .1E+1;
//               ^^^^^ constant.numeric.float
float float_aj = .1E-1;
//               ^^^^^ constant.numeric.float

reassign()
{
    float_a = 0.0;
//            ^^^ constant.numeric.float
    float_b = -0.0;
//            ^^^^ constant.numeric.float
    float_c = 0;
//            ^ constant.numeric.integer.decimal
    float_d = -0;
//            ^^ constant.numeric.integer.decimal
    float_e = 1;
//            ^ constant.numeric.integer.decimal
    float_f = -1;
//            ^^ constant.numeric.integer.decimal
    float_g = 0.1;
//            ^^^ constant.numeric.float
    float_h = -0.1;
//            ^^^^ constant.numeric.float
    float_i = .1;
//            ^^ constant.numeric.float
    float_j = -.1;
//            ^^^ constant.numeric.float
    float_k = 1.0;
//            ^^^ constant.numeric.float
    float_l = -1.0;
//            ^^^^ constant.numeric.float
    float_m = 0E1;
//            ^^^ constant.numeric.float
    float_n = 0E+1;
//            ^^^^ constant.numeric.float
    float_o = 0E-1;
//            ^^^^ constant.numeric.float
    float_p = 1E1;
//            ^^^ constant.numeric.float
    float_q = 1E+1;
//            ^^^^ constant.numeric.float
    float_r = 1E-1;
//            ^^^^ constant.numeric.float
    float_s = 0.0E1;
//            ^^^^^ constant.numeric.float
    float_t = 0.0E+1;
//            ^^^^^^ constant.numeric.float
    float_u = 0.0E-1;
//            ^^^^^^ constant.numeric.float
    float_v = -0.0E1;
//            ^^^^^^ constant.numeric.float
    float_w = -0.0E+1;
//            ^^^^^^^ constant.numeric.float
    float_x = -0.0E-1;
//            ^^^^^^^ constant.numeric.float
    float_y = .0E1;
//            ^^^^ constant.numeric.float
    float_z = .0E+1;
//            ^^^^^ constant.numeric.float
    float_aa = .0E-1;
//             ^^^^^ constant.numeric.float
    float_ab = -.0E1;
//             ^^^^^ constant.numeric.float
    float_ac = -.0E+1;
//             ^^^^^^ constant.numeric.float
    float_ad = -.0E-1;
//             ^^^^^^ constant.numeric.float
    float_ae = 1.0E1;
//             ^^^^^ constant.numeric.float
    float_af = 1.0E+1;
//             ^^^^^^ constant.numeric.float
    float_ag = 1.0E-1;
//             ^^^^^^ constant.numeric.float
    float_ah = .1E1;
//             ^^^^ constant.numeric.float
    float_ai = .1E+1;
//             ^^^^^ constant.numeric.float
    float_aj = .1E-1;
//             ^^^^^ constant.numeric.float
}

default
{
    touch_start(integer num_detected)
    {
        reassign();
    }

    touch_end(integer num_detected)
    {
        float_a = 0.0;
//                ^^^ constant.numeric.float
        float_b = -0.0;
//                ^^^^ constant.numeric.float
        float_c = 0;
//                ^ constant.numeric.integer.decimal
        float_d = -0;
//                ^^ constant.numeric.integer.decimal
        float_e = 1;
//                ^ constant.numeric.integer.decimal
        float_f = -1;
//                ^^ constant.numeric.integer.decimal
        float_g = 0.1;
//                ^^^ constant.numeric.float
        float_h = -0.1;
//                ^^^^ constant.numeric.float
        float_i = .1;
//                ^^ constant.numeric.float
        float_j = -.1;
//                ^^^ constant.numeric.float
        float_k = 1.0;
//                ^^^ constant.numeric.float
        float_l = -1.0;
//                ^^^^ constant.numeric.float
        float_m = 0E1;
//                ^^^ constant.numeric.float
        float_n = 0E+1;
//                ^^^^ constant.numeric.float
        float_o = 0E-1;
//                ^^^^ constant.numeric.float
        float_p = 1E1;
//                ^^^ constant.numeric.float
        float_q = 1E+1;
//                ^^^^ constant.numeric.float
        float_r = 1E-1;
//                ^^^^ constant.numeric.float
        float_s = 0.0E1;
//                ^^^^^ constant.numeric.float
        float_t = 0.0E+1;
//                ^^^^^^ constant.numeric.float
        float_u = 0.0E-1;
//                ^^^^^^ constant.numeric.float
        float_v = -0.0E1;
//                ^^^^^^ constant.numeric.float
        float_w = -0.0E+1;
//                ^^^^^^^ constant.numeric.float
        float_x = -0.0E-1;
//                ^^^^^^^ constant.numeric.float
        float_y = .0E1;
//                ^^^^ constant.numeric.float
        float_z = .0E+1;
//                ^^^^^ constant.numeric.float
        float_aa = .0E-1;
//                 ^^^^^ constant.numeric.float
        float_ab = -.0E1;
//                 ^^^^^ constant.numeric.float
        float_ac = -.0E+1;
//                 ^^^^^^ constant.numeric.float
        float_ad = -.0E-1;
//                 ^^^^^^ constant.numeric.float
        float_ae = 1.0E1;
//                 ^^^^^ constant.numeric.float
        float_af = 1.0E+1;
//                 ^^^^^^ constant.numeric.float
        float_ag = 1.0E-1;
//                 ^^^^^^ constant.numeric.float
        float_ah = .1E1;
//                 ^^^^ constant.numeric.float
        float_ai = .1E+1;
//                 ^^^^^ constant.numeric.float
        float_aj = .1E-1;
//                 ^^^^^ constant.numeric.float

        if (TRUE)
        {
            float_a = 0.0;
//                    ^^^ constant.numeric.float
            float_b = -0.0;
//                    ^^^^ constant.numeric.float
            float_c = 0;
//                    ^ constant.numeric.integer.decimal
            float_d = -0;
//                    ^^ constant.numeric.integer.decimal
            float_e = 1;
//                    ^ constant.numeric.integer.decimal
            float_f = -1;
//                    ^^ constant.numeric.integer.decimal
            float_g = 0.1;
//                    ^^^ constant.numeric.float
            float_h = -0.1;
//                    ^^^^ constant.numeric.float
            float_i = .1;
//                    ^^ constant.numeric.float
            float_j = -.1;
//                    ^^^ constant.numeric.float
            float_k = 1.0;
//                    ^^^ constant.numeric.float
            float_l = -1.0;
//                    ^^^^ constant.numeric.float
            float_m = 0E1;
//                    ^^^ constant.numeric.float
            float_n = 0E+1;
//                    ^^^^ constant.numeric.float
            float_o = 0E-1;
//                    ^^^^ constant.numeric.float
            float_p = 1E1;
//                    ^^^ constant.numeric.float
            float_q = 1E+1;
//                    ^^^^ constant.numeric.float
            float_r = 1E-1;
//                    ^^^^ constant.numeric.float
            float_s = 0.0E1;
//                    ^^^^^ constant.numeric.float
            float_t = 0.0E+1;
//                    ^^^^^^ constant.numeric.float
            float_u = 0.0E-1;
//                    ^^^^^^ constant.numeric.float
            float_v = -0.0E1;
//                    ^^^^^^ constant.numeric.float
            float_w = -0.0E+1;
//                    ^^^^^^^ constant.numeric.float
            float_x = -0.0E-1;
//                    ^^^^^^^ constant.numeric.float
            float_y = .0E1;
//                    ^^^^ constant.numeric.float
            float_z = .0E+1;
//                    ^^^^^ constant.numeric.float
            float_aa = .0E-1;
//                     ^^^^^ constant.numeric.float
            float_ab = -.0E1;
//                     ^^^^^ constant.numeric.float
            float_ac = -.0E+1;
//                     ^^^^^^ constant.numeric.float
            float_ad = -.0E-1;
//                     ^^^^^^ constant.numeric.float
            float_ae = 1.0E1;
//                     ^^^^^ constant.numeric.float
            float_af = 1.0E+1;
//                     ^^^^^^ constant.numeric.float
            float_ag = 1.0E-1;
//                     ^^^^^^ constant.numeric.float
            float_ah = .1E1;
//                     ^^^^ constant.numeric.float
            float_ai = .1E+1;
//                     ^^^^^ constant.numeric.float
            float_aj = .1E-1;
//                     ^^^^^ constant.numeric.float
        }
    }
}
