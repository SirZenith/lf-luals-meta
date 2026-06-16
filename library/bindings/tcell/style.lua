---@meta

---@class lf.tcell.Style : userdata
local Style = {}

---@return lf.tcell.Style
function Style.new() end

Style.UnderlineStyleNone = nil ---@type integer
Style.UnderlineStyleSolid = nil ---@type integer
Style.UnderlineStyleDouble = nil ---@type integer
Style.UnderlineStyleCurly = nil ---@type integer
Style.UnderlineStyleDotted = nil ---@type integer
Style.UnderlineStyleDashed = nil ---@type integer

-- reset_string returns reset CSI string.
---@return string
function Style.reset_string() end

-- tostring converts current style to CSI string. Does the same thing
-- as __tostring meta method.
---@return string
function Style:tostring() end

-- wrap takes a list of content strings, and wrap them with CSI string
-- form of current style and reset CSI sequens. Result is returned as a single
-- string.
---@param ... string
---@return string
function Style:wrap(...) end

-- foreground sets foreground color.
---@param color lf.tcell.Color
---@return lf.tcell.Style
function Style:foreground(color) end

-- background sets background color.
---@param color lf.tcell.Color
---@return lf.tcell.Style
function Style:background(color) end

-- foreground_rgb sets foreground color with RGB channel value.
---@param r integer
---@param g integer
---@param b integer
---@return lf.tcell.Style
function Style:foreground_rgb(r, g, b) end

-- background_rgb sets background color with RGB channel value.
---@param r integer
---@param g integer
---@param b integer
---@return lf.tcell.Style
function Style:background_rgb(r, g, b) end

-- foreground_name sets foreground color with color name or hex code
-- starting with `#`.
---@param name lf.tcell.ColorName | string # color name or hex code starts with `#`
---@return lf.tcell.Style
function Style:foreground_name(name) end

-- background_name sets background color with color name or hex code
-- starting with `#`.
---@param name lf.tcell.ColorName | string # color name or hex code starts with `#`
---@return lf.tcell.Style
function Style:background_name(name) end

-- foreground_palette sets foreground color with palette index.
---@param index integer
---@return lf.tcell.Style
function Style:foreground_palette(index) end

-- background_palette sets background color with palette index.
---@param index integer
---@return lf.tcell.Style
function Style:background_palette(index) end

-- normal returns the style with all attributes disabled.
-- Colors and hyperlinks are preserved
---@return lf.tcell.Style
---@return lf.tcell.Style
function Style:normal() end

-- bold enables or disables bold attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:bold(activate) end

-- blink enables or disables blink attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:blink(activate) end

-- dim enables or disables dim attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:dim(activate) end

-- italic enables or disables italic attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:italic(activate) end

-- reverse enables or disables foreground-background reverse attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:reverse(activate) end

-- strike_through enables or disables strike-through attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:strike_through(activate) end

-- underline enables or disables underline attribute.
---@param activate boolean
---@return lf.tcell.Style
function Style:underline(activate) end

-- luaTcellStyleSetUnderlineStyle sets underline style type. Style type value
-- can be found as constant filed in metatable of Style.
-- ```lua
-- local Style = lf_type.TcellStyle
-- print(Style.UnderlineStyleSolid)
-- ```
function Style:set_underline_style() end

-- luaTcellStyleSetUnderlineColor sets color of underline.
function Style:set_underline_color() end

-- has_bold checks if current sytle has bold attribute.
---@return boolean
function Style:has_bold() end

-- has_blink checks if current sytle has blink attribute.
---@return boolean
function Style:has_blink() end

-- has_reverse checks if current sytle has reverse attribute.
---@return boolean
function Style:has_reverse() end

-- has_italic checks if current sytle has italic attribute.
---@return boolean
function Style:has_italic() end

-- has_dim checks if current sytle has dim attribute.
---@return boolean
---@return boolean
function Style:has_dim() end

-- has_strike_through checks if current sytle has strike-through attribute.
---@return boolean
function Style:has_strike_through() end

-- has_underline checks if current sytle has underline attribute.
---@return boolean
function Style:has_underline() end
