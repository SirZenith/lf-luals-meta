---@meta

---@alias lf.SortMethodFunc fun(list: lf.File[]): lf.File[]

---@class lf.SortMethod
---@field action lf.SortMethodFunc
---@field is_sync? boolean

---@alias lf.SortMethodTbl table<string, lf.SortMethodFunc | lf.SortMethod>
