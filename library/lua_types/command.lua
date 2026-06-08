---@class lf.CommandCompMatch
---@field name string # display name in completion menu
---@field result string # result when cycling through completion menu

---@alias lf.CommandCompletionFunc fun(args: string[], last_arg: string): lf.CommandCompMatch[]?, string?

---@alias lf.CommandFunc fun(...: string)

---@class lf.LuaCommand
---@field completion? lf.CommandCompletionFunc
---@field action lf.CommandFunc
---@field is_sync? boolean

---@alias lf.CommandTbl table<string, string | lf.CommandFunc | lf.LuaCommand>
