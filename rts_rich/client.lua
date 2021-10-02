local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vrpNserver = Tunnel.getInterface("rts_rich")
Citizen.CreateThread(function()
    while true do
	    local onlinePlayers = 0
		for i = 0, 255 do
			if NetworkIsPlayerActive(i) then
				onlinePlayers = onlinePlayers+1
			end
		end
        local player = GetPlayerPed(-1)
		local foto, name, firstname,user_id,registration,age,phone, carteira, banco, multas,paypal,groupname = vrpNserver.Identidade()
        SetDiscordAppId(82499064138655184)

        Setrts_richPresenceAsset('logo')
        Setrts_richPresenceAssetSmall('logo')
		SetRichPresence( "ID: " ..user_id.. " ・ " ..name.. " " ..firstname.. "  ・  Celular: " ..phone.."  ・  Grupo: " ..groupname)
		Setrts_richPresenceAssetSmallText("RTS ﹣ Hᴏsᴛ Sʜᴏᴘ ᴇ Rᴇsᴏᴜʀᴄᴇs - VPS Gamer de qualidade - https://discord.gg/Ra5yB4CrCG")
		Setrts_richPresenceAssetText("")
        Setrts_richPresenceAction(0,  "Nosso Discord!", "https://discord.gg/")
        Setrts_richPresenceAction(1, "Entrar na City!", "fivem://connect/")
        Citizen.Wait(5*500)
    end
end)