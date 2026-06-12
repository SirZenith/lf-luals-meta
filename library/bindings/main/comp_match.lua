---@meta

---@class lf.CompMatch : userdata
local CompMatch = {}

---@param name string
---@param result string
---@return lf.CompMatch
function CompMatch.new(name, result) end

---@param value? string
---@return string
function CompMatch:name(value) end

---@param value? string
---@return string
function CompMatch:result(value) end
