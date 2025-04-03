---@meta awful.completion

---Helper utilities for bash-like completion lists.
---
---This module stores a set of functions using the system shell to
---complete command names.
---@class awful.completion
local M

---Enable programmable bash completion in awful.completion.bash at the price of
---a slight overhead.
---@param src string The bash completion source file.
---[/etc/bash_completion](file:/etc/bash_completion) by default.
function M.bashcomp_load(src) end

---@alias shell 'bash'|'zsh'

---Use shell ccompletion system to complete commands and filenames.
---@param command string
---@param cur_pos number The cursor position
---@param ncomp number The element number to complete.
---@param shell? shell The shell to use for completion, either `*'bash'*` or `*'zsh'*` are supported.
---@return string
---@return number
---@return table
function M.shell(command, cur_pos, ncomp, shell) end

---Run a generic completion.
---
---For this function to work properly the `awful.completion.keyword` table should
---be fed up with all keywords. The completion is then run against these keywords.
---@param text string The current text the user has typed.
---@param cur_pos number The current cursor position
---@param ncomp number The number of yet requested completion using current text.
---@param keywords table The keywords table used for completion.
---@return string #The new match.
---@return number #The new cursor position.
---@return table #The table of all matches.
function M.generic(text, cur_pos, ncomp, keywords) end
