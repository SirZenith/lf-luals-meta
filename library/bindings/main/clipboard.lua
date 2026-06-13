---@meta

---@class lf.Clipboard
local Clipboard = {}

---@return string[]
function Clipboard:paths() end

---@return integer
function Clipboard:mode() end

---@return fun(list: userdata, index: integer)
---@return userdata list
---@return integer init_index
function Clipboard:iter_path() end

---@return boolean
function Clipboard:contains_path(path) end
