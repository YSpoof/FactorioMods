local sounds = require("__base__.prototypes.entity.sounds")

data:extend(
{
  {
    type = "roboport",
    name = "early-roboport",
    icon = "__ZEarlyBots__/Graphics/Icons/robots/early-roboport.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "early-roboport"},
    fast_replaceable_group = "roboport",
    max_health = 170,
    corpse = "roboport-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    resistances =
    {
      {
        type = "fire",
        percent = 40
      },
      {
        type = "impact",
        percent = 15
      }
    },
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "1MW",
      buffer_capacity = "1MJ"
    },
    recharge_minimum = "5MJ",
    energy_usage = "25.0kW",
    -- per one charge slot
    charging_energy = "500kW",
    logistics_radius = 12.5,
    construction_radius = 17.5,
    charge_approach_distance = 5,
    robot_slots_count = 3,
    material_slots_count = 3,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
    base =
    {
      layers =
      {
        {
          filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-base.png",
          width = 143,
          height = 135,
          shift = {0.5, 0.25},
          hr_version =
          {
            filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-base.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2, 7.75),
            scale = 0.5
          }
        },
        {
          filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/blank.png",
          width = 1,
          height = 1,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
    },
    base_patch =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-base-patch.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    },
    base_animation =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
      hr_version =
      {
        filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75, -61.25),
        scale = 0.5
      }
    },
    door_animation_up =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
      hr_version =
      {
        filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25, -29.5),
        scale = 0.5
      }
    },
    door_animation_down =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.21875},
      hr_version =
      {
        filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/hr-early-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25,-9.75),
        scale = 0.5
      }
    },
    recharging_animation =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.4 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.75,
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    radius_visualisation_picture =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-roboport/early-roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
    },
    open_door_trigger_effect = sounds.roboport_door_open,
    close_door_trigger_effect = sounds.roboport_door_close,
    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = 10,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  }
}
)