---@meta

-- An object used to create and run subprocess.
---@class lf.exec.Cmd : userdata
local Cmd = {}

-- new creates a new command object with given command and argument list.
---@param cmd_str string
---@param ... any
---@return lf.exec.Cmd
function Cmd.new(cmd_str, ...) end

-- environ is a getter & setter for environment variable list of Cmd.
-- Every environment variable is set in form of a `<key>=<value>` string.
-- When used as a getter, it returns a copy of command's environment variable
-- list as table.
-- If environ list is empty, Cmd will used environment variables inherited from
-- its parent process, calling this method before adding any key-value string to
-- list returns parent environment list.
---@param kv_list? string[]
---@return string[]
function Cmd:environ(kv_list) end

-- add_environ appends new key-value string to command's environment variable
-- list.
---@param kv string
function Cmd:add_environ(kv) end

-- combined_output runs command and returns string result containing both
-- stdout and stderr output.
---@return string output
---@return string? err
function Cmd:combined_output() end

-- output runs command and returns string result containing only stdout
-- output.
---@return string stdout
---@return string? err
function Cmd:output() end

-- run runs current command.
---@return string? err
function Cmd:run() end

-- start stars execution command. Caller should then calls `wait` method
-- wait for execution ends.
---@return string? err
function Cmd:start() end

-- wait blocks execution until execution of command ends.
---@return string? err
function Cmd:wait() end

-- stderr_pipe returns a reader handle to command's stderr output. This should
-- be called before command starts execution.
---@return lf.bufio.BufReader?
---@return string? err
function Cmd:stderr_pipe() end

-- stdout_pipe returns a reader handle to command's stdout output. This should
-- be called before command starts execution.
---@return lf.bufio.BufReader?
---@return string? err
function Cmd:stdout_pipe() end

-- stdin_pipe returns a writer handle to command's stdin input. This should
-- be called before command starts execution.
---@return lf.bufio.BufWriter?
---@return string? err
function Cmd:stdin_pipe() end

-- exit_code returns exit code of finished command. When exit code is not
-- available, this method returns `nil`.
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

-- kill kills subprocess immediately.
---@return string? err
function Cmd:kill(sig) end
