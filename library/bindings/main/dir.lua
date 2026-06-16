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

---@param value? integer
---@return integer
function Dir:ind(value) end

---@param value? integer
---@return integer
function Dir:pos(value) end

---@return string
function Dir:path() end

---@return lf.File[]
function Dir:files() end

---@return integer
function Dir:files_len() end

---@param index integer
---@return lf.File
function Dir:files_get_index(index) end

---@return lf.File[]
function Dir:all_files() end

---@return integer
function Dir:all_files_len() end

---@param index integer
---@return lf.File
function Dir:all_files_get_index(index) end

---@param method? string
---@return string
function Dir:sortby(method) end

---@param value? boolean
---@return boolean
function Dir:dircounts(value) end

---@param value? boolean
---@return boolean
function Dir:dirfirst(value) end

---@param value? boolean
---@return boolean
function Dir:dironly(value) end

---@param value? boolean
---@return boolean
function Dir:hidden(value) end

---@param value? boolean
---@return boolean
function Dir:reverse(value) end

---@param value? integer
---@return integer
function Dir:visual_anchor(value) end

---@param value? integer
---@return integer
function Dir:visual_wrap(value) end

---@return string[]
function Dir:hiddenfiles() end

---@return string[]
function Dir:filter() end

---@param value? boolean
---@return boolean
function Dir:sortignorecase(value) end

---@param value? boolean
---@return boolean
function Dir:sortignoredia(value) end

---@return boolean
function Dir:no_perm() end

function Dir:sort() end

---@return string
function Dir:name() end

---@return string[]
function Dir:visual_selections() end

-- sel moves cursor to file with given name, and move new cursor position
-- into UI window according to given window height.
---@param name string
---@param height string
function Dir:sel(name, height) end

-- bound_pos restrict `pos` value of directory to UI window height range,
-- and applies `scrolloff` option value.
---@param height integer
function Dir:bound_pos(height) end

---@return fun(list: userdata, index: integer): integer, lf.File
---@return userdata list
---@return integer init_index
function Dir:iter_files() end

---@return fun(list: userdata, index: integer): integer, lf.File
---@return userdata list
---@return integer init_index
function Dir:iter_all_files() end

---@param key string
---@param value number | boolean | string | nil
---@return number | boolean | string | nil
function Dir:extra_data(key, value) end
