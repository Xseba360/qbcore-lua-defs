---@class QBPlayer
local QBPlayer = {}

---Login
---@param source Player
---@param citizenId string
---@param newData QBPlayerData
---@return boolean
function QBPlayer.Login(source, citizenId, newData)
end

---GetOfflinePlayer
---@param citizenId string
---@return QBServerPlayer
function QBPlayer.GetOfflinePlayer(citizenId)
end

---CheckPlayerData
---@param source Player
---@param PlayerData QBPlayerData
---@return void
function QBPlayer.CheckPlayerData(source, PlayerData)
end

---Logout
---@param source Player
---@return void
function QBPlayer.Logout(source)
end

---CreatePlayer
---@param PlayerData QBPlayerData
---@return boolean
function QBPlayer.CreatePlayer(PlayerData)
end

---AddPlayerMethod
---@param ids number|(number[])|Player|(Player[])
---@param methodName string
---@param handler fun(source: Player, ...: any): any
---@return void
function QBPlayer.AddPlayerMethod(ids, methodName, handler)
end

---AddPlayerField
---@param ids number|(number[])|Player|(Player[])
---@param fieldName string
---@param data any
---@return void
function QBPlayer.AddPlayerField(ids, fieldName, data)
end

---Save
---@param source Player
---@return void
function QBPlayer.Save(source)
end

---SaveOffline
---@param PlayerData QBPlayerData
---@return void
function QBPlayer.SaveOffline(PlayerData)
end

---DeleteCharacter
---@param source Player
---@param citizenId string
---@return void
function QBPlayer.DeleteCharacter(source, citizenId)
end

---ForceDeleteCharacter
---@param citizenId string
---@return void
function QBPlayer.ForceDeleteCharacter(citizenId)
end

---SaveInventory
---@param source Player
---@return void
function QBPlayer.SaveInventory(source)
end

---SaveOfflineInventory
---@param PlayerData QBPlayerData
---@return void
function QBPlayer.SaveOfflineInventory(PlayerData)
end

---GetTotalWeight
---@param items table<number, QBItem>
function QBPlayer.GetTotalWeight(items)
end

---GetSlotsByItem
---@param items table<number, QBItem>
---@param itemName string
function QBPlayer.GetSlotsByItem(items, itemName)
end

---GetFirstSlotByItem
---@param items table<number, QBItem>
---@param itemName string
function QBPlayer.GetFirstSlotByItem(items, itemName)
end

-- Util Functions

---@return string
function QBPlayer.CreateCitizenId()
end

---@return string
function QBPlayer.CreateFingerId()
end

---@return string
function QBPlayer.CreateWalletId()
end

---@return number
function QBPlayer.CreateSerialNumber()
end
