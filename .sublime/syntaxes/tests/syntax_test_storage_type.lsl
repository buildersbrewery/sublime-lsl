// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

float ff = 0.0;
// <- storage.type
 // <- storage.type
//^^^ storage.type

integer ii = 0;
// <- storage.type
 // <- storage.type
//^^^^^ storage.type

key kk = NULL_KEY;
// <- storage.type
 // <- storage.type
//^ storage.type

list ll = [];
// <- storage.type
 // <- storage.type
//^^ storage.type

quaternion qq = ZERO_ROTATION;
// <- storage.type
 // <- storage.type
//^^^^^^^^ storage.type

rotation rr = ZERO_ROTATION;
// <- storage.type
 // <- storage.type
//^^^^^^ storage.type

string ss = "";
// <- storage.type
 // <- storage.type
//^^^^ storage.type

vector vv = ZERO_VECTOR;
// <- storage.type
 // <- storage.type
//^^^^ storage.type

run_test()
{
    float f = (float)0.0;
//  ^^^^^ storage.type
//             ^^^^^ storage.type

    integer i = (integer)0;
//  ^^^^^^^ storage.type
//               ^^^^^^^ storage.type

    key k = (key)NULL_KEY;
//  ^^^ storage.type
//           ^^^ storage.type

    list l = (list)[];
//  ^^^^ storage.type
//            ^^^^ storage.type

    quaternion q = (quaternion)ZERO_ROTATION;
//  ^^^^^^^^^^ storage.type
//                  ^^^^^^^^^^ storage.type

    rotation r = (rotation)ZERO_ROTATION;
//  ^^^^^^^^ storage.type
//                ^^^^^^^^ storage.type

    string s = (string)"";
//  ^^^^^^ storage.type
//              ^^^^^^ storage.type

    vector v = (vector)ZERO_VECTOR;
//  ^^^^^^ storage.type
//              ^^^^^^ storage.type

    ll = l = [f, ff, i, ii, k, kk, q, qq, r, rr, s, ss, v, vv];
}

default
{
    state_entry()
    {
        run_test();
    }
}
