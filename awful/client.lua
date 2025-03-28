---@meta awful.client

---@class awful.client
---@field focus awful.client.focus
---@field property awful.client.property
---@field swap awful.client.swap
---@field urgent awful.client.urgent
---@field next unknown
---@field cycle unknown
---@field restore unknown
---@field iterate unknown
---@field idx unknown
---@field setwfact unknown
---@field incwfact unknown
---@field object unknown
local M

---@deprecated
---@param screen iscreen
---@return client[]
function M.tiled(screen) end

---@deprecated
---@param screen iscreen
---@return client[]
function M.visible(screen) end

return M
