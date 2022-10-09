local dra = data.raw.armor
data:extend({
    {
        type = "equipment-grid",
        name = "ZFixes-Grid-Light",
        width = 4,
        height = 2,
        equipment_categories = {"armor"}
    },
    {
        type = "equipment-grid",
        name = "ZFixes-Grid-Heavy",
        width = 4,
        height = 4,
        equipment_categories = {"armor"}
    },
})

dra["light-armor"].equipment_grid = "ZFixes-Grid-Light"
dra["heavy-armor"].equipment_grid = "ZFixes-Grid-Heavy"
