---@meta ruled.client

---@alias ruled.client.rule.source
---| "awful.rules"
---| "awful.spawn"
---| "awful.spawn_once"
---| string

---@alias ruled.client.match fun(c: client, rule: table): boolean
---@alias ruled.client.match_any fun(c: client, rule: table): boolean
---@alias ruled.client.matches fun(c: client, entry: rule_components): boolean

---|class ruled.client.rules
---|field properties client
---|field id? table|string|number|fun()
---|field callback? fun(c: client)
---|field rule? table
---|field rule_any? table
---|field rule_every? table
---|field except? table
---|field except_any? table
---|field rule_lesser? table
---|field rule_greater? table

---|class rule_components : ruled.client.rules

---@class ruled.client
---@field extra_properties unknown
---@field high_priority_properties unknown
---@field delayed_properties unknown
---@field append_rules unknown
---@field remove_rule unknown
---@field match ruled.client.match
---@field match_any ruled.client.match_any
---@field matches fun(c: client, entry: table): boolean
---@field matching_rules fun(c: client, rules: table): table
---@field matches_list fun(c: client, rules: table)
---@field remove_rule_source unknown
---@field apply unknown
---@field execute unknown
---@field emit_signal unknown
---@field disconnect_signal unknown
local M

---Add a new rule to the default set.
---@param rule rule_components
function M.append_rule(rule) end

---@param signal _client_signals
---@param func fun()
function M.connect_signal(signal, func) end

---Add a new rule source.
---@param name string #The provider name. It **must** be unique.
---@param callback { c: client, properties: table, callbacks: table }
---@param depends_on? table #A list of names of sources this source depends on. These must be executed *before* `name`.
---@param precede? table #A list of names of sources this source has priority over.
---@return boolean #Returns false if a dependency conflict was found.
function M.add_rule_source(name, callback, depends_on, precede) end

function M.matches_list() end

return M
