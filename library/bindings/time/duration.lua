---@meta

---@class lf.time.Duration : userdata
local Duration = {}

Duration.Nanosecond = nil ---@type lf.time.Duration
Duration.Microsecond = nil ---@type lf.time.Duration
Duration.Millisecond = nil ---@type lf.time.Duration
Duration.Second = nil ---@type lf.time.Duration
Duration.Minute = nil ---@type lf.time.Duration
Duration.Hour = nil ---@type lf.time.Duration

-- new creates new Duration userdata with number value.
---@param value number
---@return lf.time.Duration
function Duration.new(value) end

-- add adds two duration values.
---@param value integer | lf.time.Duration
---@return lf.time.Duration
function Duration:add(value) end

-- sub substract duration value from self.
---@param value integer | lf.time.Duration
---@return lf.time.Duration
function Duration:sub(value) end

-- mul multiply number with duration value.
---@param value integer
---@return lf.time.Duration
function Duration:mul(value) end

-- div divides duration by number
---@param value number
---@return integer
function Duration:div(value) end

-- eq checks if two duration equals
---@param value integer | lf.time.Duration
---@return boolean
function Duration:eq(value) end

-- lt checks if current duration is less than another.
---@param value integer | lf.time.Duration
---@return boolean
function Duration:lt(value) end

-- lt checks if current duration is less than or equal to another.
---@param value integer | lf.time.Duration
---@return boolean
function Duration:le(value) end

-- nanoseconds returns the duration as an integer nanosecond count.
---@return integer
function Duration:nanoseconds() end

-- microseconds returns the duration as an integer microsecond count.
---@return integer
function Duration:microseconds() end

-- milliseconds returns the duration as an integer millisecond count.
---@return integer
function Duration:milliseconds() end

-- seconds returns the duration as a floating point number of seconds.
---@return integer
function Duration:seconds() end

-- minutes returns the duration as a floating point number of minutes.
---@return integer
function Duration:minutes() end

-- hours returns the duration as a floating point number of hours.
---@return integer
function Duration:hours() end

-- truncate returns the result of rounding d toward zero to a multiple of m
---@param m lf.time.Duration
---@return lf.time.Duration
function Duration:truncate(m) end

-- round returns the result of rounding d to the nearest multiple of m.
---@param m lf.time.Duration
---@return lf.time.Duration
function Duration:round(m) end

-- abs returns the absolute value of d.
---@return lf.time.Duration
function Duration:abs() end

-- to_number converts duration userdata to number value.
function Duration:to_number() end
