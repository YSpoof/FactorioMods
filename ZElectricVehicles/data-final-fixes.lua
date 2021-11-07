------------------------------- SPIDER FIX --------------------------------

if settings.startup["ZElectricVehicles-SpiderFuel"].value then
  if not mods["bobwarfare"] then
    data.raw["spider-vehicle"]["spidertron"].energy_source = {
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

    data.raw["recipe"]["spidertron"].ingredients = {
      {"rocket-launcher", 4},
      {"rocket-control-unit", 16},
      {"radar", 2},
      {"low-density-structure", 150},
      {"exoskeleton-equipment", 4},
      {"effectivity-module-3", 2},
    }
  end
end

------------------------------- OTHERS FIX --------------------------------

-- Attempt vehicle presence detection

local ZhasVehicles = false        -- Are we enabling vehicle components?
local ElectricequipmentCategories = {}    -- Detected non-player equipment categories... hopefully.

-- Search and detect specific equipment categories.
local searchCategories = {"aircraft", "car", "tank", "train", "vehicle", "locomotive", "electric-hovercraft-equipment", "armoured-locomotive", "armoured-train", "armoured-vehicle", "spider-vehicle", "hcraft-equipment", "mcraft-equipment", "armor", "vehicle-motor"}
for _,cat in pairs(searchCategories) do
  if data.raw["equipment-category"][cat] then
    ZhasVehicles = true
    table.insert(ElectricequipmentCategories, cat)
  end
end

if ZhasVehicles then
  data.raw["battery-equipment"]["zelectric-transformer"].categories = ElectricequipmentCategories
end

------------------------------- EARLY MODE --------------------------------

if settings.startup["ZElectricVehicles-EarlyMode"].value then

  data.raw["technology"]["zelectric-transformer"].prerequisites = {"engine"}

  data.raw["technology"]["zelectric-transformer"].unit = {
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1}
    },
    time = 30
  }

  data.raw["recipe"]["zelectric-transformer"].ingredients = {
    {"iron-plate", 50},
    {"copper-cable", 200},
    {"engine-unit", 10},
  }

end

