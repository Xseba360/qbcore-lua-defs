---@class QBShared
---@field Items table<string, QBItem>
---@field ForceJobDefaultDutyAtLogin boolean
---@field Jobs table<string, QBJob> Keys: job name, Values: job data
---@field Vehicles table<string, QBVehicle> Keys: vehicle model name, Values: vehicle data
---@field Gangs table<string, QBGang> Keys: gang name, Values: gang data
---@field Weapons table<Hash, QBWeapon> Keys: weapon hash, Values: weapon data
---@field Locations table<string, Vector4> Keys: location name, Values: location data
---@field MaleNoGloves table<number, boolean>
---@field FemaleNoGloves table<number, boolean>
---@field StarterItems table<string, QBStarterItem> Keys: item name, Values: item data
local QBShared = {
}

---Debug
---@param resource string
---@param obj any
---@param depth number
---@return void
---@overload fun(resource: string, obj: any): void
---@overload fun(tbl: any, indent: number): void
function QBShared.Debug(resource, obj, depth)
end

---ShowError
---@param resource string
---@param message string
---@return void
function QBShared.ShowError(resource, message)
end

---ShowSuccess
---@param resource string
---@param message string
---@return void
function QBShared.ShowSuccess(resource, message)
end

---RandomStr
---@param length number
---@return string
function QBShared.RandomStr(length)
end

---RandomInt
---@param length number
---@return number
function QBShared.RandomInt(length)
end

---SplitStr
---@param str string
---@param delimiter string
---@return string[]
function QBShared.SplitStr(str, delimiter)
end

---Trim
---@param value string
---@return string
function QBShared.Trim(value)
end

---Round
---@param value number
---@param numDecimalPlaces number
---@return number
function QBShared.Round(value, numDecimalPlaces)
end

---ChangeVehicleExtra
---@param vehicle Vehicle
---@param extra number
---@param enable boolean
function QBShared.ChangeVehicleExtra(vehicle, extra, enable)
end

---SetDefaultVehicleExtras
---@param vehicle Vehicle
---@param config table<number, boolean>
function QBShared.SetDefaultVehicleExtras(vehicle, config)
end
