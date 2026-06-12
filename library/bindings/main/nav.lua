---@meta

---@class lf.Nav : userdata
local Nav = {}

---@param path string
---@return lf.Dir
function Nav:get_dir(path) end

function Nav:cd_jump_list_prev() end

function Nav:cd_jump_list_next() end

function Nav:renew() end

function Nav:reload() end

function Nav:sort() end

---@param filters string[]
function Nav:set_filter(filters) end

---@param dist integer
function Nav:up(dist) end

---@param dist integer
function Nav:down(dist) end

---@param dist integer
function Nav:scroll_up(dist) end

---@param dist integer
function Nav:scroll_down(dist) end

function Nav:updir() end

function Nav:open() end

---@return boolean
function Nav:top() end

---@return boolean
function Nav:bottom() end

---@return boolean
function Nav:high() end

---@return boolean
function Nav:middle() end

---@return boolean
function Nav:low() end

---@param dist integer
function Nav:move(dist) end

---@param path string
function Nav:select(path) end

---@param path string
function Nav:toggle_selection(path) end

function Nav:toggle() end

---@param path string
---@param tag string
function Nav:tag_toggle_selection(path, tag) end

---@param tag string
---@return string? err
function Nav:tag_toggle(tag) end

---@param tag string
---@return string? err
function Nav:tag(tag) end

function Nav:invert() end

function Nav:unselect() end

---@param path string
function Nav:unselect_one(path) end

---@param path string
function Nav:cd(path) end

---@param pattern string
---@param intert boolean
function Nav:glob_sel(pattern, intert) end

---@return string? err
function Nav:read_marks() end

---@return string? err
function Nav:write_marks() end

---@return string? err
function Nav:read_tags() end

---@return string? err
function Nav:write_tags() end

---@return lf.Dir?
function Nav:curr_dir() end

---@return lf.File?
function Nav:curr_file() end

---@return string[]
function Nav:curr_selections() end

---@return string[]
function Nav:curr_file_or_selection() end

---@param path string
---@return string?
function Nav:get_tag(path) end
