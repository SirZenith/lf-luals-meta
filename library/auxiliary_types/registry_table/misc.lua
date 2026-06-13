---@meta

---@class lf.MiscMsg
---@field action function
---@field is_async? boolean

---@alias lf.MiscMsgDupFileFunc fun(basename: string, ext: string, dup_index: integer): string

---@class lf.MiscMsgDupFile : lf.MiscMsg
---@field action lf.MiscMsgDupFileFunc

---@alias lf.MiscMsgShellFunc fun(execute: string, args: string[]): lf.exec.Cmd

---@class lf.MiscMsgShell : lf.MiscMsg
---@field action lf.MiscMsgShellFunc

---@class lf.MiscTbl
---@field dupfile? lf.MiscMsgDupFileFunc | lf.MiscMsgDupFile
---@field shell? lf.MiscMsgShellFunc | lf.MiscMsgShell
