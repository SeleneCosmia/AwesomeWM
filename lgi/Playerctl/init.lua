---@meta lgi.Playerctl

---@alias lgi.Playerctl.Source
---| "NONE"
---| "DBUS_SESSION"
---| "DBUS_SYSTEM"

---@alias lgi.Playerctl.PlaybackStatus
---| "PLAYING"
---| "PAUSED"
---| "STOPPED"

---@alias lgi.Playerctl.LoopStatus
---| "NONE"
---| "TRACK"
---| "PLAYLIST"


---@class lgi.Playerctl
---@field Player lgi.Playerctl.Player
---@field PlayerManager lgi.Playerctl.PlayerManager
local M

---@return lgi.Playerctl.PlayerName[]
function M.list_players() end

return M
