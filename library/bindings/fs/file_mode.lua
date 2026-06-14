---@meta

---@class lf.fs.FileMode : userdata
local FileMode = {}

---@return lf.fs.FileMode
function FileMode.new() end

---@return boolean
function FileMode:is_dir() end

---@return boolean
function FileMode:is_regular() end

---@return lf.fs.FileMode
function FileMode:perm() end

---@return lf.fs.FileMode
function FileMode:type() end
