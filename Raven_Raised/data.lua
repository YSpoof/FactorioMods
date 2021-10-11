
data:extend({
  {
    type = "item",
    name = "raven-1",
    icon = "__Raven_Raised__/raven/Raven_icon.png",
	icon_size = 32,
    subgroup = "transport",
    order = "b[personal-transport]-c[raven]",
    place_result = "raven-1",
    stack_size = 1
  },
  {
    type = "car",
    name = "raven-1",
    icon = "__Raven_Raised__/raven/Raven_icon.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "raven-1"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances = 
    {
      {
        type = "fire",
        percent = 10
      },
      {
        type = "impact",
        percent = 10,
        decrease = 1
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    effectivity = 0.17,
    braking_power = "20kW",
    burner =
    {
      effectivity = 0.3,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "200kW",
    friction = 24e-4,
    light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.4,
        size = 10,
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.7, -13},
        size = 2,
        intensity = 1.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.4, -13},
        size = 2,
        intensity = 1.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 128,
          height = 128,
          frame_count = 2,
          direction_count = 72,
          shift = {0, 0},
          animation_speed = 1,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__Raven_Raised__/raven/Raven_01.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_01_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_2.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
          }
        },
        {
          width = 128,
          height = 128,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 72,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
            {
             filename = "__Raven_Raised__/raven/Raven_01_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
          })
        }
      }
    },
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      --[[activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },]]
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.003,
    weight = 500,
    inventory_size = 50
  },
  {
    type = "car",
    name = "raven-2",
    icon = "__Raven_Raised__/raven/Raven_icon.png",
	icon_size = 32,
    subgroup = "transport",
    order = "b[personal-transport]-c[raven]",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances = 
    {
      {
        type = "fire",
        percent = 10
      },
      {
        type = "impact",
        percent = 10,
        decrease = 1
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
	collision_mask = {"not-colliding-with-itself"},
    effectivity = 0.3,
    braking_power = "20kW",
    burner =
    {
      effectivity = 0.3,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "200kW",
    friction = 12e-4,
	terrain_friction_modifier = 0,
    light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.4,
        size = 10,
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.7, -13},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.4, -13},
        size = 2,
        intensity = 0.6
      }
    },
    render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          priority = "high",
          width = 128,
          height = 128,
          frame_count = 4,
          direction_count = 72,
          shift = {0, 0},
          animation_speed = 1,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__Raven_Raised__/raven/Raven_01.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_01_1.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_01_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_01_3.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_1.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_3.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_1.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_3.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_1.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_2.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_3.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_1.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_2.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_3.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
          }
        }
      }
    },
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      --[[activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },]]
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.006,
    weight = 500,
    inventory_size = 50
  },
  {
    type = "car",
    name = "raven-shadow",
    icon = "__Raven_Raised__/raven/Raven_icon.png",
	icon_size = 32,
    subgroup = "transport",
    order = "b[personal-transport]-c[raven]",
    flags = {"not-on-map", "placeable-off-grid"},
    max_health = 10000,
    healing_per_tick = 1000,
    energy_per_hit_point = 1,
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{0, 0}, {0, 0}},
	collision_mask = {"not-colliding-with-itself"},
    effectivity = 1,
    braking_power = "20kW",
    burner =
    {
      effectivity = 1,
      fuel_inventory_size = 1,
    },
    consumption = "0kW",
    friction = 12e-4,
	terrain_friction_modifier = 0,
    render_layer = "air-object",
    animation =
    {
      layers =
      {
        {
          width = 128,
          height = 128,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 72,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
            {
             filename = "__Raven_Raised__/raven/Raven_01_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_02_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_03_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_04_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 16,
            },
            {
             filename = "__Raven_Raised__/raven/Raven_05_Shadow.png",
             width_in_frames = 1,
             height_in_frames = 8,
            },
          })
        }
      }
    },
    rotation_speed = 0,
    weight = 500,
    inventory_size = 0
  },
  {
    type = "recipe",
    name = "raven",
    energy_required = 6,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"plastic-bar", 100},
      {"advanced-circuit", 200},
      {"electric-engine-unit", 20},
      {"battery", 100},
	  ingredient
    },
    result = "raven-1"
  },
  {
    type = "technology",
    name = "raven",
    icon = "__Raven_Raised__/raven/Raven_icon_64.png",
	icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raven"
      }
    },
    prerequisites = {"electric-engine", "battery"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-k",
  }
})