---@meta awful.tag

---@class _awful.tag
---@field history _awful.tag.history
---@field layouts unknown
local M

---@param name string The tag name
---@param props? table|nil The tags initial properties.
function M.add(name, props) end

function M.new(names, screen, layout) end

---Find a suitable fallback tag
---@param screen? screen
---@param invalids? table|nil
---@return tag|nil
function M.find_fallback(screen, invalids) end

---Find a tag by name
---@param s screen
---@param name string
---@return tag|nil
function M.find_by_name(s, name) end

---Increase master width factor.
---@param add number Value to add to master width factor.
---@param t? tag The tag to modify.
function M.incmwfact(add, t) end

---Increase the spacing between clients
---@param add number Value to add to the spacing between clients.
---@param t? tag The tag to modify
function M.incgap(add, t) end

---Toggle size fill policy for the master client(s) between "expand" and `master_width_factor`.
---@param t? tag The tag to modify.
function M.togglemfpol(t) end

---Increase the number of master windows.
---@param add number Value to add to number of master windows.
---@param t? tag The tag to modify
---@param sensible? boolean Limit nmaster based on the number of visible tiled windows?
function M.incnmaster(add, t, sensible) end

---Increase the number of column windows.
---@param add number Value to add to number of column windows.
---@param t? tag The tag to modify.
---@param sensible? boolean Limit column_count based on the number of visible tiled windows?
function M.incncol(add, t, sensible) end

---View no tag.
---@param screen? integer|screen The screen.
function M.viewnone(screen) end

---Select a tag relative to the currently selected one.
---   Note that this doesn't work well with multiple selection.
---@param i number The **relative** index to see.
---@param screen? screen The screen
function M.viewidx(i, screen) end

---View next tag. This is the same as `tag.viewidx(1)`.
---   Note that this doesn't work well with multiple selection.
---@param screen screen
function M.viewnext(screen) end

---View previous tag. This is the same as `tag.viewidx(-1)`.
---   Note that this doesn't work well with multiple selection.
---@param screen screen The screen.
function M.viewprev(screen) end

---View only a set of tags.
---@param tags table A table with tags to view only
---@param screen? screen The screen of the tags
---@param maximum? number The maximum number of tags to select.
function M.viewmore(tags, screen, maximum) end

---Toggle selection of a tag
---@param t tag Tag to be toggled
function M.viewtoggle(t) end

---Add a signal to all attached tags and all tags that will be attached in the future. When a tag is detached from the screen, its signal is removed.
---@param screen screen|nil The screen concered, or all if `nil`.
---@param signal _tag_signals The signal name.
---@param callback fun()
function M.attached_connect_signal(screen, signal, callback) end

return M
