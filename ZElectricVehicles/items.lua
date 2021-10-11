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
      width = 4,
      height = 2
    },
    sprite = {
      filename = "__ZElectricVehicles__/Graphics/Icons/Transformer.png",
      width = 128,
      height = 128,
    },
    
  },
  {
    type = "item",
    name = "zelectric-transformer",
    icon = "__ZElectricVehicles__/Graphics/Icons/Transformer.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "equipment",
    order = "b[battery]-d[electric-transformer]",
    stack_size = 5,
    placed_as_equipment_result = "zelectric-transformer"
  },
  {
    type = "item",
    name = "zelectric-transformer-power",
    fuel_value = "15MJ",
    fuel_category = "chemical",
    fuel_acceleration_multiplier = settings.startup["ZElectricVehicles-Acceleration"].value,
    fuel_top_speed_multiplier = settings.startup["ZElectricVehicles-TopSpeed"].value,
    stack_size = 1,
    icon = "__ZElectricVehicles__/Graphics/Icons/Fuel.png",
    icon_size = 16,
    icon_mipmaps = 4,
    flags = {"hidden", "hide-from-fuel-tooltip"},
  }
}
