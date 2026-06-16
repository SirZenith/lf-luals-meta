---@meta

---@class lf.UI : userdata
local UI = {}

-- screen returns screen object used for UI drawing.
---@return lf.tcell.Screen
function UI:screen() end

-- wins_len returns length of directory window list.
function UI:wins_len() end

-- wins_get_index returns window object in window list with given index.
---@param index integer # 1-based index
---@return lf.Win
function UI:wins_get_index(index) end

-- iter_wins returns iterator function over directory window list.
-- This method can be used in `for` loop.
-- ```lua
-- for index, win in dir:iter_wins() do
--     -- ...
-- end
-- ```
---@return fun(list: userdata, index: integer): integer, lf.Win
---@return userdata list
---@return integer init_index
function UI:iter_wins() end

-- prompt_win returns window for printing prompt line.
---@return lf.Win
function UI:prompt_win() end

-- msg_win returns window for printing messgae and ruler.
---@return lf.Win
function UI:msg_win() end

-- menu_win returns window for printing completion menu.
---@return lf.Win
function UI:menu_win() end

-- styles returns style map used for printing files.
---@return lf.StyleMap
function UI:styles() end

-- icons returns icon map used for printing files.
---@return lf.IconMap
function UI:icons() end

-- win_at finds the window containing given position.
---@return integer index # index of result window in window list.
---@return lf.Win
function UI:win_at(x, y) end

-- renew updates size and position of each window.
function UI:renew() end

-- echo prints content to lf message bar.
---@param ... any
function UI:echo(...) end

-- echomsg prints content to both lf message bar and log.
---@param ... any
function UI:echomsg(...) end

-- echoerr prints error message to both lf message bar and log.
---@param ... any
function UI:echoerr(...) end

-- load_file loads preview data for file under cursor.
---@param is_volatile boolean # when set to true, lf will not cache preview data loaded by this call.
function UI:load_file(is_volatile) end
