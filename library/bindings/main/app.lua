---@meta

---@class lf.App : userdata
local App = {}

-- ui returns `ui` object hold by app
---@return lf.UI
function App:ui() end

-- nav returns `nav` object hold by app
---@return lf.Nav
function App:nav() end

-- read_file reads specified config file.
function App:read_file() end
