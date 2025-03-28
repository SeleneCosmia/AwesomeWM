---@meta naughty

---`naughty`
---
---Notification library.
---
---For more details on creating notifications, see: [naughty.notification](lua://naughty.notification).
---@class naughty
---@field suspended? boolean #The global suspension state. Default value = `false`
---@field expiration_paused? boolean #Do not allow notifications to auto-expire.
---@field active? table #A list of naughty.notification objects.
---@field has_display_handler? boolean #True when there is a handler connected to `request::display`.
---@field auto_reset_timeout? boolean #If the timeout needs to be reset when a property changes.
---@field image_animations_enabled? boolean #Enable or disable naughty ability to claim to support animations.
---@field persistence_enabled? boolean #Enable or disable the persistent notifications.
---@field notification naughty.notification
local M = {}

--- When suspended, no notificaion widget should interrupt the user.
---
--- This is useful, for example, when watching movies or doing presentations.
---
---Emit signals:
--- - **`property::suspended`** When the suspended value changes
---   - **`self`** *naughty* 󰁔 The object which changed.
---   - **`new_value`** *suspended* 󰁔 The new value affected to the property.
M.suspended = false

M.expiration_paused = false

M.active = {}

M.auto_reset_timeout = true

M.image_animations_enabled = false

M.persistence_enabled = false


---The reason why a notification is to be closed.
---@enum naughty.notification_closed_reason
M.notification_closed_reason = {
  too_many_on_screen = -2,
  silent = -1,
  expired = 1,
  dismissed_by_user = 2,
  dismissed_by_command = 3,
  undefined = 4,
}

---Destroy all notifications on given screens.
---@param screens? table
---@param reason naughty.notification_closed_reason
---@return boolean|nil
function M.destroy_all_notifications(screens, reason) end

---Get notification by ID
---
--- Returns: `naughty.notification` or `nil`
---    - *`naughty.notification object`* if it was found
---    - *`nil`* otherwise
---@param id integer #ID of the notification
---@return naughty.notification | nil
function M.get_by_id(id) end

---Connect a global signal on the module.
--- ---
--- Functions connected to this signal source will be executed when any module object
--- emits the given signal.
---
--- It is also used for some generic module signals such as `"request::display"`.
---@param name naughty_signals #The name of the signal.
---@param func fun() #Function to attach.
function M.connect_signal(name, func) end

---Emit a module signal.
---@param name naughty_signals #The name of the signal to emit.
---@param ... any #The signal callback arguments
function M.emit_signal(name, ...) end

---Disconnect a signal from a source.
---@param name naughty_signals # The name of the signal
---@param func fun() # The attached function
---@return boolean #If the disconnection was successful
function M.disconnect_signal(name, func) end

---The default handler for `request::screen`.
---  It selects **`awful.screen.focused()`**.
function M.default_screen_handler() end

return M
