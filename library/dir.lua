---@meta

---@class lf.Dir
local Dir = {}

---@param path string
---@return lf.Dir
function Dir.new(path) end

---@param fn fun(i: integer, file: lf.File)
function Dir:files_for_each(fn) end

---@param fn fun(i: integer, file: lf.File)
function Dir:all_files_for_each(fn) end
