---@class GlobalExports
---@overload fun(resource: string, handler: fun):void
---@overload fun(exports: string[]):void
---
---@field ['qb-core'] QBExport
---
---Default fallback for exports (no type checking/inference)
---@field [string] table<string, fun>
exports = {
}
