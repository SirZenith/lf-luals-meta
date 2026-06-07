---@meta

lf_types = {}

lf_types.App = nil ---@type lf.App
lf_types.UI = nil ---@type lf.UI

lf_types.Nav = nil ---@type lf.Nav
lf_types.Dir = nil ---@type lf.Dir
lf_types.File = nil ---@type lf.File

lf_types.FileInfo = nil ---@type lf.FileInfo

lf_types.BufWriter = nil ---@type lf.BufWriter

---@type lf.App
app = nil

---@alias lf.PreviewerAction fun(buf_writer: lf.BufWriter, path: string, w: integer, h: integer, x: integer, y: integer): boolean?

---@class lf.Previewer
---@field condition? fun(path: string): boolean?
---@field action lf.PreviewerAction

---@class lf.PluginRet
---@field command? table<string, string | fun(...: string)>
---@field sort_method? table<string, fun(list: lf.File[]): lf.File[]>
---@field event_hook? table<lf.EventType, fun(...: any)>
---@field previewer? table<string, lf.PreviewerAction | lf.Previewer>
