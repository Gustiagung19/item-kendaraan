ESX             = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('item-kendaraan:veh_put_away')
AddEventHandler('item-kendaraan:veh_put_away', function(name)
	local xPlayer = ESX.GetPlayerFromId(source)
	local spawn = string.lower(name)

	xPlayer.addInventoryItem(spawn, 1)
end)