local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("cqweresrartoplama")
AddEventHandler("cqweresrartoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("esrar", math.random(Config.EsrarMin,Config.EsrarMax))
end)

RegisterNetEvent("cqweresrarisleme")
AddEventHandler("cqweresrarisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("esrar", Config.EsrarIslemeMiktar) then
            xPlayer.Functions.AddItem("esrarislenmis", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Esrar İşledin!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Esrarın Yok!', length = 2500})
    end
end)

RegisterNetEvent("cqweresrarsatis")
AddEventHandler("cqweresrarsatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("esrarislenmis", Config.EsrarSatisMiktar) then
      --  xPlayer.Functions.AddMoney(Config.EsrarOdeme, Config.EsrarFiyat)
      xPlayer.Functions.AddItem("markedbills", itemAmount)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'İşlenmiş Esrar Sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince İşlenmiş Esrarın Yok!', length = 2500})
    end
end)