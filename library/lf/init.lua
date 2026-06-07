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

---@param pattern string
---@param str string
function M.glob_match(pattern, str) end

---@param s string
---@param words string[]
---@return lf.CompMatch[]
---@return string
function M.match_word(s, words) end

return M
