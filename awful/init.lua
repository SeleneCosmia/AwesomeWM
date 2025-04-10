---@meta awful

---@class awful
---@field autofocus _awful.autofocus
---@field button awful.button
---@field client unknown
---@field completion awful.completion
---@field keyboard awful.keyboard
---@field keygrabber awful.keygrabber
---@field key awful.key
---@field layout awful.layout
---@field menu awful.menu
---@field mouse unknown
---@field permissions awful.permissions
---@field placement awful.placement
---@field popup awful.popup
---@field prompt unknown
---@field rules unknown
---@field screen awful.screen
---@field screenshot awful.screenshot
---@field spawn unknown
---@field tag _awful.tag
---@field titlebar unknown
---@field tooltip unknown
---@field util unknown
---@field wallpaper unknown
---@field wibar unknown
---@field widget unknown
local M

---@deprecated
--- `awful.autofocus` has been replaced with `awful.permissions`.
---@class _awful.autofocus
---@see awful.permissions
M.autofocus = {}

return M
