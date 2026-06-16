---@meta

---@class lf.File : userdata
local File = {
    LinkStateNotLink = nil, ---@type integer
    LinkStateWorking = nil, ---@type integer
    LinkStateBroken = nil, ---@type integer
}

---@param path string
---@return lf.File
function File.new(path) end

-- name returns name of this file.
---@return string
function File:name() end

-- size returns file length in bytes if this is a regular file.
---@return integer
function File:size() end

-- mode returns FileMode bits of this file.
---@return lf.fs.FileMode
function File:mode() end

-- mod_time returns modification time of this file.
---@return lf.time.Time
function File:mod_time() end

-- is_dir returns true if this file is a directory.
---@return boolean
function File:is_dir() end

-- link_state returns link state value of this file. Possible linke state value
-- can be found in metatable of File type.
-- ```lua
-- local File = lf_types.File
-- print(File.LinkStateNotLink)
-- ```
---@return integer
function File:link_state() end

-- link_target returns path of symlink target.
---@return string
function File:link_target() end

-- path returns full path of this file.
---@return string
function File:path() end

-- dir_count returns number items of a directory.
---@return integer
function File:dir_count() end

-- dir_size return directory's total content size.
---@return integer
function File:dir_size() end

-- access_time returns last accessed time.
---@return lf.time.Time
function File:access_time() end

-- birth_time returns file creation time.
---@return lf.time.Time
function File:birth_time() end

-- change_time returns time of last status change.
---@return lf.time.Time
function File:change_time() end

-- custom_info is a getter and setter for custom info string added to this
-- file by `addcustominfo` command.
---@param str? string
---@return string
function File:custom_info(str) end

-- ext returns extension of this file (`.` included).
---@return string
function File:ext() end

-- extra_data can get & stores value to a map associated with this file.
-- Only number, string, boolean, nil value are supported.
---@param key string
---@param value number | boolean | string | nil
---@return number | boolean | string | nil
function File:extra_data(key, value) end

-- extra_data_keys returns list of all keys in extra data map.
---@return string[]
function File:extra_data_keys() end

-- is_previewable returns true if this file requires a preview call.
---@return boolean
function File:is_previewable() end
