---@meta

---@class lf.IconDef : userdata
local IconDef = {}

---@return string?
function IconDef:icon() end

---@return boolean
function IconDef:has_style() end

---@return lf.tcell.Style
function IconDef:style() end
