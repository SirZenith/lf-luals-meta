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

---@param path string
---@return integer
function DirContext:get_selection_index(path) end

---@param path string
---@return string?
function DirContext:get_tag(path) end
