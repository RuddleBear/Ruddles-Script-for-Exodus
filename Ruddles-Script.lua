-- Workplace Functions

require("Ruddles/Fast_calls")
require("Ruddles/Peds")
require("Ruddles/Objects")
require("Ruddles/Vehicles")





-- This Lua Script is a Multipurpose Script for Various Purposes
-- Made by: Ruddle Bear
-- Script Version v2.0
-- Public Version

-- (W.I.P) means the Feature isn't fully completed yet, so it may or may not Work.


script.set_name("Ruddles Script")
script.set_desc("Multipurpose Script by Ruddle Bear.\nScript Version: 2.0")
toast.add_success(script.get_name(), "Successfully loaded Ruddles Script!\n\nMade by: Ruddle Bear\nScript Version: 2.0\nPublic Version")
script.keep_alive()

script.on_shutdown(function()
    toast.add_warning(script.get_name(), "Ruddles Script has been Unloaded!")
end)




-- Script Root Submenu Functions

local self_sub = menu.script_root():add_submenu("Self", {"Options for your Player."}, function()
end)

local recovery_sub = menu.script_root():add_submenu("Recovery", {"Recovery options to boost your Account."}, function()
end)

local anim_sub = menu.script_root():add_submenu("Animations",  {"Animations for your local Ped. (Coming Soon)"}, function()
end)

local spawner_sub = menu.script_root():add_submenu("Spawner",  {"Spawn different things into the World."}, function()
end)

local teleportlocal_sub = menu.script_root():add_submenu("Teleport",  {"Teleport to various Places in the World."}, function()
end)

local world_sub = menu.script_root():add_submenu("World",  {"Change various things about the World."}, function()
end)

local misc_sub = menu.script_root():add_submenu("Misc",  {"Various other Stuff that doesn't belong in other Submenus."}, function()
end)

menu.script_root():add_separator("<3")

local credits_sub = menu.script_root():add_submenu("Credits",  {"Huge thanks to these People."}, function()
end)


-- Root Player Submenu Functions

local trolling_sub = menu.player_root():add_submenu("Trolling", {"Trolling Options."}, function() 
end)

local miscplr_sub = menu.player_root():add_submenu("Misc", {"Misc Options."}, function() 
end)





-- Sub, Submenu Functions

local peds_sub = spawner_sub:add_submenu("Peds", {"Spawn Peds into the World."}, function()
end)

local animals_sub = spawner_sub:add_submenu("Animals", {"Spawn Animals into the World."}, function()
end)

local legani_sub = animals_sub:add_submenu("Legendary Animals", {"Spawn Legendary Animals into the World."}, function()
end)

local objects_sub = spawner_sub:add_submenu("Objects", {"Spawn Objects into the World."}, function()
end)

spawner_sub:add_separator("Misc")

local specialani_sub = spawner_sub:add_submenu("Custom", {"Spawn Custom Animals/Peds/Vehicles into the World."}, function()
end)

local attachplr_sub = trolling_sub:add_submenu("Attach to Player", {"Attach yourself to this Player."}, function()
end)

local plr_attach_sub = attachplr_sub:add_submenu("Attach Style", {"Pick from a couple of different Attach Positions/Styles."}, function()
end)

local logplr_sub = miscplr_sub:add_submenu("Logger", {"Various info to send to your Exodus Log file."}, function()
end)

local gameset_sub = misc_sub:add_submenu("Game Settings", {"Change your Game Settings."}, function()
end)

local abilityself_sub = self_sub:add_submenu("Ability Functions", {"Enable or Disable various Ability Functions."}, function()
end)

local looped_sub = trolling_sub:add_submenu("Looped", {"Many different Looped Trolling Features.\nNeed to Unload the Script to stop the Loops."}, function()
end)

local cleararea_sub = world_sub:add_submenu("Clear Area", {"Clear the Area of many different things."}, function()
end)

local pals_sub = self_sub:add_submenu("Shoulder Pals", {"Spawn a Shoulder Pal to keep you Company."}, function()
end)

local palsmale_sub = pals_sub:add_submenu("Male", {"Choose this one if your Character is a Male."}, function()
end)

local palsfemale_sub = pals_sub:add_submenu("Female", {"Choose this one if your Character is a Female."}, function()
end)

local proofs_sub = self_sub:add_submenu("Proofs", {"Various Proof options to make your Character immune to different things."}, function()
end)

local dmgproofs_sub = proofs_sub:add_submenu("Damage Proofs", {"Make your Character immune to different things.\nCan only have one Active at a time at the moment, will Fix later."}, function()
end)

local ragproofs_sub = proofs_sub:add_submenu("Ragdoll Proofs", {"Make your Character unable to Ragdoll to certain things."}, function()
end)

local gameinfo_sub = misc_sub:add_submenu("Game Info", {"See different Information about the Game and the current Session."}, function()
end)

local manageveh_sub = world_sub:add_submenu("Manage Vehicles", {"Manage all Vehicles in Range."}, function()
end)



--[[
local testing_sub = misc_sub:add_submenu("Testing", {"Testing Features."}, function()
end)
--]]

-- Credits Buttons

local Harmony = credits_sub:add_button("Harmony", {"For some Features like:\n\n• Halt\n• Prevent Spawning\n\n+ More!"}, function()
end)

local Folke = credits_sub:add_button("Folke", {"For some Features like:\n\n• Shoulder Pals\n• NPCs Laughing\n• NPCs Peeing\n\n+ More!"}, function()
end)

local CrazyPony = credits_sub:add_button("CrazyPony", {"For some Features like:\n\n• Suicide Pig\n• Horses\n• Panthers\n\n+ More!"}, function()
end)

local OutOfAmmo = credits_sub:add_button("Out of Ammo", {"For helping me test my Script."}, function()
end)




-- Self Submenu

self_sub:add_toggle("God Mode", {"Makes your Character unable to Die."}, function(state)
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_invincible(player_ped, state)
    end
end)


self_sub:add_toggle("No AI Damage", {"Prevents AI from damaging you with Weapons."}, function(state)
    if state == true then
        native.ped.set_ai_weapon_damage_modifier(0)
        native.ped.set_ai_melee_weapon_damage_modifier(0)
    else
        native.ped.reset_ai_weapon_damage_modifier()
        native.ped.set_ai_melee_weapon_damage_modifier(1)
    end
end)


