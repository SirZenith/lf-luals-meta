---@meta

---@class lf.Clipboard : userdata
local Clipboard = {}

-- paths returns path of selected files as a list.
---@return string[]
function Clipboard:paths() end

-- paths_len returns length of selected file list.
---@return integer
function Clipboard:paths_len() end

-- paths_get_index gets path with given index from selected path list.
---@param index integer # 1-based index
---@return string
function Clipboard:paths_get_index(index) end

-- mode returns clipboard mode (copy or cut).
---@return integer
function Clipboard:mode() end

-- iter_paths returns iterator function over paths in clipboard.
-- This method can be used in `for` loop.
-- ```lua
-- for index, file in dir:iter_paths() do
--     -- ...
-- end
-- ```
---@return fun(list: userdata, index: integer): integer, string
---@return userdata list
---@return integer init_index
function Clipboard:iter_paths() end

-- contains_path checks if clipboard contains given path.
---@param path string
---@return boolean
function Clipboard:contains_path(path) end
