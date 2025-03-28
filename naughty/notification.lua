---@meta naughty.notification

---@class naughty.notification
local C

---Destroy notification by notification object.
---@param reason string #One of the reasons from `naughty.notification_closed_reason`
---@see naughty.notification_closed_reason
---@param keep_visible? boolean #If true, keep the notification visible. Defaults to *`false`* if ommitted
---@return boolean #Returns *`true`* if the popup was successfully destroyed, and *`false`* otherwise.
function C:destroy(reason, keep_visible) end

---Set new notification timeout.
---@param new_timeout number #Time in seconds after which a notification disappears.
function C:reset_timeout(new_timeout) end

function C:append_actions(new_actions) end

function C:grant(permission, context) end

function C:deny(permission, context) end

function C:emit_signal(name, ...) end

function C:connect_signal(name, func) end

---@param name string
---@param func fun(self: unknown, ...)
function C:weak_connect_signal(name, func) end

---@class _naughty.notification
---@operator call: naughty.notification
local M = {}

return M
