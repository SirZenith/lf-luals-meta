---@meta

local M = {}

M.PREVIEW_LOADING_DELAY = nil ---@type lf.time.Duration

---@enum lf.ClipboardMode
M.ClipboardMode = {
    Copy = nil, ---@type integer
    Cut = nil, ---@type integer
}

---@enum lf.DirRole
M.DirRole = {
    Active = nil, ---@type integer
    Parent = nil, ---@type integer
    Preview = nil, ---@type integer
}

---@enum lf.EventType
M.EventType = {
    PreCd = nil, ---@type string
    OnCd = nil, ---@type string
    OnLoad = nil, ---@type string
    OnFocusGained = nil, ---@type string
    OnFocusLost = nil, ---@type string
    OnInit = nil, ---@type string
    OnRedraw = nil, ---@type string
    OnSelect = nil, ---@type string
    OnQuit = nil, ---@type string
}

---@enum lf.KeyMapType
M.KeyMapType = {
    Normal = "n",
    Visual = "v",
    Command = "c",
}

---@enum lf.ShellCmdType
M.ShellCmdType = {
    Normal = nil, ---@type string
    Pipe = nil, ---@type string
    Wait = nil, ---@type string
    Async = nil, ---@type string
}

---@alias lf.ShellCmdPrefix
---| "$"
---| "%"
---| "!"
---| "&"

---@enum lf.SortMethod
M.SortMethod = {
    Natural = nil, ---@type string
    Name = nil, ---@type string
    Size = nil, ---@type string
    Time = nil, ---@type string
    Atime = nil, ---@type string
    Btimed = nil, ---@type string
    Ctime = nil, ---@type string
    Ext = nil, ---@type string
    Custom = nil, ---@type string
}

---@enum lf.UIFormatterType
M.UIFormatterType = {
    cursoractive = nil, ---@type string
    cursorparent = nil, ---@type string
    cursorpreview = nil, ---@type string
    error = nil, ---@type string
    numbercursor = nil, ---@type string
    number = nil, ---@type string
    tag = nil, ---@type string
}

---@enum lf.UIPrinterType
M.UIPrinterType = {
    dir_entry = nil, ---@type string
    directory = nil, ---@type string
    ruler = nil, ---@type string
    prompt = nil, ---@type string
}

---@enum lf.UIStyleType
M.UIStyleType = {
    border = nil, ---@type string
    copy = nil, ---@type string
    cut = nil, ---@type string
    menu = nil, ---@type string
    menuheader = nil, ---@type string
    menuselect = nil, ---@type string
    select = nil, ---@type string
    visual = nil, ---@type string
}

-- prints pretty prints given value to log, mainly for debuging purpose.
---@param value any
function M.print(value) end

-- list_ext appends elements in `src` to `dst`.
---@param dst any[]
---@param src any[]
---@param start? integer
---@param finish? integer
---@return any[] dst
function M.list_ext(dst, src, start, finish) end

-- tbl_extend merges key-value pairs of given tables.
-- `behavior` determines function's action before merging key-value pairs.
-- - `error`: raise an error if the key is repeated
-- - `keep`: use old value, if the key is repeated
-- - `force`: use new value, if the key is repeated
-- - function: calls this function on every key-value pair, use its return value as value of the key.
---@param behavior "error" | "keep" | "force" | fun(key: any, prev_value?: any, value: any): any
---@param ... table
---@return table new_tbl
function M.tbl_extend(behavior, ...) end

-- cmd runs a command string, just like executing it under command mode.
---@param str string
function M.cmd(str) end

-- shell runs shell command.
---@param prefix lf.ShellCmdType | lf.ShellCmdPrefix
---@param cmd string
---@param ... string # command arguments
function M.shell(prefix, cmd, ...) end

-- call runs built-in or user defined commands.
---@param cmd string
---@param ... string # arguments
function M.call(cmd, ...) end

-- call_n runs a lf command with count flag
---@param count integer
---@param cmd string
---@param ... string # arguments
function M.call_n(count, cmd, ...) end

-- set_opt sets option value.
---@param opt string
---@param val string
function M.set_opt(opt, val) end

-- set_local_opt sets local option value.
---@param path string
---@param opt string
---@param val string
function M.set_local_opt(path, opt, val) end

-- get_opt returns option value.
---@param opt string
---@return any
function M.get_opt(opt) end

-- get_local_opt returns local option value.
---@param path string
---@param opt string
---@return any
function M.get_local_opt(path, opt) end

-- call_msg_expr calls m object is acquired from other APIs
---@param expr lf.LuaMsgExpr
---@return any ...
function M.call_msg_expr(expr, ...) end

-- glob_match checks if a string matches given pattern.
---@param pattern string
---@param str string
function M.glob_match(pattern, str) end

-- match_word returns completion list for `s` with candidate list `words`.
---@param s string
---@param words string[]
---@return lf.CompMatch[]
---@return string
function M.match_word(s, words) end

-- match_list takes a `:` seperated list string, and finds matching element from
-- given words list as new list element.
---@param s string # a `:` seperated list
---@param words string[]
---@return lf.CompMatch[]
---@return string
function M.match_list(s, words) end

-- match_cmd makes command name completion.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_cmd(s) end

-- match_cmd_file makes file name completion used as command argument.
---@param s string
---@param dir_only boolean
---@return lf.CompMatch[]
---@return string
function M.match_cmd_file(s, dir_only) end

-- match_shell_file maeks file name completion used as shell argument.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_shell_file(s) end

-- match_exec makes executable name completion.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_exec(s) end

-- match_search makes search pattern completion with file names in current directory.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_search(s) end

-- match_opt_name maeks completion with option names.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_opt_name(s) end

-- match_local_opt_name maeks completion with local option names.
---@param s string
---@return lf.CompMatch[]
---@return string
function M.match_local_opt_name(s) end

-- str_fill fills string to given width.
---@param base string
---@param width integer
---@param fill? string # fill string, default value is one space
---@return string
function M.str_fill(base, width, fill) end

-- str_fill fills string to given width with right alignment.
---@param base string
---@param width integer
---@param fill? string # fill string, default value is one space
---@return string
function M.str_fill_right(base, width, fill) end

-- to_perm_string convers mod bits to permission string.
---@param mod integer | lf.fs.FileMode
function M.to_perm_string(mod) end

-- make_link_count_str returns link count string for given file.
---@param file lf.File
---@return string
function M.make_link_count_str(file) end

-- make_user_name_str returns user name string for given file.
---@param file lf.File
---@return string
function M.make_user_name_str(file) end

-- make_group_name_str returns group name string for given file.
---@param file lf.File
---@return string
function M.make_group_name_str(file) end

-- sanitize_name replace control character in given string with `\uFFFD`.
---@param str string
---@return string
function M.sanitize_name(str) end

-- file_size_humanize converts byte size to human readable string no longer than
-- 5 characters.
---@param size integer
---@return string
function M.file_size_humanize(size) end

-- disk_free_space returns disk free space as human readable string.
---@param path string
---@return string
function M.disk_free_space(path) end

return M
