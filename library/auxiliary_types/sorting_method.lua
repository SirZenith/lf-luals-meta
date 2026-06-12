---@meta

---@alias lf.SortingMethodFunc fun(list: lf.File[]): lf.File[]

---@class lf.SortingMethod
---@field action lf.SortingMethodFunc
---@field is_async? boolean

---@alias lf.SortingMethodTbl table<string, lf.SortingMethodFunc | lf.SortingMethod>
