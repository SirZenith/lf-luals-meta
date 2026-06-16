---@meta

---@alias lf.KeyMapFunc fun(count: integer)

---@class lf.KeyMap
---@field action string | lf.KeyMapFunc
---@field is_async boolean

---@alias lf.KeyMapGroup table<string, string | lf.KeyMapFunc | lf.KeyMap>

---@class lf.KeyMapTbl
---@field c? lf.KeyMapGroup
---@field n? lf.KeyMapGroup
---@field v? lf.KeyMapGroup
