local drr = data.raw.recipe

data:extend(
{
    {
	type= "recipe",
	name = "wood2coal",
	category = "smelting",
        ingredients = {
			{type = "item", name = "wood", amount = 1}
		},
        results = {{type = "item", name = "coal", amount = 1}},
        enabled = "true",
	energy_required = 3,
	subgroup = "fluid-recipes",
    },
})


