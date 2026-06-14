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

---@enum lf.KeyMapType
M.KeyMapType = {
    Normal = "n",
    Visual = "v",
    Command = "c",
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

---@param value any
function M.print(value) end

---@param dst any[]
---@param src any[]
---@param start? integer
---@param finish? integer
function M.list_ext(dst, src, start, finish) end

---@param behavior "error" | "keep" | "force" | fun(key: any, prev_value?: any, value: any): any
---@param ... table
function M.tbl_extend(behavior, ...) end

---@param str string
function M.cmd(str) end

---@param prefix lf.ShellCmdType | lf.ShellCmdPrefix
---@param cmd string
---@param ... string # command arguments
function M.shell(prefix, cmd, ...) end

-- call runs lf command
---@param cmd string
---@param ... string # arguments
function M.call(cmd, ...) end

-- call_n runs a lf command with count flag
---@param count integer
---@param cmd string
---@param ... string # arguments
function M.call_n(count, cmd, ...) end

---@param opt string
---@param val string
function M.set_opt(opt, val) end

---@param path string
---@param opt string
---@param val string
function M.set_local_opt(path, opt, val) end

---@param opt string
---@return any
function M.get_opt(opt) end

---@param path string
---@param opt string
---@return any
function M.get_local_opt(path, opt) end

---@param expr lf.LuaMsgExpr
---@return any ...
function M.call_msg_expr(expr, ...) end

---@param pattern string
---@param str string
function M.glob_match(pattern, str) end

---@param s string
---@param words string[]
---@return lf.CompMatch[]
---@return string
function M.match_word(s, words) end

---@param base string
---@param width integer
---@param fill? string # fill string, default value is one space
---@return string
function M.str_fill(base, width, fill) end

---@param base string
---@param width integer
---@param fill? string # fill string, default value is one space
---@return string
function M.str_fill_right(base, width, fill) end

---@param mod integer | lf.fs.FileMode
function M.to_perm_string(mod) end

---@param file lf.File
---@return string
function M.make_link_count_str(file) end

---@param file lf.File
---@return string
function M.make_user_name_str(file) end

---@param file lf.File
---@return string
function M.make_group_name_str(file) end

---@return string
function M.sanitize_name(str) end

---@param size integer
---@return string
function M.file_size_humanize(size) end

---@param path string
---@return string
function M.disk_free_space(path) end

return M
