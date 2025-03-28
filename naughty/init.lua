---@meta naughty

---@class naughty
--- When suspended, no notificaion widget should interrupt the user.
--- This is useful, for example, when watching movies or doing presentations.
---@field suspended? boolean #The global suspension state.
---@field expiration_paused? boolean #Do not allow notifications to auto-expire.
---@field active? table #A list of naughty.notification objects.
local C

C.suspended = false
C.expiration_paused = false

---Destroy all notifications on given screens.
---@param screens? table
---@param reason naughty.notification_closed_reason
---@return boolean|nil
function C.destroy_all_notifications(screens, reason) end

---The reason why a notification is to be closed
---@class (exact) naughty.notification_closed_reason
---@field too_many_on_screen? number
---@field silent? number
---@field expired? number
---@field dismissed_by_user? number
---@field dismissed_by_command? number
---@field undefined? number
C.notification_closed_reason = {}
C.notification_closed_reason.too_many_on_screen = -2
C.notification_closed_reason.silent = -1
C.notification_closed_reason.expired = 1
C.notification_closed_reason.dismissed_by_user = 2
C.notification_closed_reason.dismissed_by_command = 3
C.notification_closed_reason.undefined = 4

---Get notification by ID
---@param id integer ID of the notification
---`naughty.notification` or `nil`
---*notification object* if it was found, *nil* otherwise
---@return naughty.notification|nil
function C.get_by_id(id) end

---Connect a global signal on the module.
--- ---
--- Functions connected to this signal source will be executed when any module object
--- emits the signal.
---
--- It is also used for some generic module signals such as `request::display`.
---@param name naughty_signals # The name of the signal
---@param func fun() # Function to attach
function C.connect_signal(name, func) end

---Emit a module signal.
---@param name naughty_signals # The signal name
---@param ... any # The signal callback arguments
function C.emit_signal(name, ...) end

---Disconnect a signal from a source.
---@param name naughty_signals # The name of the signal
---@param func fun() # The attached function
---@return boolean #If the disconnection was successful
function C.disconnect_signal(name, func) end

---The default handler for `request::screen`.
---  It selects **`awful.screen.focused()`**.
function C.default_screen_handler() end

---@class naughty
local M

return M
