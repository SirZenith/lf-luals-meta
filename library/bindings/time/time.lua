---@meta

---@class lf.time.Time : userdata
local Time = {}

---@return lf.time.Time
function Time.now() end

---@param sec integer
---@param nsec integer
---@return lf.time.Time
function Time.new_unix(sec, nsec) end

---@param msec integer
---@return lf.time.Time
function Time.new_unix_mili(msec) end

---@param micro integer
---@return lf.time.Time
function Time.new_unix_micro(micro) end

---@param time lf.time.Time
---@return lf.time.Duration
function Time.since_time(time) end

---@return lf.time.Duration
function Time.until_time() end

---@return boolean
function Time:is_zero() end

---@return integer
function Time:compare() end

---@return integer year
---@return lf.time.Month month
---@return integer day
function Time:date() end

---@return integer
function Time:year() end

---@return lf.time.Month
function Time:month() end

---@return integer
function Time:day() end

---@return lf.time.Weekday
function Time:weekday() end

---@return integer year
---@return integer week
function Time:iso_week() end

---@return integer hour
---@return integer min
---@return integer sec
function Time:clock() end

---@return integer
function Time:hour() end

---@return integer
function Time:minute() end

---@return integer
function Time:second() end

---@return integer
function Time:nanosecond() end

---@return integer
function Time:year_day() end

---@param dur lf.time.Duration
---@return lf.time.Time
function Time:add(dur) end

---@param dur lf.time.Duration
---@return lf.time.Duration
function Time:sub(dur) end

---@param years integer
---@param months integer
---@param days integer
---@return lf.time.Time
function Time:add_date(years, months, days) end

---@return lf.time.Time
function Time:utc() end

---@return lf.time.Time
function Time:local_time() end

---@return string name
---@return integer offset
function Time:time_zone() end

---@return lf.time.Time start_time
---@return lf.time.Time end_time
function Time:time_zone_bounds() end

---@return integer
function Time:to_unix() end

---@return integer
function Time:to_unix_mili() end

---@return integer
function Time:to_unix_nano() end

---@param fmt string
---@return string
function Time:format(fmt) end
