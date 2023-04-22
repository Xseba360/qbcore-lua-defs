---@class QBClientFunctions
local QBClientFunctions = {
}

---GetPlayerData
---@param cb fun(data: QBPlayerData)
---@overload fun(): QBPlayerData
function QBClientFunctions.GetPlayerData(cb)
end

---GetCoords
---@param entity Entity
---@return Vector4
function QBClientFunctions.GetCoords(entity)
end

---HasItem
---@param item string
---@param amount number
---@return boolean
function QBClientFunctions.HasItem(item, amount)
end

---DrawText
---@param x number
---@param y number
---@param width number
---@param height number
---@param scale number
---@param r number
---@param g number
---@param b number
---@param a number
---@param text string
function QBClientFunctions.DrawText(x, y, width, height, scale, r, g, b, a, text)
end

---DrawText3D
---@param x number
---@param y number
---@param z number
---@param text string
function QBClientFunctions.DrawText3D(x, y, z, text)
end

---RequestAnimDict
---Request an animation dictionary
---@param animDict string
---@return void
function QBClientFunctions.RequestAnimDict(animDict)
end

---PlayAnim
---Play an animation and remove the loaded animation dictionary
---@param animDict string
---@param animName string
---@param upperbodyOnly boolean
---@param duration number
---@return void
function QBClientFunctions.PlayAnim(animDict, animName, upperbodyOnly, duration)
end

---LoadModel
---@param model Hash
---@return void
function QBClientFunctions.LoadModel(model)
end

---LoadAnimSet
---@param animSet string
---@return void
function QBClientFunctions.LoadAnimSet(animSet)
end

---@param text string|QBNotifyTextParam
---@param type string
---@param length number
---@return void
function QBClientFunctions.Notify(text, type, length)
end

---CreateClientCallback
---@param name string
---@param cb fun(source: Player, cb: fun(data: any), ...: any)
---@return void
function QBClientFunctions.CreateClientCallback(name, cb)
end

---TriggerClientCallback
---@vararg any
---@param name string
---@param cb fun(data: any)
---@return void
function QBClientFunctions.TriggerClientCallback(name, cb, ...)
end

---TriggerCallback
---@vararg any
---@param name string
---@param cb fun(data: any)
---@return void
function QBClientFunctions.TriggerCallback(name, cb, ...)
end

---Progressbar
---@param name string
---@param label string
---@param duration number
---@param useWhileDead boolean
---@param canCancel boolean
---@param disableControls QBProgressbarControls
---@param animation QBProgressbarAnimation
---@param prop QBProgressbarProp
---@param propTwo QBProgressbarProp
---@param onFinish fun()
---@param onCancel fun()
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls, animation: QBProgressbarAnimation, prop: QBProgressbarProp, propTwo: QBProgressbarProp, onFinish: fun(), onCancel: fun())
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls, animation: QBProgressbarAnimation, prop: QBProgressbarProp, propTwo: QBProgressbarProp, onFinish: fun())
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls, animation: QBProgressbarAnimation, prop: QBProgressbarProp, propTwo: QBProgressbarProp)
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls, animation: QBProgressbarAnimation, prop: QBProgressbarProp)
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls, animation: QBProgressbarAnimation)
---@overload fun(name: string, label: string, duration: number, useWhileDead: boolean, canCancel: boolean, disableControls: QBProgressbarControls)
---@return void
function QBClientFunctions.Progressbar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo, onFinish, onCancel)
end

---GetVehicles
---@deprecated
---@return Vehicle[]
function QBClientFunctions.GetVehicles()
end

---GetCoreObject
---@return QBClient
function QBClientFunctions.GetCoreObject()
end

---GetPlayers
---@deprecated
---@return Player[]
function QBClientFunctions.GetPlayers()
end

---GetPeds
---@param ignoreList Ped[]
---@return Ped[]
---@overload fun(): Ped[]
function QBClientFunctions.GetPeds(ignoreList)
end

---GetClosestPed
---@param coords Vector3
---@param ignoreList Ped[]
---@return Ped, number
---@overload fun(coords: Vector3): (Ped, number)
---@overload fun(): (Ped, number)
function QBClientFunctions.GetClosestPed(coords, ignoreList)
end

