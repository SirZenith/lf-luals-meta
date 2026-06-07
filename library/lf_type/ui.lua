---@meta

---@class lf.UI
local UI = {}

---@param msg string
function UI:echo(msg) end

---@param msg string
function UI:echomsg(msg) end

---@param ... string
function UI:echoerr(...) end

---@param fmt string
---@param ... string
function UI:echoerrf(fmt, ...) end
