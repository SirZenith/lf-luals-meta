---@meta

---@class lf.bufio.BufReader : userdata
local BufReader = {}

---@return integer
function BufReader:buffered() end

---@param n integer
---@return integer discarded
---@return string? err
function BufReader:discard(n) end

---@param n integer
---@return string data
---@return string? err
function BufReader:peek(n) end

---@param n integer
---@return string data
---@return integer bytes_read
---@return string? err
function BufReader:read(n) end

---@return string line
---@return boolean is_prefix
---@return string? err
function BufReader:read_line() end

---@param delim string
---@return string data
---@return string? err
function BufReader:read_string(delim) end

function BufReader:size() end
