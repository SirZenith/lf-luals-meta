---@meta

---@class lf.bufio.BufWriter : userdata
local BufWriter = {}

-- available returns available byte count in buffer.
---@return integer
function BufWriter:available() end

-- buffered returns number of bytes that has been written to buffer.
---@return integer
function BufWriter:buffered() end

-- flush writes buffered data to underlying output writer.
---@return string? err
function BufWriter:flush() end

-- size returns byte size of underlying buffer.
---@return integer
function BufWriter:size() end

-- write_string writes string value to buffer.
---@param ... string
---@return integer
---@return string? err
function BufWriter:write_string(...) end
