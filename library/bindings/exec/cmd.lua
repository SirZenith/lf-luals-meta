---@meta

---@class lf.exec.Cmd : userdata
local Cmd = {}

Cmd.SIGABRT = nil ---@type integer
Cmd.SIGALRM = nil ---@type integer
Cmd.SIGBUS = nil ---@type integer
Cmd.SIGCHLD = nil ---@type integer
Cmd.SIGCLD = nil ---@type integer
Cmd.SIGCONT = nil ---@type integer
Cmd.SIGFPE = nil ---@type integer
Cmd.SIGHUP = nil ---@type integer
Cmd.SIGILL = nil ---@type integer
Cmd.SIGINT = nil ---@type integer
Cmd.SIGIO = nil ---@type integer
Cmd.SIGIOT = nil ---@type integer
Cmd.SIGKILL = nil ---@type integer
Cmd.SIGPIPE = nil ---@type integer
Cmd.SIGPOLL = nil ---@type integer
Cmd.SIGPROF = nil ---@type integer
Cmd.SIGPWR = nil ---@type integer
Cmd.SIGQUIT = nil ---@type integer
Cmd.SIGSEGV = nil ---@type integer
Cmd.SIGSTKFLT = nil ---@type integer
Cmd.SIGSTOP = nil ---@type integer
Cmd.SIGSYS = nil ---@type integer
Cmd.SIGTERM = nil ---@type integer
Cmd.SIGTRAP = nil ---@type integer
Cmd.SIGTSTP = nil ---@type integer
Cmd.SIGTTIN = nil ---@type integer
Cmd.SIGTTOU = nil ---@type integer
Cmd.SIGUNUSED = nil ---@type integer
Cmd.SIGURG = nil ---@type integer
Cmd.SIGUSR1 = nil ---@type integer
Cmd.SIGUSR2 = nil ---@type integer
Cmd.SIGVTALRM = nil ---@type integer
Cmd.SIGWINCH = nil ---@type integer
Cmd.SIGXCPU = nil ---@type integer
Cmd.SIGXFSZ = nil ---@type integer

---@param cmd_str string
---@param ... any
---@return lf.exec.Cmd
function Cmd.new(cmd_str, ...) end

---@param kv_list? string[]
---@return string[]
function Cmd:environ(kv_list) end

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

-- set_stdout_writer sets writer value of command stdout
---@param writer userdata
function Cmd:set_stdout_writer(writer) end

-- set_stdout_writer sets writer value of command stderr
---@param writer userdata
function Cmd:set_stderr_writer(writer) end

-- set_stdout_writer use a writer function as command's stdout writer
---@param fn fun(p: string): integer, string?
function Cmd:set_stdout_writer_func(fn) end

-- set_stdout_writer use a writer function as command's stderr writer
---@param fn fun(p: string): integer, string?
function Cmd:set_stderr_writer_func(fn) end

---@param sig integer
---@return string? err
function Cmd:signal(sig) end
