---@meta

---@class lf.ShellMsg
---@field action function
---@field is_async? boolean

---@alias lf.ShellMakeCmdFunc fun(execute: string, args: string[]): lf.exec.Cmd

---@class lf.ShellMsgMakeCmd : lf.ShellMsg
---@field action lf.ShellMakeCmdFunc

---@class lf.ShellTbl
---@field make_cmd? lf.ShellMakeCmdFunc | lf.ShellMsgMakeCmd
