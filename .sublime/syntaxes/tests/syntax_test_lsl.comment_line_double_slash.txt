// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"

// FIXME: comment
// <- punctuation.definition.comment.line.double-slash
 // <- punctuation.definition.comment.line.double-slash
//^^^^^^^^^^^^^^^ comment.line.double-slash
// ^^^^^ markup.other
//      ^ punctuation.definition.comment.line.todo
//       ^^^^^^^^ comment.line.todo

// bla bla bla bla bla bla
// <- punctuation.definition.comment.line.double-slash
 // <- punctuation.definition.comment.line.double-slash
//^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash

// /* … */
// <- punctuation.definition.comment.line.double-slash
 // <- punctuation.definition.comment.line.double-slash
//^^^^^^^^ comment.line.double-slash
// ^^^^^^^ -comment.block
// ^^ - punctuation.definition.comment.block.begin
//   ^^^ -comment.block
//      ^^ - punctuation.definition.comment.block.end

default
{
    touch_end(integer num_detected)
    {
        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, "Touched.");
    }
}
