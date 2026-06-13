---@meta

---@class lf.PrintDirEntryContext
local PrintDirEntryContext = {}

---@return lf.Dir
function PrintDirEntryContext:dir() end

---@return integer
function PrintDirEntryContext:dir_beg() end

---@return integer
function PrintDirEntryContext:dir_end() end

---@return lf.DirStyle
function PrintDirEntryContext:dir_style() end

---@return integer
function PrintDirEntryContext:lnwidth() end

---@return integer
function PrintDirEntryContext:user_width() end

---@return integer
function PrintDirEntryContext:group_width() end

---@return integer
function PrintDirEntryContext:custom_width() end

---@return string[]
function PrintDirEntryContext:selections() end

---@return lf.Clipboard
function PrintDirEntryContext:clipboard() end

---@return table<string, string>
function PrintDirEntryContext:tags() end

---@return string[]
function PrintDirEntryContext:visual_selectioins() end

---@param path string
---@return integer
function PrintDirEntryContext:get_selection_index(path) end

---@param path string
---@return boolean
function PrintDirEntryContext:visual_selection_contain(path) end

---@param path string
---@return string?
function PrintDirEntryContext:get_tag(path) end
