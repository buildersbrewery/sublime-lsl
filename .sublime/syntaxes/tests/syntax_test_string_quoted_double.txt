// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

string str_a = "";
//             ^^ string.quoted.double
string str_b = "hello";
//             ^^^^^^^ string.quoted.double
string str_c = ";hello;";
//             ^^^^^^^^^ string.quoted.double
string str_d = "(hello)";
//             ^^^^^^^^^ string.quoted.double
string str_e = "[hello]";
//             ^^^^^^^^^ string.quoted.double
string str_f = "<1,2,3>";
//             ^^^^^^^^^ string.quoted.double
string str_g = "<1,2,3,4>";
//             ^^^^^^^^^^^ string.quoted.double
string str_h = "2600";
//             ^^^^^^ string.quoted.double
string str_i = "TRUE";
//             ^^^^^^ string.quoted.double
string str_j = "testCast()";
//             ^^^^^^^^^^^^ string.quoted.double
string str_k = "testCast(integer a, float b) { }";
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
string str_l = " one
two
three
                        four";
// <- string.quoted.double
 // <- string.quoted.double
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
string str_m = "/*not-a-comment*/";
//             ^^^^^^^^^^^^^^^^^^^ string.quoted.double
string str_n = "//not-a-comment";
//             ^^^^^^^^^^^^^^^^^ string.quoted.double
string str_o = "/*
    not-a-comment
*/";
// <- string.quoted.double
 // <- string.quoted.double
string str_p = "\"";
//             ^^^^ string.quoted.double
string str_q = "\\";
//             ^^^^ string.quoted.double

default
{
    touch_end(integer num_detected)
    {
        str_a = "";
//              ^^ string.quoted.double
        str_b = "hello";
//              ^^^^^^ string.quoted.double
        str_c = ";hello;";
//              ^^^^^^^^^ string.quoted.double
        str_d = "(hello)";
//              ^^^^^^^^^ string.quoted.double
        str_e = "[hello]";
//              ^^^^^^^^^ string.quoted.double
        str_f = "<1,2,3>";
//              ^^^^^^^^^ string.quoted.double
        str_g = "<1,2,3,4>";
//              ^^^^^^^^^^^ string.quoted.double
        str_h = "2600";
//              ^^^^^^ string.quoted.double
        str_i = "TRUE";
//              ^^^^^^ string.quoted.double
        str_j = "testCast()";
//              ^^^^^^^^^^^^ string.quoted.double
        str_k = "testCast(integer a, float b) { }";
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
        str_l = "one
two
three
                        four";
// <- string.quoted.double
 // <- string.quoted.double
//^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
        str_m = "/*not-a-comment*/";
//              ^^^^^^^^^^^^^^^^^^^ string.quoted.double
        str_n = "//not-a-comment";
//              ^^^^^^^^^^^^^^^^^ string.quoted.double
        str_o = "/*
    not-a-comment
*/";
// <- string.quoted.double
 // <- string.quoted.double
        str_p = "\"";
//              ^^^^ string.quoted.double
        str_q = "\\";
//              ^^^^ string.quoted.double

        llSay(PUBLIC_CHANNEL, "Hello, Avatar! // no comment test");
//      ^^^^^ support.function.builtin
//            ^^^^^^^^^^^^^^ constant.language.integer
//                            ^ punctuation.definition.string.begin
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                            ^^ - punctuation.definition.comment.line.double-slash
//                                              ^^^^^^^^^^^^^^^^^^^ - comment.line.double-slash
//                                                              ^ punctuation.definition.string.end

        llSay(PUBLIC_CHANNEL, "Hello, Avatar! /* no comment test */");
//      ^^^^^ support.function.builtin
//            ^^^^^^^^^^^^^^ constant.language.integer
//                            ^ punctuation.definition.string.begin
//                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                                            ^^ - punctuation.definition.comment.block.begin
//                                              ^^^^^^^^^^^^^^^^^ - comment.block
//                                                               ^^ - punctuation.definition.comment.block.end
//                                                                 ^ punctuation.definition.string.end
    }
}
