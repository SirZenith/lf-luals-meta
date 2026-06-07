---@meta

lf_types = {}

lf_types.App = nil ---@type lf.App
lf_types.UI = nil ---@type lf.UI

lf_types.Nav = nil ---@type lf.Nav
lf_types.Dir = nil ---@type lf.Dir
lf_types.File = nil ---@type lf.File

lf_types.BufWriter = nil ---@type lf.BufWriter
lf_types.CompMatch = nil ---@type lf.CompMatch
lf_types.FileInfo = nil ---@type lf.FileInfo

---@type lf.App
app = nil

---@class lf.CommandCompMatch
---@field name string # display name in completion menu
---@field result string # result when cycling through completion menu

---@alias lf.CommandCompletionFunc fun(args: string[], last_arg: string): lf.CommandCompMatch[], string

---@class lf.LuaCommand
---@field completion? lf.CommandCompletionFunc
---@field action fun(...: string)

---@alias lf.PreviewerAction fun(buf_writer: lf.BufWriter, path: string, w: integer, h: integer, x: integer, y: integer): boolean?

---@class lf.Previewer
---@field condition? fun(path: string): boolean?
---@field action lf.PreviewerAction

---@class lf.PluginRet
---@field command? table<string, string | fun(...: string) | lf.LuaCommand>
---@field sort_method? table<string, fun(list: lf.File[]): lf.File[]>
---@field event_hook? table<lf.EventType, fun(...: any)>
---@field previewer? table<string, lf.PreviewerAction | lf.Previewer>
