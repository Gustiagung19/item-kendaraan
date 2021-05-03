ESX.RegisterUsableItem('NAMA_ITEM', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local name = GetHashKey("NAMA_SPAWN")

    xPlayer.removeInventoryItem('NAMA_ITEM', 1)

    TriggerClientEvent('esx:spawnVehicle', source, name)
    TriggerClientEvent('esx:showNotification', source, 'spawned 1x ?')
end)