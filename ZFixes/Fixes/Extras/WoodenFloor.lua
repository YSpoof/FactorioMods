--[[ Copyright (c) zanven ]]

data.raw["item"]["wood"].place_as_tile ={
    result = "wood-floor",
    condition_size = 4,
    condition = { "water-tile" }
}

data:extend{{
    type = "tile",
    name = "wood-floor",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.1, result = "wood"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    pollution_absorption_per_second = 0,
    walking_speed_modifier = 1.2,
    layer = 62,
    decorative_removal_probability = 0.4,
    variants =
    {
        main =
        {
        {
            picture = "__ZFixes__/Graphics/Tiles/wood1.png",
            count = 4,
            size = 1
        },
        {
            picture = "__ZFixes__/Graphics/Tiles/wood2.png",
            count = 1,
            size = 2,
            probability = 1,
        },
        },
        inner_corner =
        {
        picture = "__ZFixes__/Graphics/Tiles/wood-inner-corner.png",
        count = 8
        },
        outer_corner =
        {
        picture = "__ZFixes__/Graphics/Tiles/wood-outer-corner.png",
        count = 8
        },
        side =
        {
        picture = "__ZFixes__/Graphics/Tiles/wood-side.png",
        count = 8
        },
        u_transition =
        {
        picture = "__ZFixes__/Graphics/Tiles/wood-u.png",
        count = 8
        },
        o_transition =
        {
        picture = "__ZFixes__/Graphics/Tiles/wood-o.png",
        count = 1
        }
    },
    walking_sound =
    {
        {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
        },
        {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
        }
    },
    map_color={r=139, g=115, b=85},
    ageing=0,
    vehicle_friction_modifier = dirt_vehicle_speed_modifer
}}
