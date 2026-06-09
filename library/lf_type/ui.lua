---@meta

---@class lf.UI
local UI = {}

---@param ... any
function UI:echo(...) end

---@param ... any
function UI:echomsg(...) end

---@param ... any
function UI:echoerr(...) end

---@param fmt string
---@param ... string
function UI:echoerrf(fmt, ...) end
