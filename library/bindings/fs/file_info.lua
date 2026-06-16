---@meta

---@class lf.fs.FileInfo : userdata
local FileInfo = {}

-- name returns base name of file.
---@return string
function FileInfo:name() end

-- size returns length in bytes for regular files
---@return integer
function FileInfo:size() end

-- mode returns mode bits userdata of this file.
---@return integer
function FileInfo:mode() end

-- mod_time returns modification time of file.
---@return lf.time.Time
function FileInfo:mod_time() end

-- is_dir returns if this file is a directory.
---@return boolean
function FileInfo:is_dir() end
