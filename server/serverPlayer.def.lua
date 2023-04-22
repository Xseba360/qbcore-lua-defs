---@class QBServerPlayer
---@field Functions QBServerPlayerFunctions
---@field PlayerData QBPlayerData
---@field Offline boolean
local QBServerPlayer = {
}

---@class QBServerPlayerFunctions
---@field [string] fun(...: any): any
local QBServerPlayerFunctions = {
}

---UpdatePlayerData
---Unsupported for Offline Players
---@return void
function QBServerPlayerFunctions.UpdatePlayerData()
end

---SetJob
---@param job string
---@param grade string
---@return boolean
function QBServerPlayerFunctions.SetJob(job, grade)
end

---SetGang
---@param gang string
---@param grade string
---@return boolean
function QBServerPlayerFunctions.SetGang(gang, grade)
end

---SetJobDuty
---@param onDuty boolean
---@return void
function QBServerPlayerFunctions.SetJobDuty(onDuty)
end

---SetPlayerData
---@param key string
---@param value any
---@return void
function QBServerPlayerFunctions.SetPlayerData(key, value)
end

---SetMetaData
---@param meta string
---@param value any
---@return void
function QBServerPlayerFunctions.SetMetaData(meta, value)
end

---GetMetaData
---@param meta string
---@return any
function QBServerPlayerFunctions.GetMetaData(meta)
end

---AddJobReputation
---@param amount number
---@return void
function QBServerPlayerFunctions.AddJobReputation(amount)
end

---AddMoney
---@param moneyType string
---@param amount number
---@param reason string
---@return boolean
---@overload fun(moneyType: string, amount: number): boolean
function QBServerPlayerFunctions.AddMoney(moneyType, amount, reason)
end

---RemoveMoney
---@param moneyType string
---@param amount number
---@param reason string
---@return boolean
---@overload fun(moneyType: string, amount: number): boolean
function QBServerPlayerFunctions.RemoveMoney(moneyType, amount, reason)
end

---SetMoney
---@param moneyType string
---@param amount number
---@param reason string
---@return boolean
---@overload fun(moneyType: string, amount: number): boolean
function QBServerPlayerFunctions.SetMoney(moneyType, amount, reason)
end

---GetMoney
---@param moneyType string
---@return number
function QBServerPlayerFunctions.GetMoney(moneyType)
end

---SetCreditCard
---@param cardNumber string
---@return void
function QBServerPlayerFunctions.SetCreditCard(cardNumber)
end

---GetCardSlot
---@param cardNumber string
---@param cardType string|any
---@return number
function QBServerPlayerFunctions.GetCardSlot(cardNumber, cardType)
end

---Save
---@return void
function QBServerPlayerFunctions.Save()
end

---Logout
---Unsupported for Offline Players
---@return void
function QBServerPlayerFunctions.Logout()
end

---AddMethod
---@param methodName string
---@param handler function
---@return void
function QBServerPlayerFunctions.AddMethod(methodName, handler)
end

---AddField
---@param fieldName string
---@param data any
---@return void
function QBServerPlayerFunctions.AddField(fieldName, data)
end
