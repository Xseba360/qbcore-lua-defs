---@class QBServerCommands
---@field List table<string, QBCommand>
---@field IgnoreList table<string, boolean>
local QBServerCommands = {
}

---Add
---@param name string
---@param help string
---@param arguments any[]
---@param argsRequired boolean
---@param callback fun(source: number, args: string[], rawCommand: string): void
---@param permission string|std__Packed<string>
---@vararg any
function QBServerCommands.Add(name, help, arguments, argsRequired, callback, permission, ...)
end

---Refresh
---@param source Player
---@return void
function QBServerCommands.Refresh(source)
end
