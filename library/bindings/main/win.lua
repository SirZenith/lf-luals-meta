---@meta

---@class lf.Win : userdata
local Win = {}

---@param w integer
---@param h integer
---@param x integer
---@param y integer
---@return lf.Win
function Win.new(w, h, x, y) end

---@return integer
function Win.w() end

---@return integer
function Win.h() end

---@return integer
function Win.x() end

---@return integer
function Win.y() end

---@param w integer
---@param h integer
---@param x integer
---@param y integer
function Win:renew(w, h, x, y) end

---@param screen lf.tcell.Screen
---@param x integer
---@param y integer
---@param st lf.tcell.Style
---@param str string
---@return lf.tcell.Style
function Win:print(screen, x, y, st, str) end

---@param screen lf.tcell.Screen
---@param msg string
function Win:print_msg(screen, msg) end
