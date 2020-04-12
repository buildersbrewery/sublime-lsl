// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

// Global variable declarations
integer var_a;

// Global variable assignments
/* comment */ integer var_b = /* comment */ var_a /* comment */;
integer var_c = /* comment */ var_a /* comment */;
integer var_d = var_a;

integer int_c = 0xA012;
integer int_d = -0xB12F;

// List constants
list list_a = [];
list list_b = [1, 2, 3];
list list_c =
[
    1,
    2,
    3
];
list list_d = /*comment*/ [ /*comment*/ 1 /*comment*/ , /*comment*/ "test" /*comment*/ ]; /*comment*/
list list_e = [ "]" ];
list list_f = [ "[" ];
list list_g = [ ";" ];
list list_h = [ ")" ];
list list_i = [ "(" ];

// Vector constants
vector vec_a = <0, 1, 2>;
vector vec_b = ZERO_VECTOR;
vector vec_c = <2.6E-5, -2.6E3, 85.3412>;
vector vec_d =
<
    2.6E-5,
    -2.6E3,
    85.3412
>;
vector vec_e = /*comment*/ < /*comment*/ 2.6E-5 /*comment*/ , /*comment*/ -2.6E3 /*comment*/ , /*comment*/ 85.3412 /*comment*/> /*comment*/ ;

// Rotation constants
rotation rot_a = <0, 1, 2, 3>;
rotation rot_b = ZERO_ROTATION;
rotation rot_c = <2.6E-5, -2.6E3, 85.3412, 26000.E-1>;
rotation rot_d =
<
    2.6E-5,
    -2.6E3,
    85.3412,
    26000.E-1
>;
rotation rot_e = /*comment*/ < /*comment*/ 2.6E-5 /*comment*/ , /*comment*/ -2.6E3 /*comment*/ , /*comment*/ 85.3412 /*comment*/ , /*comment*/ 26000.E-1 /*comment*/ > /*comment*/ ;

testCast()
{
    string local_a = (string)int_a;
    string /* comment */ local_b = /* comment */ ( /* comment */ string /* comment */) /* comment */ int_a /* comment */;
    string _local_c = (string)int_a;
}

// Function with arguments
func1(integer a, list b, string c, integer _underscoreParam, integer numberParam5)
{
}

integer func2(integer a, list b, string c, integer _underscoreParam, integer numberParam5)
{
    if (a < _underscoreParam && a > numberParam5) {
        return 0;
    }
}

integer func3 (
    integer a,
    list b,
    string c,
    integer _underscoreParam,
    integer numberParam5
)
{
    return 0;
}

integer func4 ( /*comment*/ integer /*comment*/ a /*comment*/ , /*comment*/ list /*comment*/ b /*comment*/) /*comment*/
{
    return 0;
}

integer func5 (
    /*comment*/ integer /*comment*/ a /*comment*/ ,
    /*comment*/ list /*comment*/ b /*comment*/
) /*comment*/
{
    return 0;
}

default
{
    state_entry()
    {
    }
}

state error
{
    state_entry()
    {
    }

    timer()
    {
    }

    changed(integer change) {
        if (change & CHANGED_INVENTORY)
        {
            llResetScript();
        }
    }
}
