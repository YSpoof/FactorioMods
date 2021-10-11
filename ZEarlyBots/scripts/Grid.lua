if not mods["ZFixes"] then

local dra = data.raw.armor

data:extend({
{
type = "equipment-grid",
name = "ZEarlyBots-Grid-Light",
width = 4,
height = 2,
equipment_categories = {"armor"}
},
{
type = "equipment-grid",
name = "ZEarlyBots-Grid-Heavy",
width = 4,
height = 4,
equipment_categories = {"armor"}
},
})

dra["light-armor"].equipment_grid = "ZEarlyBots-Grid-Light"
dra["heavy-armor"].equipment_grid = "ZEarlyBots-Grid-Heavy"

end