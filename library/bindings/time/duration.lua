---@meta

---@class lf.time.Duration : userdata
local Duration = {}

Duration.Nanosecond = nil ---@type lf.time.Duration
Duration.Microsecond = nil ---@type lf.time.Duration
Duration.Millisecond = nil ---@type lf.time.Duration
Duration.Second = nil ---@type lf.time.Duration
Duration.Minute = nil ---@type lf.time.Duration
Duration.Hour = nil ---@type lf.time.Duration

Duration.__mul = nil ---@type fun(a: lf.time.Duration | number, b: lf.time.Duration | number): lf.time.Duration

---@param value number
---@return lf.time.Duration
function Duration.new(value) end

---@param value integer | lf.time.Duration
---@return lf.time.Duration
function Duration:mul(value) end

---@param value integer | lf.time.Duration
---@return boolean
function Duration:eq(value) end

---@param value integer | lf.time.Duration
---@return boolean
function Duration:lt(value) end

---@param value integer | lf.time.Duration
---@return boolean
function Duration:le(value) end

---@return integer
function Duration:nanoseconds() end

---@return integer
function Duration:microseconds() end

---@return integer
function Duration:milliseconds() end

---@return integer
function Duration:seconds() end

---@return integer
function Duration:minutes() end

---@return integer
function Duration:hours() end

---@param m lf.time.Duration
---@return lf.time.Duration
function Duration:truncate(m) end

---@param m lf.time.Duration
---@return lf.time.Duration
function Duration:round(m) end

---@return lf.time.Duration
function Duration:abs() end
