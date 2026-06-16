---@meta

---@class lf.bufio.BufReader : userdata
local BufReader = {}

-- buffered returns number of bytes buffered.
---@return integer
function BufReader:buffered() end

-- discard skips following n bytes, returns number of bytes skipped.
---@param n integer
---@return integer discarded
---@return string? err
function BufReader:discard(n) end

-- peek returns next n bytes without advancing reader.
---@param n integer
---@return string data
---@return string? err
function BufReader:peek(n) end

-- read reads n bytes from reader, and returns datga as a string.
---@param n integer
---@return string data
---@return integer bytes_read
---@return string? err
function BufReader:read(n) end

-- read_line reads one line of data. Returned data will not contain
-- trailing `\r\n` or `\n`
---@return string line
---@return boolean is_prefix
---@return string? err
function BufReader:read_line() end

-- read_string takes a delimiter string, and reads until that string
-- occurs.
---@param delim string
---@return string data
---@return string? err
function BufReader:read_string(delim) end

-- size returns byte size of underlying buffer.
---@return integer
function BufReader:size() end
