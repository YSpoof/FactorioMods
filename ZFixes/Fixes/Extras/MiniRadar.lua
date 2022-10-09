--[[ Copyright (c) Endus322 ]]

local miniRadar = table.deepcopy(data.raw.radar["radar"])
    miniRadar.name = "zmini-radar"
    miniRadar.minable = {
        mining_time = 0.1,
        result = "zmini-radar"
    }
    miniRadar.energy_usage = "75kW"
    miniRadar.max_distance_of_sector_revealed = 0
    miniRadar.rotation_speed = 0.005
    miniRadar.collision_box = {{-0.8, -0.8},{0.8, 0.8}}
    miniRadar.selection_box = {{-1.0, -1.0},{1.0, 1.0}}
    miniRadar.pictures = {
        layers = {
            {
            apply_projection = false,
            direction_count = 64,
            filename = "__base__/graphics/entity/radar/radar.png",
            height = 128,
            hr_version = {
                apply_projection = false,
                direction_count = 64,
                filename = "__base__/graphics/entity/radar/hr-radar.png",
                height = 254,
                line_length = 8,
                priority = "low",
                scale = 0.25,
                shift = {
                0.03125,
                -0.25
                },
                width = 196
            },
            line_length = 8,
            priority = "low",
            scale = 0.5,
            shift = {
                0.03125,
                -0.25
            },
            width = 98
            },
            {
            apply_projection = false,
            direction_count = 64,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/radar/radar-shadow.png",
            height = 94,
            hr_version = {
                apply_projection = false,
                direction_count = 64,
                draw_as_shadow = true,
                filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
                height = 186,
                line_length = 8,
                priority = "low",
                scale = 0.25,
                shift = {
                0.69,
                0.089
                },
                width = 343
            },
            line_length = 8,
            priority = "low",
            scale = 0.5,
            shift = {
                0.79,
                0.089
            },
            width = 172
            }
        }
    }
    miniRadar.integration_patch = {
        direction_count = 1,
        filename = "__base__/graphics/entity/radar/radar-integration.png",
        height = 108,
        hr_version = {
            direction_count = 1,
            filename = "__base__/graphics/entity/radar/hr-radar-integration.png",
            height = 216,
            priority = "low",
            scale = 0.25,
            shift = {
            0.046875,
            0.125
            },
            width = 238
        },
        priority = "low",
        scale = 0.5,
        shift = {
            0.046875,
            0.125
        },
        width = 119
    }

local miniRadarItem = table.deepcopy(data.raw.item["radar"])
    miniRadarItem.name = "zmini-radar"
    miniRadarItem.icon = "__ZFixes__/Graphics/Icons/mini-radar.png"
    miniRadarItem.icon_size = 64
    miniRadarItem.icon_mipmaps = 0
    miniRadarItem.place_result = "zmini-radar"

local miniRadarRecipe = table.deepcopy(data.raw.recipe["radar"])
    miniRadarRecipe.name = "zmini-radar"
    miniRadarRecipe.enabled = true
    miniRadarRecipe.icon = "__ZFixes__/Graphics/Icons/mini-radar.png"
    miniRadarRecipe.icon_size = 64
    miniRadarRecipe.icon_mipmaps = 0
    miniRadarRecipe.ingredients = {
    {"electronic-circuit", 3},
    {"iron-gear-wheel", 3},
    {"iron-plate", 5}
    }
    miniRadarRecipe.result = "zmini-radar"

data:extend{
    miniRadar,
    miniRadarRecipe,
    miniRadarItem
}