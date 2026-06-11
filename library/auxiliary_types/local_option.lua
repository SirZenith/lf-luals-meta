---@meta

---@alias lf.LocalOptionEntry string | fun(): string

---@class lf.LocalOptionGroup
---@field dircounts? lf.LocalOptionEntry
---@field dirfirst? lf.LocalOptionEntry
---@field dironly? lf.LocalOptionEntry
---@field hidden? lf.LocalOptionEntry
---@field info? lf.LocalOptionEntry
---@field reverse? lf.LocalOptionEntry
---@field sortby? lf.LocalOptionEntry
---@field sortignorecase? lf.LocalOptionEntry
---@field sortignoredia? lf.LocalOptionEntry

---@alias lf.LocalOptionTbl table<string, lf.LocalOptionGroup>
