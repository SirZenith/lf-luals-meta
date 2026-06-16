---@meta

---@class lf.time.Time : userdata
local Time = {}

-- now returns current time.
---@return lf.time.Time
function Time.now() end

-- new_unix returns the local Time corresponding to the given Unix time.
---@param sec integer
---@param nsec integer
---@return lf.time.Time
function Time.new_unix(sec, nsec) end

-- new_unix_mili returns the local Time corresponding to the given Unix time
-- given in milliseconds.
---@param msec integer
---@return lf.time.Time
function Time.new_unix_mili(msec) end

-- new_unix_micro returns the local Time corresponding to the given Unix time
-- given in microseconds.
---@param micro integer
---@return lf.time.Time
function Time.new_unix_micro(micro) end

-- since_time returns the time elapsed since `t`
---@param t lf.time.Time
---@return lf.time.Duration
function Time.since_time(t) end

-- luaTimeUntil returns the duration until `t`.
---@return lf.time.Duration
function Time.until_time() end

-- is_zero reports whether t represents the zero time instant.
---@return boolean
function Time:is_zero() end

-- compare compares the time instant t with u. If t is before u, it returns
-- -1; if t is after u, it returns +1; if they're the same, it returns 0.
---@return integer
function Time:compare() end

-- date returns the year, month, and day in which t occurs.
---@return integer year
---@return lf.time.Month month
---@return integer day
function Time:date() end

-- year returns the year in which t occurs.
---@return integer
function Time:year() end

-- month returns the month of the year specified by t.
---@return lf.time.Month
function Time:month() end

-- day returns the day of the month specified by t.
---@return integer
function Time:day() end

-- weekday returns the day of the week specified by t.
---@return lf.time.Weekday
function Time:weekday() end

-- iso_week returns the ISO 8601 year and week number in which t occurs.
---@return integer year
---@return integer week
function Time:iso_week() end

-- clock returns the hour, minute, and second within the day specified by t.
---@return integer hour
---@return integer min
---@return integer sec
function Time:clock() end

-- luaTimeHour returns the hour within the day specified by t, in the range [0, 23].
---@return integer
function Time:hour() end

-- luaTimeMinute returns the minute offset within the hour specified by t, in the range [0, 59].
---@return integer
function Time:minute() end

-- second returns the second offset within the minute specified by t, in the range [0, 59].
---@return integer
function Time:second() end

-- nanosecond returns the nanosecond offset within the second specified by t, in the range [0, 999999999].
---@return integer
function Time:nanosecond() end

-- year_day returns the day of the year specified by t, in the range [1,365]
-- for non-leap years, and [1,366] in leap years.
---@return integer
function Time:year_day() end

-- add adds duration to time.
---@param dur lf.time.Duration
---@return lf.time.Time
function Time:add(dur) end

-- luaTimeSub substracts duration from time.
---@param dur lf.time.Duration
---@return lf.time.Duration
function Time:sub(dur) end

-- add_date returns the time corresponding to adding the given number of years, months, and days to t.
---@param years integer
---@param months integer
---@param days integer
---@return lf.time.Time
function Time:add_date(years, months, days) end

-- utc returns t with the location set to UTC.
---@return lf.time.Time
function Time:utc() end

-- local_time returns t with the location set to local time.
---@return lf.time.Time
function Time:local_time() end

-- time_zone computes the time zone in effect at time t, returning the abbreviated
-- name of the zone (such as "CET") and its offset in seconds east of UTC.
---@return string name
---@return integer offset
function Time:time_zone() end

-- time_zone_bounds returns the bounds of the time zone in effect at time t.
---@return lf.time.Time start_time
---@return lf.time.Time end_time
function Time:time_zone_bounds() end

-- to_unix returns t as a Unix time
---@return integer
function Time:to_unix() end

-- to_unix_mili returns t as a Unix time in milliseconds.
---@return integer
function Time:to_unix_mili() end

-- to_unix_nano returns t as a Unix time in nanoseconds.
---@return integer
function Time:to_unix_nano() end

-- format returns a textual representation of the time value formatted according
-- to the layout defined by the argument.
---@param fmt string
---@return string
function Time:format(fmt) end
