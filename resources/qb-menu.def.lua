---@class QBMenuExport
local QBMenuExport = {
}

---@shape QBMenuEntryParams
---@field event string
---@field args any

---@shape QBMenuEntry
---@field isMenuHeader boolean
---@field header string
---@field txt string
---@field disabled boolean
---@field params QBMenuEntryParams
---@field icon string


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
