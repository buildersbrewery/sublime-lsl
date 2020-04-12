// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

float float_a = 0.0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_b = -0.0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_c = 0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^ constant.numeric.integer.decimal
//               ^ punctuation.terminator

float float_d = -0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^ constant.numeric.integer.decimal
//                ^ punctuation.terminator

float float_e = 1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^ constant.numeric.integer.decimal
//               ^ punctuation.terminator

float float_f = -1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^ constant.numeric.integer.decimal
//                ^ punctuation.terminator

float float_g = 0.1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_h = -0.1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_i = .1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^ constant.numeric.float
//                ^ punctuation.terminator

float float_j = -.1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_k = 1.0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_l = -1.0;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_m = 0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_n = 0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_o = 0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_p = 1E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^ constant.numeric.float
//                 ^ punctuation.terminator

float float_q = 1E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_r = 1E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_s = 0.0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^ constant.numeric.float
//                   ^ punctuation.terminator

float float_t = 0.0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_u = 0.0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_v = -0.0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_w = -0.0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_x = -0.0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_y = .0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^ constant.numeric.float
//                  ^ punctuation.terminator

float float_z = .0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//            ^ keyword.operator.assignment
//              ^^^^^ constant.numeric.float
//                   ^ punctuation.terminator

float float_aa = .0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_ab = -.0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_ac = -.0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_ad = -.0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_ae = 1.0E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_af = 1.0E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_ag = 1.0E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^^ constant.numeric.float
//                     ^ punctuation.terminator

float float_ah = .1E1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^ constant.numeric.float
//                   ^ punctuation.terminator

float float_ai = .1E+1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_aj = .1E-1;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^^^^ constant.numeric.float
//                    ^ punctuation.terminator

float float_ak = PI;
// <- storage.type
 // <- storage.type
// ^^ storage.type
//    ^^^^^^^ variable.other
//             ^ keyword.operator.assignment
//               ^^ constant.language.float
//                 ^ punctuation.terminator

// FIXME: add examples containing comments

// FIXME: add examples containing line breaks

default
{
    state_entry()
    {
        list l = [
            float_a,
            float_b,
            float_c,
            float_d,
            float_e,
            float_f,
            float_g,
            float_h,
            float_i,
            float_j,
            float_k,
            float_l,
            float_m,
            float_n,
            float_o,
            float_p,
            float_q,
            float_r,
            float_s,
            float_t,
            float_u,
            float_v,
            float_w,
            float_x,
            float_y,
            float_z,
            float_aa,
            float_ab,
            float_ac,
            float_ad,
            float_ae,
            float_af,
            float_ag,
            float_ah,
            float_ai,
            float_aj,
            float_ak
        ];

        llSay(PUBLIC_CHANNEL, (string)llGetListLength(l));
    }
}
