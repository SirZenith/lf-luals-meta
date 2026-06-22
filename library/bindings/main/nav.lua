---@meta

---@class lf.Nav : userdata
local Nav = {}

-- copy_count returns number of copy jobs.
---@return integer
function Nav:copy_jobs() end

-- copy_bytes returns copied bytes of current job.
---@return integer
function Nav:copy_bytes() end

-- copy_total returns total bytes size of copy jobs.
---@return integer
function Nav:copy_total() end

-- move_count returns number finished move jobs.
---@return integer
function Nav:move_count() end

-- move_total returns total number of move jobs.
---@return integer
function Nav:move_total() end

-- delete_count returns number finished delete jobs.
---@return integer
function Nav:delete_count() end

-- delete_total returns total number of delete jobs.
---@return integer
function Nav:delete_total() end

-- get_clipboard returns clipboard object.
---@return lf.Clipboard
function Nav:get_clipboard() end

-- get_marks_tbl returns a table of all marks. Keys are marks, and values are
-- their target paths.
---@return table<string, string>
function Nav:get_marks_tbl() end

-- get_mark_path returns target path of a mark, and `nil` if not path is set for
-- given mark.
---@param mark string
---@return string?
function Nav:get_mark_path(mark) end

-- get_tag_tbl returns tags record for all paths as table. Kes in table are full
-- path of files, and values are their tags.
---@return table<string, string>
function Nav:get_tag_tbl() end

-- get_tag returns tag of given path, and `nil` when no tag is set for target path.
---@param path string
---@return string
function Nav:get_tag(path) end

-- height returns height of navigation viewport.
---@return integer
function Nav:height() end

-- get_find_pattern returns find pattern in use.
---@return string
function Nav:get_find_pattern() end

-- is_find_back reports if current find mode is backwards.
---@return boolean
function Nav:is_find_back() end

-- get_search_pattern returns search pattern currently in use.
---@return string
function Nav:get_search_pattern() end

-- is_search_back reports if current search mode is backwards.
---@return boolean
function Nav:is_search_back() end

---@return integer
function Nav:get_search_index() end

---@return integer
function Nav:get_search_pos() end

-- jump_list return list of jump target.
---@return string[]
function Nav:jump_list() end

-- jump_list_len returns length of current jump list.
---@return integer
function Nav:jump_list_len() end

-- jump_list_get_index returns jump target in jump list with given index.
---@param index integer # 1-based index
---@return string
function Nav:jump_list_get_index(index) end

-- curr_jump_list_index returns 0-based index of current path in jump list.
function Nav:curr_jump_list_index() end

-- get_dir returns directory object for given path.
---@param path string
---@return lf.Dir
function Nav:get_dir(path) end

-- add_jump_list updats jump list by inserting current path to jump list.
function Nav:add_jump_list() end

-- cd_jump_list_prev goto previous target in jump list.
function Nav:cd_jump_list_prev() end

-- cd_jump_list_next goto next target in jump list.
function Nav:cd_jump_list_next() end

-- renew updates state of directories after change of option, directory contents,
-- etc.
function Nav:renew() end

-- reload clear caches and reload data.
function Nav:reload() end

-- update_position update selection and cursor position in opened directory after
-- change of option, directory contents, etc.
function Nav:update_position() end

-- preload triggers preload of preview.
function Nav:preload() end

-- sort srots current directory and its ancestor.
function Nav:sort() end

---@param filters string[]
---@return string? err
function Nav:set_filter(filters) end

-- up moves cursor up by `dist`.
---@param dist integer
---@return boolean moved # did file selection index get changed
function Nav:up(dist) end

-- down moves cursor down by `dist`.
---@param dist integer
---@return boolean moved # did file selection index get changed
function Nav:down(dist) end

-- scroll_up scrolls viewport up by `dist`.
---@param dist integer
---@return boolean moved # did file selection index get changed
function Nav:scroll_up(dist) end

-- scroll_down scrolls viewport down by `dist`.
---@param dist integer
---@return boolean moved # did file selection index get changed
function Nav:scroll_down(dist) end

-- updir change current directory one level up.
---@return string? err
function Nav:updir() end

-- open enters currently selected directory.
---@return string? err
function Nav:open() end

-- top changes selection to first file.
---@return boolean moved # did file selection index get changed
function Nav:top() end

-- top changes selection to last file.
---@return boolean moved # did file selection index get changed
function Nav:bottom() end

-- high moves cursor position to higher part of viewport.
---@return boolean moved # did file selection index get changed
function Nav:high() end

-- middle moves cursor position to middle part of viewport.
---@return boolean moved # did file selection index get changed
function Nav:middle() end

-- low moves cursor position to lower part of viewport.
---@return boolean moved # did file selection index get changed
function Nav:low() end

-- move changes `files` selection to given index.
---@param index integer # 0-based index
---@return boolean moved # did file selection index get changed
function Nav:move(index) end

-- select marks given path as selected.
---@param path string
function Nav:select(path) end

-- toggle_selection toggles selection of given path.
---@param path string
function Nav:toggle_selection(path) end

-- toggle toggles selection of current path.
function Nav:toggle() end

-- tag_toggle_selection toggles tag of given path.
---@param path string
---@param tag string
function Nav:tag_toggle_selection(path, tag) end

-- tag_toggle toggles tags of current file.
---@param tag string
---@return string? err
function Nav:tag_toggle(tag) end

-- tag sets tag for current selected file(s).
---@param tag string
---@return string? err
function Nav:tag(tag) end

-- invert invers selection.
function Nav:invert() end

-- unselect clear selection.
function Nav:unselect() end

-- unselect_one unselect one file.
---@param path string
function Nav:unselect_one(path) end

-- cd enters given path.
---@param path string
function Nav:cd(path) end

-- glob_sel makes selection with glob pattern.
---@param pattern string
---@param intert boolean
function Nav:glob_sel(pattern, intert) end

-- find_next goes to next find result.
---@return boolean moved # did file selection index get changed
---@return boolean found
function Nav:find_next() end

-- find_prev goes to previous find result.
---@return boolean moved # did file selection index get changed
---@return boolean found
function Nav:find_prev() end

-- search_next goes to next search result.
---@return boolean moved # did file selection index get changed
---@return string? err
function Nav:search_next() end

-- search_prev goes to previous search result.
---@return boolean moved # did file selection index get changed
---@return string? err
function Nav:search_prev() end

-- remove_mark deletes given mark recrod.
---@param mark string
---@return string? err
function Nav:remove_mark(mark) end

-- read_marks loads mark records from file.
---@return string? err
function Nav:read_marks() end

-- write_marks writes mark records to file.
---@return string? err
function Nav:write_marks() end

-- read_tags reads tag records from file.
---@return string? err
function Nav:read_tags() end

-- write_marks writes tag records to file.
---@return string? err
function Nav:write_tags() end

-- is_visual_mode reports if visual mode is on
---@return boolean
function Nav:is_visual_mode() end

-- curr_dir returns current directory object.
---@return lf.Dir?
function Nav:curr_dir() end

-- curr_file returns current selected file object.
---@return lf.File?
function Nav:curr_file() end

-- curr_selections returns list of path of selected entries.
---@return string[]
function Nav:curr_selections() end

-- curr_file_or_selection returns a list of path, if there are selections, this
-- will be a list containing their paths, otherwise this would be a list containing
-- path of current file.
---@return string[]?
---@return string? err
function Nav:curr_file_or_selection() end
