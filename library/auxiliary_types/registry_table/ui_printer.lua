---@meta

---@class lf.UIPrinterMsg
---@field action function
---@field is_async? boolean

---@class lf.UIRulerData
---@field curr_file? lf.File
---@field width integer
---@field message string
---@field keys string
---@field progress string[]
---@field copy string[]
---@field cut string[]
---@field select string[]
---@field visual string[]
---@field index integer
---@field total integer
---@field hidden integer
---@field all integer
---@field line_percentage string
---@field scroll_percentage string
---@field filter string[]
---@field mode string

---@class lf.UIPromptLineData
---@field user_name string
---@field host_name string
---@field file_name string
---@field pwd string
---@field pwd_with_sep string
---@field filter string[]
---@field spacer string

---@alias lf.UIPrinterFileFunc fun(win: lf.Win, screen: lf.tcell.Screen, context: lf.PrintDirEntryContext, index: integer, file: lf.File)
---@class lf.UIPrinterFile : lf.UIPrinterMsg
---@field action lf.UIPrinterFileFunc

---@alias lf.UIPrinterRulerFunc fun(win: lf.Win, screen: lf.tcell.Screen, data: lf.UIRulerData)
---@class lf.UIPrinterRuler : lf.UIPrinterMsg
---@field action lf.UIPrinterRulerFunc

---@alias lf.UIPrinterPromptFunc fun(win: lf.Win, screen: lf.tcell.Screen, data: lf.UIPromptLineData)
---@class lf.UIPrinterPrompt : lf.UIPrinterMsg
---@field action lf.UIPrinterPromptFunc

---@class lf.UIPrinterTbl
---@field file? lf.UIPrinterFileFunc | lf.UIPrinterFile
---@field ruler? lf.UIPrinterRulerFunc | lf.UIPrinterRuler
---@field prompt? lf.UIPrinterPromptFunc | lf.UIPrinterPrompt
