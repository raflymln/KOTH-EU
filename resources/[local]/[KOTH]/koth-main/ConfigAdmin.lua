Admin = {
    ranks = { 
        [1] = {
            label = "Moderator", 
            color = "~o~",
            permissions = {
            },
        },

        [2] = {
            label = "Admin", 
            color = "~v~",
            permissions = {
            },
        },

        [3] = {
            label = "Founder", 
            color = "~r~",
            permissions = {
                1,2
            },
        },

    },

    
    functions = {
        [1] = {
            cat = "player",
            sep = "↓ ~b~Teleportations ~s~↓",
            toSub = false,
            label = "Teleportation to the player",
            press = function(selectedPlayer)
                TriggerServerEvent("Koth:GotoPlayer", selectedPlayer.id)
            end
        },

        [2] = {
            cat = "player",
            sep = nil,
            toSub = false,
            label = "Teleporting to me",
            press = function(selectedPlayer)
                local pos = GetEntityCoords(PlayerPedId())
                TriggerServerEvent("koth-b:bring", selectedPlayer.id, pos)
            end
        },

        [3] = {
            cat = "player",
            sep = "↓ ~b~Ban / Kick ~s~↓",
            toSub = false,
            label = "Ban",
            press = function(selectedPlayer)
                local pos = GetEntityCoords(PlayerPedId())
                TriggerServerEvent("koth-b:bring", selectedPlayer.id, pos)
            end
        },
        
    }
}

Admin.Whitlist = {
    -- 1 = Modérateur
    -- 2 = Admin
    -- 3 = Fondateur
    --["license:"] = perms,
    ["license:ea33b75a6c3d97855d57f9ed4624ae354ec13530"] = 3, --RAFLY MAULANA
}
