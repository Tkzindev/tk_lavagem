
-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-----------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO a Tabela VRP
-----------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------
tkzin = {}
Tunnel.bindInterface(GetCurrentResourceName(),tkzin)
fromcl = Tunnel.getInterface(GetCurrentResourceName())

local programador = "Tkzin#0001"
local resourceName = "tkzin_lavagem"



local lavagem = {
    { item = "100k" },
    { item = "1kk" }
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("lavagemdinheiro")
AddEventHandler("lavagemdinheiro",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(lavagem) do
            if item == v.item then
                if item == "100k" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 100000 then
                                if vRP.tryGetInventoryItem(user_id,"dinheirosujo",100000) then
                                TriggerClientEvent("CloseNui",source)
                                
                                TriggerClientEvent("progress",source,5000,"FABRICANDO")
                                TriggerClientEvent("cancelando",source,true)
                                vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                                
                                SetTimeout(5000,function()
                                    TriggerClientEvent("cancelando",source,false)
                                    vRPclient._stopAnim(source,false)
                                    vRP.giveMoney(user_id,parseInt(75000))
                                end)
                            end
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Negado","Espaço insuficiente na mochila.")
                    end
                elseif item == "1kk" then
                    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("dinheirosujo") <= vRP.getInventoryMaxWeight(user_id) then
                        if vRP.getInventoryItemAmount(user_id,"dinheirosujo") >= 1000000 then
                                if vRP.tryGetInventoryItem(user_id,"dinheirosujo",1000000) then
                                TriggerClientEvent("CloseNui",source)
                                
                                TriggerClientEvent("progress",source,5000,"FABRICANDO")
                                TriggerClientEvent("cancelando",source,true)
                                vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                                
                                SetTimeout(5000,function()
                                    TriggerClientEvent("cancelando",source,false)
                                    vRPclient._stopAnim(source,false)
                                    vRP.giveMoney(user_id,parseInt(750000))
                                end)
                            end
                        end
                    else
                        TriggerClientEvent("Notify",source,"negado","Negado","Espaço insuficiente na mochila.")
                    end
                end
            end
        end
    end
end)




-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */

-- /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
--   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
-- */