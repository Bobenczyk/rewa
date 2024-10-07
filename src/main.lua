noerr = true

-- comments --
dofile(Path.."src/lexer/comment.lua")
if noerr then
    text = remvComments(text)
else error("comment preprocessor")
end

-- lexer --
noerr = (type(text) == "string")

dofile(Path.."src/lexer/lexer.lua")
if noerr then
    tokens = lex(text)
else error("comment preprocessor -> lexer")
end

-- parser --
noerr = (type(tokens) == "table")

dofile(Path.."src/parser/parser.lua")
if noerr then
    ast = parse(tokens)
else error("lexr -> parser")
end
