---@meta

---@class lf.Dir : userdata
local Dir = {}

---@param path string
---@return lf.Dir
function Dir.new(path) end

---@return boolean
function Dir:loading() end

---@return lf.time.Time
function Dir:load_time() end

---@return integer
function Dir:ind() end

---@return integer
function Dir:pos() end

---@return string
function Dir:path() end

---@return string[]
function Dir:files() end

---@return string[]
function Dir:all_files() end

---@param method? string
---@return string
function Dir:sortby(method) end

---@return boolean
function Dir:dircounts() end

---@return boolean
function Dir:dirfirst() end

---@return boolean
function Dir:dironly() end

---@return boolean
function Dir:hidden() end

---@return boolean
function Dir:reverse() end

---@return integer
function Dir:visual_anchor() end

---@return integer
function Dir:visual_wrap() end

---@return string[]
function Dir:hiddenfiles() end

---@return string[]
function Dir:filter() end

---@return boolean
function Dir:sortignorecase() end

---@return boolean
function Dir:sortignoredia() end

---@return boolean
function Dir:no_perm() end

function Dir:sort() end

---@return string
function Dir:name() end

---@return string[]
function Dir:visual_selections() end

---@param name string
---@param height string
function Dir:sel(name, height) end

---@param fn fun(i: integer, file: lf.File)
function Dir:files_for_each(fn) end

---@param fn fun(i: integer, file: lf.File)
function Dir:all_files_for_each(fn) end
