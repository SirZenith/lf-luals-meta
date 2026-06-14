---@meta

---@class lf.UIPrinterMsg
---@field action function
---@field is_async? boolean

---@class lf.UIPrinterDirEntryData
---@field context lf.PrintDirEntryContext
---@field index integer
---@field file lf.File

---@class lf.UIPrinterDirectoryData
---@field dir lf.Dir
---@field context lf.DirContext
---@field dir_style lf.DirStyle
---@field preview_timer lf.time.Timer

---@class lf.UIPrinterRulerData
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

---@class lf.UIPrinterPromptData
---@field user_name string
---@field host_name string
---@field file_name string
---@field pwd string
---@field pwd_with_sep string
---@field filter string[]
---@field spacer string

---@alias lf.UIPrinterDirEntryFunc fun(win: lf.Win, ui: lf.UI, data: lf.UIPrinterDirEntryData)
---@class lf.UIPrinterDirEntry : lf.UIPrinterMsg
---@field action lf.UIPrinterDirEntryFunc

---@alias lf.UIPrinterDirectoryFunc fun(win: lf.Win, ui: lf.UI, data: lf.UIPrinterDirectoryData)
---@class lf.UIPrinterDirectory : lf.UIPrinterMsg
---@field action lf.UIPrinterDirectoryFunc

---@alias lf.UIPrinterRulerFunc fun(win: lf.Win, ui: lf.UI, data: lf.UIPrinterRulerData)
---@class lf.UIPrinterRuler : lf.UIPrinterMsg
---@field action lf.UIPrinterRulerFunc

---@alias lf.UIPrinterPromptFunc fun(win: lf.Win, ui: lf.UI, data: lf.UIPrinterPromptData)
---@class lf.UIPrinterPrompt : lf.UIPrinterMsg
---@field action lf.UIPrinterPromptFunc

---@class lf.UIPrinterTbl
---@field dir_entry? lf.UIPrinterDirEntryFunc | lf.UIPrinterDirEntry
---@field directory? lf.UIPrinterDirectoryFunc | lf.UIPrinterDirectory
---@field ruler? lf.UIPrinterRulerFunc | lf.UIPrinterRuler
---@field prompt? lf.UIPrinterPromptFunc | lf.UIPrinterPrompt
