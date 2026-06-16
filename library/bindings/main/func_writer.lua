---@meta

---@class lf.FuncWriter : userdata
local FuncWriter = {}

-- new wraps a Lua function into a Writer object. This writer can then be used
-- for data exchanging, like receiving data from subprocess.
---@param fn fun(p: string): integer, string?
---@return lf.FuncWriter
function FuncWriter.new(fn) end

---@param content string
---@return integer n
---@return string? err
function FuncWriter:write(content) end
