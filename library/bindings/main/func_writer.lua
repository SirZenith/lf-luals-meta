---@meta

---@class lf.FuncWriter : userdata
local FuncWriter = {}

---@return lf.FuncWriter
function FuncWriter.new(fn) end

---@param content string
---@return integer n
---@return string? err
function FuncWriter:write(content) end
