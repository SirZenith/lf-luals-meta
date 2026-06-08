---@meta

local M = {}

M.REGISTRY_SORT_METHOD = "sort_method" ---@type string
M.REGISTRY_COMMAND = "command" ---@type string
M.REGISTRY_EVENT_HOOK = "event_hook" ---@type string

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
    Normal = nil, ---@type string
    Visual = nil, ---@type string
    Command = nil, ---@type string
}

---@param str string
function M.cmd(str) end

---@param prefix lf.ShellCmdType | lf.ShellCmdPrefix
---@param cmd string
---@param ... string # command arguments
function M.shell(prefix, cmd, ...) end

---@param opt string
---@param val string
function M.set_opt(opt, val) end

---@param opt string
---@param val string
function M.set_local_opt(opt, val) end

---@param pattern string
---@param str string
function M.glob_match(pattern, str) end

---@param s string
---@param words string[]
---@return lf.CompMatch[]
---@return string
function M.match_word(s, words) end

return M
