---@meta

-- Type used to represent completion match entry.
---@class lf.CompMatch : userdata
local CompMatch = {}

---@param name string # displayed text of this entry.
---@param result string # text content applied when this entry is picked.
---@return lf.CompMatch
function CompMatch.new(name, result) end

-- name is getter & setter for name field. It's displayed text for this completion entry.
---@param value? string
---@return string
function CompMatch:name(value) end

-- result is getter & setter for result field. It's applied text used when this completion entry is picked.
---@param value? string
---@return string
function CompMatch:result(value) end
