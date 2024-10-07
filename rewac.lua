local ___r = string.reverse(arg[0])
local ___f = {___r:find(".+[/\\]")}
Path = (___f[2] and ___r:sub(___f[2]):reverse()) or ""

file = arg[1]


if type(file) == "string" and #file > 0 then
    local f = io.open(file, "r")
    if f then
        text = f:read("a")
        f:close()  f = nil

        dofile(Path.."src/main.lua")
    else
        print("rewa: no file \""..file..'"')
    end
else
    print("rewa: no file prov.")
end