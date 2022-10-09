local dr = data.raw
dr["linked-container"]["linked-chest"].gui_mode = "all"
dr["linked-container"]["linked-chest"].inventory_size = 19
dr["item"]["linked-chest"].flags = {}
dr["item"]["linked-chest"].subgroup = "logistic-network"
dr["item"]["linked-chest"].order = "b[linked-chest]-c[logistic-chest-active-provider]"
data:extend({
    {
        type= "recipe",
        name = "zlinkedchest",
        category = "crafting",
        ingredients = {
            {type = "item", name = "steel-chest", amount = 4},
            {type = "item", name = "logistic-chest-passive-provider", amount = 1},
            {type = "item", name = "logistic-chest-requester", amount = 1}
        },
        results = {{type = "item", name = "linked-chest", amount = 1}},
        enabled = "false",
        energy_required = 2,
        subgroup = "logistic-network",
        order = "b[linked-chest]-c[logistic-chest-active-provider]",
        crafting_machine_tint = {
            primary = {r = 0.000, g = 0.000, b = 0.000, a = 0.000},
            secondary = {r = 0.000, g = 0.000, b = 0.000, a = 0.000},
            tertiary = {r = 0.000, g = 0.000, b = 0.000, a = 0.000}
        }
    },
    {
        type = "technology",
        name = "linkedchest",
        icon = "__ZFixes__/Graphics/Technology/linked-chest.png",
        icon_size = 53,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "zlinkedchest"
            }
        },
        prerequisites = {
            "logistic-robotics", "chemical-science-pack", "logistic-science-pack"	
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
				{"chemical-science-pack", 1}
            },
            time = 50
		},
	 	order = "d-j"
    },
})
