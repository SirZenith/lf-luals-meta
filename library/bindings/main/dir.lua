---@meta

---@class lf.Dir : userdata
local Dir = {}

---@param path string
---@return lf.Dir
function Dir.new(path) end

-- loading reports if this directory is under loading.
---@return boolean
function Dir:loading() end

-- load_time returns time of last triggered load.
---@return lf.time.Time
function Dir:load_time() end

-- ind is getter & setter for 0-based index of current selected entry in directory's
-- `files` list.
---@param value? integer
---@return integer
function Dir:ind(value) end

-- pos is getter & setter for 0-based row index of cursor position in directory
-- window.
---@param value? integer
---@return integer
function Dir:pos(value) end

-- path returns full path of directory.
---@return string
function Dir:path() end

-- files returns a list of displayed file.
---@return lf.File[]
function Dir:files() end

-- files_len returns length of directory's `files` list.
---@return integer
function Dir:files_len() end

-- files_get_index gets a file from directory's `files` list with given index.
---@param index integer # 1-based index
---@return lf.File
function Dir:files_get_index(index) end

-- all_files returns a list of all file in directory.
---@return lf.File[]
function Dir:all_files() end

-- all_files_len returns length of directory's `all_files` list.
---@return integer
function Dir:all_files_len() end

-- all_files_get_index gets a file from directory's `all_files` list with given index.
---@param index integer # 1-based index
---@return lf.File
function Dir:all_files_get_index(index) end

-- sortby returns directory's sorting method name.
---@return string
function Dir:sortby() end

-- dircounts returns dircounts option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:dircounts(value) end

-- dirfirst returns dirfirst option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:dirfirst(value) end

-- dironly returns dironly option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:dironly(value) end

-- hidden returns hidden option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:hidden(value) end

-- reverse returns reverse option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:reverse(value) end

-- visual_anchor is a getter & setter for anchor position of visual mode
-- selection range.
---@param value? integer
---@return integer
function Dir:visual_anchor(value) end

-- visual_wrap is getter and setter for wrapping direction of visual mode.
-- (0: none, +: bottom->top, -: top->bottom)
---@param value? integer
---@return integer
function Dir:visual_wrap(value) end

-- hiddenfiles returns a list of files hidden in last directory sort.
---@return string[]
function Dir:hiddenfiles() end

-- filter returns filter string last used by directory.
---@return string[]
function Dir:filter() end

-- sortignorecase returns sortignorecase option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:sortignorecase(value) end

-- sortignoredia returns sortignoredia option value used in last directory sort.
---@param value? boolean
---@return boolean
function Dir:sortignoredia(value) end

-- no_perm returns true if progm doesn't have permission to open this directory.
---@return boolean
function Dir:no_perm() end

-- sort runs sorting for current directory
function Dir:sort() end

-- name returns name of directory's selected file.
---@return string
function Dir:name() end

-- visual_selections returns a list of path selected in visual mode.
---@return string[]
function Dir:visual_selections() end

-- sel moves cursor to file with given name, and make user new cursor position
-- is inside UI window according to given window height.
---@param name string
---@param height string
function Dir:sel(name, height) end

-- bound_pos restrict `pos` value of directory to UI window height range,
-- and applies `scrolloff` option value.
---@param height integer
function Dir:bound_pos(height) end

-- iter_files returns iterator function over directory's `files` list.
-- This method can be used in `for` loop.
-- ```lua
-- for index, file in dir:iter_files() do
--     -- ...
-- end
-- ```
---@return fun(list: userdata, index: integer): integer, lf.File
---@return userdata list
---@return integer init_index
function Dir:iter_files() end

-- iter_all_files returns iterator function over directory's `all_filies` list.
-- This method can be used in `for` loop.
-- ```lua
-- for index, file in dir:iter_all_files() do
--     -- ...
-- end
--
---@return fun(list: userdata, index: integer): integer, lf.File
---@return userdata list
---@return integer init_index
function Dir:iter_all_files() end

-- extra_data can get & stores value to a map associated with this directory.
-- Only number, string, boolean, nil value are supported.
---@param key string
---@param value number | boolean | string | nil
---@return number | boolean | string | nil
function Dir:extra_data(key, value) end

-- extra_data_keys returns list of all keys in extra data map.
---@return string[]
function Dir:extra_data_keys() end
