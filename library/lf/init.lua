---@meta

local M = {}

---@param pattern string
---@param str string
function M.glob_match(pattern, str) end

---@param path string
---@return lf.Dir[]
function M.readdir(path) end

---@param name string
---@param action string | fun(...: string)
function M.create_cmd(name, action) end

---@param name string
---@param sort_func fun(list: lf.File[]): lf.File[]
function M.register_sort_method(name, sort_func) end

---@param name string
---@param fn fun(...: string)
function M.add_hook(name, fn) end

---@param fn fun()
function M.hook_pre_cd(fn) end

---@param fn fun()
function M.hook_on_cd(fn) end

---@param fn fun(...: string)
function M.hook_on_load(fn) end

---@param fn fun()
function M.hook_on_focus_gained(fn) end

---@param fn fun()
function M.hook_on_focus_lost(fn) end

---@param fn fun()
function M.hook_on_init(fn) end

---@param fn fun()
function M.hook_on_redraw(fn) end

---@param fn fun()
function M.hook_on_select(fn) end

---@param fn fun()
function M.hook_on_quit(fn) end

return M
