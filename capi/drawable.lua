---@meta _

---@class _drawable
---@field image? string|cairo_surface # Drawable object.
local C

---Refresh a drawable's content. This has to be called whenever some drawing to the drawable's surface has been done and should become visible.
---@return geometry
function C:refresh() end

---Get drawable geometry.
---
---Geometry consists of **`x`** and **`y`** coordinates & **`width`** and **`height`**.
---@return geometry geometry #A table with drawable coordinates and geometry.
function C:geometry() end


---@class drawable : _drawable
---@field [integer] drawable
drawable = {}

---Get the number of instances.
---@return drawable[]
function drawable.instances() end

---Connect to a signal.
---@param name _drawable_signals # A string with the event name.
---@param func fun(...: any) # The function to call
function drawable.connect_signal(name, func) end

---Disconnect from a signal.
---@param name _drawable_signals # A string with the event name.
---@param func fun(...: any) # The function to disconnect
function drawable.disconnect_signal(name, func) end

---Emit a signal.
---@param name _drawable_signals # The name of the signal.
---@param ... any # Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments are given to `emit_signal()`.
function drawable.emit_signal(name, ...) end
