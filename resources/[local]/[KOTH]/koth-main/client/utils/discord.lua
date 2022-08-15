-- Citizen.CreateThread(function()
-- 	while true do
-- 		SetDiscordAppId(816798568244707329)
--         SetRichPresence("[EU] KOTH")

-- 		SetDiscordRichPresenceAsset('logo_koth_dmz_dore')
--         --SetDiscordRichPresenceAssetText('[EU] KOTH')
--         SetDiscordRichPresenceAction(0, 'Discord','https://discord.gg/kotheu')

-- 		Citizen.Wait(5000)
-- 	end
-- end)


local discordButton = {
    {index = 0, name = 'Join the discord', url = "#"},
    {index = 1, name = 'Go to the site', url = "#"}
}

Citizen.CreateThread(
    function()
        for _, v in ipairs(discordButton) do
            SetDiscordRichPresenceAction(v.index, v.name, v.url)
        end
        while true do
            SetDiscordAppId(829032746385932288)
            SetDiscordRichPresenceAsset("logo-1024x1024")
            SetDiscordRichPresenceAssetText("MCG PUNYA KOTH LOH")

            TriggerServerCallback(
                'onlinePlayers:list',
                function(users)
                    SetRichPresence(GetPlayerName(PlayerId()) .. " 👥 " .. users .. "/200")
                end
            )

            Citizen.Wait(60000)
        end
    end
)
