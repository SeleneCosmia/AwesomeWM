---@meta awful.client.focus.history

---@class awful.client.focus.history
---@field is_enabled unknown
---@field previous unknown
local M

---Update client focus history.
---@param c client # The client that has been focused
function M.add(c) end

---Remove a client from the focus history.
---@param c client # The client that must be removed.
function M.delete(c) end

---Disable history tracking.
---@see awful.client.focus.history.enable_tracking to enable it again.
---@return integer? # The internal value of `disabled_count` (calls to this function without calling `awful.client.focus.history.enable_tracking`)
function M.disable_tracking() end

---Enable history tracking
---  This is the default, but can be disabled through |awful.client.focus.history.disable_tracking|
---@return boolean? # True if history tracking has been enabled.
function M.enable_tracking() end

---@alias client.object client

---Get the latest focused client for a screen in history.
---@param s integer|screen
---@param idx integer #The index:0 will return first candidate, 1 will return the second, etc...
---@param filter? function #An optional filter. If no client is found in the first iteration, `awful.client.focus.filter` is used by default to get any client.
---@return client.object? # A client
function M.get(s, idx, filter) end

---Is history tracking enabled?
---@return boolean? #True if history tracking is enabled.
---@return integer? #The number of times that tracking has been **disabled**
function M.is_enabled() end
