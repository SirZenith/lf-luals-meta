---@meta

---@class lf.DirContextConstructorArgs
---@field selections table<string, integer>
---@field clipboard lf.Clipboard
---@field tags table<string, string>

---@class lf.DirContext : userdata
local DirContext = {}

---@param args lf.DirContextConstructorArgs
---@return lf.DirContext
function DirContext.new(args) end

---@return string[]
function DirContext:selections() end

---@return lf.Clipboard
function DirContext:clipboard() end

---@return table<string, string>
function DirContext:tags() end

-- get_selection_index returns 1-based selection index of
-- given path, returns 0 when that path is not selected.
---@param path string
---@return integer
function DirContext:get_selection_index(path) end

-- get_tag returns tag of given path, returns `nil` when
-- no tag is set for target path.
---@param path string
---@return string?
function DirContext:get_tag(path) end
