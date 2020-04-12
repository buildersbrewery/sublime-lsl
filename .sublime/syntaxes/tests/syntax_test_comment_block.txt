// SYNTAX TEST "Packages/=BB= LSL/.sublime/syntaxes/LSL.sublime-syntax"


/** // */
// <- punctuation.definition.comment.block.documentation.begin
 // <- punctuation.definition.comment.block.documentation.begin
// ^^^^ comment.block.documentation
//     ^^ punctuation.definition.comment.block.documentation.end
//  ^^ - punctuation.definition.comment.line.double-slash
//    ^^^ - comment.line.double-slash

/* // */
// <- punctuation.definition.comment.block.begin
 // <- punctuation.definition.comment.block.begin
//^^^^ comment.block
//    ^^ punctuation.definition.comment.block.end
// ^^ - punctuation.definition.comment.line.double-slash
//   ^^^ - comment.line.double-slash

/**/
// <- punctuation.definition.comment.block.begin
 // <- punctuation.definition.comment.block.begin
//^^ punctuation.definition.comment.block.end
// <- - punctuation.definition.comment.block.documentation.begin
 // <- - punctuation.definition.comment.block.documentation.begin
//^^ - punctuation.definition.comment.block.documentation.end

default
{
    touch_end(integer num_detected)
    {
        llRegionSayTo(llDetectedKey(0), PUBLIC_CHANNEL, "Touched.");
    }
}
