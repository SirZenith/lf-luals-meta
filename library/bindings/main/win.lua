---@meta

---@class lf.Win : userdata
local Win = {}

-- new creates new window object.
---@param w integer
---@param h integer
---@param x integer
---@param y integer
---@return lf.Win
function Win.new(w, h, x, y) end

-- w returns width of window.
---@return integer
function Win.w() end

-- h returns height of window.
---@return integer
function Win.h() end

-- x returns x coordinate of window.
---@return integer
function Win.x() end

-- y returns y coordinate of window.
---@return integer
function Win.y() end

-- renew updates window's width, height, x and y coordinate.
---@param w integer
---@param h integer
---@param x integer
---@param y integer
function Win:renew(w, h, x, y) end

-- print puts text to screen.
---@param screen lf.tcell.Screen
---@param x integer # x offset for printing
---@param y integer # y offset for printing
---@param st lf.tcell.Style # style of text
---@param str string
---@return lf.tcell.Style
function Win:print(screen, x, y, st, str) end

-- print_line prints content to screen, and fills the gap between text end
-- and window's edge with whitespace.
---@param screen lf.tcell.Screen
---@param x integer # x offset for printing
---@param y integer # y offset for printing
---@param st lf.tcell.Style # style of text
---@param str string
function Win:print_line(screen, x, y, st, str) end

-- print_right prints right aligned text.
---@param screen lf.tcell.Screen
---@param y integer # y offset for printing
---@param st lf.tcell.Style # style of text
---@param str string
function Win:print_right(screen, y, st, str) end

-- print_msg prints text with reversed style (exchanging foreground and
-- background color) to screen.
---@param screen lf.tcell.Screen
---@param msg string
function Win:print_msg(screen, msg) end
