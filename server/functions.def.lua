---@class QBServerFunctions
local QBServerFunctions = {
}

---AddItem
---@param itemName string
---@param item QBItem
---@return boolean, string
function QBServerFunctions.AddItem(itemName, item)
end

---AddJob
---@param jobName string
---@param job QBJob
---@return boolean, string
function QBServerFunctions.AddJob(jobName, job)
end

---AddGang
---@param gangName string
---@param gang QBGang
---@return boolean, string
function QBServerFunctions.AddGang(gangName, gang)
end

---AddItems
---@param items table<string, QBItem>
---@return boolean, string, string
function QBServerFunctions.AddItems(items)
end

---AddJobs
---@param jobs table<string, QBJob>
---@return boolean, string, string
function QBServerFunctions.AddJobs(jobs)
end

---AddGangs
---@param gangs table<string, QBGang>
---@return boolean, string, string
function QBServerFunctions.AddGangs(gangs)
end

---GetCoords
---Get the coords of a passed entity
---
---@param entity Entity
---@return Vector4
function QBServerFunctions.GetCoords(entity)
end

---GetIdentifier
---Get a specific identifier of a player
---
---@param source Player
---@param idType string
---@overload fun(source: Player): string
---@return string
function QBServerFunctions.GetIdentifier(source, idType)
end

---GetSource
---Get a players source by identifier
---
---@param identifier string
---@return Player
function QBServerFunctions.GetSource(identifier)
end

---GetPlayer
---Get a player by their source and access their data
---
---@param source Player
---@return QBServerPlayer
function QBServerFunctions.GetPlayer(source)
end

---GetPlayerByCitizenId
---Get a player by their citizen id and access their data (must be online)
---
---@param citizenId string
---@return QBServerPlayer
function QBServerFunctions.GetPlayerByCitizenId(citizenId)
end

---GetOfflinePlayerByCitizenId
---@param citizenId string
---@return QBServerPlayer
function QBServerFunctions.GetOfflinePlayerByCitizenId(citizenId)
end

---GetPlayerByPhone
---Get a player by their phone number and access their data (must be online)
---
---@param phone string
---@return QBServerPlayer
function QBServerFunctions.GetPlayerByPhone(phone)
end

---GetPlayers
---Get all player IDs in the server (deprecated method)
---
---@deprecated
---@return Player[]
function QBServerFunctions.GetPlayers()
end

---GetQBPlayers
---Access the table of all active players on the server
---
---@return table<Player, QBServerPlayer>
function QBServerFunctions.GetQBPlayers()
end

---GetPlayersOnDuty
---Gets a list of all on duty players of a specified job and the number
---@param job string
---@return Player[], number
function QBServerFunctions.GetPlayersOnDuty(job)
end

---GetDutyCount
---Returns only the amount of players on duty for the specified job
---@param job string
---@return number
function QBServerFunctions.GetDutyCount(job)
end

---GetBucketObjects
---Returns the objects related to buckets, first returned value is the player buckets, second one is entity buckets
---@return table<string, QBBucketPlayerData>, table<number, QBBucketEntityData>
function QBServerFunctions.GetBucketObjects()
end

---SetPlayerBucket
---Will set the provided player id / source into the provided bucket id
---@param source Player
---@param bucket number
---@return boolean
function QBServerFunctions.SetPlayerBucket(source, bucket)
end

---SetEntityBucket
---Will set any entity into the provided bucket, for example peds / vehicles / props / etc.
---@param entity Entity
---@param bucket number
---@return boolean
function QBServerFunctions.SetEntityBucket(entity, bucket)
end

---GetPlayersInBucket
---Will return an array of all the player ids inside the current bucket
---@param bucket number
---@return Player[]|false
function QBServerFunctions.GetPlayersInBucket(bucket)
end

---GetEntitiesInBucket
---Will return an array of all the entities inside the current bucket (not for player entities, use GetPlayersInBucket for that)
---@param bucket number
---@return Entity[]|false
function QBServerFunctions.GetEntitiesInBucket(bucket)
end

