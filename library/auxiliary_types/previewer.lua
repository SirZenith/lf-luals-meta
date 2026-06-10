---@alias lf.PreviewerCleanFunc fun(prev_file: string, w: integer, h: integer, x: integer, y: integer, next_file: string): string?
---@alias lf.PreviewerAction fun(buf_writer: lf.bufio.BufWriter, path: string, w: integer, h: integer, x: integer, y: integer, mode: string): boolean?, string?

---@class lf.Previewer
---@field condition? fun(path: string): boolean?
---@field clean? lf.PreviewerCleanFunc
---@field action lf.PreviewerAction
---@field is_sync? boolean

---@alias lf.PreviewerTbl table<string, lf.PreviewerAction | lf.Previewer>
