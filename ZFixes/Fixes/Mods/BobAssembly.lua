if mods["bobassembly"] then
data.raw["assembling-machine"]["steam-assembling-machine"].crafting_speed = 4

-- Steam Furnace

if settings.startup["ZFixes-Steam-Furnace"].value == true then
local drf = data.raw.furnace

local function vapor()
return
    {
      type = "fluid",
      emissions_per_minute = 0.5,
      burns_fluid = false,
      fluid_usage_per_tick = 0.8,
      scale_fluid_usage = true,
      fluid_box =
      {
        base_area = 1,
        filter = "steam",
        minimum_temperature = 415.0,
        maximum_temperature = 1000.0,
        height = 2,
        base_level = -1,
        pipe_connections =
        {
          {type = "input-output", position = { 1.5, 0.5}},
          {type = "input-output", position = {-1.5, 0.5}}
        },
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        production_type = "input-output",
      },
      smoke =
      {
        {
          name = "smoke",
          color = {r=199, g=213, b=224, a=0.375},
          frequency = 20,
          north_position = {0.7, -1.2},
          east_position = {0.7, -1.2},
          south_position = {0.7, -1.2},
          west_position = {0.7, -1.2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    }
end

data:extend{
{
    type = "item",
    name = "steam-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "b[steela-furnace]",
    place_result = "steam-furnace",
    stack_size = 50
  },
  util.merge
  {
    data.raw.furnace["steel-furnace"],
    {
      name = "steam-furnace",
      minable = {result = "steam-furnace"},
    }
  },
  {
    type = "recipe",
    name = "steam-furnace",
    energy_required = 2,
    enabled = true,
    ingredients =
    {
      {"fluid-furnace", 1},
      {"steel-plate", 5},
    },
    result = "steam-furnace"
    
} }

drf["steam-furnace"].energy_source = vapor()
drf["steam-furnace"].crafting_speed = 2.3

end

end