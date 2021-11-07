local ICONPATH = "__ZElectricVehicles__/graphics/icons/"

data:extend{
  {
    type = "battery-equipment",
    name = "zelectric-transformer",
    categories = {"armor"},
    energy_source = {
      type = "electric",
      buffer_capacity = "15MJ",
      usage_priority = "secondary-input"
    },
    shape = {
      type = "full",
      width = 3,
      height = 3,
    },
    sprite = {
      filename = ICONPATH .. "transformer.png",
      width = 192,
      height = 192,
      scale = 0.5,
    },
  },
  {
    type = "item",
    name = "zelectric-transformer",
    icon = ICONPATH .. "transformer-icon.png",
    icon_size = 64,
    subgroup = "equipment",
    order = "b[battery]-d[electric-transformer]",
    stack_size = 5,
    placed_as_equipment_result = "zelectric-transformer"
  },
  {
    type = "recipe",
    name = "zelectric-transformer",
    category = "crafting",
        ingredients = {
            {"iron-plate", 50},
            {"copper-cable", 300},
            {"plastic-bar", 5},
            {"electric-engine-unit", 10},
        },
        results = {
          {type = "item", name = "zelectric-transformer", amount = 1}},
        enabled = "false",
    energy_required = 2,
    subgroup = "equipment",
  },

  {
    type = "technology",
    name = "zelectric-transformer",
    icon = ICONPATH .. "transformer-tech.png",
    icon_size = 256,
    prerequisites = {"advanced-electronics-2", "battery-equipment", "electric-engine"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "zelectric-transformer"
      },
    },
    unit = {
      count = 200,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "g-i-a"
  },

  {
    type = "item",
    name = "zelectric-transformer-power",
    icon = ICONPATH .. "fuel.png",
    icon_size = 64,
    fuel_value = "15MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = settings.startup["ZElectricVehicles-Acceleration"].value,
    fuel_top_speed_multiplier = settings.startup["ZElectricVehicles-TopSpeed"].value,
    stack_size = 1,
    flags = {"hidden", "hide-from-fuel-tooltip"},
  },
}


