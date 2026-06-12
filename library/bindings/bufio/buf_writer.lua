---@meta

---@class lf.bufio.BufWriter : userdata
local BufWriter = {}

---@return integer
function BufWriter:available() end

---@return integer
function BufWriter:buffered() end

---@return string? err
function BufWriter:flush() end

---@return integer
function BufWriter:size() end

---@param ... string
---@return integer
---@return string? err
function BufWriter:write_string(...) end
