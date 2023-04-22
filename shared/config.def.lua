---@class QBConfig
---@field MaxPlayers number
---@field DefaultSpawn Vector4
---@field UpdateInterval number
---@field StatusInterval number
---@field Money QBConfigMoney
---@field Player QBConfigPlayer
---@field Server QBConfigServer
---@field Notify QBConfigNotify
local QBConfig = {}

---@shape QBConfigMoney
---@field MoneyTypes table<string, number>
---@field DontAllowMinus string[]
---@field PayCheckTimeOut number
---@field PayCheckSociety boolean

---@shape QBConfigPlayer
---@field HungerRate number
---@field ThirstRate number
---@field Bloodtypes string[]

---@shape QBConfigServer
---@field Closed boolean
---@field ClosedReason string
---@field Uptime number
---@field Whitelist boolean
---@field WhitelistPermission string
---@field PVP boolean
---@field Discord string
---@field CheckDuplicateLicense boolean
---@field Permissions string[]

---@shape QBConfigNotify
---@field NotificationStyling QBConfigNotificationStyling
---@field VariantDefinitions table<string, QBConfigNotifyVariantDefinition>

---@alias QBConfigNotificationStylingPosition "top-left"|"top-right"|"bottom-left"|"bottom-right"|"top"|"bottom"|"left"|"right"|"center"

---@shape QBConfigNotificationStyling
---@field group boolean
---@field position QBConfigNotificationStylingPosition
---@field progress boolean

---@shape QBConfigNotifyVariantDefinition
---@field classes string
---@field icon string
