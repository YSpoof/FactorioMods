local bmspidertrons = {
  ["bm-spidertron_1"] = true,
  ["bm-spidertron_2"] = true,
  ["bm-spidertron_3"] = true,
  ["bm-spidertron_4"] = true,
  ["bm-spidertron_5"] = true,
}

local VEHICLE_TYPES = {}

local event_handler = require("event_handler")
local script_data = {
  cars = {}
}
local MODULO = 30 -- update each vehicle once per 30 ticks
for i=0,MODULO-1 do
  script_data.cars[i] = {}
end

local EQUIPMENT = "zelectric-transformer"
local FUEL = "zelectric-transformer-power"

if settings.startup["ZElectricVehicles-SpiderFuel"].value then
  VEHICLE_TYPES = {"car", "locomotive", "spider-vehicle"}
else
  VEHICLE_TYPES = {"car", "locomotive"}
end

local function isVehicle(entity)
  for _,type in pairs(VEHICLE_TYPES) do
    if entity.type == type then return true end
  end
  return false
end


local function onBuilt(entity)
  if not (entity and entity.valid and isVehicle(entity)) then return end
  if bmspidertrons[entity.name] then return else
  script_data.cars[entity.unit_number % MODULO][entity.unit_number] = entity
    -- game.print("Registered vehicle " .. entity.unit_number)
  end
end


local function onBuilt_Event(event)	--Adapter for Event
	onBuilt(event.entity or event.created_entity)
end

local function onBuilt_Entity(entity)	--Adapter for Entity (currently excess)
	onBuilt(entity)
end

local function onMined(event)
  local entity = event.entity
  if not (entity and entity.valid and isVehicle(entity)) then return end
  script_data.cars[entity.unit_number % MODULO][entity.unit_number] = nil
    -- game.print("Unregistered vehicle " .. entity.unit_number)
end

local function onTick(event)
  local process = script_data.cars[event.tick % MODULO]
  local CAPACITY = game.item_prototypes[FUEL].fuel_value
  for n,car in pairs(process) do
    if not (car and car.valid) then
      -- car was destroyed but somehow not unregistered, so clean it up here
      process[n] = nil
    elseif not car.grid then
      -- vehicle doesn't have a grid, skip it
    else
      -- check if car has electric-transformer in its grid and isn't burning "real" fuel
      if not car.burner.currently_burning then
        car.burner.currently_burning = FUEL
      end
      if car.burner.currently_burning.name == FUEL then
        local missing = CAPACITY - car.burner.remaining_burning_fuel
        -- loop through equipment in the car's grid, and transfer energy from transformers to the burner
        for _,equipment in pairs(car.grid.equipment) do
          if equipment.name == EQUIPMENT then
            local drain = math.min(equipment.energy, missing)
            equipment.energy = equipment.energy - drain * 2
            car.burner.remaining_burning_fuel = car.burner.remaining_burning_fuel + drain
            missing = missing - drain * 2
            if missing <= 0 then break end
          end
        end
      end
    end
  end
end


--Interfaces for AAI_Programmable_Vehicles
remote.add_interface("AAI-ZElectricVehicles_on_entity_deployed", { on_entity_deployed = function(data) return onBuilt_Entity(data.entity) end})
remote.add_interface("AAI-ZElectricVehicles_on_entity_replaced", { on_entity_replaced = function(data) return onBuilt_Entity(data.new_entity) end})
--


event_handler.add_lib{
  on_init = function()

    global.vehicles = global.vehicles or script_data.cars
    -- scan for any existing vehicles on any surfaces and start tracking them
    for _,surface in pairs(game.surfaces) do
      local vehicles = surface.find_entities_filtered{type = VEHICLE_TYPES}
      for _,entity in pairs(vehicles) do
        onBuilt{entity=entity}
      end
    end
  end,
  on_load = function()
    script_data.cars = global.vehicles or script_data.cars
  end,
  events = {
    [defines.events.on_tick] = onTick,
    [defines.events.on_built_entity] = onBuilt_Event,
    [defines.events.on_robot_built_entity] = onBuilt_Event,
    [defines.events.script_raised_built] = onBuilt_Event,
    [defines.events.script_raised_revive] = onBuilt_Event,
    [defines.events.on_player_mined_entity] = onMined,
    [defines.events.on_robot_mined_entity] = onMined,
    [defines.events.on_entity_died] = onMined,
    [defines.events.script_raised_destroy] = onMined
  }
}
