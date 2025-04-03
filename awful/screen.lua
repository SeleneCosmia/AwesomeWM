---@meta awful.screen

---@class awful.screen
---@field default_focused_args unknown
---@field focus unknown
---@field focus_bydirection unknown
---@field preferred unknown
---@field set_auto_dpi_enabled unknown
local M

---Return the screen index corresponding to the given (pixel) coordinates.
---@param x number The `x` coordinate
---@param y number The `y` coordinate
---@return integer? #The screen index.
function M.getbycoord(x, y) end

---Get the focused screen.
---@return screen?
function M.focused() end

---Move the focus to a screen relative to the current one.
---
---This moves the mouse pointer to the last known position on the new screen,
---or keeps its position relative to the currently focused screen.
---@param offset integer Value to add to the current focused screen index.
---   • **`1`** to focus the next one
---   • **`-1`** to focus the previous one
---@return screen #The newly focused screen.
function M.focus_relative(offset) end

---Call a function for each existing and created-in-the-future screen.
---@param callback fun(screen: screen)
function M.connect_for_each_screen(callback) end

---Undo the effect of `awful.screen.connect_for_each_screen`.
---@param callback fun(screen: screen)
function M.disconnect_for_each_screen(callback) end

return M
