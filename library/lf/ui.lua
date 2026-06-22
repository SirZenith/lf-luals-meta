---@meta

local M = {}

-- print_length returns displayed width of string content in terminal cells.
--
-- It ignores supported terminal control sequences and accounts for tab
---@param str string
---@return integer
function M.print_length(str) end

-- display_width calculates the display width of a string, by iterating
-- over grapheme clusters in the string and summing their widths.
---@param str string
---@return integer
function M.display_width(str) end

-- get_formatter returns formatter Lua message with given name.
---@param name string
---@return lf.LuaMsgExpr?
function M.get_formatter(name) end

-- get_printer returns printer Lua message with given name.
---@param name string
---@return lf.LuaMsgExpr?
function M.get_printer(name) end

---@param name string
---@param default_fmt_str string
---@param ... any
---@return any ...
function M.call_formatter_with_default_str(name, default_fmt_str, ...) end

---@param name string
---@param default_fmt_str string
---@return lf.tcell.Style
function M.get_style_with_default_str(name, default_fmt_str) end

---@param fmt_str any
---@param ... any
---@return string
function M.format_option_str(fmt_str, ...) end

---@param file lf.File
---@param dir lf.Dir
---@param user_width integer
---@param group_width integer
---@param custom_width integer
---@return string info
---@return string custom
---@return integer custom_offset
function M.get_file_display_info(file, dir, user_width, group_width, custom_width) end

---@param file lf.File
---@param max_width integer
---@return string
function M.truncate_filename(file, max_width) end

---@param str string
---@return string
function M.option_to_fmtstr(str) end

---@param str string
---@return string
function M.strip_term_sequence(str) end

---@param win lf.Win
---@param ui lf.UI
---@param context lf.PrintDirEntryContext
---@param files lf.File[]
function M.print_dir_entry_list(win, ui, context, files) end

---@param win lf.Win
---@param screen lf.tcell.Screen
---@param context lf.PrintDirEntryContext
---@param index integer
---@param file lf.File
function M.print_dir_entry_plain(win, screen, context, index, file) end

---@param win lf.Win
---@param ui lf.UI
---@param dir lf.Dir
---@param context lf.DirContext
---@param dir_style lf.DirStyle
---@param preview_timer lf.time.Timer
function M.print_directory_plain(win, ui, dir, context, dir_style, preview_timer) end

return M
