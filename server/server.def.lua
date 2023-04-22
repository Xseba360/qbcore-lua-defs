---@class QBServer
---@field Functions QBServerFunctions
---@field Player_Buckets table<string, QBBucketPlayerData>
---@field Entity_Buckets table<string, QBBucketEntityData>
---@field Config QBConfig
---@field Shared QBShared
---@field ClientCallbacks table<string, function>
---@field ServerCallbacks table<string, function>
---@field Players table<Player, QBServerPlayer>
---@field Player QBPlayer
---@field Commands QBServerCommands
local QBServer = {
}