self_sub:add_button("Juggernaut", {"Makes your Character Tanky."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.ped.set_ped_max_health(player_ped, 3500)
    end
end)


self_sub:add_button("Clean Player", {"Cleans your Ped."}, function()
    local player_ped = native.player.player_ped_id()
    native.ped.clear_ped_env_dirt(player_ped)
    native.ped.set_ped_sweat(player_ped, 0)
    native.ped.clear_ped_blood_damage(player_ped)
    native.ped.clear_ped_wetness(player_ped)
    native.ped._clear_ped_blood_damage_facial(player_ped, 0)
end)


local PlayerPed = native.player.get_player_ped(0)
    
self_sub:add_slider_int("Change Brawling Style", 1, 1, 4, 1, false, {"Change your Characters Brawling Style."}, nil, function(value)
    if value == 1 then
        native.ped._set_ped_brawling_style(PlayerPed, 0x78BAEF07)
        elseif value == 2 then
        native.ped._set_ped_brawling_style(PlayerPed, 0x1F0BB27A)
        elseif value == 3 then
        native.ped._set_ped_brawling_style(PlayerPed, 0x3C6A802F)
        elseif value == 4 then
        native.ped._set_ped_brawling_style(PlayerPed, 0xF9E77D2D)
    end
end)


self_sub:add_toggle("Invisible", {"Makes your Character Invisible."}, function(state)
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_visible(player_ped, not state)
    end
end)


self_sub:add_toggle("Flashing Player", { "Makes your Character continuously Flash."}, function(state)
    isExisting = state
end)
-- if state == true then
-- entity._set_entity_fade_out_end(player_ped)

thread.create(function()
    while true do 
        if isExisting then
            local player_ped = native.player.get_player_ped(native.player.player_id())
            thread.yield(10)
            native.entity._set_entity_fade_in(player_ped)
            thread.yield(600)
        else
            thread.yield(1000)
            --entity._set_entity_fade_in(player_ped, false)
        end
    end
end)


self_sub:add_toggle("Ghost", {"Makes your Character appear like a Ghost."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_alpha(player_ped, 90, false)
    else
        native.entity.reset_entity_alpha(player_ped)
    end
end)


self_sub:add_toggle("Disable Ragdoll", {"Makes your Character unable to Ragdoll."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ped_can_ragdoll(player_ped, false)
        native.ped.set_ped_can_ragdoll_from_player_impact(player_ped, false)
    else
        native.ped.set_ped_can_ragdoll(player_ped, true)
        native.ped.set_ped_can_ragdoll_from_player_impact(player_ped, false)
    end
end)


self_sub:add_toggle("Freeze Yourself", {"Freeze your Character in Place."}, function(state)
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.freeze_entity_position(player_ped, state)
    end
end)


self_sub:add_toggle("Freeze Yourself [Poly Mode]", {"Freeze your Character in Place."}, function(state)
    isStanding = state
end)

thread.create(function()
    while true do 
        if isStanding then
            local playerPed = native.player.get_player_ped(native.player.player_id())
            local player_ped <const> = native.player.player_ped_id()
            local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
            native.streaming.set_focus_pos_and_vel(9999.9, 9999.9, 9999.9, 0.0, 0.0, 0.0)
            thread.yield()
        else
            native.streaming.clear_focus()
            thread.yield(1000)
        end
    end
end)


self_sub:add_toggle("Disable Collision", {"Disables all Collision for your Ped."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_collision(player_ped, false, false)
    else
        native.entity.set_entity_collision(player_ped, true, true)
    end
end)


self_sub:add_toggle("Anti Lasso", {"Makes your Character unable to be Lassoed."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_ped_can_be_lassoed(player_ped, false)
    else
        native.ped._set_ped_can_be_lassoed(player_ped, true)
    end
end)


self_sub:add_toggle("Drunk", {"Makes your Character Drunk."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_ped_drunkness(player_ped, true, 100.0)
        native.audio.set_ped_is_drunk(player_ped, true)
    else
        native.ped._set_ped_drunkness(player_ped, false, 1.0)
        native.audio.set_ped_is_drunk(player_ped, false)
    end
end)


self_sub:add_toggle("Drunk [With Effect]", {"Makes your Character Drunk."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_ped_drunkness(player_ped, true, 100.0)
        native.audio.set_ped_is_drunk(player_ped, true)
        native.graphics.set_timecycle_modifier("LensDistDrunk")
    else
        native.ped._set_ped_drunkness(player_ped, false, 1.0)
        native.audio.set_ped_is_drunk(player_ped, false)
        native.graphics.set_timecycle_modifier("Base_modifier")
    end
end)


self_sub:add_toggle("Breath Underwater", {"Allows you to Breath Underwater for longer periods of Time."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ped_max_time_underwater(player_ped, 999)
    else
        native.ped.set_ped_max_time_underwater(player_ped, 40)
    end
end)


self_sub:add_toggle("Jump Loop", {"Makes your Character continuously Jump."}, function(state)
    isJumping = state
end)

thread.create(function()
    while true do 
        if isJumping then
            local playerPed = native.player.get_player_ped(native.player.player_id())
            native.task.task_jump(playerPed, true)
            thread.yield(1000)
        else
            thread.yield(1000)
        end
    end
end)


self_sub:add_toggle("Become Giant", {"Makes your Ped Massive."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_ped_scale(player_ped, 2.00)
    else
        native.ped._set_ped_scale(player_ped, 1.00)
    end
end)


self_sub:add_toggle("Lightning Rod", {"Makes your Character a walking Lightning Rod."}, function(state)
    isBreathing = state
end)

thread.create(function()
    while true do 
        if isBreathing then
            local playerPed = native.player.get_player_ped(native.player.player_id())
            local player_ped <const> = native.player.player_ped_id()
            local pos <const> = native.entity.get_entity_coords(player_ped, true, true)
            native.misc._force_lightning_flash_at_coords(pos.x, pos.y, pos.z, -1)
            thread.yield(50)
        else
            thread.yield(1000)
        end
    end
end)


self_sub:add_toggle("Ambient Animations", {"Allows you to play Ambient Animations. (W.I.P)"}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ped_can_play_ambient_anims(player_ped, true)
    else
        native.ped.set_ped_can_play_ambient_anims(player_ped, false)
    end
end)


self_sub:add_toggle("Health Steroids", {"Makes your Health Regen faster."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_health_recharge_multiplier(player_ped, 1)
    else
        native.ped._set_health_recharge_multiplier(player_ped, 0)
    end
end)


self_sub:add_toggle("Stamina Steroids", {"Makes your Stamina Regen faster."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped._set_stamina_recharge_multiplier(player_ped, 1)
    else
        native.ped._set_stamina_recharge_multiplier(player_ped, 0)
    end
end)


self_sub:add_button("Restore Stamina", {"Refills your Stamina."}, function()
    local player_ped = native.player.player_ped_id()
    native.ped._restore_ped_stamina(player_ped, 100.0)
end)


self_sub:add_button("Force Law on Yourself", {"Forces Law on your Player Immediately.\nDoesn't work with Never Wanted or Disable Cops enabled."}, function()
    native.law._force_law_on_local_player_immediately()
end)


self_sub:add_toggle("Disable Cops", {"Disables all Cops."}, function(state)
    if state == true then
        native.law._set_law_disabled(true)
    else
        native.law._set_law_disabled(false)
    end
end)


self_sub:add_toggle("Cops Love You", {"Get Wanted much Easier."}, function(state)
    if state == true then
        native.player.set_wanted_level_multiplier(10)
    else
        native.player.set_wanted_level_multiplier(1)
    end
end)


self_sub:add_toggle("Instant Kill", {"Kill every Player with One Shot."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ped_to_player_weapon_damage_modifier(player_ped, 9999)
        native.ped._set_ped_headshot_damage_multiplier(player_ped, 9999)
    else
        native.ped.set_ped_to_player_weapon_damage_modifier(player_ped, 1)
        native.ped._set_ped_headshot_damage_multiplier(player_ped, 1)
    end
end)


self_sub:add_toggle("Max Accuracy", {"Makes your Weapons have 100% Accuracy."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ped_accuracy(player_ped, 100)
    else
        native.ped.set_ped_accuracy(player_ped, 95)
    end
end)


self_sub:add_toggle("Friendly Fire", {"Enables Friendly Fire. (W.I.P)"}, function(state)
    if state == true then
        native.network.network_set_friendly_fire_option(true)
    else
        native.network.network_set_friendly_fire_option(false)
    end
end)


self_sub:add_toggle("Massive Bullets", {"Makes all your Bullet Impacts Massive."}, function(state)
    if state == true then
        native.graphics.set_particle_fx_bullet_impact_scale(50)
    else
        native.graphics.set_particle_fx_bullet_impact_scale(1)
    end
end)



-- Teleport Submenu Functions

teleportlocal_sub:add_button("Sky Barrier", {"Teleport to Sky Barrier.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, 906, -1500, 90000002981, false, false, false, false)
    toast.add_info(script.get_name() .." | Information", "Enable NoClip or Freeze Yourself to stay out the Sky Barrier.")
    thread.yield(4000)
    toast.add_info(script.get_name() .." | Information", "Disable NoClip and Teleport to get back in the World.")
end)

teleportlocal_sub:add_separator("Guarma")

teleportlocal_sub:add_button("Guarma Dock", {"Teleport to Guarma Dock.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, 1276.674560546875, 6857.1240234375, 43.3184928894043, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_button("Guarma Fields", {"Teleport to Guarma Fields.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, -1791.6947021484375, -6401.033203125, 117.76360321044922, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_button("Guarma Ruins", {"Teleport to Guarma Ruins.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, 1167.8306884765625, -7258.22265625, 69.22354888916016, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_button("Guarma Camp", {"Teleport to Guarma Camp.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, 1424.854248046875, -7326.02197265625, 81.45873260498047, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_button("Guarma Cave [Entrance]", {"Teleport to Guarma Cave Entrance.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, 1505.6893310546875, -7188.0068359375, 63.85354232788086, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_button("Guarma Cave [Inside]", {"Teleport to Guarma Cave Inside.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        native.entity.set_entity_coords(player_ped, 1504.280517578125, -7142.642578125, 57.40495300292969, true, true, true, true)
        native.cam.do_screen_fade_out(3)
        thread.yield(2000)
        native.cam.do_screen_fade_in(3)
    end
end)

teleportlocal_sub:add_separator("Sitting Places")

teleportlocal_sub:add_button("Hangman", {"Teleport to Hangman.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, -315, 725, 121, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_button("Water", {"Teleport to Water.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, -6785, -3334, 8, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_button("Light", {"Teleport to Light.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, 3036, 432, 69, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_button("Dock", {"Teleport to Dock.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, 2537, -1460, 81, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_separator("Ruddles Chill Places")

teleportlocal_sub:add_button("Open Field", {"Teleport to Open Field.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, 1798, -3342, 64, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_button("Farm", {"Teleport to Farm.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, 983, -2005, 46, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

teleportlocal_sub:add_button("Cliff", {"Teleport to Cliff.\nMust have NoClip disabled before Teleporting."}, function()
    local player_ped <const> = native.player.player_ped_id()
    native.cam.set_third_person_cam_orbit_distance_limits_this_update(1.0, 5000.0)
    native.entity.set_entity_coords(player_ped, -2911, -2954, 62, false, false, false, false)
    native.cam.do_screen_fade_out(3)
    thread.yield(2000)
    native.cam.do_screen_fade_in(3)
end)

-- Ability Self Functions

abilityself_sub:add_toggle("Can Autoescape From Lasso", {"Native: CAN_AUTOESCAPE_FROM_LASSO."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(0, true)
        else
            native.player._set_local_player_persona_ability_flag(0, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Hat Block First Headshot", {"Native: HAT_BLOCKS_FIRST_HEADSHOT."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(1, true)
        else
            native.player._set_local_player_persona_ability_flag(1, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Full Auto For All Weapons", {"Native: FULL_AUTO_FOR_ALL_WEAPONS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(2, true)
        else
            native.player._set_local_player_persona_ability_flag(2, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Might Live After Deadly Damage", {"Native: MIGHT_LIVE_AFTER_DEADLY_DAMAGE."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(3, true)
        else
            native.player._set_local_player_persona_ability_flag(3, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Ignore Aim Before Firing Restrictions", {"Native: IGNORE_AIM_BEFORE_FIRING_RESTRICTIONS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(4, true)
        else
            native.player._set_local_player_persona_ability_flag(4, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Deadeye Instant Reload", {"Native: DEADEYE_INSTANT_RELOAD."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(5, true)
        else
            native.player._set_local_player_persona_ability_flag(5, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Use Phosphorous Rounds", {"Native: USE_PHOSPHOROUS_ROUNDS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(6, true)
        else
            native.player._set_local_player_persona_ability_flag(6, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Taking Cover", {"Native: CANT_DEADEYE_ON_TAKING_COVER."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(7, true)
        else
            native.player._set_local_player_persona_ability_flag(7, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Reload", {"Native: CANT_DEADEYE_ON_RELOAD."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(8, true)
        else
            native.player._set_local_player_persona_ability_flag(8, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Shooting", {"Native: CANT_DEADEYE_ON_SHOOTING."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(9, true)
        else
            native.player._set_local_player_persona_ability_flag(9, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Exiting Aim", {"Native: CANT_DEADEYE_ON_EXITING_AIM."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(10, true)
        else
            native.player._set_local_player_persona_ability_flag(10, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Disable Player Cancelling Deadeye", {"Native: DISABLE_PLAYER_CANCELLING_DEADEYE."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(11, true)
        else
            native.player._set_local_player_persona_ability_flag(11, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Ragdoll", {"Native: CANT_DEADEYE_ON_RAGDOLL."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(12, true)
        else
            native.player._set_local_player_persona_ability_flag(12, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Use Explosive Rounds", {"Native: USE_EXPLOSIVE_ROUNDS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(13, true)
        else
            native.player._set_local_player_persona_ability_flag(13, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Exit Deadeye on Taking Damage", {"Native: EXIT_DEADEYE_ON_TAKING_DAMAGE."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(14, true)
        else
            native.player._set_local_player_persona_ability_flag(14, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Carry Two Moneybags", {"Native: CARRY_TWO_MONEYBAGS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(15, true)
        else
            native.player._set_local_player_persona_ability_flag(15, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Long Pick Herbs", {"Native: ABILITY_LONG_PICK_HERBS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(16, true)
        else
            native.player._set_local_player_persona_ability_flag(16, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deadeye on Sprinting", {"Native: CANT_DEADEYE_ON_SPRINTING."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(18, true)
        else
            native.player._set_local_player_persona_ability_flag(18, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deal Headshots", {"Native: CANT_DEAL_HEADSHOTS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(19, true)
        else
            native.player._set_local_player_persona_ability_flag(19, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Hangman", {"Native: HANGMAN."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(20, true)
        else
            native.player._set_local_player_persona_ability_flag(20, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Unbreakable Lasso", {"Native: ABILITY_UNBREAKABLE_LASSO."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(17, true)
        else
            native.player._set_local_player_persona_ability_flag(17, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Allow Deadeye With Melee Weapons", {"Native: ALLOW_DEADEYE_WITH_MELEE_WEAPONS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(21, true)
        else
            native.player._set_local_player_persona_ability_flag(21, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Allow Deadeye While Unarmed", {"Native: ALLOW_DEADEYE_WHILE_UNARMED."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(22, true)
        else
            native.player._set_local_player_persona_ability_flag(22, false)
            thread.yield()
        end
    end)
end)


abilityself_sub:add_toggle("Disable Deadeye Perfect Accuracy", {"Native: DISABLE_DEADEYE_PERFECT_ACCURACY."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(23, true)
        else
            native.player._set_local_player_persona_ability_flag(23, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deal Headshots to Players", {"Native: CANT_DEAL_HEADSHOTS_TO_PLAYERS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(24, true)
        else
            native.player._set_local_player_persona_ability_flag(24, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deal Critical Damage", {"Native: CANT_DEAL_CRITICAL_DAMAGE."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(25, true)
        else
            native.player._set_local_player_persona_ability_flag(25, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant Deal Critical Damage to Players", {"Native: CANT_DEAL_CRITICAL_DAMAGE_TO_PLAYERS."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(26, true)
        else
            native.player._set_local_player_persona_ability_flag(26, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Allow EagleEye in Combat", {"Native: ALLOW_EAGLEEYE_IN_COMBAT."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(27, true)
        else
            native.player._set_local_player_persona_ability_flag(27, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Cant EagleEye on Sprint", {"Native: CANT_EAGLEEYE_ON_SPRINT."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(28, true)
        else
            native.player._set_local_player_persona_ability_flag(28, false)
            thread.yield()
        end
    end)
end)

abilityself_sub:add_toggle("Suppress Legendary EagleEye Trail Color", {"Native: SUPPRESS_LEGENDARY_EAGLEEYE_TRAIL_COLOR."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(29, true)
        else
            native.player._set_local_player_persona_ability_flag(29, false)
            thread.yield()
        end
    end)
end)



-- Game Settings Submenu

gameset_sub:add_toggle("Disable Camera Shake", {"Prevents your Gameplay Camera from Shaking."}, function(state)
    isCameraShaking = state
end)

thread.create(function()
    while true do 
        if isCameraShaking then
            native.cam.stop_gameplay_cam_shaking(true)
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


gameset_sub:add_toggle("Disable Cinematic Mode", {"Disables Cinematic Mode."}, function(state)
    isCinMode = state
end)

thread.create(function()
    while true do 
        if isCinMode then
            native.cam._disable_cinematic_mode_this_frame()
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


gameset_sub:add_toggle("Disable PostFX", {"Disables all PostFX."}, function(state)
    isPostFX = state
end)

thread.create(function()
    while true do 
        if isPostFX then
            native.graphics.animpostfx_stop_all()
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


gameset_sub:add_toggle("Disable Water Lookup", {"Disables Water Lookup."}, function(state)
    isWaterLookup = state
end)

thread.create(function()
    while true do 
        if isWaterLookup then
            native.water.disable_water_lookup()
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


gameset_sub:add_toggle("Disable Loading Screens", {"Disables some Loading Screens."}, function(state)
    if state == true then
        native.scripts.set_no_loading_screen(true)
    else
        native.scripts.set_no_loading_screen(false)
    end
end)



gameset_sub:add_separator("Hud")



gameset_sub:add_toggle("Sceenshot Mode", {"Hides the Hud."}, function(state)
    if state == true then
        native.hud.display_hud(false)
    else
        native.hud.display_hud(true)
        thread.yield()
    end
end)


gameset_sub:add_toggle("Radar", {"Hides the Radar."}, function(state)
    if state == true then
        native.map.display_radar(false)
    else
        native.map.display_radar(true)
    end
end)


gameset_sub:add_toggle("Loading Spinner", {"Hides the Loading Spinner."}, function(state)
    if state == true then
        native.hud.busyspinner_off()
    else
        native.hud.busyspinner_is_on()
    end
end)


gameset_sub:add_toggle("Points of Interest", {"Hides all active Points of Interest."}, function(state)
    if state == true then
        native.map._hide_active_points_of_interest()
    else
        native.map._show_active_points_of_interest()
    end
end)





-- Testing Functions






-- Clear Area Submenu

cleararea_sub:add_button("Clear Area", {"Clears the Area of many things."}, function()
    local player_ped = native.player.player_ped_id() 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.misc.clear_area(pos.x, pos.y, pos.z, 1000, 1)
    native.graphics.remove_particle_fx_in_range(pos.x, pos.y, pos.z, 1000)
    native.fire.stop_fire_in_range(pos.x, pos.y, pos.z, 1000)
end)


cleararea_sub:add_separator("Individual")


cleararea_sub:add_button("Clear Particles", {"Clears all Particles in Range."}, function()
    local player_ped = native.player.player_ped_id() 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.graphics.remove_particle_fx_in_range(pos.x, pos.y, pos.z, 1000)
end)


cleararea_sub:add_button("Clear Fire", {"Clears all Fire in Range."}, function()
    local player_ped = native.player.player_ped_id() 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.fire.stop_fire_in_range(pos.x, pos.y, pos.z, 1000)
end)


cleararea_sub:add_button("Clear Decals", {"Clears all Decals in Range."}, function()
    local player_ped = native.player.player_ped_id() 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.graphics.remove_decals_in_range(pos.x, pos.y, pos.z, 1000)
end)





-- Recovery Submenu

recovery_sub:add_toggle("Give all Ability Cards", {"Gives you every Ability Card."}, function(state)
    thread.create(function(ability)
        if state == true then
            native.player._set_local_player_persona_ability_flag(0, true)
            native.player._set_local_player_persona_ability_flag(1, true)
            native.player._set_local_player_persona_ability_flag(2, true)
            native.player._set_local_player_persona_ability_flag(3, true)
            native.player._set_local_player_persona_ability_flag(4, true)
            native.player._set_local_player_persona_ability_flag(5, true)
            native.player._set_local_player_persona_ability_flag(6, true)
            native.player._set_local_player_persona_ability_flag(7, true)
            native.player._set_local_player_persona_ability_flag(8, true)
            native.player._set_local_player_persona_ability_flag(9, true)
            native.player._set_local_player_persona_ability_flag(10, true)
            native.player._set_local_player_persona_ability_flag(11, true)
            native.player._set_local_player_persona_ability_flag(12, true)
            native.player._set_local_player_persona_ability_flag(13, true)
            native.player._set_local_player_persona_ability_flag(14, true)
            native.player._set_local_player_persona_ability_flag(15, true)
            native.player._set_local_player_persona_ability_flag(16, true)
            native.player._set_local_player_persona_ability_flag(17, true)
            native.player._set_local_player_persona_ability_flag(18, true)
            native.player._set_local_player_persona_ability_flag(19, true)
            native.player._set_local_player_persona_ability_flag(20, true)
            native.player._set_local_player_persona_ability_flag(21, true)
            native.player._set_local_player_persona_ability_flag(22, true)
            native.player._set_local_player_persona_ability_flag(23, true)
            native.player._set_local_player_persona_ability_flag(24, true)
            native.player._set_local_player_persona_ability_flag(25, true)
            native.player._set_local_player_persona_ability_flag(26, true)
            native.player._set_local_player_persona_ability_flag(27, true)
            native.player._set_local_player_persona_ability_flag(28, true)
            native.player._set_local_player_persona_ability_flag(29, true)
        else
            native.player._set_local_player_persona_ability_flag(0, false)
            native.player._set_local_player_persona_ability_flag(1, false)
            native.player._set_local_player_persona_ability_flag(2, false)
            native.player._set_local_player_persona_ability_flag(3, false)
            native.player._set_local_player_persona_ability_flag(4, false)
            native.player._set_local_player_persona_ability_flag(5, false)
            native.player._set_local_player_persona_ability_flag(6, false)
            native.player._set_local_player_persona_ability_flag(7, false)
            native.player._set_local_player_persona_ability_flag(8, false)
            native.player._set_local_player_persona_ability_flag(9, false)
            native.player._set_local_player_persona_ability_flag(10, false)
            native.player._set_local_player_persona_ability_flag(11, false)
            native.player._set_local_player_persona_ability_flag(12, false)
            native.player._set_local_player_persona_ability_flag(13, false)
            native.player._set_local_player_persona_ability_flag(14, false)
            native.player._set_local_player_persona_ability_flag(15, false)
            native.player._set_local_player_persona_ability_flag(16, false)
            native.player._set_local_player_persona_ability_flag(17, false)
            native.player._set_local_player_persona_ability_flag(18, false)
            native.player._set_local_player_persona_ability_flag(19, false)
            native.player._set_local_player_persona_ability_flag(20, false)
            native.player._set_local_player_persona_ability_flag(21, false)
            native.player._set_local_player_persona_ability_flag(22, false)
            native.player._set_local_player_persona_ability_flag(23, false)
            native.player._set_local_player_persona_ability_flag(24, false)
            native.player._set_local_player_persona_ability_flag(25, false)
            native.player._set_local_player_persona_ability_flag(26, false)
            native.player._set_local_player_persona_ability_flag(27, false)
            native.player._set_local_player_persona_ability_flag(28, false)
            native.player._set_local_player_persona_ability_flag(29, false)
            thread.yield()
        end
    end)
end)

recovery_sub:add_button("Dead Legendary Animals", {"Spawns various dead Legendary Animals for you to Skin."}, function ()
    local player_ped <const> = native.player.player_ped_id()
    local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
    
    local Hash_1 <const> = hash.joaat('mp_a_c_buffalo_01')
    lua_fast_calls.request_model(Hash_1)
    for i= 1,3 do
        TatankaLegendary = native.ped.create_ped(Hash_1, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.entity.set_entity_health(TatankaLegendary, 0, 0)
    end
    thread.yield(500)

    local Hash_2 <const> = hash.joaat('mp_a_c_buffalo_01')
    lua_fast_calls.request_model(Hash_2)
    for i = 1,3 do
        TatankaPaytaLegendary = native.ped.create_ped(Hash_2, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(TatankaPaytaLegendary, 2, false) 
        native.entity.set_entity_health(TatankaPaytaLegendary, 0, 0)
    end
    thread.yield(500)

    local Hash_3 <const> = hash.joaat('mp_a_c_panther_01')
    lua_fast_calls.request_model(Hash_3)
    for i = 1,3 do
        NightWalker = native.ped.create_ped(Hash_3, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.entity.set_entity_health(NightWalker, 0, 0)
    end
    thread.yield(500)
    
    local Hash_4 <const> = hash.joaat('mp_a_c_buck_01')
    lua_fast_calls.request_model(Hash_4)
    for i = 1,3 do
        SnowBuckLegendary = native.ped.create_ped(Hash_4, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(SnowBuckLegendary, 3, false)
        native.entity.set_entity_health(SnowBuckLegendary, 0, 0)
    end
    thread.yield(500)

    local Hash_5 <const> = hash.joaat('mp_a_c_alligator_01')
    lua_fast_calls.request_model(Hash_5)
    for i= 1,3 do
        LegendaryTecaGator = native.ped.create_ped(Hash_5, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.entity.set_entity_health(LegendaryTecaGator, 0, 0)
    end
    thread.yield(500)

    local Hash_6 <const> = hash.joaat('mp_a_c_wolf_01')
    lua_fast_calls.request_model(Hash_6)
    for i = 1,3 do
        LegendaryOnyxWolf = native.ped.create_ped(Hash_6, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LegendaryOnyxWolf, 1, false)
        native.entity.set_entity_health(LegendaryOnyxWolf, 0, 0)
    end
    thread.yield(500)

    local Hash_7 <const> = hash.joaat('mp_a_c_bighornram_01')
    lua_fast_calls.request_model(Hash_7)
    for i = 1,3 do
        LegendaryGabbro = native.ped.create_ped(Hash_7, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.entity.set_entity_health(LegendaryGabbro, 0, 0)
    end
    thread.yield(500)

    local Hash_8 <const> = hash.joaat('mp_a_c_coyote_01')
    lua_fast_calls.request_model(Hash_8)
    for i = 1,3 do
        LegendaryRedStreak = native.ped.create_ped(Hash_8, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.entity.set_entity_health(LegendaryRedStreak, 0, 0)
    end
    thread.yield(500)

    local Hash_9 <const> = hash.joaat('mp_a_c_panther_01')
    lua_fast_calls.request_model(Hash_9)
    for i = 1,3 do
        LegendaryGhostPanther = native.ped.create_ped(Hash_9, coords.x, coords.y-2, coords.z, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LegendaryGhostPanther, 1, false)
        native.entity.set_entity_health(LegendaryGhostPanther, 0, 0)
    end
    thread.yield(750)

    toast.add_success(script.get_name(), "Dead Legendary Animals Successfully Spawned!")
end)


recovery_sub:add_button("Max Horse Bonding", {"Temporarily Max the Horse Bonding of a Horse. (W.I.P)"}, function()
    local player_ped = native.player.player_ped_id()
    native.ped._set_mount_bonding_level(player_ped, 5)
end)



-- World Submenu Functions

world_sub:add_toggle("Pause Clock", {"Pauses the Clock."}, function(state)
    if state == true then
        native.clock._pause_clock_this_frame(true)
    else
        native.clock._pause_clock_this_frame(false)
    end
end)

world_sub:add_toggle("Darken World", {"Darkens the World slightly."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.graphics.set_timecycle_modifier("INT_Blockout")
    else
        native.graphics.set_timecycle_modifier("Base_modifier")
    end
end)

world_sub:add_toggle("Brighten World", {"Brightens the World slightly."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.graphics.set_timecycle_modifier("PlayerDrunk01")
    else
        native.graphics.set_timecycle_modifier("Base_modifier")
    end
end)

world_sub:add_toggle("Remove Snow", {"Removes Snow from the World."}, function(state)
    if state == true then
        native.graphics._set_snow_coverage_type(0)
    else
        native.graphics._set_snow_coverage_type(1)
    end 
end)

world_sub:add_toggle("Guarma Water", {"Forces the World to use Guarma Water instead of Default."}, function(state)
    if state == true then
        native.water._set_world_water_type(1)
    else
        native.water._set_world_water_type(0)
    end
end)

world_sub:add_toggle("Guarma Worldhorizon", {"Enables Guarma Worldhorizon."}, function(state)
    if state == true then
        native.streaming._set_guarma_worldhorizon_active(true)
    else
        native.streaming._set_guarma_worldhorizon_active(false)
    end
end)

world_sub:add_toggle("Constant Lightning", {"Forces the World to do Lightning Flashes."}, function(state)
    isLightFlash = state
end)

thread.create(function()
    while true do 
        if isLightFlash then
            native.misc.force_lightning_flash()
            thread.yield(50)
        else
            thread.yield(1000)
        end
    end
end)

world_sub:add_button("Fill Population", {"Fills up the Worlds Population."}, function()
    native.ped.instantly_fill_ped_population()
    native.vehicle.instantly_fill_vehicle_population()
    native.misc.populate_now()
    thread.yield()
end)

world_sub:add_toggle("Disable Road Population", {"Disables all Ambient Road Population."}, function(state)
    if state == true then
        native.population.disable_ambient_road_population(true)
    else
        native.population.enable_ambient_road_population()
    end
end)

world_sub:add_toggle("Decrease Ped Population", {"Makes the World spawn fewer Peds."}, function(state)
    if state == true then
        native.streaming.set_population_budget_multiplier(-90.0)
    end
end)

world_sub:add_toggle("Slow Motion", {"Makes the World Slow Motion."}, function(state)
    if state == true then
        native.misc.set_time_scale(0.4)
    else
        native.misc.set_time_scale(1)
    end
end)

world_sub:add_toggle("Blood World", {"Makes the World Color blood Red."}, function(state)
    isLightsRed = state
end)

thread.create(function()
    while true do 
        if isLightsRed then
            local player_ped = native.player.player_ped_id()
            local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
            native.graphics.draw_light_with_range(pos.x, pos.y, pos.z, 255, 0, 0, 1000, 2)
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)

world_sub:add_toggle("Heavy Snow", {"Makes Snowfall more Intense."}, function(state)
    if state == true then
        native.misc._set_snow_level(10)
    else
        native.misc._set_snow_level(1)
    end
end)

world_sub:add_toggle("Speed Up Wind", {"Makes the Wind Faster and more Intense."}, function(state)
    if state == true then
        native.misc.set_wind_speed(15)
    else
        native.misc.set_wind_speed(1)
    end
end)

world_sub:add_toggle("Corrupt Colors", {"Corrupts the World Colors for a nauseating Effect."}, function(state)
    isLightsActive = state
end)

thread.create(function()
    while true do 
        if isLightsActive then
            local randfloat = native.misc.get_random_float_in_range(1, 999);
            local player_ped = native.player.player_ped_id()
            local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
            native.graphics.draw_light_with_range(pos.x, pos.y, pos.z, 255, 0, 0, 500, 4)
            thread.yield(1)
            native.graphics.draw_light_with_range(pos.x, pos.y, pos.z, 0, 255, 0, 500, 4)
            thread.yield(1)
            native.graphics.draw_light_with_range(pos.x, pos.y, pos.z, 0, 0, 255, 500, 4)
            thread.yield(1)
        else
            thread.yield(1000)
        end
    end
end)





-- Damage Proofs Submenu Functions

dmgproofs_sub:add_toggle("Bullet Proof", {"Makes you Bullet Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 1, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Flame Proof", {"Makes you Flame Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 2, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Explosion Proof", {"Makes you Explosion Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 4, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Collision Proof", {"Makes you Collision Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 8, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Melee Proof", {"Makes you Melee Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 16, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Steam Proof", {"Makes you Steam Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 32, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Smoke Proof", {"Makes you Smoke Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 64, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Headshot Proof", {"Makes you Headshot Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 128, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)

dmgproofs_sub:add_toggle("Projectile Proof", {"Makes you Projectile Proof."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.entity.set_entity_proofs(player_ped, 256, true)
    else
        native.entity.set_entity_proofs(player_ped, 0, false)
    end
end)






-- Ragdoll Proofs Submenu Functions

ragproofs_sub:add_toggle("Bullet Impact Proof", {"Makes your Character unable to Ragdoll from Bullet Impacts."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 1)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 1)
    end
end)

ragproofs_sub:add_toggle("Vehicle Impact Proof", {"Makes your Character unable to Ragdoll from Vehicle Impacts."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 2)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 2)
    end
end)

ragproofs_sub:add_toggle("Fire Proof", {"Makes your Character unable to Ragdoll from Fire."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 4)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 4)
    end
end)

ragproofs_sub:add_toggle("Electrocution Proof", {"Makes your Character unable to Ragdoll from Electrocutions."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 8)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 8)
    end
end)

ragproofs_sub:add_toggle("Player Impact Proof", {"Makes your Character unable to Ragdoll from Player Impacts."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 16)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 16)
    end
end)

ragproofs_sub:add_toggle("Explosion Proof", {"Makes your Character unable to Ragdoll from Explosions."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 32)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 32)
    end
end)

ragproofs_sub:add_toggle("Object Impact Proof", {"Makes your Character unable to Ragdoll from Object Impacts."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 64)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 64)
    end
end)

ragproofs_sub:add_toggle("Melee Proof", {"Makes your Character unable to Ragdoll from Melee Attacks."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 128)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 128)
    end
end)

ragproofs_sub:add_toggle("Rubber Bullet Proof", {"Makes your Character unable to Ragdoll from Rubber Bullets."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 256)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 256)
    end
end)

ragproofs_sub:add_toggle("Falling Proof", {"Makes your Character unable to Ragdoll from Falling."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 512)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 512)
    end
end)

ragproofs_sub:add_toggle("Water Jet Proof", {"Makes your Character unable to Ragdoll from Water Jets."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 1024)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 1024)
    end
end)

ragproofs_sub:add_toggle("Drowning Proof", {"Makes your Character unable to Ragdoll from Drowning."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 2048)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 2048)
    end
end)

ragproofs_sub:add_toggle("Player Bump Proof", {"Makes your Character unable to Ragdoll from Player Bumps."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 8192)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 8192)
    end
end)

ragproofs_sub:add_toggle("Player Ragdoll Bump Proof", {"Makes your Character unable to Ragdoll from Player Ragdoll Bumps."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 16384)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 16384)
    end
end)

ragproofs_sub:add_toggle("Ped Ragdoll Bump Proof", {"Makes your Character unable to Ragdoll from Ped Ragdoll Bumps."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 32768)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 32768)
    end
end)

ragproofs_sub:add_toggle("Vehicle Grab Proof", {"Makes your Character unable to Ragdoll from being Dragged off a Vehicle."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 65536)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 65536)
    end
end)

ragproofs_sub:add_toggle("Smoke Grenade Proof", {"Makes your Character unable to Ragdoll from Smoke Grenades."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 131072)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 131072)
    end
end)

ragproofs_sub:add_toggle("Horse Bump Proof", {"Makes your Character unable to Ragdoll from Horse Bumps."}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        native.ped.set_ragdoll_blocking_flags(player_ped, 131072)
    else
        native.ped.clear_ragdoll_blocking_flags(player_ped, 131072)
    end
end)








-- Misc Submenu Functions

misc_sub:add_toggle("Anti Crash Cam", {}, function(state)
    local player_ped = native.player.player_ped_id()
    if state == true then
        local camera = native.cam.create_cam("DEFAULT_SCRIPTED_CAMERA", true)
        native.cam.render_script_cams(true, false, 0, true, false, 0)
        native.cam.set_cam_coord(camera, 0, 0, 10000)
    else
        local camera = native.cam.create_cam("DEFAULT_SCRIPTED_CAMERA", true)
        native.cam.destroy_cam(camera, false)
        native.cam.render_script_cams(false, false, 0, true, true, 0)
    end
end)

misc_sub:add_toggle("Reveal Map", {"Removes all the Fog/Coverage on the Map."}, function(state)
    if state == true then
        native.map.set_minimap_hide_fow(true)
    else
        native.map.set_minimap_hide_fow(false)
    end
end)

misc_sub:add_toggle("Pause Game", {"Pauses the Game."}, function(state)
    if state == true then
        native.misc.set_game_paused(true)
    else
        native.misc.set_game_paused(false)
    end
end)


misc_sub:add_toggle("PS1 Graphics", {"Makes your Game basically Render nothing."}, function(state)
    isWalking = state
end)

thread.create(function()
    while true do 
        if isWalking then
            --local playerPed = native.player.get_player_ped(native.player.player_id())
            local player_ped <const> = native.player.player_ped_id()
            local pos <const> = native.entity.get_entity_coords(player_ped, true, true)
            native.streaming.set_focus_pos_and_vel(pos.x + 9999.9, pos.y, pos.z, 0.0, 0.0, 0.0)
            native.streaming.request_collision_at_coord(pos.x, pos.y, pos.z)
            thread.yield()
        else
            native.streaming.clear_focus()
            thread.yield(1000)
        end
    end
end)


misc_sub:add_toggle("Create Ghost Session", {"Creates an Invisible Session that no one can Join."}, function (state)
    if state == true then
        native.network.network_start_solo_tutorial_session()
    else
        native.network.network_end_tutorial_session()
    end    
end)


misc_sub:add_toggle("Disable Session Splitting", {"Disables Session Splitting."}, function(state)
    if state == true then
        native.network._network_auto_session_set_allowed_to_split(false)
    else
        native.network._network_auto_session_set_allowed_to_split(true)
    end
end)


misc_sub:add_toggle("Block Script Host Migration", {"Blocks Script Host Migration."}, function(state)
    isHostChanged = state
end)

thread.create(function()
    while true do 
        if isHostChanged then
            if native.network.network_is_host() then
                native.network.network_prevent_script_host_migration()
            end
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


misc_sub:add_toggle("Unrestricted Camera", {"Makes your Gameplay Camera Unrestricted."}, function(state)
    isCameraMoving = state
end)

thread.create(function()
    while true do 
        if isCameraMoving then
            native.cam.set_third_person_cam_relative_pitch_limits_this_update(-89.0, 89.0)
            native.cam.set_first_person_aim_cam_relative_pitch_limits_this_update(-89.0, 89.0)
            thread.yield()
        else
            thread.yield(1000)
        end
    end
end)


misc_sub:add_toggle("Sniper Glints", {"Makes Sniper Glints Visible."}, function(state)
    if state == true then
        native.graphics._set_sniper_glints_enabled(true)
    else
        native.graphics._set_sniper_glints_enabled(false)
    end
end)


misc_sub:add_button("Finish Mission", {"Finishes some Missions Instantly. (W.I.P)"}, function()
    native.network.network_set_mission_finished()
end)


misc_sub:add_button("Cancel Legendary Mission", {"Ends the active Legendary Bounty Mission. (W.I.P)"}, function()
    native.bounty._bounty_cancel_legendary_mission()
end)


misc_sub:add_button("End Bounty Hunt", {"Ends any active Bounty Hunt. (W.I.P)"}, function()
    native.bounty._bounty_clear_being_target()
end)








-- Spawner Submenu
-----------------------------------------------------------------]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]


local function SpawnPed(hash, coords, coords, coords, heading)
    if request_model(hash) then
        if hash then
        return native.ped.create_ped(hash, coords, coords, coords, heading, true, true, false, false)
    end
end
end


local function requestModel(hash)
    local timer <const> = time.unix_milliseconds() + 1000
    while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
        native.streaming.request_model(hash, true)
        thread.yield()
    end
end

local function spawnVeh(hash,pos)
    RequestModel(hash)
    toast.add_info("Debug", "Model Requested Successfully")
    local veh = native.vehicle.create_vehicle(hash, pos.x,pos.y,pos.z-0.8,1, true, true, true, false)
    toast.add_info("Debug", "Spawned Successfully"..tostring(veh ))
    if veh then
       return veh
    else
       return false, toast.add_info("Spawn Failed")
    end
 end



 local function SpawnPed(hash, coords, coords, coords, heading)
    if request_model(hash) then
        if hash then
        return native.ped.create_ped(hash, coords, coords, coords, heading, true, true, false, false)
    end
end
end

local function deleteEntity(ent)
    if native.entity.does_entity_exist(ent) then
        local mem <const> = memory.alloc_mem(4)
        memory.write_s32(memory.get_address(mem), ent)
        native.entity.delete_entity(memory.get_address(mem))
    end
end






-----------------------------------------------------------------]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]

local nude_woman = peds_sub:add_button("Nude Woman", {"Spawns a Nude Woman."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local nude1 <const> = native.misc.get_hash_key("u_f_m_rhdnudewoman_01")
        requestModel(nude1)
        local NUDE1 = native.ped.create_ped(nude1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(NUDE1, 1, false)
        native.ped.set_ped_config_flag(NUDE1, 0, true)
        native.task.task_follow_to_offset_of_entity(NUDE1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        if native.entity.does_entity_exist(NUDE1) then
            toast.add_success(script.get_name() .." | Spawn Successful!", "Nude Woman Spawned.")
        else
            toast.add_error(script.get_name() .." | Spawn Failed!", "Reason: Couldn't find the Model.")
        end
    end
end)

nude_woman:set_label("Nude Woman")



local bounty_hunter = peds_sub:add_button("Bounty Hunter", {"Spawns a Bounty Hunter."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bounty1 <const> = native.misc.get_hash_key("u_m_m_unibountyhunter_01")
        requestModel(bounty1)
        local BOUNTY1 = native.ped.create_ped(bounty1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BOUNTY1, 1, false)
        native.ped.set_ped_config_flag(BOUNTY1, 0, true)
        native.task.task_follow_to_offset_of_entity(BOUNTY1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        if native.entity.does_entity_exist(BOUNTY1) then
            toast.add_success(script.get_name() .." | Spawn Successful!", "Bounty Hunter Spawned.")
        else
            toast.add_error(script.get_name() .." | Spawn Failed!", "Reason: Couldn't find the Model.")
        end
    end
end)

bounty_hunter:set_label("Bounty Hunter")



local poor_joe = peds_sub:add_button("Poor Joe", {"Spawns Poor Joe."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local joe1 <const> = native.misc.get_hash_key("cs_poorjoe")
        requestModel(joe1)
        local JOE1 = native.ped.create_ped(joe1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(JOE1, 1, false)
        native.ped.set_ped_config_flag(JOE1, 0, true)
        native.task.task_follow_to_offset_of_entity(JOE1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        if native.entity.does_entity_exist(JOE1) then
            toast.add_success(script.get_name() .." | Spawn Successful!", "Poor Joe Spawned.")
        else
            toast.add_error(script.get_name() .." | Spawn Failed!", "Reason: Couldn't find the Model.")
        end
    end
end)

poor_joe:set_label("Poor Joe")






-- Legendary Animal Spawnables

legani_sub:add_list("Legendary Buffalo", {"Alive", "Dead"}, false, {"Spawns a Legendary Buffalo."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local buffa1 <const> = native.misc.get_hash_key("mp_a_c_buffalo_01")
        requestModel(buffa1)
        local BUFFA1 = native.ped.create_ped(buffa1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BUFFA1, 1, false)
        native.ped.set_ped_config_flag(BUFFA1, 0, true)
        native.task.task_follow_to_offset_of_entity(BUFFA1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Buffalo Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local buffa1 <const> = native.misc.get_hash_key("mp_a_c_buffalo_01")
        requestModel(buffa1)
        local BUFFA1 = native.ped.create_ped(buffa1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BUFFA1, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BUFFA1, 1, false)
        native.ped.set_ped_config_flag(BUFFA1, 0, true)
        native.task.task_follow_to_offset_of_entity(BUFFA1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Buffalo Spawned.")
    end
end)



legani_sub:add_list("Legendary Boar", {"Alive", "Dead"}, false, {"Spawns a Legendary Boar."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local boar1 <const> = native.misc.get_hash_key("a_c_boarlegendary_01")
        requestModel(boar1)
        local BOAR1 = native.ped.create_ped(boar1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BOAR1, 1, false)
        native.ped.set_ped_config_flag(BOAR1, 0, true)
        native.task.task_follow_to_offset_of_entity(BOAR1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Boar Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local boar1 <const> = native.misc.get_hash_key("a_c_boarlegendary_01")
        requestModel(boar1)
        local BOAR1 = native.ped.create_ped(boar1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BOAR1, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BOAR1, 1, false)
        native.ped.set_ped_config_flag(BOAR1, 0, true)
        native.task.task_follow_to_offset_of_entity(BOAR1, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Boar Spawned.")
    end
end)



legani_sub:add_list("Legendary Panther", {"Alive", "Dead"}, false, {"Spawns a Legendary Panther."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legpanther1 <const> = native.misc.get_hash_key("mp_a_c_panther_01")
        requestModel(legpanther1)
        local LEGPANTHER01 = native.ped.create_ped(legpanther1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGPANTHER01, 1, false)
        native.ped.set_ped_config_flag(LEGPANTHER01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGPANTHER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Panther Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legpanther1 <const> = native.misc.get_hash_key("mp_a_c_panther_01")
        requestModel(legpanther1)
        local LEGPANTHER01 = native.ped.create_ped(legpanther1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGPANTHER01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGPANTHER01, 1, false)
        native.ped.set_ped_config_flag(LEGPANTHER01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGPANTHER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Panther Spawned.")
    end
end)



legani_sub:add_list("Legendary Buck", {"Alive", "Dead"}, false, {"Spawns a Legendary Buck."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legbuck1 <const> = native.misc.get_hash_key("mp_a_c_buck_01")
        requestModel(legbuck1)
        local LEGBUCK01 = native.ped.create_ped(legbuck1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGBUCK01, 1, false)
        native.ped.set_ped_config_flag(LEGBUCK01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGBUCK01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Buck Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legbuck1 <const> = native.misc.get_hash_key("mp_a_c_buck_01")
        requestModel(legbuck1)
        local LEGBUCK01 = native.ped.create_ped(legbuck1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGBUCK01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGBUCK01, 1, false)
        native.ped.set_ped_config_flag(LEGBUCK01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGBUCK01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Buck Spawned.")
    end
end)



legani_sub:add_list("Legendary Alligator", {"Alive", "Dead"}, false, {"Spawns a Legendary Alligator."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legalligator1 <const> = native.misc.get_hash_key("mp_a_c_alligator_01")
        requestModel(legalligator1)
        local LEGALLIGATOR01 = native.ped.create_ped(legalligator1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGALLIGATOR01, 1, false)
        native.ped.set_ped_config_flag(LEGALLIGATOR01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGALLIGATOR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Alligator Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legalligator1 <const> = native.misc.get_hash_key("mp_a_c_alligator_01")
        requestModel(legalligator1)
        local LEGALLIGATOR01 = native.ped.create_ped(legalligator1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGALLIGATOR01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGALLIGATOR01, 1, false)
        native.ped.set_ped_config_flag(LEGALLIGATOR01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGALLIGATOR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Alligator Spawned.")
    end
end)



legani_sub:add_list("Legendary Wolf", {"Alive", "Dead"}, false, {"Spawns a Legendary Wolf."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legwolf1 <const> = native.misc.get_hash_key("mp_a_c_wolf_01")
        requestModel(legwolf1)
        local LEGWOLF01 = native.ped.create_ped(legwolf1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGWOLF01, 1, false)
        native.ped.set_ped_config_flag(LEGWOLF01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGWOLF01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Wolf Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legwolf1 <const> = native.misc.get_hash_key("mp_a_c_wolf_01")
        requestModel(legwolf1)
        local LEGWOLF01 = native.ped.create_ped(legwolf1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGWOLF01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGWOLF01, 1, false)
        native.ped.set_ped_config_flag(LEGWOLF01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGWOLF01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Wolf Spawned.")
    end
end)



legani_sub:add_list("Legendary Bighornram", {"Alive", "Dead"}, false, {"Spawns a Legendary Bighornram."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legbighorn1 <const> = native.misc.get_hash_key("mp_a_c_bighornram_01")
        requestModel(legbighorn1)
        local LEGBIGHORN01 = native.ped.create_ped(legbighorn1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGBIGHORN01, 1, false)
        native.ped.set_ped_config_flag(LEGBIGHORN01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGBIGHORN01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Bighornram Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legbighorn1 <const> = native.misc.get_hash_key("mp_a_c_bighornram_01")
        requestModel(legbighorn1)
        local LEGBIGHORN01 = native.ped.create_ped(legbighorn1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGBIGHORN01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGBIGHORN01, 1, false)
        native.ped.set_ped_config_flag(LEGBIGHORN01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGBIGHORN01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Bighornram Spawned.")
    end
end)



legani_sub:add_list("Legendary Coyote", {"Alive", "Dead"}, false, {"Spawns a Legendary Coyote."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legcoyote1 <const> = native.misc.get_hash_key("mp_a_c_coyote_01")
        requestModel(legcoyote1)
        local LEGCOYOTE01 = native.ped.create_ped(legcoyote1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(LEGCOYOTE01, 1, false)
        native.ped.set_ped_config_flag(LEGCOYOTE01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGCOYOTE01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Coyote Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local legcoyote1 <const> = native.misc.get_hash_key("mp_a_c_coyote_01")
        requestModel(legcoyote1)
        local LEGCOYOTE01 = native.ped.create_ped(legcoyote1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(LEGCOYOTE01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(LEGCOYOTE01, 1, false)
        native.ped.set_ped_config_flag(LEGCOYOTE01, 0, true)
        native.task.task_follow_to_offset_of_entity(LEGCOYOTE01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Legendary Coyote Spawned.")
    end
end)









-- Normal Animal Spawnables

animals_sub:add_list("Duck", {"Alive", "Dead"}, false, {"Spawns a Duck."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local duck1 <const> = native.misc.get_hash_key("A_C_Duck_01")
        requestModel(duck1)
        local DUCK01 = native.ped.create_ped(duck1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(DUCK01, 1, false)
        native.ped.set_ped_config_flag(DUCK01, 0, true)
        native.task.task_follow_to_offset_of_entity(DUCK01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Duck Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local duck1 <const> = native.misc.get_hash_key("A_C_Duck_01")
        requestModel(duck1)
        local DUCK01 = native.ped.create_ped(duck1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(DUCK01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(DUCK01, 1, false)
        native.ped.set_ped_config_flag(DUCK01, 0, true)
        native.task.task_follow_to_offset_of_entity(DUCK01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Duck Spawned.")
    end
end)



animals_sub:add_list("Boar", {"Alive", "Dead"}, false, {"Spawns a Boar."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local boar2 <const> = native.misc.get_hash_key("a_c_boar_01")
        requestModel(boar2)
        local BOAR02 = native.ped.create_ped(boar2, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BOAR02, 1, false)
        native.ped.set_ped_config_flag(BOAR02, 0, true)
        native.task.task_follow_to_offset_of_entity(BOAR02, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Boar Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local boar2 <const> = native.misc.get_hash_key("a_c_boar_01")
        requestModel(boar2)
        local BOAR02 = native.ped.create_ped(boar2, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BOAR02, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BOAR02, 1, false)
        native.ped.set_ped_config_flag(BOAR02, 0, true)
        native.task.task_follow_to_offset_of_entity(BOAR02, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Boar Spawned.")
    end
end)



animals_sub:add_list("Chicken", {"Alive", "Dead"}, false, {"Spawns a Chicken."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local chicken1 <const> = native.misc.get_hash_key("a_c_chicken_01")
        requestModel(chicken1)
        local CHICKEN01 = native.ped.create_ped(chicken1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(CHICKEN01, 1, false)
        native.ped.set_ped_config_flag(CHICKEN01, 0, true)
        native.task.task_follow_to_offset_of_entity(CHICKEN01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Chicken Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local chicken1 <const> = native.misc.get_hash_key("a_c_chicken_01")
        requestModel(chicken1)
        local CHICKEN01 = native.ped.create_ped(chicken1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(CHICKEN01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(CHICKEN01, 1, false)
        native.ped.set_ped_config_flag(CHICKEN01, 0, true)
        native.task.task_follow_to_offset_of_entity(CHICKEN01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Chicken Spawned.")
    end
end)



animals_sub:add_list("Cougar", {"Alive", "Dead"}, false, {"Spawns a Cougar."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local cougar1 <const> = native.misc.get_hash_key("a_c_cougar_01")
        requestModel(cougar1)
        local COUGAR01 = native.ped.create_ped(cougar1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(COUGAR01, 1, false)
        native.ped.set_ped_config_flag(COUGAR01, 0, true)
        native.task.task_follow_to_offset_of_entity(COUGAR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Cougar Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local cougar1 <const> = native.misc.get_hash_key("a_c_cougar_01")
        requestModel(cougar1)
        local COUGAR01 = native.ped.create_ped(cougar1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(COUGAR01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(COUGAR01, 1, false)
        native.ped.set_ped_config_flag(COUGAR01, 0, true)
        native.task.task_follow_to_offset_of_entity(COUGAR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Cougar Spawned.")
    end
end)



animals_sub:add_list("Alligator", {"Alive", "Dead"}, false, {"Spawns a Alligator."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local alligator1 <const> = native.misc.get_hash_key("a_c_alligator_01")
        requestModel(alligator1)
        local ALLIGATOR01 = native.ped.create_ped(alligator1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(ALLIGATOR01, 1, false)
        native.ped.set_ped_config_flag(ALLIGATOR01, 0, true)
        native.task.task_follow_to_offset_of_entity(ALLIGATOR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Alligator Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local alligator1 <const> = native.misc.get_hash_key("a_c_alligator_01")
        requestModel(alligator1)
        local ALLIGATOR01 = native.ped.create_ped(alligator1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(ALLIGATOR01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(ALLIGATOR01, 1, false)
        native.ped.set_ped_config_flag(ALLIGATOR01, 0, true)
        native.task.task_follow_to_offset_of_entity(ALLIGATOR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Alligator Spawned.")
    end
end)



animals_sub:add_list("Bull", {"Alive", "Dead"}, false, {"Spawns a Bull."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bull1 <const> = native.misc.get_hash_key("a_c_bull_01")
        requestModel(bull1)
        local BULL01 = native.ped.create_ped(bull1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BULL01, 1, false)
        native.ped.set_ped_config_flag(BULL01, 0, true)
        native.task.task_follow_to_offset_of_entity(BULL01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Bull Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bull1 <const> = native.misc.get_hash_key("a_c_bull_01")
        requestModel(bull1)
        local BULL01 = native.ped.create_ped(bull1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BULL01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BULL01, 1, false)
        native.ped.set_ped_config_flag(BULL01, 0, true)
        native.task.task_follow_to_offset_of_entity(BULL01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Bull Spawned.")
    end
end)



animals_sub:add_list("Deer", {"Alive", "Dead"}, false, {"Spawns a Deer."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local deer1 <const> = native.misc.get_hash_key("a_c_deer_01")
        requestModel(deer1)
        local DEER01 = native.ped.create_ped(deer1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(DEER01, 1, false)
        native.ped.set_ped_config_flag(DEER01, 0, true)
        native.task.task_follow_to_offset_of_entity(DEER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Deer Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local deer1 <const> = native.misc.get_hash_key("a_c_deer_01")
        requestModel(deer1)
        local DEER01 = native.ped.create_ped(deer1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(DEER01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(DEER01, 1, false)
        native.ped.set_ped_config_flag(DEER01, 0, true)
        native.task.task_follow_to_offset_of_entity(DEER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Deer Spawned.")
    end
end)



animals_sub:add_list("Cow", {"Alive", "Dead"}, false, {"Spawns a Cow."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local cow1 <const> = native.misc.get_hash_key("a_c_cow")
        requestModel(cow1)
        local COW01 = native.ped.create_ped(cow1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(COW01, 1, false)
        native.ped.set_ped_config_flag(COW01, 0, true)
        native.task.task_follow_to_offset_of_entity(COW01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Cow Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local cow1 <const> = native.misc.get_hash_key("a_c_cow")
        requestModel(cow1)
        local COW01 = native.ped.create_ped(cow1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(COW01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(COW01, 1, false)
        native.ped.set_ped_config_flag(COW01, 0, true)
        native.task.task_follow_to_offset_of_entity(COW01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Cow Spawned.")
    end
end)



animals_sub:add_list("Beaver", {"Alive", "Dead"}, false, {"Spawns a Beaver."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local beaver1 <const> = native.misc.get_hash_key("a_c_beaver_01")
        requestModel(beaver1)
        local BEAVER01 = native.ped.create_ped(beaver1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BEAVER01, 1, false)
        native.ped.set_ped_config_flag(BEAVER01, 0, true)
        native.task.task_follow_to_offset_of_entity(BEAVER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Beaver Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local beaver1 <const> = native.misc.get_hash_key("a_c_beaver_01")
        requestModel(beaver1)
        local BEAVER01 = native.ped.create_ped(beaver1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BEAVER01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BEAVER01, 1, false)
        native.ped.set_ped_config_flag(BEAVER01, 0, true)
        native.task.task_follow_to_offset_of_entity(BEAVER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Beaver Spawned.")
    end
end)



animals_sub:add_list("Bear", {"Alive", "Dead"}, false, {"Spawns a Bear."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bear1 <const> = native.misc.get_hash_key("a_c_bear_01")
        requestModel(bear1)
        local BEAR01 = native.ped.create_ped(bear1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BEAR01, 1, false)
        native.ped.set_ped_config_flag(BEAR01, 0, true)
        native.task.task_follow_to_offset_of_entity(BEAR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Ruddle Bear Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bear1 <const> = native.misc.get_hash_key("a_c_bear_01")
        requestModel(bear1)
        local BEAR01 = native.ped.create_ped(bear1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BEAR01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BEAR01, 1, false)
        native.ped.set_ped_config_flag(BEAR01, 0, true)
        native.task.task_follow_to_offset_of_entity(BEAR01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Ruddle Bear Spawned.")
    end
end)



animals_sub:add_list("Wolf", {"Alive", "Dead"}, false, {"Spawns a Wolf."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local wolf1 <const> = native.misc.get_hash_key("A_C_Wolf")
        requestModel(wolf1)
        local WOLF01 = native.ped.create_ped(wolf1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(WOLF01, 1, false)
        native.ped.set_ped_config_flag(WOLF01, 0, true)
        native.task.task_follow_to_offset_of_entity(WOLF01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Wolf Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local wolf1 <const> = native.misc.get_hash_key("A_C_Wolf")
        requestModel(wolf1)
        local WOLF01 = native.ped.create_ped(wolf1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(WOLF01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(WOLF01, 1, false)
        native.ped.set_ped_config_flag(WOLF01, 0, true)
        native.task.task_follow_to_offset_of_entity(WOLF01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Wolf Spawned.")
    end
end)



animals_sub:add_list("Rabbit", {"Alive", "Dead"}, false, {"Spawns a Rabbit."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local rabbit1 <const> = native.misc.get_hash_key("a_c_rabbit_01")
        requestModel(rabbit1)
        local RABBIT01 = native.ped.create_ped(rabbit1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(RABBIT01, 1, false)
        native.ped.set_ped_config_flag(RABBIT01, 0, true)
        native.task.task_follow_to_offset_of_entity(RABBIT01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Rabbit Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local rabbit1 <const> = native.misc.get_hash_key("a_c_rabbit_01")
        requestModel(rabbit1)
        local RABBIT01 = native.ped.create_ped(rabbit1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(RABBIT01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(RABBIT01, 1, false)
        native.ped.set_ped_config_flag(RABBIT01, 0, true)
        native.task.task_follow_to_offset_of_entity(RABBIT01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Rabbit Spawned.")
    end
end)



animals_sub:add_list("Panther", {"Alive", "Dead"}, false, {"Spawns a Panther."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local panther1 <const> = native.misc.get_hash_key("a_c_panther_01")
        requestModel(panther1)
        local PANTHER01 = native.ped.create_ped(panther1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(PANTHER01, 1, false)
        native.ped.set_ped_config_flag(PANTHER01, 0, true)
        native.task.task_follow_to_offset_of_entity(PANTHER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Panther Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local panther1 <const> = native.misc.get_hash_key("a_c_panther_01")
        requestModel(panther1)
        local PANTHER01 = native.ped.create_ped(panther1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(PANTHER01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(PANTHER01, 1, false)
        native.ped.set_ped_config_flag(PANTHER01, 0, true)
        native.task.task_follow_to_offset_of_entity(PANTHER01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Panther Spawned.")
    end
end)



animals_sub:add_list("Moose", {"Alive", "Dead"}, false, {"Spawns a Moose."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local moose1 <const> = native.misc.get_hash_key("a_c_moose_01")
        requestModel(moose1)
        local MOOSE01 = native.ped.create_ped(moose1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(MOOSE01, 1, false)
        native.ped.set_ped_config_flag(MOOSE01, 0, true)
        native.task.task_follow_to_offset_of_entity(MOOSE01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Moose Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local moose1 <const> = native.misc.get_hash_key("a_c_moose_01")
        requestModel(moose1)
        local MOOSE01 = native.ped.create_ped(moose1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(MOOSE01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(MOOSE01, 1, false)
        native.ped.set_ped_config_flag(MOOSE01, 0, true)
        native.task.task_follow_to_offset_of_entity(MOOSE01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Moose Spawned.")
    end
end)



animals_sub:add_list("Javelina", {"Alive", "Dead"}, false, {"Spawns a Javelina."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local javelina1 <const> = native.misc.get_hash_key("a_c_javelina_01")
        requestModel(javelina1)
        local JAVELINA01 = native.ped.create_ped(javelina1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(JAVELINA01, 1, false)
        native.ped.set_ped_config_flag(JAVELINA01, 0, true)
        native.task.task_follow_to_offset_of_entity(JAVELINA01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Javelina Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local javelina1 <const> = native.misc.get_hash_key("a_c_javelina_01")
        requestModel(javelina1)
        local JAVELINA01 = native.ped.create_ped(javelina1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(JAVELINA01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(JAVELINA01, 1, false)
        native.ped.set_ped_config_flag(JAVELINA01, 0, true)
        native.task.task_follow_to_offset_of_entity(JAVELINA01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Javelina Spawned.")
    end
end)



animals_sub:add_list("Pig", {"Alive", "Dead"}, false, {"Spawns a Pig."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local pig1 <const> = native.misc.get_hash_key("a_c_pig_01")
        requestModel(pig1)
        local PIG01 = native.ped.create_ped(pig1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(PIG01, 1, false)
        native.ped.set_ped_config_flag(PIG01, 0, true)
        native.task.task_follow_to_offset_of_entity(PIG01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Pig Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local pig1 <const> = native.misc.get_hash_key("a_c_pig_01")
        requestModel(pig1)
        local PIG01 = native.ped.create_ped(pig1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(PIG01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(PIG01, 1, false)
        native.ped.set_ped_config_flag(PIG01, 0, true)
        native.task.task_follow_to_offset_of_entity(PIG01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Pig Spawned.")
    end
end)



animals_sub:add_list("Bat", {"Alive", "Dead"}, false, {"Spawns a Bat."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bat1 <const> = native.misc.get_hash_key("a_c_bat_01")
        requestModel(bat1)
        local BAT01 = native.ped.create_ped(bat1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(BAT01, 1, false)
        native.ped.set_ped_config_flag(BAT01, 0, true)
        native.task.task_follow_to_offset_of_entity(BAT01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Bat Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local bat1 <const> = native.misc.get_hash_key("a_c_bat_01")
        requestModel(bat1)
        local BAT01 = native.ped.create_ped(bat1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(BAT01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(BAT01, 1, false)
        native.ped.set_ped_config_flag(BAT01, 0, true)
        native.task.task_follow_to_offset_of_entity(BAT01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Bat Spawned.")
    end
end)



animals_sub:add_list("Turkey", {"Alive", "Dead"}, false, {"Spawns a Turkey."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local turkey1 <const> = native.misc.get_hash_key("a_c_turkey_01")
        requestModel(turkey1)
        local TURKEY01 = native.ped.create_ped(turkey1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(TURKEY01, 1, false)
        native.ped.set_ped_config_flag(TURKEY01, 0, true)
        native.task.task_follow_to_offset_of_entity(TURKEY01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Turkey Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local turkey1 <const> = native.misc.get_hash_key("a_c_turkey_01")
        requestModel(turkey1)
        local TURKEY01 = native.ped.create_ped(turkey1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(TURKEY01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(TURKEY01, 1, false)
        native.ped.set_ped_config_flag(TURKEY01, 0, true)
        native.task.task_follow_to_offset_of_entity(TURKEY01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Turkey Spawned.")
    end
end)



animals_sub:add_list("Squirrel", {"Alive", "Dead"}, false, {"Spawns a Squirrel."}, function(state)
    if state == "Alive" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local squirrel1 <const> = native.misc.get_hash_key("a_c_squirrel_01")
        requestModel(squirrel1)
        local SQUIRREL01 = native.ped.create_ped(squirrel1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.ped._equip_meta_ped_outfit_preset(SQUIRREL01, 1, false)
        native.ped.set_ped_config_flag(SQUIRREL01, 0, true)
        native.task.task_follow_to_offset_of_entity(SQUIRREL01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Squirrel Spawned.")
    end
    if state == "Dead" then
        local player_ped <const> = native.player.player_ped_id()
        local player_pos <const> = native.entity.get_entity_coords(player_ped, true, true)
        local squirrel1 <const> = native.misc.get_hash_key("a_c_squirrel_01")
        requestModel(squirrel1)
        local SQUIRREL01 = native.ped.create_ped(squirrel1, player_pos.x - 2, player_pos.y - 2, player_pos.z + 1, 0, true, true, false, false)
        native.entity.set_entity_health(SQUIRREL01, 0, 0)
        native.ped._equip_meta_ped_outfit_preset(SQUIRREL01, 1, false)
        native.ped.set_ped_config_flag(SQUIRREL01, 0, true)
        native.task.task_follow_to_offset_of_entity(SQUIRREL01, player_ped, -1, -1, 0, 1.0, 0, -1, true, false, false, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Squirrel Spawned.")
    end
end)












-- Other Spawnables

objects_sub:add_button("Massive Barricade Fence", {"Spawns a Massive Barricade Fence."}, function(on_click)
    do
        local Hash <const> = hash.joaat'mp001_p_mp_jump_fencelong01'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Massive Barricade Fence Spawned.")
    end
end)

objects_sub:add_button("Fallen Tree Log", {"Spawns a Fallen Tree Log."}, function(on_click)
    do
        local Hash <const> = hash.joaat'p_cs_treefallen01x'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Fallen Tree Log Spawned.")
    end
end)

objects_sub:add_button("Sandwich Board", {"Spawns a Sandwich Board."}, function(on_click)
    do
        local Hash <const> = hash.joaat'P_SANDWICHBOARD02x'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Sandwich Board Spawned.")
    end
end)

objects_sub:add_button("Horse Saddle Bag", {"Spawns a Horse Saddle Bag."}, function(on_click)
    do
        local Hash <const> = hash.joaat's_mp_moneybag02x'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Horse Saddle Bag Spawned.")
    end
end)

objects_sub:add_button("Rock", {"Spawns a Rock."}, function(on_click)
    do
        local Hash <const> = hash.joaat's_rock01x'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Rock Spawned.")
    end
end)

objects_sub:add_button("Weird Pole", {"Spawns a Small Weird Pole."}, function(on_click)
    do
        local Hash <const> = hash.joaat's_trainplanrolled01x'
        local player_ped <const> = native.player.player_ped_id()
        local coords <const> = native.entity.get_entity_coords(player_ped, true, true)
        lua_fast_calls.request_model(Hash)
        native.object.create_object(Hash, coords.x, coords.y, coords.z, true, true, false, false, false)
        toast.add_success(script.get_name() .." | Spawn Successful!", "Weird Pole Spawned.")
    end
end)








-- Custom Spawnables

function request_model(hash)
    local timer <const> = time.unix_milliseconds() + 1000
    while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
        native.streaming.request_model(hash, true)
        thread.yield()
    end
 end
 local function spanw_ped(hash,posVec)
    request_model(hash)
    local ped = native.ped.create_ped(hash, posVec.x, posVec.y, posVec.z-1, 0, true, true, true, false)
    if ped   then
        return ped
        else
           return false,toast.add_info("Spawn Failed!")
        end
     end
    specialani_sub:add_button("Fire Horse", {"Spawns a Fire Horse."}, function ()
    local playerPed = native.player.get_player_ped(0)
  
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)
    --local object = native.object.create_object_no_offset(0x00FF78E1,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object1 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object2 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object3 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object4 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object5 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object6 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object7 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object8 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object9 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object10 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object11 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object12= native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object13 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object14 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object15 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object16 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object17 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object18 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object19 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object20 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object21 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object22 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object23 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object24 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object25 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object26 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object27 = native.object.create_object_no_offset(0x845743DE,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object28 = native.object.create_object_no_offset(0x1298EF27,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object29 = native.object.create_object_no_offset(0x1298EF27,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object30 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object31 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object32 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object33 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object34 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object35 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object36 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)

    ped = spanw_ped(0xB57D0193,posVec)
    native.ped._set_random_outfit_variation(ped, true)
  


    native.entity.attach_entity_to_entity(object1, ped, 96,0.0, 0.0, 0.0, 0.0, 0.0, 86.399979, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object2, ped, 96,0.01,-0.03, 0.01, -6.399998, -247.999619, 92.799973, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object3, ped, 406,0.09,-0.15, -0.09, 343.199677, 192.300262, 60.999969, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object4, ped, 143,-0.01,-0.07, -0.02, 135.899979, -264.999603, 241.899780, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object5, ped, 143,-0.06,0.07, 0.01, 155.399948, -264.999603, 241.899780, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object6, ped, 12,-0.22,0.00, 0.04, 3.899998, 54.599972, 89.699974, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object7, ped, 12,-0.06,-0.06, 0.01, 89.699974, 272.999756, 6.599626, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object8, ped, 20,0.05,-0.08, -0.09, 0.000008, 360.000000, 205.299881, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object9, ped, 403,0.20,-0.15, -0.03, 0.000008, -168.900299, 220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object10, ped, 416,-0.20,0.14, 0.00, 155.999954, 215.700226, 99.999985, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object11, ped, 12,-0.39,0.19, 0.03, 74.099968, 272.999756, 6.599626, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object12, ped, 414,0.08,-0.06, 0.12, 27.299988, 19.499992, 129.299988, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object13, ped, 95,0.03,0.09, 0.04, 0.000001, 185.599884,-6.399998, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object14, ped, 403,0.05,-0.15, 0.03, 0.000008, -168.900299,220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object15, ped, 415,0.08,-0.09, 0.03,-7.799989, 2.699627,220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object16, ped, 11,-0.38,-0.18, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object17, ped, 11,-0.06,0.06, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object18, ped, 11,-0.06,0.06, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object19, ped, 12,-0.20,-0.14, 0.02,91.799965, 25.499989,86.999939, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object20, ped, 12,-0.30,-0.11, 0.03,91.799965, 25.499989,86.999939, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object21, ped, 13,-0.15,-0.01, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object22, ped, 13,-0.24,0.01, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object23, ped, 11,0.10,0.17, 0.03,91.799965, 25.499989,-60.999954, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object24, ped, 11,-0.27,0.02, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object25, ped, 410,0.07,-0.12, -0.05,38.399990,-241.599625,159.999908, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object26, ped, 416,0.21,0.13, 0.05,-5.099998,91.799965,25.499977, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object27, ped, 0,0.00,0.00, 0.00,0.000000,0.000000,0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object28, ped, 7,0.31,-0.14, 0.10,0.000000,0.000000,-0.300004, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object29, ped, 194,0.14,-0.10, 0.08,82.499947,119.999908,-7.799999, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object30, ped, 314,0.14,-0.10, -0.12,82.499947,44.999973,74.699951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object31, ped, 410,-0.08,0.15, -0.08,87.799988,-259.699615,156.099915, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object32, ped, 410,-0.08,-0.03, 0.01,102.399963,-292.799744,15.999996, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object33, ped, 176,0.00,0.07, 0.19,15.599996,-275.600098,6.399999, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object34, ped, 201,0.03,-0.01, 0.02,-3.899996,188.400269,76.599976, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object35, ped, 24,0.13,0.04, -0.01,7.799997,188.400269,33.699986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object36, ped, 416,0.02,-0.06, 0.12,187.199905,188.400269,49.299976, false, false, false, true, 0, true, false, false)


    native.entity.set_entity_invincible(ped, true)

    --local multiplier = native.ped._get_stamina_recharge_multiplier(ped)
    --native.ped._set_stamina_recharge_multiplier(ped, multiplier)
    
    native.entity.set_entity_invincible(object1, true)
    native.entity.set_entity_invincible(object2, true)
    native.entity.set_entity_invincible(object3, true)
    native.entity.set_entity_invincible(object4, true)
    native.entity.set_entity_invincible(object5, true)
    native.entity.set_entity_invincible(object6, true)
    native.entity.set_entity_invincible(object7, true)
    native.entity.set_entity_invincible(object8, true)
    native.entity.set_entity_invincible(object9, true)
    native.entity.set_entity_invincible(object10, true)
    native.entity.set_entity_invincible(object11, true)
    native.entity.set_entity_invincible(object12, true)
    native.entity.set_entity_invincible(object13, true)
    native.entity.set_entity_invincible(object14, true)
    native.entity.set_entity_invincible(object15, true)
    native.entity.set_entity_invincible(object16, true)
    native.entity.set_entity_invincible(object17, true)
    native.entity.set_entity_invincible(object18, true)
    native.entity.set_entity_invincible(object19, true)
    native.entity.set_entity_invincible(object20, true)
    native.entity.set_entity_invincible(object21, true)
    native.entity.set_entity_invincible(object22, true)
    native.entity.set_entity_invincible(object23, true)
    native.entity.set_entity_invincible(object24, true)
    native.entity.set_entity_invincible(object25, true)
    native.entity.set_entity_invincible(object26, true)
    native.entity.set_entity_invincible(object27, true)
    native.entity.set_entity_invincible(object28, true)
    native.entity.set_entity_invincible(object29, true)
    native.entity.set_entity_invincible(object30, true)
    native.entity.set_entity_invincible(object31, true)
    native.entity.set_entity_invincible(object32, true)
    native.entity.set_entity_invincible(object33, true)
    native.entity.set_entity_invincible(object34, true)
    native.entity.set_entity_invincible(object35, true)
    native.entity.set_entity_invincible(object36, true)


    native.task.task_set_blocking_of_non_temporary_events(ped, true)
end)


function request_model(hash)
    local timer <const> = time.unix_milliseconds() + 1000
    while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
        native.streaming.request_model(hash, true)
        thread.yield()
    end
 end
 local function spanw_ped(hash,posVec)
    request_model(hash)
    local ped = native.ped.create_ped(hash, posVec.x, posVec.y, posVec.z-1, 0, true, true, true, false)
    if ped   then
        return ped
        else
           return false,toast.add_info("Spawn Failed!")
        end
     end
 specialani_sub:add_button("Fire Horse [Ghost]", {"Spawns a Fire Horse Ghost variant."}, function ()
    local playerPed = native.player.get_player_ped(0)
  
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)

    local object1 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object2 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object3 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object4 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object5 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object6 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object7 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object8 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object9 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object10 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object11 = native.object.create_object_no_offset(0x28D1468F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object12= native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object13 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object14 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object15 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object16 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object17 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object18 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object19 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object20 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object21 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object22 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object23 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object24 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object25 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object26 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object27 = native.object.create_object_no_offset(0x845743DE,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object28 = native.object.create_object_no_offset(0x1298EF27,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object29 = native.object.create_object_no_offset(0x1298EF27,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object30 = native.object.create_object_no_offset(0xD696159F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object31 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object32 = native.object.create_object_no_offset(0x14529D92,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object33 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object34 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object35 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object36 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object37 = native.object.create_object_no_offset(0x64AAA69C,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object38 = native.object.create_object_no_offset(0x1DE8FD60,posVec.x, posVec.y, posVec.z, true, true, false, false)
    
    ped = spanw_ped(0xB57D0193,posVec)

  


    native.entity.attach_entity_to_entity(object1, ped, 96,0.0, 0.0, 0.0, 0.0, 0.0, 86.399979, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object2, ped, 96,0.01,-0.03, 0.01, -6.399998, -247.999619, 92.799973, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object3, ped, 406,0.09,-0.15, -0.09, 343.199677, 192.300262, 60.999969, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object4, ped, 143,-0.01,-0.07, -0.02, 135.899979, -264.999603, 241.899780, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object5, ped, 143,-0.06,0.07, 0.01, 155.399948, -264.999603, 241.899780, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object6, ped, 12,-0.22,0.00, 0.04, 3.899998, 54.599972, 89.699974, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object7, ped, 12,-0.06,-0.06, 0.01, 89.699974, 272.999756, 6.599626, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object8, ped, 20,0.05,-0.08, -0.09, 0.000008, 360.000000, 205.299881, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object9, ped, 403,0.20,-0.15, -0.03, 0.000008, -168.900299, 220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object10, ped, 416,-0.20,0.14, 0.00, 155.999954, 215.700226, 99.999985, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object11, ped, 12,-0.39,0.19, 0.03, 74.099968, 272.999756, 6.599626, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object12, ped, 414,0.08,-0.06, 0.12, 27.299988, 19.499992, 129.299988, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object13, ped, 95,0.03,0.09, 0.04, 0.000001, 185.599884,-6.399998, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object14, ped, 403,0.05,-0.15, 0.03, 0.000008, -168.900299,220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object15, ped, 415,0.08,-0.09, 0.03,-7.799989, 2.699627,220.899857, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object16, ped, 11,-0.38,-0.18, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object17, ped, 11,-0.06,0.06, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object18, ped, 11,-0.06,0.06, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object19, ped, 12,-0.20,-0.14, 0.02,91.799965, 25.499989,86.999939, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object20, ped, 12,-0.30,-0.11, 0.03,91.799965, 25.499989,86.999939, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object21, ped, 13,-0.15,-0.01, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object22, ped, 13,-0.24,0.01, 0.03,91.799965, 25.499989,72.199951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object23, ped, 11,0.10,0.17, 0.03,91.799965, 25.499989,-60.999954, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object24, ped, 11,-0.27,0.02, 0.03,91.799965, 25.499989,20.399990, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object25, ped, 410,0.07,-0.12, -0.05,38.399990,-241.599625,159.999908, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object26, ped, 416,0.21,0.13, 0.05,-5.099998,91.799965,25.499977, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object27, ped, 0,0.00,0.00, 0.00,0.000000,0.000000,0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object28, ped, 7,0.31,-0.14, 0.10,0.000000,0.000000,-0.300004, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object29, ped, 194,0.14,-0.10, 0.08,82.499947,119.999908,-7.799999, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object30, ped, 314,0.14,-0.10, -0.12,82.499947,44.999973,74.699951, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object31, ped, 410,-0.08,0.15, -0.08,87.799988,-259.699615,156.099915, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object32, ped, 410,-0.08,-0.03, 0.01,102.399963,-292.799744,15.999996, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object33, ped, 176,0.00,0.07, 0.19,15.599996,-275.600098,6.399999, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object34, ped, 201,0.03,-0.01, 0.02,-3.899996,188.400269,76.599976, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object35, ped, 24,0.13,0.04, -0.01,7.799997,188.400269,33.699986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object36, ped, 416,0.02,-0.06, 0.12,187.199905,188.400269,49.299976, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object37, ped, 12,0.02,-0.06, 0.12,187.199905,188.400269,49.299976, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object38, ped, 13,0.12,0.31, 0.00,-45.000000,-90.000000,180.000000, false, false, false, true, 0, true, false, false)
    native.entity.set_entity_invincible(ped, true)

    --local multiplier = native.ped._get_stamina_recharge_multiplier(ped)
    --native.ped._set_stamina_recharge_multiplier(ped, multiplier)
    
    native.entity.set_entity_invincible(object1, true)
    native.entity.set_entity_invincible(object2, true)
    native.entity.set_entity_invincible(object3, true)
    native.entity.set_entity_invincible(object4, true)
    native.entity.set_entity_invincible(object5, true)
    native.entity.set_entity_invincible(object6, true)
    native.entity.set_entity_invincible(object7, true)
    native.entity.set_entity_invincible(object8, true)
    native.entity.set_entity_invincible(object9, true)
    native.entity.set_entity_invincible(object10, true)
    native.entity.set_entity_invincible(object11, true)
    native.entity.set_entity_invincible(object12, true)
    native.entity.set_entity_invincible(object13, true)
    native.entity.set_entity_invincible(object14, true)
    native.entity.set_entity_invincible(object15, true)
    native.entity.set_entity_invincible(object16, true)
    native.entity.set_entity_invincible(object17, true)
    native.entity.set_entity_invincible(object18, true)
    native.entity.set_entity_invincible(object19, true)
    native.entity.set_entity_invincible(object20, true)
    native.entity.set_entity_invincible(object21, true)
    native.entity.set_entity_invincible(object22, true)
    native.entity.set_entity_invincible(object23, true)
    native.entity.set_entity_invincible(object24, true)
    native.entity.set_entity_invincible(object25, true)
    native.entity.set_entity_invincible(object26, true)
    native.entity.set_entity_invincible(object27, true)
    native.entity.set_entity_invincible(object28, true)
    native.entity.set_entity_invincible(object29, true)
    native.entity.set_entity_invincible(object30, true)
    native.entity.set_entity_invincible(object31, true)
    native.entity.set_entity_invincible(object32, true)
    native.entity.set_entity_invincible(object33, true)
    native.entity.set_entity_invincible(object34, true)
    native.entity.set_entity_invincible(object35, true)
    native.entity.set_entity_invincible(object36, true)
    native.entity.set_entity_invincible(object37, true)
    native.entity.set_entity_invincible(object38, true)
    native.task.task_set_blocking_of_non_temporary_events(ped, true)
end)


function request_model(hash)
    local timer <const> = time.unix_milliseconds() + 1000
    while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
        native.streaming.request_model(hash, true)
        thread.yield()
    end
 end
 local function spanw_ped(hash,posVec)
    request_model(hash)
    local ped = native.ped.create_ped(hash, posVec.x, posVec.y, posVec.z-1, 0, true, true, true, false)
    if ped   then
        return ped
        else
           return false,toast.add_info("Spawn Failed!")
        end
     end
 specialani_sub:add_button("Unicorn", {"Spawns a Unicorn."}, function ()
    local playerPed = native.player.get_player_ped(0)
  
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)

    local object1 = native.object.create_object_no_offset(0x4A7F72F3,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object2 = native.object.create_object_no_offset(0x6C7F7700,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object3 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object4 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object5 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object6 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object7 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object8 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object9 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object10 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object11 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object12= native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object13 = native.object.create_object_no_offset(0x6C7F7700,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object14 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object15 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object16 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object17 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object18 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object19 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object20 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object21 = native.object.create_object_no_offset(0x7617211F,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object22 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object23 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object24 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object25 = native.object.create_object_no_offset(0x3F479FBF,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object26 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object27 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object28 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object29 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object30 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    local object31 = native.object.create_object_no_offset(0xA153804D,posVec.x, posVec.y, posVec.z, true, true, false, false)
    
    ped = spanw_ped(0xC8DA3400,posVec)
    native.ped._set_random_outfit_variation(ped, true)


    native.entity.attach_entity_to_entity(object1, ped, 26,0.12, -0.15, 0.00, 5.299997, -144.999908, -178.300049, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object2, ped, 222,0.22, 0.02, -0.04,-40.999920, -17.499935, 28.199986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object3, ped, 222,-0.30,0.19,1.95,0.000000,181.899902, -62.299984, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object4, ped, 222,0.26, 0.37, 1.39, 8.899998, 181.899902,-53.399986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object5, ped, 222,-0.13, 0.23, 1.87,0.000000,181.899902, -62.299984, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object6, ped, 222,0.16, 0.35, 1.63, 8.899998,181.899902, -62.299984, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object7, ped, 222,-0.47, 1.20, 1.21, 8.899998,151.300507, -62.299984, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object8, ped, 222,-0.66, 1.19, 1.31, 15.699879,154.700439, -48.700222, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object9, ped, 222,-0.65, 1.02, 0.95, -14.899584, 137.700775, -92.899445, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object10, ped,222,-0.23, 0.96, 0.79, 15.699879,144.500641, -58.900040, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object11, ped,222,-0.60, 0.95, 0.72, -4.699762,141.100708, -96.299385, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object12, ped, 222,-0.51, 1.24, 1.24,-1.299822, 137.700775, -86.099564, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object13, ped, 222,0.30, 0.00, -0.10, -6.000056, -20.899876, 28.199986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object14, ped, 222,0.21, 0.90, 0.61, 32.699581, 151.300507, -58.900040, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object15, ped, 222,-0.45, 1.03, 0.85, -8.099703, 137.700775, -89.499504, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object16, ped, 222,-0.08, 1.22, 1.09, 12.299938,141.100708, -72.499802, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object17, ped, 222,-0.26, 1.14, 1.06, -1.299822, 144.500641, -92.899445, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object18, ped, 222,-0.65, 1.24, 1.40, 15.699879,154.700439, -48.700222, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object19, ped, 222,0.07, 1.04, 0.89, 5.500058, 144.500641, -92.899445, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object20, ped, 222,-0.27, 1.24, 1.13, -1.299822, 137.700775,-86.099564, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object21, ped, 27,0.00, 0.14, 0.05, 197.397049, 0.000000, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object22, ped, 222,-0.19, 1.38, 1.37, 32.699581, 155.500443, -29.500462, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object23, ped, 222,-0.43, 1.38, 1.37, 32.699581, 155.500443, -29.500462, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object24, ped, 222,0.06, 0.26, 1.27, 0.000000, 181.899902, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object25, ped, 27,0.00, 0.14, 0.02,-15.900002, 360.000000, 180.199936, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object26, ped, 222,-0.06, 0.22, 1.37, 0.000000, 181.899902, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object27, ped, 222,-0.20, 0.17, 1.51, 0.000000, 181.899902, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object28, ped, 222,-0.32, 0.14, 1.65, 0.000000, 181.899902, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object29, ped, 222,0.17, 0.30, 1.15, 0.000000, 181.899902, 0.000000, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object30, ped, 222,0.34, 0.44, 1.03, 0.000000, 199.699890, 53.399986, false, false, false, true, 0, true, false, false)
    native.entity.attach_entity_to_entity(object31, ped, 222,0.02, 0.29, 1.67, 8.899998, 181.899902, -53.399986, false, false, false, true, 0, true, false, false)

    native.entity.set_entity_invincible(ped, true)

    native.entity.set_entity_invincible(object1, true)
    native.entity.set_entity_invincible(object2, true)
    native.entity.set_entity_invincible(object3, true)
    native.entity.set_entity_invincible(object4, true)
    native.entity.set_entity_invincible(object5, true)
    native.entity.set_entity_invincible(object6, true)
    native.entity.set_entity_invincible(object7, true)
    native.entity.set_entity_invincible(object8, true)
    native.entity.set_entity_invincible(object9, true)
    native.entity.set_entity_invincible(object10, true)
    native.entity.set_entity_invincible(object11, true)
    native.entity.set_entity_invincible(object12, true)
    native.entity.set_entity_invincible(object13, true)
    native.entity.set_entity_invincible(object14, true)
    native.entity.set_entity_invincible(object15, true)
    native.entity.set_entity_invincible(object16, true)
    native.entity.set_entity_invincible(object17, true)
    native.entity.set_entity_invincible(object18, true)
    native.entity.set_entity_invincible(object19, true)
    native.entity.set_entity_invincible(object20, true)
    native.entity.set_entity_invincible(object21, true)
    native.entity.set_entity_invincible(object22, true)
    native.entity.set_entity_invincible(object23, true)
    native.entity.set_entity_invincible(object24, true)
    native.entity.set_entity_invincible(object25, true)
    native.entity.set_entity_invincible(object26, true)
    native.entity.set_entity_invincible(object27, true)
    native.entity.set_entity_invincible(object28, true)
    native.entity.set_entity_invincible(object29, true)
    native.entity.set_entity_invincible(object30, true)
    native.entity.set_entity_invincible(object31, true)



    native.task.task_set_blocking_of_non_temporary_events(ped, true)
end)




-- Network Players Submenu Functions



 -- Logger Functions    

logplr_sub:add_button("Log RID", {"Send this Players RID to your Exodus Log file."}, function(player_pedIDX)
    local player_RID <const> = player.get_rockstar_id(player_pedIDX)
    local player_name <const> = player.get_name(player_pedIDX)
    if player.is_connected(player_pedIDX) then
        toast.add_success(script.get_name().." | Logged: "..player_name, "RID: "..player_RID)
    else 
        toast.add_error(script.get_name() .." | Process Failed!", "Reason: Player is not Connected.")
    end
end)

logplr_sub:add_button("Log IP", {"Send this Players IP to your Exodus Log file."}, function(player_pedIDX)
    local part_1, part_2, part_3, part_4 = player.get_ip(player_pedIDX)
    local ip = part_1 .. "." .. part_2 .. "." .. part_3 .. "." .. part_4
    local player_name <const> = player.get_name(player_pedIDX)
    if player.is_connected(player_pedIDX) then
        toast.add_success(script.get_name().." | Logged: "..player_name, "IP: "..ip)
    else
        toast.add_error(script.get_name().." | Process Failed!", "Reason: Player is not Connected.")
    end
end)

logplr_sub:add_button("Log PORT", {"Send this Players PORT to your Exodus Log file."}, function(player_pedIDX)
    local player_PORT <const> = player.get_port(player_pedIDX)
    local player_name <const> = player.get_name(player_pedIDX)
    if player.is_connected(player_pedIDX) then
        toast.add_success(script.get_name().." | Logged: "..player_name, "PORT: "..player_PORT)
    else 
        toast.add_error(script.get_name() .." | Process Failed!", "Reason: Player is not Connected.")
    end
end)



-- Manage World Functions

manageveh_sub:add_button("Halt", {"Halts all Vehicles in Range."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle.bring_vehicle_to_halt(allvehicles, 1, 5, false)
    end
end)

manageveh_sub:add_button("Explode", {"Explodes all Vehicles in Range."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle.explode_vehicle(allvehicles, true, false, 0, 0)
    end
end)

manageveh_sub:add_button("Wheels", {"Breaks all Vehicles Wheels in Range."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle._break_off_vehicle_wheel(allvehicles, 0)
        native.vehicle._break_off_vehicle_wheel(allvehicles, 1)
        native.vehicle._break_off_vehicle_wheel(allvehicles, 2)
        native.vehicle._break_off_vehicle_wheel(allvehicles, 3)
    end
end)

manageveh_sub:add_button("Fix", {"Fixes all Vehicles in Range."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle.set_vehicle_fixed(allvehicles)
    end
end)

manageveh_sub:add_button("Clean", {"Cleans all Vehicles in Range."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle._set_vehicle_wet_level(allvehicles, 0.0)
        native.vehicle._set_vehicle_snow_level(allvehicles, 0.0)
        native.vehicle.set_vehicle_dirt_level(allvehicles, 0.0)
    end
end)

manageveh_sub:add_separator("Condition")

manageveh_sub:add_button("Dirty", {"Makes all Vehicles in Range Dirty."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle.set_vehicle_dirt_level(allvehicles, 1.0)
    end
end)

manageveh_sub:add_button("Snowy", {"Makes all Vehicles in Range Snowy."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle._set_vehicle_snow_level(allvehicles, 1.0)
    end
end)

manageveh_sub:add_button("Wet", {"Makes all Vehicles in Range Wet."}, function()
    for _, allvehicles in pairs(game.get_world_vehicles()) do
        native.vehicle._set_vehicle_wet_level(allvehicles, 1.0)
    end
end)




-- Game Info Functions

gameinfo_sub:add_button("Game Build", {"Press to get the current Game Build."}, function()
    toast.add_info(script.get_name(), "Game Build: "..native.debug.get_game_version_name())
end)

gameinfo_sub:add_separator("Network")

gameinfo_sub:add_button("Connected Players", {"Press to get the current Amount of Connected Players."}, function()
    toast.add_info(script.get_name(), "Connected Players: "..native.network.network_get_num_connected_players())
end)

gameinfo_sub:add_button("Total Friends", {"Press to get the Total amount of Friends."}, function()
    toast.add_info(script.get_name(), "Total Friends: "..native.network.network_get_total_num_friends())
end)

gameinfo_sub:add_button("Player XP", {"Press to get the Total amount of XP."}, function()
    toast.add_info(script.get_name(), "Current XP: "..native.network._network_get_xp())
end)

gameinfo_sub:add_button("Player Rank", {"Press to get the current Player Rank."}, function()
    toast.add_info(script.get_name(), "Player Rank: "..native.network._network_get_rank())
end)

gameinfo_sub:add_separator("Misc")

gameinfo_sub:add_button("Timeout Time", {"Press to get the current Timeout Time."}, function()
    toast.add_info(script.get_name(), "Timeout Time: "..native.network.network_get_timeout_time())
end)

gameinfo_sub:add_button("Recent Gamers", {"Press to get the Total amount of Recent Gamers."}, function()
    toast.add_info(script.get_name(), "Recent Gamers: "..native.network._network_get_num_recent_gamers())
end)









-- More Trolling Functions

trolling_sub:add_toggle("Stop Spawning", {"Prevents the Player from Spawning."}, function(state, player_pedIDX)
    if state == true then
        local player_ped = native.player.get_player_ped(player_pedIDX)
        local coords = native.entity.get_entity_coords(player_ped, false, true)
        --native.set_ped_non_creation_area(coords.x+300, coords.y+300,\ncoords.z+300 0, 0, 0)
        local ents= native.entity._get_entities_near_point(coords.x+300, coords.y+300, coords.z+300, 999, 1, 0)
        local ents2= native.entity._get_entities_near_point(coords.x+300, coords.y+300, coords.z+300, 999, 2, 0)
        local ents3= native.entity._get_entities_near_point(coords.x+300, coords.y+300, coords.z+300, 999, 3, 0)
        native.entity.is_entity_in_area(ents..ents2..ents3, coords.x+300, coords.y+300, 0, 0, 0, false, false, 0)

        native.entity.set_entity_as_mission_entity(ents, false, false)
        native.entity.set_entity_as_no_longer_needed(ents)
        native.entity.delete_entity(ents)

        native.entity.set_entity_as_mission_entity(ents2, false, false)
        native.entity.set_entity_as_no_longer_needed(ents2)
        native.entity.delete_entity(ents2)

        native.entity.set_entity_as_mission_entity(ents3, false, false)
        native.entity.set_entity_as_no_longer_needed(ents3)
        native.entity.delete_entity(ents3)


        native.set_ped_non_creation_area(coords.x+300, coords.y+300, coords.z+300, 0, 0, 0)
        end
    end)

    
--[[
local player_ped = native.player.get_player_ped(player_pedIDX)

local ragdollOption = false
local ragdollOptionTimer = 0



trolling_sub:add_toggle("Ragdoll Loop", {"Makes the Player continuously fall over."}, function(toggle)
	ragdollOption = toggle

	player_ped = native.player.get_player_ped()
	localPosX, localPosY, localPosZ = native.entity.get_entity_coords(player_ped, true, false)
	
	if ragdollOption then
		logger.logSuccess('initialised')
		natives.ped_canPedRagdoll(player_pedIDX, true)
		native.ped.set_ped_can_ragdoll(player_pedIDX, true)
		natives.ped_setPedCanRagdollFromPlayerImpact(player_pedIDX, true)
	else
		logger.logError('terminated')
		natives.ped_resetPedRagdollTimer(player_pedIDX)
	end
		ragdollOptionTimer = 0
end)

system.registerTick(function(frame)


	local currentTick = system.getTickCount64()
	if (ragdollOption) and (system.getTickCount64() - ragdollOptionTimer > 2000) then
		ragdollOptionTimer = currentTick

        natives.ped_setPedToRagdoll(localPed, 1000, 0, 0, true, true, true)
		natives.ped_setPedRagdollForceFall(localPed)
		   
	end
			
end)
--]]


trolling_sub:add_list("Kill Player", {"Anonymous", "Owned"}, false, {"Kills the Player instantly."}, function(player_pedIDX, state)
    if state == "Anonymous" then
        local player_ped = native.player.get_player_ped(player_pedIDX)
        local pos = native.entity.get_entity_coords(player_ped, false, true)
        native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 10000, false, true, 0.0)
    end
    if state == "Owned" then
        local PlayerPed = native.player.get_player_ped(0) 
        local player_ped = native.player.get_player_ped(player_pedIDX) 
        local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
        native.fire.add_owned_explosion(PlayerPed, pos.x, pos.y, pos.z-6, 5, 10000, false, true, 0.0)
    end
end)

        
        
        
            function request_model(hash)
            local timer <const> = time.unix_milliseconds() + 1000
            while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
                native.streaming.request_model(hash, true)
                thread.yield()
            end
         end
         local function spanw_ped(hash,posVec)
            request_model(hash)
            local ped = native.ped.create_ped(hash, posVec.x, posVec.y, posVec.z-1, 0, true, true, true, false)
            if ped   then
                return ped
                else
                   return false,toast.add_info(script.get_name(), "Process Failed!")
                end
             end


            local function LoadingAnim(anim_dict)
                if not native.streaming.has_anim_dict_loaded(anim_dict) then
                    native.streaming.request_anim_dict(anim_dict)
                    while not native.streaming.has_anim_dict_loaded(anim_dict) do
                        thread.yield(0)
                    end
                end
            end
            
            local function LoadingAnim1(anim_dict1)
                if not native.streaming.has_anim_dict_loaded(anim_dict1) then
                    native.streaming.request_anim_dict(anim_dict1)
                    while not native.streaming.has_anim_dict_loaded(anim_dict1) do
                        thread.yield(0)
                    end
                end
            end
            
            
            
                function RequestModel(hash)
                    local timer <const> = time.unix_milliseconds() + 1000
                    while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
                        native.streaming.request_model(hash, true)
                        thread.yield()
                    end
                 end
            
            
            local function UpdateLPlayer()
            PlayerPed = native.player.get_player_ped(0)
            PosX, PosY, PosZ = native.entity.get_entity_coords(PlayerPed, false, true)
            end
            
            
            local function request_model(hash)
                local timer <const> = time.unix_milliseconds() + 1000
                while not native.streaming.has_model_loaded(hash) and timer > time.unix_milliseconds() do
                    native.streaming.request_model(hash, true)
                    thread.yield()
                end
             end
             local function spanw_ped(hash,posVec)
                request_model(hash)
                local ped = native.ped.create_ped(hash, posVec.x, posVec.y, posVec.z-1, 0, true, true, true, false)
                if ped   then
                    return ped
                    else
                       return false,toast.add_info("Spawn Failed")
                    end
                 end
            
            
                 local function PlayAnimTask3(ped3, anim_dict1, anim_name1)
                    LoadingAnim1(anim_dict1)
                    UpdateLPlayer()
                    native.task.task_play_anim(ped3, anim_dict1, anim_name1, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
                end
                
                local function PlayAnimTask2(ped2, anim_dict, anim_name)
                    LoadingAnim(anim_dict)
                    UpdateLPlayer()
                    native.task.task_play_anim(ped2, anim_dict, anim_name, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
                end
                
                local function PlayAnimTask1(ped1, anim_dict1, anim_name1)
                    LoadingAnim1(anim_dict1)
                    UpdateLPlayer()
                    native.task.task_play_anim(ped1, anim_dict1, anim_name1, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
                end
                
                local function PlayAnimTask(ped, anim_dict, anim_name)
                    LoadingAnim(anim_dict)
                    UpdateLPlayer()
                    native.task.task_play_anim(ped, anim_dict, anim_name, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
                end

            
            local function PlayAnimTask(ped, anim_dict, anim_name)
                LoadingAnim(anim_dict)
                UpdateLPlayer()
                native.task.task_play_anim(ped, anim_dict, anim_name, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
            end

            local function LoadingAnim(anim_dict)
                if not native.streaming.has_anim_dict_loaded(anim_dict) then
                    native.streaming.request_anim_dict(anim_dict)
                    while not native.streaming.has_anim_dict_loaded(anim_dict) do
                        thread.yield(0)
                    end
                end
            end
            
            local function LoadingAnim1(anim_dict1)
                if not native.streaming.has_anim_dict_loaded(anim_dict1) then
                    native.streaming.request_anim_dict(anim_dict1)
                    while not native.streaming.has_anim_dict_loaded(anim_dict1) do
                        thread.yield(0)
                    end
                end
            end



            trolling_sub:add_button("Suicide Pig", {"Spawns a Suicide Pig on this Player."}, function (playerIdx)
                local playerPed = native.player.get_player_ped(playerIdx) 
                local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0) 
                ped = spanw_ped(0xE8CBC01C,posVec)
                native.ped._set_random_outfit_variation(ped, true)
              
                native.task.task_combat_ped(ped,playerPed,0,16)
                thread.yield(4000)
                for i = 1, 15 do
                    local posVec1 = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0) 
                    native.fire.add_explosion(posVec1.x, posVec1.y, posVec1.z, 17, 9999, true, true, 100.0)
                    thread.yield(200)
                end
            end)


            local function FourPointAndLaugh(playerIdx)
                local playerPed = native.player.get_player_ped(playerIdx)
                local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 1.0, 0)
                local ped = spanw_ped(0xA91215CD,posVec)
                local ped1 = spanw_ped(0xA91215CD,posVec)
                local ped2 = spanw_ped(0xA91215CD,posVec)
                local ped3 = spanw_ped(0xA91215CD,posVec)
                native.ped._set_random_outfit_variation(ped, true)
                native.ped._set_random_outfit_variation(ped1, true)
                native.ped._set_random_outfit_variation(ped2, true)
                native.ped._set_random_outfit_variation(ped3, true)
                local anim_dict ="script_mp@emotes@pointlaugh@male@unarmed@upper"
                local anim_name ="action"
                PlayAnimTask(ped, anim_dict, anim_name)
                PlayAnimTask1(ped1, anim_dict, anim_name)
                PlayAnimTask2(ped2, anim_dict, anim_name)
                PlayAnimTask3(ped3, anim_dict, anim_name)
                native.entity.attach_entity_to_entity(ped, playerPed, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 180.0, false, false, false, true, 0, true, false, false)
                native.entity.attach_entity_to_entity(ped1, playerPed, 0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, false, false, false, true, 0, true, false, false)
                native.entity.attach_entity_to_entity(ped2, playerPed, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 90.0, false, false, false, true, 0, true, false, false)
                native.entity.attach_entity_to_entity(ped3, playerPed, 0,-1.0, -0.0, 0.0, 0.0, 0.0, -90, false, false, false, true, 0, true, false, false)
        
                local player_heading =native.entity.get_entity_heading(playerPed)
            
                native.entity.set_entity_heading(ped, -player_heading)
                native.entity.set_entity_heading(ped1, -player_heading)
                native.entity.set_entity_heading(ped2, player_heading)
                native.entity.set_entity_heading(ped3, player_heading)
            
                native.ped.set_ped_config_flag(ped1, 254, true)
                native.ped.set_ped_config_flag(ped2, 254, true)
                native.ped.set_ped_config_flag(ped3, 254, true)
                native.ped.set_ped_config_flag(ped, 254, true)
            
                    native.ped.set_ped_config_flag(ped1, 61, true)
                    native.ped.set_ped_config_flag(ped2, 61, true)
                    native.ped.set_ped_config_flag(ped3, 61, true)
                    native.ped.set_ped_config_flag(ped, 61, true)
            
                    native.ped._set_ped_can_be_lassoed(ped1, false)
                    native.ped._set_ped_can_be_lassoed(ped2, false)
                    native.ped._set_ped_can_be_lassoed(ped, false)
                    native.ped._set_ped_can_be_lassoed(ped3, false)
            
                    native.ped.set_ped_can_be_targetted(ped1, false)
                    native.ped.set_ped_can_be_targetted(ped, false)
                    native.ped.set_ped_can_be_targetted(ped2, false)
                    native.ped.set_ped_can_be_targetted(ped3, false)
            
                    native.ped.set_ped_can_ragdoll(ped1, false)
                    native.ped.set_ped_can_ragdoll(ped3, false)
                    native.ped.set_ped_can_ragdoll(ped2, false)
                    native.ped.set_ped_can_ragdoll(ped, false)
            
                    native.ped.set_blocking_of_non_temporary_events(ped1, true)
                    native.ped.set_blocking_of_non_temporary_events(ped2, true)
                    native.ped.set_blocking_of_non_temporary_events(ped3, true)
                    native.ped.set_blocking_of_non_temporary_events(ped, true)
            
                    native.ped.set_ped_flee_attributes(ped1, 0, false)
                    native.ped.set_ped_flee_attributes(ped, 0, false)
                    native.ped.set_ped_flee_attributes(ped2, 0, false)
                    native.ped.set_ped_flee_attributes(ped3, 0, false)
            
            
                    native.ped.set_ped_combat_attributes(ped1, 17, true)
                    native.ped.set_ped_combat_attributes(ped2, 17, true)
                    native.ped.set_ped_combat_attributes(ped3, 17, true)
                    native.ped.set_ped_combat_attributes(ped, 17, true)
            
                    native.ped.set_ped_lasso_hogtie_flag(ped1, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped2, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped3, 0, false)
            
                native.entity.set_entity_invincible(ped, true)
                native.entity.set_entity_invincible(ped1, true)
                native.entity.set_entity_invincible(ped2, true)
                native.entity.set_entity_invincible(ped3, true)
                thread.yield(5000)
             end


             trolling_sub:add_list("Attach NPCs", {"Peeing", "Laughing"}, false, {"Attach NPCs to this Player."}, function(playerIdx, state)
                if state == "Peeing" then
                    local playerPed = native.player.get_player_ped(playerIdx)
                    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 1.0, 0)
                    local ped = spanw_ped(0x25D32467,posVec)
                    local ped1 = spanw_ped(0x25D32467,posVec)
                    local ped2 = spanw_ped(0x25D32467,posVec)
                    local ped3 = spanw_ped(0x25D32467,posVec)
                    native.ped._set_random_outfit_variation(ped, true)
                    native.ped._set_random_outfit_variation(ped1, true)
                    native.ped._set_random_outfit_variation(ped2, true)
                    native.ped._set_random_outfit_variation(ped3, true)
                    
                    local anim_dict =  "amb_misc@world_human_pee@male_a@idle_c"
                    local anim_name =  "idle_h"
                    
                    local anim_dict1 = "amb_misc@world_human_pee@male_a@idle_b"
                    local anim_name1 = "idle_e"
                    
                    PlayAnimTask(ped, anim_dict, anim_name)
                    PlayAnimTask1(ped1, anim_dict1, anim_name1)
                    PlayAnimTask2(ped2, anim_dict, anim_name)
                    PlayAnimTask3(ped3, anim_dict1, anim_name1)
                        
                    native.entity.attach_entity_to_entity(ped, playerPed, 0, 0.0, 0.5, 1.0, 0.0, 0.0, 180.0, false, false, false, true, 0, true, false, false)
                    native.entity.attach_entity_to_entity(ped1, playerPed, 0, 0.0, -0.5,1.0, 0.0, 0.0, 0.0, false, false, false, true, 0, true, false, false)
                    native.entity.attach_entity_to_entity(ped2, playerPed, 0, 0.5, 0.0, 1.0, 0.0, 0.0, 90.0, false, false, false, true, 0, true, false, false)
                    native.entity.attach_entity_to_entity(ped3, playerPed, 0,-0.5, -0.0,1.0, 0.0, 0.0, -90, false, false, false, true, 0, true, false, false)
                    
                    local player_heading =native.entity.get_entity_heading(playerPed)
                        
                    native.entity.set_entity_heading(ped, -player_heading)
                    native.entity.set_entity_heading(ped1, -player_heading)
                    native.entity.set_entity_heading(ped2, player_heading)
                    native.entity.set_entity_heading(ped3, player_heading)
                        
                    native.ped.set_ped_config_flag(ped1, 254, true)
                    native.ped.set_ped_config_flag(ped2, 254, true)
                    native.ped.set_ped_config_flag(ped3, 254, true)
                    native.ped.set_ped_config_flag(ped, 254, true)
                        
                    native.ped.set_ped_config_flag(ped1, 61, true)
                    native.ped.set_ped_config_flag(ped2, 61, true)
                    native.ped.set_ped_config_flag(ped3, 61, true)
                    native.ped.set_ped_config_flag(ped, 61, true)
                        
                    native.ped._set_ped_can_be_lassoed(ped1, false)
                    native.ped._set_ped_can_be_lassoed(ped2, false)
                    native.ped._set_ped_can_be_lassoed(ped, false)
                    native.ped._set_ped_can_be_lassoed(ped3, false)
                        
                    native.ped.set_ped_can_be_targetted(ped1, false)
                    native.ped.set_ped_can_be_targetted(ped, false)
                    native.ped.set_ped_can_be_targetted(ped2, false)
                    native.ped.set_ped_can_be_targetted(ped3, false)
                        
                    native.ped.set_ped_can_ragdoll(ped1, false)
                    native.ped.set_ped_can_ragdoll(ped3, false)
                    native.ped.set_ped_can_ragdoll(ped2, false)
                    native.ped.set_ped_can_ragdoll(ped, false)
                        
                    native.ped.set_blocking_of_non_temporary_events(ped1, true)
                    native.ped.set_blocking_of_non_temporary_events(ped2, true)
                    native.ped.set_blocking_of_non_temporary_events(ped3, true)
                    native.ped.set_blocking_of_non_temporary_events(ped, true)
                        
                    native.ped.set_ped_flee_attributes(ped1, 0, false)
                    native.ped.set_ped_flee_attributes(ped, 0, false)
                    native.ped.set_ped_flee_attributes(ped2, 0, false)
                    native.ped.set_ped_flee_attributes(ped3, 0, false)
                        
                        
                    native.ped.set_ped_combat_attributes(ped1, 17, true)
                    native.ped.set_ped_combat_attributes(ped2, 17, true)
                    native.ped.set_ped_combat_attributes(ped3, 17, true)
                    native.ped.set_ped_combat_attributes(ped, 17, true)
                        
                    native.ped.set_ped_lasso_hogtie_flag(ped1, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped2, 0, false)
                    native.ped.set_ped_lasso_hogtie_flag(ped3, 0, false)
                        
                    native.entity.set_entity_invincible(ped, true)
                    native.entity.set_entity_invincible(ped1, true)
                    native.entity.set_entity_invincible(ped2, true)
                    native.entity.set_entity_invincible(ped3, true)
                    thread.yield(5000)
                end
                if state == "Laughing" then
                    FourPointAndLaugh(playerIdx)
                end
            end)


            trolling_sub:add_button("Panthers", {"Spawns Invisible Panthers on this Player."}, function (playerIdx)
                     local playerPed = native.player.get_player_ped(playerIdx)
                  
                    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 1, 2, 1)
                    ped1 = spanw_ped(0xB91BAB89,posVec)
                    ped2 = spanw_ped(0xB91BAB89,posVec)
                    ped3 = spanw_ped(0xB91BAB89,posVec)
                    ped4 = spanw_ped(0xB91BAB89,posVec)
                 
                    native.entity.set_entity_invincible(ped1, true)
                    native.entity.set_entity_invincible(ped2, true)
                    native.entity.set_entity_invincible(ped3, true)
                    native.entity.set_entity_invincible(ped4, true)
                
                    native.task.task_combat_ped(ped1,playerPed,0,16)
                    native.task.task_combat_ped(ped2,playerPed,0,16)
                    native.task.task_combat_ped(ped3,playerPed,0,16)
                    native.task.task_combat_ped(ped4,playerPed,0,16)
                 end)


                 trolling_sub:add_list("Aggressive Peds", {"Teleport", "Normal"}, false, {"Makes all the Peds in the area Aggressive to this Player.\n\nTeleport will Teleport all the Aggressive Peds onto this Player while Normal will just make all the Peds in the area Aggressive without Teleporting them."}, function(player_pedIDX, state)
                    if state == "Teleport" then
                        for _, allpeds in pairs(game.get_world_peds()) do
                            local player_ped = native.player.get_player_ped(player_pedIDX)
                            local player_owner <const> = native.player.player_ped_id()
                            local pos = native.entity.get_entity_coords(player_ped, false, true)
                            native.entity.set_entity_coords(allpeds, pos.x, pos.y, pos.z+1, false, false, false, false)
                            native.task.task_combat_ped(allpeds, player_ped, 0, 16)
                            native.task.clear_ped_tasks_immediately(player_owner, true, true)
                        end
                    end
                    if state == "Normal" then
                        for _, allpeds in pairs(game.get_world_peds()) do
                            local player_ped = native.player.get_player_ped(player_pedIDX)
                            local player_owner <const> = native.player.player_ped_id()
                            native.task.task_combat_ped(allpeds, player_ped, 0, 16)
                            native.task.clear_ped_tasks_immediately(player_owner, true, true)
                        end
                    end
                end)


trolling_sub:add_button("Horses", {"Spawns Horses on this Player that Boots them in the Face."}, function (playerIdx)
    local playerPed = native.player.get_player_ped(playerIdx) 
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)
                    
    ped1 = spanw_ped(0x2A100154,posVec)
    ped2 = spanw_ped(0x2405C422,posVec)
    ped3 = spanw_ped(0x69A37A7B,posVec)
    native.ped._set_random_outfit_variation(ped1, true)
    native.ped._set_random_outfit_variation(ped2, true)
    native.ped._set_random_outfit_variation(ped3, true)
    native.task.task_combat_ped(ped1,playerPed,0,16)
    native.task.task_combat_ped(ped2,playerPed,0,16)
    native.task.task_combat_ped(ped3,playerPed,0,16)
    native.entity.set_entity_invincible(ped1, true)
    native.entity.set_entity_invincible(ped2, true)
    native.entity.set_entity_invincible(ped3, true)
                    
end)


trolling_sub:add_list("Ped Cage", {"v1", "v2"}, false, {"Cages the Player with Peds."}, function(playerIdx, state)
    if state == "v1" then
        local playerPed = native.player.get_player_ped(playerIdx)
        local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 1.0, 0)
        ped1 = spanw_ped(0x9BD92566,posVec)   
        native.ped._set_random_outfit_variation(ped1, true)
        ped2 = spanw_ped(0x9BD92566,posVec)   
        native.ped._set_random_outfit_variation(ped2, true)
        ped3 = spanw_ped(0x9BD92566,posVec)   
        native.ped._set_random_outfit_variation(ped3, true)
        ped4 = spanw_ped(0x9BD92566,posVec)   
        native.ped._set_random_outfit_variation(ped4, true)
        native.entity.set_entity_invincible(ped1, true)
        native.entity.set_entity_invincible(ped2, true)
        native.entity.set_entity_invincible(ped3, true)
        native.entity.set_entity_invincible(ped4, true)
        native.ped.set_ped_config_flag(ped1, 61, true)
        native.ped.set_ped_config_flag(ped1, 254, true)
        native.ped._set_ped_can_be_lassoed(ped1, false)
        native.ped.set_ped_can_be_targetted(ped1, false)
        native.ped.set_ped_can_ragdoll(ped1, false)
        native.ped.set_blocking_of_non_temporary_events(ped1, true)
        native.ped.set_ped_flee_attributes(ped1, 0, false)
        native.ped.set_ped_combat_attributes(ped1, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped1, 0, false)
     
        native.ped.set_ped_config_flag(ped2, 61, true)
        native.ped.set_ped_config_flag(ped2, 254, true)
        native.ped._set_ped_can_be_lassoed(ped2, false)
        native.ped.set_ped_can_be_targetted(ped2, false)
        native.ped.set_ped_can_ragdoll(ped2, false)
        native.ped.set_blocking_of_non_temporary_events(ped2, true)
        native.ped.set_ped_flee_attributes(ped2, 0, false)
        --native.ped.set_ped_combat_attributes(pe2, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped2, 0, false)
     
        native.ped.set_ped_config_flag(ped3, 61, true)
        native.ped.set_ped_config_flag(ped3, 254, true)
        native.ped._set_ped_can_be_lassoed(ped3, false)
        native.ped.set_ped_can_be_targetted(ped3, false)
        native.ped.set_ped_can_ragdoll(ped3, false)
        native.ped.set_blocking_of_non_temporary_events(ped3, true)
        native.ped.set_ped_flee_attributes(ped3, 0, false)
        native.ped.set_ped_combat_attributes(ped3, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped3, 0, false)
     
        native.ped.set_ped_config_flag(ped4, 61, true)
        native.ped.set_ped_config_flag(ped4, 254, true)
        native.ped._set_ped_can_be_lassoed(ped4, false)
        native.ped.set_ped_can_be_targetted(ped4, false)
        native.ped.set_ped_can_ragdoll(ped4, false)
        native.ped.set_blocking_of_non_temporary_events(ped4, true)
        native.ped.set_ped_flee_attributes(ped4, 0, false)
        native.ped.set_ped_combat_attributes(ped4, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped4, 0, false)
        while true do
            local playerPed1 = native.player.get_player_ped(playerIdx) 
            local posVec1 = native.entity.get_offset_from_entity_in_world_coords(playerPed1, 0, 0, 0)
            native.entity.set_entity_coords(ped1,posVec1.x+0.5, posVec1.y, posVec1.z-1, true, true, true, true)
            native.entity.set_entity_coords(ped2,posVec1.x-0.5, posVec1.y, posVec1.z-1, true, true, true, true)
            native.entity.set_entity_coords(ped3,posVec1.x, posVec1.y+0.5, posVec1.z-1, true, true, true, true)
            native.entity.set_entity_coords(ped4,posVec1.x, posVec1.y-0.5, posVec1.z-1, true, true, true, true)
            local player_heading =native.entity.get_entity_heading(playerPed1)
            native.entity.set_entity_heading(ped1,player_heading)
            native.entity.set_entity_heading(ped2,player_heading)
            native.entity.set_entity_heading(ped3,player_heading)
            native.entity.set_entity_heading(ped4,player_heading)
            thread.yield(10)
        end
    end
    if state == "v2" then
        local playerPed = native.player.get_player_ped(playerIdx)
        local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 1.0, 0)
        ped1 = spanw_ped(0x41907533,posVec)   
        native.ped._set_random_outfit_variation(ped1, true)
        ped2 = spanw_ped(0x41907533,posVec)   
        native.ped._set_random_outfit_variation(ped2, true)
        ped3 = spanw_ped(0x41907533,posVec)   
        native.ped._set_random_outfit_variation(ped3, true)
        ped4 = spanw_ped(0x41907533,posVec)   
        native.ped._set_random_outfit_variation(ped4, true)
        native.entity.set_entity_invincible(ped1, true)
        native.entity.set_entity_invincible(ped2, true)
        native.entity.set_entity_invincible(ped3, true)
        native.entity.set_entity_invincible(ped4, true)
        native.ped.set_ped_config_flag(ped1, 61, true)
        native.ped.set_ped_config_flag(ped1, 254, true)
        native.ped._set_ped_can_be_lassoed(ped1, false)
        native.ped.set_ped_can_be_targetted(ped1, false)
        native.ped.set_ped_can_ragdoll(ped1, false)
        native.ped.set_blocking_of_non_temporary_events(ped1, true)
        native.ped.set_ped_flee_attributes(ped1, 0, false)
        native.ped.set_ped_combat_attributes(ped1, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped1, 0, false)
 
        native.ped.set_ped_config_flag(ped2, 61, true)
        native.ped.set_ped_config_flag(ped2, 254, true)
        native.ped._set_ped_can_be_lassoed(ped2, false)
        native.ped.set_ped_can_be_targetted(ped2, false)
        native.ped.set_ped_can_ragdoll(ped2, false)
        native.ped.set_blocking_of_non_temporary_events(ped2, true)
        native.ped.set_ped_flee_attributes(ped2, 0, false)
        --native.ped.set_ped_combat_attributes(pe2, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped2, 0, false)
 
        native.ped.set_ped_config_flag(ped3, 61, true)
        native.ped.set_ped_config_flag(ped3, 254, true)
        native.ped._set_ped_can_be_lassoed(ped3, false)
        native.ped.set_ped_can_be_targetted(ped3, false)
        native.ped.set_ped_can_ragdoll(ped3, false)
        native.ped.set_blocking_of_non_temporary_events(ped3, true)
        native.ped.set_ped_flee_attributes(ped3, 0, false)
        native.ped.set_ped_combat_attributes(ped3, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped3, 0, false)
 
        native.ped.set_ped_config_flag(ped4, 61, true)
        native.ped.set_ped_config_flag(ped4, 254, true)
        native.ped._set_ped_can_be_lassoed(ped4, false)
        native.ped.set_ped_can_be_targetted(ped4, false)
        native.ped.set_ped_can_ragdoll(ped4, false)
        native.ped.set_blocking_of_non_temporary_events(ped4, true)
        native.ped.set_ped_flee_attributes(ped4, 0, false)
        native.ped.set_ped_combat_attributes(ped4, 17, true)
        native.ped.set_ped_lasso_hogtie_flag(ped4, 0, false)
        
        while true do
        local playerPed1 = native.player.get_player_ped(playerIdx) 
        local posVec1 = native.entity.get_offset_from_entity_in_world_coords(playerPed1, 0, 0, 0)
        native.entity.set_entity_coords(ped1,posVec1.x+0.5, posVec1.y, posVec1.z-1, true, true, true, true)
        native.entity.set_entity_coords(ped2,posVec1.x-0.5, posVec1.y, posVec1.z-1, true, true, true, true)
        native.entity.set_entity_coords(ped3,posVec1.x, posVec1.y+0.5, posVec1.z-1, true, true, true, true)
        native.entity.set_entity_coords(ped4,posVec1.x, posVec1.y-0.5, posVec1.z-1, true, true, true, true)
        local player_heading =native.entity.get_entity_heading(playerPed1)
        native.entity.set_entity_heading(ped1,player_heading)
        native.entity.set_entity_heading(ped2,player_heading)
        native.entity.set_entity_heading(ped3,player_heading)
        native.entity.set_entity_heading(ped4,player_heading)
        thread.yield(10)
        end
    end
end)


trolling_sub:add_list("Wood Cage", {"Small", "Big"}, false, {"Cages the Player with Wood."}, function(player_pedIDX, state)
    if state == "Small" then
        local player_ped = native.player.get_player_ped(player_pedIDX)
        local pos = native.entity.get_entity_coords(player_ped, false, true)
        cage1 = native.object.create_object_no_offset(-204111661, pos.x, pos.y, pos.z-1, true, true, true, false)
    end
    if state == "Big" then
        local player_ped = native.player.get_player_ped(player_pedIDX) 
        local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
        cage2 = native.object.create_object_no_offset(-1715417137, pos.x, pos.y, pos.z-1, true, true, true, false)
    end
end)


trolling_sub:add_button("Poison", {"Splashes a Poison Cloud on this Player."}, function(playerID)
    local player_ped = native.player.get_player_ped(playerID) 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.fire.add_explosion(pos.x, pos.y, pos.z-4, 35, 25, false, false, 0.0)
end)


trolling_sub:add_list("Trap Chest", {"10 Seconds", "15 Seconds", "20 Seconds", "25 Seconds", "30 Seconds", "40 Seconds"}, false, {"Spawns a Chest by the Player that Explodes in the Seconds chosen."}, function(playerIdx, state)
    if state == "10 Seconds" then
    local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(10000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
    if state == "15 Seconds" then
        local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(15000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
    if state == "20 Seconds" then
        local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(20000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
    if state == "25 Seconds" then
        local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(25000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
    if state == "30 Seconds" then
        local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(30000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
    if state == "40 Seconds" then
        local playerPed = native.player.get_player_ped(playerIdx)
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 2, -1)
    object1 = native.object.create_object_no_offset(0xA1654BA1, posVec.x, posVec.y, posVec.z, true, true, true, false)
    
    for i = 1,20 do
    object2 = native.object.create_object_no_offset(0x2AB28031, posVec.x, posVec.y, posVec.z+0.01, true, true, true, false)
    end
    thread.yield(40000)
    for i = 1,10 do
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z, 15, 9999, true, false, 10.0)
    end
    end
end)


trolling_sub:add_button("Lightning Strike", {"Send a Lightning Strike to this Player."}, function(playerID)
    local player_ped = native.player.get_player_ped(playerID) 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.misc._force_lightning_flash_at_coords(pos.x, pos.y, pos.z, -1)
end)


--[[
trolling_sub:add_toggle("Lightning Strike [Loop]", {"Send Lightning Strikes to this Player."}, function(state)
    isStrike = state
end)

thread.create(function(playerID)
    while true do 
        if isStrike then
            local player_ped <const> = native.player.get_player_ped(playerID)
            local pos <const> = native.entity.get_entity_coords(player_ped, true, true)
            native.misc._force_lightning_flash_at_coords(pos.x, pos.y, pos.z, -1)
            thread.yield(50)
        else
            thread.yield(1000)
        end
    end
end)
--]]


trolling_sub:add_list("Teleport World", {"Objects", "Peds", "Vehicles"}, false, {"Teleport the selected World Entities to this Player."}, function(player_pedIDX, state)
    if state == "Objects" then
        for _, allobjects in pairs(game.get_world_objects()) do
            local player_ped = native.player.get_player_ped(player_pedIDX)
            local pos = native.entity.get_entity_coords(player_ped, false, true)
            native.entity.set_entity_coords(allobjects, pos.x, pos.y, pos.z, false, false, false, false)
        end
    end
    if state == "Peds" then
        for _, allpeds in pairs(game.get_world_peds()) do
            local player_ped = native.player.get_player_ped(player_pedIDX)
            local pos = native.entity.get_entity_coords(player_ped, false, true)
            native.entity.set_entity_coords(allpeds, pos.x, pos.y, pos.z+1, false, false, false, false)
        end
    end
    if state == "Vehicles" then
        for _, allvehicles in pairs(game.get_world_vehicles()) do
            local player_ped = native.player.get_player_ped(player_pedIDX)
            local pos = native.entity.get_entity_coords(player_ped, false, true)
            native.entity.set_entity_coords(allvehicles, pos.x, pos.y, pos.z+4, false, false, false, false)
        end
    end
end)



trolling_sub:add_button("Burn", {"Set this Player on Fire."}, function(playerID)
    local player_ped = native.player.get_player_ped(playerID) 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.fire.start_script_fire(pos.x, pos.y, pos.z-6, 25, 25, true, "slowmo_explosion", 5, 5)
    native.fire.add_owned_explosion(PlayerPed, pos.x, pos.y, pos.z-6, 18, 5, true, false, 0.5)
    thread.yield(200)
    native.fire.add_owned_explosion(PlayerPed, pos.x, pos.y, pos.z-6, 18, 5, true, false, 0.5)
end)





-- Particle Attach Functions

looped_sub:add_button("Lightning Strike [Looped]", {"Spam Lightning Strikes on this Player."}, function(playerID)
    while true do
    local player_ped = native.player.get_player_ped(playerID) 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.misc._force_lightning_flash_at_coords(pos.x, pos.y, pos.z, -1)
    thread.yield(15)
    end
end)


looped_sub:add_button("Water [Looped]", {"Spam Water on this Player."}, function (playerIdx)
    while true do
    local playerPed = native.player.get_player_ped(playerIdx) 
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z-3, 10, 1, false, false, 0.0)
    thread.yield(10)
    end
end)


looped_sub:add_button("Sparks [Looped]", {"Spam Sparks on this Player."}, function (playerIdx)
    while true do
    local playerPed = native.player.get_player_ped(playerIdx) 
    local posVec = native.entity.get_offset_from_entity_in_world_coords(playerPed, 0, 0, 0)
    Fire = native.fire.add_explosion(posVec.x, posVec.y, posVec.z+0.5, 33, 1, false, false, 0.0)
    thread.yield(1)
    end
end)



-- Attach to Player Functions

local PlayerPed = native.player.get_player_ped(0)                            
local PosX, PosY, PosZ = native.entity.get_entity_coords(PlayerPed, false, true)    
local TargetPed = nil			                                    
local TargetPlayer = nil			                             
local TposX, TposY, TposZ = 0.0, 0.0, 0.0               


local SitOnFace = false
local BeingWeird = false
local SitOnhead = false
local Hug = false
local Eatmyshit = false
local Fxxkstart = false
local FxxkstartHorse = false
local Hitbutt = false
local Dance1 = false
local Dance2 = false
local Dance3 = false
local Dance4 = false
local Kissbutt = false
local Dancenoattach1 = false
local Dancenoattach2 = false
local Dancenoattach3 = false
local Dancenoattach4 = false
local shoveGreet = false
local Pee = false
local Pee1 = false

local function SetAnimFalse()
    SitOnFace = false
    BeingWeird = false
    SitOnhead = false
    Hug = false
    Eatmyshit = false
    Fxxkstart = false
    FxxkstartHorse = false
    Hitbutt = false
    Dance1 = false
    Dance2 = false
    Dance3 = false
    Dance4 = false
    Kissbutt = false
    Dancenoattach1 = false
    Dancenoattach2 = false
    Dancenoattach3 = false
    Dancenoattach4 = false
    shoveGreet = false
    Pee = false
    Pee1 = false

end

local function UpdateLPlayer()
    PlayerPed = native.player.get_player_ped(0)
    PosX, PosY, PosZ = native.entity.get_entity_coords(PlayerPed, false, true)
end

local function UpdateTPlayer(Index)
    TargetPlayer = Index
    TargetPed = native.player.get_player_ped(Index)
    TposX, TposY, TposZ = native.entity.get_entity_coords(PlayerPed, true, true)
end

local function LoadingAnim(anim_dict)
    if not native.streaming.has_anim_dict_loaded(anim_dict) then
        native.streaming.request_anim_dict(anim_dict)
        while not native.streaming.has_anim_dict_loaded(anim_dict) do
            thread.yield(0)
        end
    end
end

local function PlayAnimTask(anim_dict, anim_name)
    LoadingAnim(anim_dict)
    UpdateLPlayer()
    native.task.task_play_anim(PlayerPed, anim_dict, anim_name, 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
end

local function ClearTasks(ped)
    native.ped.set_ped_should_play_immediate_scenario_exit(ped)
    native.task.clear_ped_tasks_immediately(ped, true, true)
    thread.yield(50)
end

local function AttachMeToPlayer(TargetPlayer, PosX, PosY, PosZ, RotX, RotY, RotZ)
    UpdateLPlayer()
    if (TargetPlayer ~= 0) then
        UpdateTPlayer(TargetPlayer)
		toast.add_warning("Attached Successfully!", "Player: " .. player.get_name(TargetPlayer) .. '.')
    	native.entity.attach_entity_to_entity(PlayerPed, TargetPed, 0, PosX, PosY, PosZ, RotX, RotY, RotZ, false, false, false, true, 0, true, false, false)
	end
end


attachplr_sub:add_button("Clear Tasks", {"Clear your Peds Tasks."}, function()
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    toast.add_success(script.get_name(), "Successfully cleared your Peds Tasks!")
end)

attachplr_sub:add_button("Detach", {"Detach yourself from the current Player."}, function()
    UpdateLPlayer()
    native.entity.detach_entity(PlayerPed, true, true)
    toast.add_success(script.get_name(), "Successfully Detached from this Player!")
end)


-- Animations Attach

plr_attach_sub:add_button("Sit on Face", {"Sit on this Players Face."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not SitOnFace then
        local anim_dict = "script_story@gry1@ig@ig_15_archibald_sit_reading"
        local anim = "held_1hand_archibald"
        AttachMeToPlayer(index, 0.0, 0.2, 0.7, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		SitOnFace = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Sit on Head", {"Sit on this Players Head."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not SitOnhead then
        local anim_dict = "script_story@gry1@ig@ig_15_archibald_sit_reading"
        local anim = "held_1hand_archibald"
        AttachMeToPlayer(index, 0.0, -0.2, 0.9, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		SitOnhead = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Sit on Back", {"Sit on this Players Back."}, function(index)
    ClearTasks(PlayerPed)
	if not BeingWeird then
		local anim_disc = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@rest_front@male_a@base"
		local anim = "base"
		AttachMeToPlayer(index, 0.0, -0.2, 0.1, 0.0, 0.0, 0.0)
        PlayAnimTask(anim_disc, anim)
        BeingWeird = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Hug", {"Give this Player a Hug."}, function(index)
    ClearTasks(PlayerPed)
	if not Hug then
		local anim_disc = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@rest_front@male_a@base"
		local anim = "base"
		AttachMeToPlayer(index, 0.0, 0.5, 0.0, 0.0, 0.0, 180)
        PlayAnimTask(anim_disc, anim)
        Hug = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Eat my Ass", {"Make this Player Eat your Ass."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Eatmyshit then
        local anim_dict = "script_story@gry1@ig@ig_15_archibald_sit_reading"
        local anim = "held_1hand_archibald"
        AttachMeToPlayer(index, 0.0, 0.5, 0.6, -45.0, 0.0, 0.0)
        PlayAnimTask(anim_dict, anim)
		Eatmyshit = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Fuck", {"Do I need to go into Detail?"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Fxxkstart then
        local anim_dict = "script_story@gry1@ig@ig_15_archibald_sit_reading"
        local anim = "held_1hand_archibald"
        AttachMeToPlayer(index, 0.0, -0.2, -0.2, 30.0, 0.0, 0.0)
        PlayAnimTask(anim_dict, anim)
		Fxxkstart = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Fuck Horse", {"Do I need to go into Detail?"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not FxxkstartHorse then
        local anim_dict = "script_story@gry1@ig@ig_15_archibald_sit_reading"
        local anim = "held_1hand_archibald"
        AttachMeToPlayer(index, 0.0, -0.7, -0.2, -30.0, 0.0, 0.0)
        PlayAnimTask(anim_dict, anim)
		FxxkstartHorse = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Smack Ass", {"Give this Player a Spanking."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Hitbutt then
        local anim_dict = "script_re@peep_tom@spanking_cowboy"
        local anim = "spanking_idle_female"
        AttachMeToPlayer(index, 0.0, -0.8, -0.5, 0.0, 15.0, -30.0)
        PlayAnimTask(anim_dict, anim)
		Hitbutt = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Drunk Hug", {"Give this Player a Hug while Drunk."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not shoveGreet then
        local anim_dict = "mech_melee@unarmed@posse@ambient@healthy@noncombat"
        local anim = "shove_greet_front_drunk_vs_sober_v3_att"
        AttachMeToPlayer(index, 0.0, 0.3, 0.0, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
        Dance4 = true
    else
        SetAnimFalse()
    end
end)

plr_attach_sub:add_button("Pee", {"Give this Player a Shower."}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Pee then
        local anim_dict = "amb_misc@world_human_pee@male_a@idle_a"
        local anim = "idle_a"
        AttachMeToPlayer(index, 0.0, 0.6, 0.0, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		Pee = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_separator("Dances")

plr_attach_sub:add_button("Dance v1", {"The Party just doesn't Stop!"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Dance1 then
        local anim_dict = "script_shows@firedancer@act3_p1"
        local anim = "dance"
        AttachMeToPlayer(index, 0.0, 0.3, 1.7, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		Dance1 = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Dance v2", {"The Party just doesn't Stop!"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Dance2 then
        local anim_dict = "script_shows@sworddance@act3_p1"
        local anim = "dancer_sworddance"
        AttachMeToPlayer(index, 0.0, 0.3, 1.7, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		Dance2 = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Dance v3", {"The Party just doesn't Stop!"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Dance3 then
        local anim_dict = "script_shows@snakedancer@act2_p1"
        local anim = "dance_dancer"
        AttachMeToPlayer(index, 0.0, 0.3, 1.7, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		Dance3 = true
    else
		SetAnimFalse()
	end
end)

plr_attach_sub:add_button("Dance v4", {"The Party just doesn't Stop!"}, function(index)
    UpdateLPlayer()
    ClearTasks(PlayerPed)
    if not Dance4 then
        local anim_dict = "script_shows@firebreather@act2_p1"
        local anim = "dancer_dance"
        AttachMeToPlayer(index, 0.0, 0.3, 1.7, 0.0, 0.0, 180.0)
        PlayAnimTask(anim_dict, anim)
		Dance4 = true
    else
		SetAnimFalse()
	end
end)









-- Extra Trolling Functions

trolling_sub:add_toggle("Halt", {"Forces the Player to Halt."}, function(state, player_pedIDX)
    if state == true then
        local player_ped = native.player.get_player_ped(player_pedIDX)
        native.task.task_aim_gun_at_coord(player_ped, 0, 0, 9999, 9999, false, false)
        native.task.task_look_at_coord(player_ped, 0, 0, 9999, -1, 1, 0, false)
    end
end)


trolling_sub:add_button("Shake Camera", {"Shakes the Players Camera violently for 15 Seconds.\n\nThis will also affect you if you're too close to the Target and ''Disable Camera Shake'' isn't Enabled."}, function(playerID)
    local player_ped = native.player.get_player_ped(playerID) 
    local pos = native.entity.get_offset_from_entity_in_world_coords(player_ped, 0, 0, 0)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
    thread.yield(2000)
    native.fire.add_explosion(pos.x, pos.y, pos.z-6, 5, 0, false, true, 1000.0)
end)


















-- Shoulder Pals Functions:

local anim_dict = {
    "amb_creatures_bird@world_carolinaparakeet_on_perch@idle",
    "creatures_bird@parrot@normal@idle@idle_variations@var_c",
    "creatures_mammal@squirrel@normal@idle@variation@idle_b",
    "amb_creature_mammal@world_cat_sitting@base",
    "amb_creature_mammal@world_rat_eating@base",
    "amb_creature_mammal@world_rat_eating@idle"
}

local anim_name = {
    "idle",
    "idle_a",
    "idle_b",
    "idle_c",
    "base"
}

MaleBoneName = {
    ["Left Shoulder"]  = 286--[[, bone_id = 44903]],
    ["Right Shoulder"]  = 386--[[, bone_id = 4312]], 
   
}

FemaleBoneName = {
    ["Left Shoulder"] = 353  --[[, bone_id = 44903]],
    ["Right Shoulder"] = 440 --[[, bone_id = 4312]],
}

local Peds = {
    ["Parrot"] = 0x94DD14B8, -- peds | animals "A_C_Parrot_01"  
    ["Squirrel"] = 0x5758D069,  --  peds | humans "A_C_Squirrel_01"
    ["Parakeet"] = 0x681E834B,  --A_C_CarolinaParakeet_01
    ["Cat"] = 0x573201B8,
    ["Rat"] = 0x3AFD2922,
    ["Sparrow"] = 0xC2B75D41,
    ["Toad"] = 0x598F9219,
    ["Black Tail Rattle"] = 0x3276FDB9,
}




-- Male

palsmale_sub:add_button("Cat", {"Spawn a Cat Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Cat"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 1, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[4])
        native.task.task_play_anim(Ped, anim_dict[4], anim_name[5], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, MaleBoneName["Left Shoulder"], 0.00, 0.0, 0.15, 0.0,0.0, 190.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true) 
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)


palsmale_sub:add_button("Squirrel", {"Spawn a Squirrel Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Squirrel"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 1, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[3])
        native.task.task_play_anim(Ped, anim_dict[3], anim_name[1], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, MaleBoneName["Left Shoulder"], 0.00, 0.03, 0.1, 0.0,0.0, 190.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true) 
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)


palsmale_sub:add_button("Parrot", {"Spawn a Parrot Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Parrot"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 3, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[2])
        native.task.task_play_anim(Ped, anim_dict[2], anim_name[1], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, MaleBoneName["Left Shoulder"], 0.045, 0.05, 0.12, 0.0, 0.0, 180.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true)
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)







-- Female 

palsfemale_sub:add_button("Cat", {"Spawn a Cat Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Cat"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 1, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[4])
        native.task.task_play_anim(Ped, anim_dict[4], anim_name[5], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, FemaleBoneName["Left Shoulder"], 0.015, 0.01, 0.15, 0.0,0.0, 150.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true) 
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)


palsfemale_sub:add_button("Squirrel", {"Spawn a Squirrel Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Squirrel"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 1, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[3])
        native.task.task_play_anim(Ped, anim_dict[3], anim_name[1], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, FemaleBoneName["Left Shoulder"], 0.015, 0.01, 0.08, 0.0,0.0, 150.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true) 
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)


palsfemale_sub:add_button("Parrot", {"Spawn a Parrot Shoulder Pal."}, function()
    local player_ped <const> = native.player.player_ped_id()
    if native.entity.does_entity_exist(player_ped) then
        local posVec <const> = native.entity.get_entity_coords(player_ped, true, true)
        local Ped = spanw_ped(Peds["Parrot"], posVec)
        native.ped._equip_meta_ped_outfit_preset(Ped, 1, false)
        native.ped._set_random_outfit_variation(Ped, true)
        native.task.clear_ped_tasks_immediately(Ped, true, true)
        native.streaming.request_anim_dict(anim_dict[2])
        native.task.task_play_anim(Ped, anim_dict[2], anim_name[1], 1.0, 1.0, -1, 1, 0.0, false, 0, false, "", false)
        native.entity.freeze_entity_position(Ped, true)
        native.entity.attach_entity_to_entity(Ped, player_ped, FemaleBoneName["Left Shoulder"], 0.0, 0.05, 0.12, 0.0, -15.0, 180.0, false, false, false, true, 0, true, false, false)
        native.ped.set_ped_config_flag(Ped, 61, true)  
        native.ped.set_ped_config_flag(Ped, 254, true) 
        native.ped.set_ped_config_flag(Ped, 29, true)  
        native.ped.set_ped_config_flag(Ped, 54, true)  
        native.ped.set_ped_config_flag(Ped, 72, true)  
        native.ped.set_ped_config_flag(Ped, 77, true)  
        native.ped.set_ped_config_flag(Ped, 111, true) 
        native.ped.set_ped_config_flag(Ped, 113, true) 
        native.ped.set_ped_config_flag(Ped, 121, true) 
        native.ped.set_ped_config_flag(Ped, 137, true) 
        native.ped.set_ped_config_flag(Ped, 136, true) 
        native.ped.set_ped_config_flag(Ped, 192, true) 
        native.ped.set_ped_config_flag(Ped, 207, false)
        native.ped.set_ped_config_flag(Ped, 213, true) 
        native.ped.set_ped_config_flag(Ped, 217, true) 
        native.ped.set_ped_config_flag(Ped, 279, true) 
        native.ped.set_ped_config_flag(Ped, 302, true) 
        native.ped.set_ped_config_flag(Ped, 340, true) 
        native.ped.set_ped_config_flag(Ped, 370, true) 
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_config_flag(Ped, 72, true)
        native.ped.set_ped_combat_attributes(Ped, 68, true)
        native.ped._set_ped_can_be_lassoed(Ped, false)
        native.ped.set_ped_can_be_targetted(Ped, false)
        native.ped.set_ped_can_ragdoll(Ped, false)
        native.streaming.set_model_as_no_longer_needed(Ped)
        native.ped.set_blocking_of_non_temporary_events(Ped, true)
    end
end)










-- Animations Functions 

