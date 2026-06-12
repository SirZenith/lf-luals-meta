---@meta

---@class lf.tcell.Style : userdata
local Style = {}

---@return lf.tcell.Style
function Style.new() end

---@return string
function Style.reset_string() end

---@return string
function Style:tostring() end

---@param ... string
---@return string
function Style:wrap(...) end

---@param color lf.tcell.Color
---@return lf.tcell.Style
function Style:foreground(color) end

---@param color lf.tcell.Color
---@return lf.tcell.Style
function Style:background(color) end

---@param r integer
---@param g integer
---@param b integer
---@return lf.tcell.Style
function Style:foreground_rgb(r, g, b) end

---@param r integer
---@param g integer
---@param b integer
---@return lf.tcell.Style
function Style:background_rgb(r, g, b) end

---@param name lf.tcell.ColorName | string # color name or hex code starts with `#`
---@return lf.tcell.Style
function Style:foreground_name(name) end

---@param name lf.tcell.ColorName | string # color name or hex code starts with `#`
---@return lf.tcell.Style
function Style:background_name(name) end

---@return lf.tcell.Style
---@return lf.tcell.Style
function Style:normal() end

---@param activate boolean
---@return lf.tcell.Style
function Style:bold(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:blink(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:dim(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:italic(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:reverse(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:strike_through(activate) end

---@param activate boolean
---@return lf.tcell.Style
function Style:underline(activate) end

---@return boolean
function Style:has_bold() end

---@return boolean
function Style:has_blink() end

---@return boolean
function Style:has_reverse() end

---@return boolean
function Style:has_italic() end

---@return boolean
function Style:has_dim() end

---@return boolean
function Style:has_strike_through() end

---@return boolean
function Style:has_underline() end