---IsWearingGloves
---@return boolean
function QBClientFunctions.IsWearingGloves()
end

---GetClosestVehicle
---@param coords Vector3
---@return Vehicle, number
---@overload fun(): (Vehicle, number)
function QBClientFunctions.GetClosestVehicle(coords)
end

---GetClosestObject
---@param coords Vector3
---@return Object, number
---@overload fun(): (Object, number)
function QBClientFunctions.GetClosestObject(coords)
end

---GetClosestPlayer
---@param coords Vector3
---@return Player, number
---@overload fun(): (Player, number)
function QBClientFunctions.GetClosestPlayer(coords)
end

---GetPlayersFromCoords
---@param coords Vector3
---@param distance number
---@return Player[]
---@overload fun(coords: Vector3): Player[]
---@overload fun(): Player[]
function QBClientFunctions.GetPlayersFromCoords(coords, distance)
end

---SpawnVehicle
---@param model string
---@param cb fun(vehicle: Vehicle)
---@param coords Vector4
---@param isNetworked boolean
---@return void
---@overload fun(model: string, cb: fun(vehicle: Vehicle), coords: Vector4): void
function QBClientFunctions.SpawnVehicle(model, cb, coords, isNetworked)
end

---DeleteVehicle
---@deprecated
---@param vehicle Vehicle
---@return void
function QBClientFunctions.DeleteVehicle(vehicle)
end

---GetPlate
---@param vehicle Vehicle
---@return string
function QBClientFunctions.GetPlate(vehicle)
end

---GetVehicleLabel
---@param vehicle Vehicle
---@return string
function QBClientFunctions.GetVehicleLabel(vehicle)
end

---SpawnClear
---@param coords Vector3|nil|false
---@param radius number
---@return void
function QBClientFunctions.SpawnClear(coords, radius)
end

---GetVehicleProperties
---@param vehicle Vehicle
---@return QBVehicleProperties
function QBClientFunctions.GetVehicleProperties(vehicle)
end

---SetVehicleProperties
---@param vehicle Vehicle
---@param props QBVehicleProperties
---@return void
function QBClientFunctions.SetVehicleProperties(vehicle, props)
end

---GetClosestBone
---@param entity Entity
---@param list any[]
---@return number, Vector3, number
---@overload fun(entity: Entity): (number, Vector3, number)
function QBClientFunctions.GetClosestBone(entity, list)
end

---GetBoneDistance
---@param entity Entity
---@param boneType number
---@param boneIndex number
---@return number
function QBClientFunctions.GetBoneDistance(entity, boneType, boneIndex)
end

---AttachProp
---@param ped Ped
---@param model string|Hash
---@param boneId number
---@param x number
---@param y number
---@param z number
---@param xR number
---@param yR number
---@param zR number
---@param vertex boolean
---@return Object
function QBClientFunctions.AttachProp(ped, model, boneId, x, y, z, xR, yR, zR, vertex)
end

---LoadParticleDictionary
---@param dictionary string
---@return void
function QBClientFunctions.LoadParticleDictionary(dictionary)
end

---StartParticleAtCoord
---@param dict string
---@param ptName string
---@param looped boolean
---@param entity Entity
---@param bone number
---@param offset Vector3
---@param rot Vector3
---@param scale number
---@param alpha number
---@param color QBColorRGB
---@param evolution QBParticleEvolution
---@param duration number
---@return number
function QBClientFunctions.StartParticleOnEntity(dict, ptName, looped, entity, bone, offset, rot, scale, alpha, color, evolution, duration)
end

---GetStreetNametAtCoords
---@param coords Vector3
---@return QBStreetName
function QBClientFunctions.GetStreetNametAtCoords(coords)
end

---GetZoneAtCoords
---@param coords Vector3
---@return string
function QBClientFunctions.GetZoneAtCoords(coords)
end

---GetCardinalDirection
---@param entity Entity
---@return "North"|"South"|"East"|"West"|"Cardinal Direction Error"
function QBClientFunctions.GetCardinalDirection(entity)
end

---GetCurrentTime
---@return QBCurrentTime
function QBClientFunctions.GetCurrentTime()
end

---GetGroundZCoord
---@param coords Vector3
---@return Vector3
function QBClientFunctions.GetGroundZCoord(coords)
end
