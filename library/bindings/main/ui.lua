---@meta

---@class lf.UI : userdata
local UI = {}

---@return lf.tcell.Screen
function UI:screen() end

---@param ... any
function UI:echo(...) end

---@param ... any
function UI:echomsg(...) end

---@param ... any
function UI:echoerr(...) end

---@param fmt string
---@param ... string
function UI:echoerrf(fmt, ...) end
