---@meta ruled

---@alias rule_components { properties: table, callback: fun(c: client), rule: client[], rule_any: client[], except: client[], except_any: client[], rule_every: client[], rule_lesser: client[], rule_greater: client[], id: any }

---@class ruled
---@field client ruled.client
---@field notification ruled.notifications
local M

return M
