---@meta

---@class lf.File : userdata
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

---@return lf.time.Time
function File:mod_time() end

---@return boolean
function File:is_dir() end

---@return integer
function File:link_state() end

---@return string
function File:link_target() end

---@return string
function File:path() end

---@return integer
function File:dir_count() end

---@return integer
function File:dir_size() end

---@return lf.time.Time
function File:access_time() end

---@return lf.time.Time
function File:birth_time() end

---@return lf.time.Time
function File:change_time() end

---@param str? string
---@return string
function File:custom_info(str) end

---@return string
function File:ext() end

---@param key any
---@param value any?
---@return any
function File:extra_info(key, value) end

---@return boolean
function File:is_previewable() end
