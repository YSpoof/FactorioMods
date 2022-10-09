--[[ Copyright (c) Endus322 ]]

table.insert(data.raw.technology["battery-mk2-equipment"].effects, {type = "unlock-recipe", recipe = "zbattery-pack" })

data:extend{
    {
        type = "item",
        name = "zbattery-pack",
        icon = "__ZFixes__/Graphics/Item/battery-pack.png",
        icon_size = 64,
        placed_as_equipment_result = "zbattery-pack",
        subgroup = "equipment",
        order = "c[battery]-b[battery-equipment]",
        stack_size = 5
    },
    {
        type = "battery-equipment",
        name = "zbattery-pack",
        sprite = {
        filename = "__ZFixes__/Graphics/Item/battery-pack.png",
        width = 64,
        height = 64,
        priority = "medium"
        },
        shape = {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "600MJ",
            usage_priority = "tertiary"
        },
        categories = {"armor"}
    },
    {
        type = "recipe",
        name = "zbattery-pack",
        energy_required = 20,
        enabled = false,
        ingredients = {
        {"battery-mk2-equipment", 4},
        {"low-density-structure", 10},
        },
        result = "zbattery-pack"
    }
}