---@meta

---@class lf.SortingOptions
---@field dircounts boolean
---@field dirfirst boolean
---@field dironly boolean
---@field hidden boolean
---@field sortignorecase boolean
---@field sortignoredia boolean

---@alias lf.SortingMethodFunc fun(f1: lf.File, f2: lf.File, options: lf.SortingOptions): integer

---@class lf.SortingMethod
---@field action lf.SortingMethodFunc
---@field is_async? boolean

---@alias lf.SortingMethodTbl table<string, lf.SortingMethodFunc | lf.SortingMethod>
