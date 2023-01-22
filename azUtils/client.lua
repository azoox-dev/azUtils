print(" ^1------------------------------------")
print("^1|  ^2azUtils chargé avec succès ! ^1     |\n^1|  ^2Script développer par az0ox#8751  ^1|\n^1|  ^2https://discord.gg/CDatnJwG9J     ^1|")
print(" ^1------------------------------------^0")

local function Notify(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(false, false)
end



Citizen.CreateThread(function()
    RegisterCommand("id", function()
        local UserId = GetPlayerServerId(PlayerId())
        print("Votre ID est: "..UserId)
        Notify("Votre ID est: "..UserId)
    end)
end)

Citizen.CreateThread(function()
    RegisterCommand("cd", function()
        print("Vos coordonnées sont: "..GetEntityCoords(PlayerPedId()))
        Notify("Vos coordonnées sont: "..GetEntityCoords(PlayerPedId()))
    end)
end)

Citizen.CreateThread(function()
    RegisterCommand("discord", function()
        Notify("~p~Notre discord est: ~s~"..Discord_Link.."")
    end)
end)

Citizen.CreateThread(function()
    RegisterCommand("dev", function()
        Notify("Les développeurs sont ~p~"..table.concat(Developer, ", ").."~s~")
    end)
end)

Citizen.CreateThread(function()
    RegisterCommand("health", function()
        local health = GetEntityHealth(PlayerPedId())
        Notify("Votre vie est de: ~g~"..health.."~s~")
        local armor = GetPedArmour(PlayerPedId())
        Notify("Votre armure est de: ~b~"..armor.."~s~")
    end)
end)


Citizen.CreateThread(function()
    RegisterCommand("time", function()
        local time = GetGameTimer()
        Notify("Votre temps de jeux est de: ~p~"..time.."~s~ ms")
    end)
end)





-- Commande /help


Citizen.CreateThread(function()
    RegisterCommand("help", function()
        Notify("~p~/~s~id, ~p~/~s~cd, ~p~/~s~discord, ~p~/~s~dev, ~p~/~s~health")
    end)
end)









