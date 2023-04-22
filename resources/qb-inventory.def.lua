---@class QBInventoryExport
local QBInventoryExport = {
}

---@shape QBInventoryObjectEntry : QBInventoryWeightDefinition
---@field name string
---@field info table<any,any>|nil
---@field label string
---@field description string
---@field type string
---@field unique boolean
---@field useable boolean
---@field image string
---@field shouldClose boolean
---@field slot number
---@field combinable QBItemCombinableData


---@shape QBInventoryWeightDefinition
---@field amount number
---@field weight number

---@shape QBInventoryObject
---@field coords Vector3
---@field name string
---@field label string
---@field maxweight number
---@field slots number
---@field inventory table<number, QBInventoryObjectEntry>


---HasItem
---Checks if you have an item or not
---@server
---@client
---
---@param source Player The source of the player to check it for
---@param items string|(string[])|(table<string, number>) The items to check, either a string, array of strings or a key-value table of a string and number with the string representing the name of the item and the number representing the amount
---@param amount number The amount of the item to check for, this will only have effect when items is a string or an array of strings
---@return boolean success Returns true if the player has the item
---@overload fun(items: string|(string[])|(table<string,number>), amount: number): boolean
---@overload fun(items: string|(string[])|(table<string,number>)): boolean
---@overload fun(source: Player, items: string|(string[])|(table<string,number>), amount: number): boolean
---@overload fun(source: Player, items: string|(string[])|(table<string,number>)): boolean
function QBInventoryExport:HasItem(source, items, amount)
end


---LoadInventory
---Loads the inventory for the player with the citizenId that is provided
---@server
---
---@param source Player Source of the player
---@param citizenId string CitizenID of the player
---@return table<number, QBInventoryObjectEntry> Returns the inventory of the player with items indexed by the slot number
function QBInventoryExport:LoadInventory(source, citizenId)
end

---SaveInventory
---Saves the inventory for the player with the provided source or PlayerData is they're offline
---@server
---
---@param source Player Source of the player, if offline, then provide the PlayerData in this argument
---@param offline false Is the player offline or not, if true, it will expect a table in source
---@overload fun(source: QBPlayerData, offline: true): void
---@overload fun(source: Player): void
function QBInventoryExport:SaveInventory(source, offline)
end


---GetTotalWeight
---Gets the totalweight of the items provided
---@server
---
---@param items table<number, QBInventoryWeightDefinition> Table of items, usually the inventory table of the player
---@return number weight Total weight of param items
function QBInventoryExport:GetTotalWeight(items)
end

---GetSlotsByItem
---Gets the slots that the provided item is in
---@server
---
---@param items table<number, QBInventoryObjectEntry> Table of items, usually the inventory table of the player
---@param itemName string Name of the item to the get the slots from
---@return number[] slotsFound Array of slots that were found for the item
function QBInventoryExport:GetSlotsByItem(items, itemName)
end

---GetFirstSlotByItem
---Get the first slot where the item is located
---@server
---
---@param items table<number, QBInventoryObjectEntry> Table of items, usually the inventory table of the player
---@param itemName string Name of the item to the get the slot from
---@return number | nil slot If found it returns a number representing the slot, otherwise it sends nil
function QBInventoryExport:GetFirstSlotByItem(items, itemName)
end

---AddItem
---Add an item to the inventory of the player
---@server
---
---@param source Player The source of the player
---@param item string The item to add to the inventory
---@param amount number The amount of the item to add
---@param slot number The slot to add the item to
---@param info table<any, any> Extra info to add onto the item to use whenever you get the item
---@return boolean success Returns true if the item was added, false it the item couldn't be added
---@overload fun(source: Player, item: string, amount: number, slot: number): boolean
---@overload fun(source: Player, item: string, amount: number): boolean
---@overload fun(source: Player, item: string): boolean
function QBInventoryExport:AddItem(source, item, amount, slot, info)
end


---RemoveItem
---Remove an item from the inventory of the player
---@server
---
---@param source Player The source of the player
---@param item string The item to remove from the inventory
---@param amount number The amount of the item to remove
---@param slot number The slot to remove the item from
---@return boolean success Returns true if the item was remove, false it the item couldn't be removed
---@overload fun(source: Player, item: string, amount: number): boolean
---@overload fun(source: Player, item: string): boolean
function QBInventoryExport:RemoveItem(source, item, amount, slot)
end

---GetItemBySlot
---Get the item with the slot
---@server
---
---@param source Player The source of the player to get the item from the slot
---@param slot number The slot to get the item from
---@return QBInventoryObjectEntry | nil item Returns the item table, if there is no item in the slot, it will return nil
function QBInventoryExport:GetItemBySlot(source, slot)
end

---GetItemByName
---Get the item from the inventory of the player with the provided source by the name of the item
---@server
---
---@param source Player The source of the player
---@param item string The name of the item to get
---@return QBInventoryObjectEntry | nil item Returns the item table, if the item wasn't found, it will return nil
function QBInventoryExport:GetItemByName(source, item)
end

---GetItemsByName
---Get the item from the inventory of the player with the provided source by the name of the item in an array for all slots that the item is in
---@server
---
---@param source Player The source of the player
---@param item string The name of the item to get
---@return QBInventoryObjectEntry[] item Returns an array of the item tables found, if the item wasn't found, it will return an empty table
function QBInventoryExport:GetItemsByName(source, item)
end

---ClearInventory
---Clear the inventory of the player with the provided source and filter any items out of the clearing of the inventory to keep (optional)
---@server
---
---@param source Player Source of the player to clear the inventory from
---@param filterItems string | string[] Array of item names to keep
---@overload fun(source: number): void
function QBInventoryExport:ClearInventory(source, filterItems)
end

---SetInventory
---Sets the items playerdata to the provided items param
---@server
---
---@param source Player The source of player to set it for
---@param items table<number, QBInventoryObjectEntry> Table of items, the inventory table of the player
function QBInventoryExport:SetInventory(source, items)
end

---SetItemData
---Set the data of a specific item
---@server
---
---@param source Player The source of the player to set it for
---@param itemName string Name of the item to set the data for
---@param key string Name of the data index to change
---@param val any Value to set the data to
---@return boolean success Returns true if it worked
function QBInventoryExport:SetItemData(source, itemName, key, val)
end

---CreateUsableItem
---Create a usable item with a callback on use
---@server
---
---@param itemName string The name of the item to make usable
---@param data any
function QBInventoryExport:CreateUsableItem(itemName, data)
end

---GetUsableItem
---Get the usable item data for the specified item
---@server
---
---@param itemName string The item to get the data for
---@return any usable_item
function QBInventoryExport:GetUsableItem(itemName)
end

---UseItem
---Use an item from the QBCore.UsableItems table if a callback is present
---@server
---
---@param itemName string The name of the item to use
---@vararg any Arguments for the callback, this will be sent to the callback and can be used to get certain values
function QBInventoryExport:UseItem(itemName, ...)
end


---OpenInventory
---@server
---
---@param name string The inventory type (for example: "stash", "trunk", "shop", etc.)
---@param id string The inventory id
---@param other QBInventoryObject The other inventory object
---@param origin Player
function QBInventoryExport:OpenInventory(name, id, other, origin)
end

---addTrunkItems
---@server
---
---@param plate string
---@param items table<number,QBInventoryObjectEntry>
function QBInventoryExport:addTrunkItems(plate, items)
end

---addGloveboxItems
---@server
---
---@param plate string
---@param items table<number,QBInventoryObjectEntry>
function QBInventoryExport:addGloveboxItems(plate, items)
end