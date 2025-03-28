---@meta awful.client.focus

---@class awful.client.focus
---@field history awful.client.focus.history
---@field bydirection unknown
---@field global_bydirection unknown
local M

---Focus a client by its relative index.
---@param index integer #The index
---@param client? client #The client
function M.byidx(index, client) end

--- Filter out windows that we do not want handled by focus. This usually means that the desktop, dock, splash windows
--- are not registered and cannot get focus.
--- ---
--- Returns the same client if it's ok, otherwise returns nil.
---@param client client #A client
function M.filter(client) end

return M
