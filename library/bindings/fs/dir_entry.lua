---@meta

---@class lf.fs.DirEntry
local DirEntry = {}

---@return string
function DirEntry:name() end

---@return lf.fs.FileInfo
---@return string? err
function DirEntry:info() end

---@return boolean
function DirEntry:is_dir() end

---@return lf.fs.FileMode
function DirEntry:type() end
