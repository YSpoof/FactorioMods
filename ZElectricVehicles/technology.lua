data:extend{
    {
		type = "technology",
		name = "zelectric-transformer",
		icon = "__ZElectricVehicles__/Graphics/Icons/Transformer.png",
		icon_size = 128,
		prerequisites = {"advanced-electronics-2", "battery-equipment", "electric-engine"},
		effects = 
		{
		  { type = "unlock-recipe", recipe = "zelectric-transformer" },
		},
		unit = { count = 200, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1} }, time = 30 },
		order = "g-i-a"
	},
}
