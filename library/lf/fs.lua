---@meta

local M

---@param path string
---@return string? err
function M.mkdir(path) end

---@param path string
---@return string? err
function M.mkdir_all(path) end

---@param oldname string
---@param newname string
---@param force? boolean
---@return string? err
function M.link(oldname, newname, force) end

---@param oldname string
---@param newname string
---@param force? boolean
---@return string? err
function M.symlink(oldname, newname, force) end

---@param src string
---@param dst string
---@return string? err
function M.copy(src, dst) end

---@param ... string
---@return string
function M.join(...) end

---@param path string
---@return string dirname
---@return string basename
function M.split(path) end

---@param path string
---@return string stem
---@return string ext
function M.split_ext(path) end

---@param path string
---@return string
function M.dirname(path) end

---@param path string
---@return string
function M.basename(path) end

---@param path string
---@return string
function M.ext(path) end

---@return lf.FileInfo
---@return string? err
function M.stat(path) end

---@param path string
---@return lf.File[]
function M.readdir(path) end

return M
