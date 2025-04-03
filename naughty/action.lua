---@meta naughty.action


---@class _naughty.action
---@field name string #The name.
---@field position string #The position.
---@field icon string #The icon.
---@field icon_only boolean #If the action should hide the label and only display the icon.
---@field notification naughty.notification #The notification object.
---@field selected boolean #If the action is currently selected.
local C


---Execute this action.
---@param self? naughty.action
---@param notif? naughty.notification
function C:invoke(notif) end

---Emit a signal.
---@param name string The name of the signal.
---@param ... any Extra arguments for the callback functions.
function C:emit_signal(name, ...) end

---Connect to a signal.
---@param name string The name of the signal.
---@param func fun() the callback to call when the signal is emitted.
function C:connect_signal(name, func) end

function C:weak_connect_signal(name, func) end

---@class naughty.action : _naughty.action
---@operator call: _naughty.action
local M

return M
