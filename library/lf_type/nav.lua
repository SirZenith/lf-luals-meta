---@meta

---@class lf.Nav
local Nav = {}

---@param path string
---@return string?
function Nav:get_tag(path) end

---@param path string
function Nav:select(path) end

---@param path string
function Nav:toggle_selection(path) end

function Nav:toggle() end

---@param path string
function Nav:tag_toggle_selection(path) end

function Nav:tag_toggle() end

function Nav:invert() end

function Nav:unselect() end

---@param pattern string
---@param intert boolean
function Nav:glob_sel(pattern, intert) end

---@return lf.Dir
function Nav:curr_dir() end
