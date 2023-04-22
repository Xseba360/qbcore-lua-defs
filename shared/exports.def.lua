---@class QBExport
local QBExport = {
}

---@return any
function QBExport:GetCoreObject()
end

---SetMethod
---@server
---Add or change (a) method(s) in the QBCore.Functions table
---
---@param methodName string
---@param handler function
---@return boolean, string
function QBExport:SetMethod(methodName, handler)
end

---SetField
---@server
---Add or change (a) field(s) in the QBCore table
---
---@param fieldName string
---@param data any
---@return boolean, string
function QBExport:SetField(fieldName, data)
end

---AddJob
---@server
---
---@param jobName string
---@param job QBJob
---@return boolean, string
function QBExport:AddJob(jobName, job)
end

---AddJobs
---@server
---
---@param jobs table<string, QBJob>
---@return boolean, string, string
function QBExport:AddJobs(jobs)
end

---RemoveJob
---@server
---
---@param jobName string
---@return boolean, string
function QBExport:RemoveJob(jobName)
end

---UpdateJob
---@server
---
---@param jobName string
---@param job QBJob
---@return boolean, string
function QBExport:UpdateJob(jobName, job)
end

---AddItem
---@server
---
---@param itemName string
---@param item QBItem
---@return boolean, string
function QBExport:AddItem(itemName, item)
end

---UpdateItem
---@server
---
---@param itemName string
---@param item QBItem
---@return boolean, string
function QBExport:UpdateItem(itemName, item)
end

---AddItems
---@server
---
---@param items table<string, QBItem>
---@return boolean, string, string
function QBExport:AddItems(items)
end

---RemoveItem
---@server
---
---@param itemName string
---@return boolean, string
function QBExport:RemoveItem(itemName)
end

---AddGang
---@server
---
---@param gangName string
---@param gang QBGang
---@return boolean, string
function QBExport:AddGang(gangName, gang)
end

---AddGangs
---@server
---
---@param gangs table<string, QBGang>
---@return boolean, string, string
function QBExport:AddGangs(gangs)
end

---RemoveGang
---@server
---
---@param gangName string
---@return boolean, string
function QBExport:RemoveGang(gangName)
end

---UpdateGang
---@server
---
---@param gangName string
---@param gang QBGang
---@return boolean, string
function QBExport:UpdateGang(gangName, gang)
end

---GetCoreVersion
---@server
---
---@return string
function QBExport:GetCoreVersion()
end

---ExploitBan
---@server
---
---@param playerId Player
---@param origin string
---@return void
function QBExport:ExploitBan(playerId, origin)
end

---DrawText
---This is a client export that will draw a message at the specified position
---@client
---
---@param message string
---@param position 'left' | 'top' | 'right'
function QBExport:DrawText(message, position)
end

---ChangeText
---This is a client export that will change the currently displayed message at the specified position
---@client
---
---@param message string
---@param position 'left' | 'top' | 'right'
function QBExport:ChangeText(message, position)
end

---HideText
---This will hide the text display
---@client
---
function QBExport:HideText()
end

---KeyPressed
---This is useful if you want to change the background and hide the text on keypress (if not handled correctly users will have to renter the zone to display)
---@client
---
function QBExport:KeyPressed()
end
