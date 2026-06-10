---@meta

---@class lf.exec.Cmd
local Cmd = {}

---@param cmd_str string
---@param ... any
---@return lf.exec.Cmd
function Cmd.new(cmd_str, ...) end

---@return string[]
function Cmd:environ() end

---@param kv string
function Cmd:add_environ(kv) end

---@return string output
---@return string? err
function Cmd:combined_output() end

---@return string stdout
---@return string? err
function Cmd:output() end

---@return string? err
function Cmd:run() end

---@return string? err
function Cmd:start() end

---@return string? err
function Cmd:wait() end

---@return lf.bufio.BufReader?
---@return string? err
function Cmd:stderr_pipe() end

---@return lf.bufio.BufReader?
---@return string? err
function Cmd:stdout_pipe() end

---@return lf.bufio.BufWriter?
---@return string? err
function Cmd:stdin_pipe() end

---@return integer?
function Cmd:exit_code() end
