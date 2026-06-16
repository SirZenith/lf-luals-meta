---@meta

---@class lf.time.Timer : userdata
local Timer = {}

-- reset changes the timer to expire after duration d. It returns true if the
-- timer had been active, false if the timer had expired or been stopped.
---@param duration lf.time.Duration | integer
---@return boolean
function Timer:reset(duration) end

-- stop prevents the Timer from firing. It returns true if the call stops the
-- timer, false if the timer has already expired or been stopped.
---@return boolean
function Timer:stop() end
