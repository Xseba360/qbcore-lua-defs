# QBCore Definitions for Luanalysis

[![GitHub](https://img.shields.io/github/license/Xseba360/qbcore-lua-defs)](LICENSE)

Lua file reference for use with [Luanalysis](https://github.com/Benjamin-Dobell/IntelliJ-Luanalysis), a plugin for
JetBrains IDEs. **It will definitely not work with EmmyLua** due to `@shape` and `@overload`being used.


<h1 align="center">PULL REQUESTS WELCOME!</h1>
<p align="center"><b>If you want to write definitions for exports in other QB resources, feel free to open a pull request!</b></p>


## Installation

- Drop the contents of this repository into your project's `fivem-lua-docs` folder. More information on attaching the
  FiveM docs to your project can be found in the [fivem-lua-docs wiki](https://github.com/Xseba360/fivem-lua-docs/wiki).
- *(Optional)* Adjust [global.def.lua](global.def.lua) to account for OTHER exports used in your project. This step
  requires you to create a `@shape` or `@class` for each export you use. Without this step, you will not have any
  autocompletion for exports or any inference for their types.

## How to use the definitions?

An example client lua file would look like this:

```lua
---@type QBClient
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:UpdateObject', function()
    QBCore = exports['qb-core']:GetCoreObject()
end)

---TestFunction
---@param _source Player
---@param args string[]
local function TestFunction(_source, args)
    QBCore.Functions.Notify(table.concat(args), 'success', 5000)
end

RegisterCommand('test_show_notif', TestFunction)
```

A server lua file would look like this:

```lua
---@type QBServer
local QBCore = exports['qb-core']:GetCoreObject()

---TestFunction
---@param source Player
---@param args string[]
local function TestFunction(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local money = tonumber(args[1])
    if money then
        Player.Functions.AddMoney('cash', money)
    end
end

RegisterCommand('test_give_cash', TestFunction)
```

As you can see in the examples above, you can use the `@type` annotation to specify the type of the `QBCore` variable to
specify which function set of QBCore is available to you (server or client). This is necessary because the server and
client function sets are not the same, and you will get errors if you try to use a client function on the server or vice
versa. 
