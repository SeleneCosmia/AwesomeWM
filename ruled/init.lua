---@meta ruled

---@alias rule_components { properties: table, callback?: fun(), rule: client[], rule_any: { [string]: client[] }, except: client[], except_any: { [string]: client[] }, rule_every: table<client>, rule_lesser: table<client[]>, rule_greater: client[], id: any }

---@class ruled
---@field client ruled.client
---@field notification ruled.notifications
local M

return M