---SpawnVehicle
---Server side vehicle creation with optional callback
---the CreateVehicle RPC still uses the client for creation so players must be near
---@param source Player
---@param model string|Hash
---@param coords Vector4
---@param warp boolean
---@return Vehicle
---@overload fun(source: Player, model: string|Hash, coords: Vector4): Vehicle
function QBServerFunctions.SpawnVehicle(source, model, coords, warp)
end

---CreateVehicle
---Server side vehicle creation with optional callback
---the CreateAutomobile native is still experimental but doesn't use client for creation
---doesn't work for all vehicles!
---@param source Player
---@param model string|Hash
---@param coords Vector4
---@param warp boolean
---@return Vehicle
---@overload fun(source: Player, model: string|Hash, coords: Vector4): Vehicle
function QBServerFunctions.CreateVehicle(source, model, coords, warp)
end

---TriggerClientCallback
---@vararg any
---@param name string
---@param source Player
---@param cb fun(result: any): void
---@return void
function QBServerFunctions.TriggerClientCallback(name, source, cb, ...)
end

---CreateCallback
---Creates a callback which is used on the client-side code with QBCore.Functions.TriggerCallback
---
---@param name string
---@param cb fun(source: Player, cb: fun(result: any)): void
---@return void
function QBServerFunctions.CreateCallback(name, cb)
end

---TriggerCallback
---@vararg any
---@param name string
---@param source Player
---@param cb fun(result: any): void
---@return void
function QBServerFunctions.TriggerCallback(name, source, cb, ...)
end

---CreateUseableItem
---Register an item as usable in the core
---
---@param item string
---@param cb fun(source: Player, item: QBItem): void
function QBServerFunctions.CreateUseableItem(item, cb)
end

---CanUseItem
---Check if an item is registered as usable before attempting use
---
---@param item string
---@return boolean
function QBServerFunctions.CanUseItem(item)
end

---UseItem
---Trigger an item to be used on the player
---
---@param source Player
---@param item QBItem
function QBServerFunctions.UseItem(source, item)
end

---Kick
---Kick a player from the server
---
---@param source Player
---@param reason string
---@param setKickReason any
---@param deferrals any
function QBServerFunctions.Kick(source, reason, setKickReason, deferrals)
end

---IsWhitelisted
---Check if player is whitelisted, kept like this for backwards compatibility or future plans
---@param source Player
---@return boolean
function QBServerFunctions.IsWhitelisted(source)
end

---AddPermission
---Give a player a specific permission level (per session only)
---
---@param source Player
---@param permission string
function QBServerFunctions.AddPermission(source, permission)
end

---RemovePermission
---Remove all of the players permissions on the server (per session only)
---
---@param source Player
---@param permission string
function QBServerFunctions.RemovePermission(source, permission)
end

---HasPermission
---Check if a player has the permission level needed
---
---@param source Player
---@param permission string
---@return boolean
function QBServerFunctions.HasPermission(source, permission)
end

---GetPermission
---Get a player's permission level
---
---@param source Player
---@return string
function QBServerFunctions.GetPermission(source)
end

---IsOptin
---Opt in or out of admin reports
---@param source Player
---@return boolean
function QBServerFunctions.IsOptin(source)
end

---ToggleOptin
---Toggle opt in or out of admin reports
---@param source Player
function QBServerFunctions.ToggleOptin(source)
end

---IsPlayerBanned
---Check if a player is banned (used for connection)
---
---@param source Player
---@return boolean
function QBServerFunctions.IsPlayerBanned(source)
end

---IsLicenseInUse
---Prevent duplicate licenses on the server (used for connection)
---
---@param license string
---@return boolean
function QBServerFunctions.IsLicenseInUse(license)
end

---@return string
function QBServerFunctions.CreateAccountNumber()
end

---@return number
function QBServerFunctions.CreatePhoneNumber()
end
