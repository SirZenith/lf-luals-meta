---@meta

---@class lf.fs.FileMode : userdata
local FileMode = {}

---@return lf.fs.FileMode
function FileMode.new() end

-- is_dir returns true if current file mode is directory.
---@return boolean
function FileMode:is_dir() end

-- is_regular returns true if current file mode is regular file.
---@return boolean
function FileMode:is_regular() end

-- perm returns unix permission bits in mode.
---@return lf.fs.FileMode
function FileMode:perm() end

-- type returns type bits in mode.
---@return lf.fs.FileMode
function FileMode:type() end

-- to_number converts FileMode userdata to number.
function FileMode:to_number() end
