---@meta

---@alias lf.EventHookFunc fun(...: any)

---@class lf.EventHook
---@field action lf.EventHookFunc
---@field is_sync? boolean

---@alias lf.EventHookTbl table<lf.EventType, lf.EventHookFunc | lf.EventHook>
