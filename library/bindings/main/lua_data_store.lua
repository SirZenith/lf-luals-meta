---@meta

---@class lf.LuaDataStore : userdata
local LuaDataStore = {}

---@return number | string | boolean | nil
---@return string? err
function LuaDataStore:get(key) end

---@return string? err
function LuaDataStore:set(key, value) end

function LuaDataStore:clear() end

---@return string[]
function LuaDataStore:keys() end
