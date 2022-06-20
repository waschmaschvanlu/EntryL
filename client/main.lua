
 
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
 
RegisterNetEvent("flughafentp") 
AddEventHandler("flughafentp", function(einreiseID)
    local ped = PlayerPedId()
    local currentPos = GetEntityCoords(ped)
    SetEntityCoords(ped, Config.Spawn, false, false, false, true)
end)
 
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.Refreshcheck)
        ESX.TriggerServerCallback("einreise:geteinreise", function(isneu) 
            local ped = PlayerPedId()
                if GetDistanceBetweenCoords(GetEntityCoords(ped), Config.Airport, true) < Config.Range then
                else
                   
                        if not isneu then
                    SetEntityCoords(ped, Config.Spawn, false, false, false, true)
                       
                    if Config.CustomNotify then
                    notify(Translation[Config.Locale]['toofar'])
                    else
                    --ESX.ShowNotification(Translation[Config.Locale]['toofar'])
            end
        end
        end
    end)
    end
end)

