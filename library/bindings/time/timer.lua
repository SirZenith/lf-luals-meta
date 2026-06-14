---@meta

---@class lf.time.Timer : userdata
local Timer = {}

---@param duration lf.time.Duration | integer
---@return boolean
function Timer:reset(duration) end

---@return boolean
function Timer:stop() end
