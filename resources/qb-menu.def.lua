---@class QBMenuExport
local QBMenuExport = {
}

---@alias QBMenuEntryParamsArgs any

---@shape QBMenuEntryParams
---@field event string
---@field args QBMenuEntryParamsArgs|nil

---@shape QBMenuEntry
---@field isMenuHeader boolean|nil
---@field header string
---@field txt string
---@field disabled boolean|nil
---@field params QBMenuEntryParams
---@field icon string|nil


---openMenu
---@param data QBMenuEntry[]
function QBMenuExport:openMenu(data)
end


---closeMenu
function QBMenuExport:closeMenu()
end

---openMenu
---@param data QBMenuEntry
function QBMenuExport:showHeader(data)
end
