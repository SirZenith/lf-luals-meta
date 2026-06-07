---@alias lf.PreviewerAction fun(buf_writer: lf.BufWriter, path: string, w: integer, h: integer, x: integer, y: integer): boolean?

---@class lf.Previewer
---@field condition? fun(path: string): boolean?
---@field action lf.PreviewerAction
---@field is_sync? boolean

---@alias lf.PreviewerTbl table<string, lf.PreviewerAction | lf.Previewer>
