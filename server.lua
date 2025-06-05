local playerColisionsEnabled = {}

RegisterCommand("colisions", function(source, args, rawCommand)
    local player = source


    if playerColisionsEnabled[player] == nil then
        playerColisionsEnabled[player] = true
    end

  
    if playerColisionsEnabled[player] then
        SetEntityInvincible(GetVehiclePedIsIn(GetPlayerPed(player), false), true)
        SetEntityCollision(GetVehiclePedIsIn(GetPlayerPed(player), false), false, false)
        playerColisionsEnabled[player] = false
        TriggerClientEvent('ox_lib:notify', player, { title = 'Colisions disabled', description = 'Colisions are now disabled', type = 'success' })
    else
        SetEntityInvincible(GetVehiclePedIsIn(GetPlayerPed(player), false), false)
        SetEntityCollision(GetVehiclePedIsIn(GetPlayerPed(player), false), true, true)
        playerColisionsEnabled[player] = true
        TriggerClientEvent('ox_lib:notify', player, { title = 'Colisions activated', description = 'Colisions are now activated', type = 'success' })
    end
end, false)

AddEventHandler('playerSpawned', function()
    local player = source
    if playerColisionsEnabled[player] == nil then
        playerColisionsEnabled[player] = true
    end
    if not playerColisionsEnabled[player] then

        SetEntityInvincible(GetVehiclePedIsIn(GetPlayerPed(player), false), true)
        SetEntityCollision(GetVehiclePedIsIn(GetPlayerPed(player), false), false, false)
    end
end)
