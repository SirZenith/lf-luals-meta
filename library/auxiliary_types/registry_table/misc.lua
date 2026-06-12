---@meta

---@class lf.MiscMsg
---@field action function
---@field is_async? boolean

---@alias lf.MiscMsgShellFunc fun(execute: string, args: string[]): lf.exec.Cmd

---@class lf.MiscMsgShell : lf.MiscMsg
---@field action lf.MiscMsgShellFunc

---@class lf.MiscTbl
---@field shell? lf.MiscMsgShellFunc | lf.MiscMsgShell
