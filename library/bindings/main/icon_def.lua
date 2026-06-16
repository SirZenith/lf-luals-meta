---@meta

---@class lf.IconDef : userdata
local IconDef = {}

-- icon returns icon string
---@return string
function IconDef:icon() end

-- has_style returns if this icon has print style.
---@return boolean
function IconDef:has_style() end

-- style returns style object defined for this icon.
---@return lf.tcell.Style
function IconDef:style() end
