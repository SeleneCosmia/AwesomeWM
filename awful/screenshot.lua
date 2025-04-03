---@meta awful.screenshot

---@class _awful.screenshot
local C

---Take new screenshot(s) now.
---@return table table #A table with the method name as key and the image(s) as value.
function C:refresh() end

---Save screenshot.
---@param self awful.screenshot
---@param file_path? path Optionally override the file path. Defaults to `self.file_path`
function C:save(file_path) end

---Save and exit the interactive snipping mode.
---@return boolean boolean #`true` if the screenshot was saved, `false` otherwise.
function C:accept() end

---Exit the interactive snipping mode without saving.
---@param reason? string The rejection reason. This is passed to the `"snipping::cancelled"` signal.
function C:reject(reason) end

---@class awful.screenshot: _awful.screenshot
---@field directory? string Get screenshot directory property.
---@field prefix? string Get screenshot prefix property.
---@field file_path? path Get screenshot file path.
---@field file_name? string Get screenshot file name.
---@field date_format? string The date format used in the default suffix.
---@field cursor? cursor The cursor used in interactive mode
---@field interactive? boolean Use the mouse to select an area (snipping tool)
---@field screen? screen|nil Get screenshot screen.
---@field client? client|nil Get screenshot client.
---@field geometry? geometry Get screenshot geometry.
---@field protected surface? nil|image
---@field protected surfaces? table
---@field minimum_size? nil|integer|{ width: integer, height: integer } Set a minimum size to save a screenshot.
---@field frame_color? color|nil The interactive frame color.
---@field frame_shape? shape|nil
---@field reject_buttons? awful.button Define which mouse button(s) exit the interactive snipping mode.
---@field accept_buttons? awful.button Mouse buttons used to save the screenshot when using the interactive snipping mode.
---@field protected keygrabber? awful.keygrabber The [awful.keygrabber](awful.keygrabber) object used for the `accept` and `reject` keys. This can be used to add new keybindings to the interactive snipper mode.
---@field protected selected_geometry? {x: integer, y: integer, width: integer, height: integer, surface: image, method: 'root'|'client'|'screen'|'geometry'} The current interactive snipping mode selection.
---@field auto_save_delay? integer|nil Number of seconds before auto-saving or entering the interactive snipper. You can use `0` to auto-save immediately.
---@field auto_save_tick_duration? number Duration (in seconds) bewtween the `"time::tick"` signals when using `auto_save_delay`.
---@field protected content_widget? wibox.widget.imagebox Export this screenshot as a `wibox.widget.imagebox` instead of a file.
--- This can be used to place the screenshot in a `wibox`,`awful.popup`, or `awful.wibar`.
---@operator call: _awful.screenshot
local M

return M
