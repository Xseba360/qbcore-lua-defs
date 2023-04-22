---@class GlobalExports
---@overload fun(resource: string, handler: fun):void
---@overload fun(exports: string[]):void
---
---@field ['qb-core'] QBExport
---@field ['qb-inventory'] QBInventoryExport
---
---Default fallback for exports (no type checking/inference)
---@field [string] table<string, fun>
exports = {
}
