-- function lightbleeding(ped)
--     SetEntityHealth(ped,GetEntityHealth(ped)-1)
--     StartScreenEffect('PPOrange', 0, true)
--     SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
--     SetPedToRagdoll(ped, 500, 1, 2)
--     Wait(3000)
-- end

-- function stopbleed(ped)
--     effect = false
--     StopScreenEffect('PPOrange')
--     SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
-- end


-- function fatalbleeding(ped)
--     SetEntityHealth(ped,GetEntityHealth(ped)-2)
--     StartScreenEffect('Rampage', 0, true)
--     ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 1.0)
--     SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
--     SetPedToRagdoll(ped, 5000, 1, 2)
--     Wait(5000)
-- end

-- function bleedingoff(ped)
--     effect = false
--     StopScreenEffect('Rampage')
--     SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
-- end
 
-- local effect = false

-- Citizen.CreateThread(function()
--     while true do
--         Wait(0)
--         local player = GetPlayerPed(-1)
--         local Health = GetEntityHealth(player)
--         local sex = GetEntityMaxHealth(player)
            
--         if Health < 180 then
--             lightbleeding(player)
        
--             elseif Health > 181 then
--                 stopbleed(player)
--             elseif Health < 142 then
--                 stopbleed()
--         end
            
        
--         if Health < 140  then
--             fatalbleeding(player)
        
--             elseif Health > 141 then
--                 bleedingoff(player)
--             elseif Health > 143 then
--                 lightbleeding(player)
--         end
--     end
-- end)