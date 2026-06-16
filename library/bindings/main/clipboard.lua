---@meta

---@class lf.Clipboard : userdata
local Clipboard = {}

-- paths returns path of selected files as a list.
---@return string[]
function Clipboard:paths() end

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
