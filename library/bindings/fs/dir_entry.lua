---@meta

---@class lf.fs.DirEntry : userdata
local DirEntry = {}

-- name returns name of this entry.
---@return string
function DirEntry:name() end

-- info returns FileInfo of this entry.
---@return lf.fs.FileInfo
---@return string? err
function DirEntry:info() end

-- is_dir returns true if this entry is directory.
---@return boolean
function DirEntry:is_dir() end

-- type returns the type bits for the entry. This is a subset of the
-- usual FileMode bits.
---@return lf.fs.FileMode
function DirEntry:type() end
