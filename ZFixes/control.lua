script.on_init(function ()  
  ForceFix()
end)

script.on_configuration_changed(function (data)
  ForceFix()  
  game.print("ZFixes: Runtime settings updated.")  
end)

script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
  ForceFix()
  game.print("ZFixes: Runtime settings updated.")  
end)

script.on_event(defines.events.on_player_died, function(event)
  local settingvalue = settings.global["ZFixes-Respawn"].value
  game.players[event.player_index].ticks_to_respawn = settingvalue * 60
end)

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.type == "boiler" then
  event.created_entity.insert_fluid({name = "water", amount = 10})
  end
end)

script.on_event(defines.events.on_player_created, function(event)
if settings.global["ZFixes-CarStart"].value then
  local player = game.players[event.player_index]
  if player then
    local character = player.character or player.cutscene_character
    if character then
      character.insert{name = "car", count = 1}
    end
  end
end

if settings.global["ZFixes-SpiderStart"].value then
  if script.active_mods["bobwarfare"] then
    local player = game.players[event.player_index]
    if player then
      local character = player.character or player.cutscene_character
      if character then
        character.insert{name = "antron", count = 1}
        character.insert{name = "spidertron-remote", count = 1}
      end
    end
  end
end

end)


-- Functions

function ForceFix()
  if settings.global["ZFixes-Super-QOL"].value then 
    local CharSpeed = settings.global["ZFixes-CharSpeed"].value
     for _, force in pairs(game.forces) do
          if force.name ~= "enemy" and force.name ~= "neutral" then
           -- Tech
             force.technologies["automation"].researched = true
             force.technologies["stone-wall"].researched = true
             force.technologies["gun-turret"].researched = true
             force.technologies["military"].researched = true
             force.technologies["logistics"].researched = true
           -- Tech
           -- Bonus
             force.character_build_distance_bonus = 200.0
             force.character_reach_distance_bonus = 200.0
             force.character_running_speed_modifier = CharSpeed
             force.laboratory_speed_modifier = 30.0
             force.laboratory_productivity_bonus = 1.0
             force.worker_robots_storage_bonus  = 4.0
             force.worker_robots_battery_modifier = 3.0
             force.worker_robots_speed_modifier = 5.5
             force.mining_drill_productivity_bonus = 2.0
             force.train_braking_force_bonus = 1.5
             force.manual_crafting_speed_modifier = 1500.0
             force.manual_mining_speed_modifier = 1.3
             force.ghost_time_to_live = 36288000
           -- Bonus
          end
     end
  end
end