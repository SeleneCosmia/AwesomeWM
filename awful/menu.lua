---@meta awful.menu

---@class _awful.menu
local C

---@param args? {coords?: {x: integer, y: integer}} The arguments
function C:show(args) end

---@param args {coords?: {x: integer, y: integer}} The arguments with coords denoting the menu position with `x` and `y` keys and position (in pixels) as values.
function C:toggle(args) end

---@class awful.menu: _awful.menu
---@field menu_keys awful.menu.menu_keys
---@operator call: _awful.menu
local M ---@type fun(args: table, parent?: unknown)

---Key bindings for menu navigation.
---@class awful.menu.menu_keys
---@field up string[]
---@field down string[]
---@field exec string[]
---@field enter string[]
---@field back string[]
---@field close string[]

---Default awful.menu.entry constructor.
---@param args unknown The item params
---@return table
function M.entry(args) end

---Hide a menu popup.
function M:hide() end

---Update menu content.
function M:update() end

---Get the elder parent so for example when you kill it, it will destroy the whole family.
---@return awful.menu
function M:get_root() end

---Add a new menu entry. args.* params needed for the menu entry constructor.
---@param args {new?: fun(), theme?: table} The item params.
---@param index? number The index where the new entry will be inserted.
---@return table|nil #The new item
function M:add(args, index) end

---Delete menu entry at given position.
---@param num table|number The index in the table of the menu entry to be deleted; can be also the menu entry itself.
function M:delete(num) end

return M
