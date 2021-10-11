if settings.startup["ZElectricVehicles-SpiderFuel"].value then

local drspider = data.raw["spider-vehicle"]

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

if not mods["bobwarfare"] then

drspider["spidertron"].energy_source = spiderfuel()

data.raw["recipe"]["spidertron"].ingredients = {
          {
            "rocket-launcher",
            4
          },
          {
            "rocket-control-unit",
            16
          },
          {
            "radar",
            2
          },
          {
            "low-density-structure",
            150
          },
          {
            "exoskeleton-equipment",
            4
          },
          {
            "effectivity-module-3",
            2
          },
}

end
end
