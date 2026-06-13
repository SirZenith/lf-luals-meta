---@meta

---@class lf.UIFormatterMsg
---@field action function
---@field is_async? boolean

---@alias lf.UIFormatterStrToStrFunc fun(s: string): string

---@class lf.UIFormatterStrToStr : lf.UIFormatterMsg
---@field action lf.UIFormatterStrToStrFunc

---@class lf.UIFormatterTbl
---@field cursoractive? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field cursorparent? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field cursorpreview? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field error? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field numbercursor? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field number? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
---@field tag? lf.UIFormatterStrToStrFunc | lf.UIFormatterStrToStr
