if mods["bobwarfare"] then

local dr = data.raw

local drspider = dr["spider-vehicle"]

local drequip = dr["equipment-grid"]

local drt = dr["technology"]

local function spiderfuel()
  return
  {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 1,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    light_flicker =
    {
      color = {0,0,0},
      minimum_intensity = 0.7,
      maximum_intensity = 0.95
    }
  }
end


-- Spidertron Fuel source change

drspider["antron"].energy_source = spiderfuel()
drspider["tankotron"].energy_source = spiderfuel()
drspider["logistic-spidertron"].energy_source = spiderfuel()
drspider["spidertron"].energy_source = spiderfuel()
drspider["heavy-spidertron"].energy_source = spiderfuel()

-- Spidertron Grid change

drequip["antron-equipment-grid"].width = 10
drequip["antron-equipment-grid"].height = 4

drequip["logistic-spidertron-equipment-grid"].width = 17
drequip["logistic-spidertron-equipment-grid"].height = 8

drequip["spidertron-equipment-grid"].width = 14
drequip["spidertron-equipment-grid"].height = 4

drequip["heavy-spidertron-equipment-grid"].width = 17
drequip["heavy-spidertron-equipment-grid"].height = 8


-- Spidertron Weapons

drspider["antron"].guns = {"spidertron-gatling-gun"}

drspider["tankotron"].guns = {"spidertron-cannon", "spidertron-gatling-gun", "flamethrower", "laser-rifle"}

drspider["spidertron"].guns = {"tank-cannon-3", "spidertron-rocket-launcher-1", "spidertron-gatling-gun", "tank-flamethrower-3", "laser-rifle"}

drspider["heavy-spidertron"].guns = {"tank-cannon-3", "spidertron-rocket-launcher-1", "spidertron-gatling-gun", "tank-flamethrower-3", "laser-rifle"}

-- Disable Weapon AutoSwitch ( causes weird fire from spidertron if you have all ammunation equiped )

drspider["tankotron"].automatic_weapon_cycling = false

drspider["spidertron"].automatic_weapon_cycling = false

drspider["heavy-spidertron"].automatic_weapon_cycling = false


-- Disable some armors technology

drt["bob-armor-making-3"] = nil

drt["bob-armor-making-4"] = nil


-- Sniper Range

dr["gun"]["sniper-rifle"].attack_parameters.range = 40

end
