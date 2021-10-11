script.on_event(defines.events.on_player_created, function(event)
if settings.global["ZEarlyBots-Start"].value == true then
  local player = game.players[event.player_index]
  if player then
    local character = player.character or player.cutscene_character
    if character then
      character.insert{name = "early-bot", count = 10}
      character.insert{name = "light-armor", count = 1}
      character.insert{name = "early-personal-roboport-equipment", count = 2}
      character.insert{name = "early-solar-panel-equipment", count = 4}
    end
  end
end
end)