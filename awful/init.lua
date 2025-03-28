---@meta awful

---@class awful
---@field autofocus awful.autofocus
---@field placement awful.placement
---@field screen awful.screen
---@field popup awful.popup
---@field client unknown
---@field tag unknown
---@field widget unknown
---@field keygrabber awful.keygrabber
---@field key awful.key
---@field keyboard awful.keyboard
---@field mouse unknown
---@field button awful.button
---@field completion unknown
---@field layout awful.layout
---@field permissions awful.permissions
---@field prompt unknown
---@field rules unknown
---@field spawn unknown
---@field util unknown
---@field titlebar unknown
---@field tooltip unknown
---@field wallpaper unknown
---@field wibar unknown
---@field screenshot unknown
---@field menu unknown
local M

---@deprecated
--- `awful.autofocus` has been deprecated.
--- Use `awful.permissions` instead.
---@class awful.autofocus
---@see awful.permissions
M.autofocus = {}

return M
