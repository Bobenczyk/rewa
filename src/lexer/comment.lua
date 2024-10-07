
---@param text string
---@return string
function remvComments(text)
    local i = 1
    while true do
        local as, ae = text:find("//", i, true)
        if as then
            local bs, be = text:find("\n", i+ae+1, true)
            if bs then
                text = text:sub(1, i+as -2) .. text:sub(i + be-1)
            else
                text = text:sub(1, i+as -2)
            end
        else
            goto sigma
        end
    end
    ::sigma::
    return text
end