---@meta

---@class lf.File
local File = {
    LinkStateNotLink = nil, ---@type integer
    LinkStateWorking = nil, ---@type integer
    LinkStateBroken = nil, ---@type integer
}

---@param path string
---@return lf.File
function File.new(path) end

---@return string
function File:name() end

---@return integer
function File:size() end

---@return integer
function File:mode() end

---@return boolean
function File:is_dir() end

---@param value integer?
---@return integer
function File:link_state(value) end

---@param value string?
function File:link_target(value) end

---@param value string?
---@return string
function File:path(value) end

---@param value integer?
---@return integer
function File:dir_count(value) end

---@param value integer?
---@return integer
function File:dir_size(value) end

---@param value string?
---@return string
function File:custom_info(value) end

---@param value string?
---@return string
function File:ext(value) end

---@param key any
---@param value any?
---@return any
function File:extra_info(key, value) end
