---@meta

---@class lf.FileInfo
local FileInfo = {}

---@param path string
---@return lf.File
function FileInfo.new(path) end

---@return string
function FileInfo:name() end

---@return integer
function FileInfo:size() end

---@return integer
function FileInfo:mode() end

---@return boolean
function FileInfo:is_dir() end
