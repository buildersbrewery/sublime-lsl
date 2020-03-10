// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

string str;
// <- storage.type
 // <- storage.type
// ^^^ storage.type

string str_a = "";
// <- storage.type
 // <- storage.type
// ^^^ storage.type
//     ^^^^^ variable.other
//           ^ keyword.operator.assignment
//             ^^ string.quoted.double
//               ^ punctuation.terminator.statement

string str_b = "hello";
string str_c = ";hello;";
string str_d = "(hello)";
string str_e = "[hello]";
string str_f = "<1,2,3>";
string str_g = "<1,2,3,4>";
string str_h = "2600";
string str_i = "TRUE";
string str_j = "testCast()";
string str_k = "testCast(integer a, float b) { }";
string str_l = "one
two
three
                        four";
string str_m = "/*not-a-comment*/";
string str_n = "//not-a-comment";
string str_o = "/*
    not-a-comment
*/";
string str_p = "\"";
string str_q = "\\";

// TODO: add examples containing comments
// TODO: add examples containing line breaks

default
{
    state_entry()
    {
        list l = [
            str,
            str_a,
            str_b,
            str_c,
            str_d,
            str_e,
            str_f,
            str_g,
            str_h,
            str_i,
            str_j,
            str_k,
            str_l,
            str_m,
            str_n,
            str_o,
            str_p,
            str_q
        ];

        llSay(PUBLIC_CHANNEL, (string)llGetListLength(l));
    }
}
