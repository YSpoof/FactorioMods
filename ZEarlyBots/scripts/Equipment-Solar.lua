-- Solar Stuff

local Equipment = table.deepcopy(data.raw["solar-panel-equipment"]["solar-panel-equipment"])
Equipment.name = "early-solar-panel-equipment"
Equipment.take_result = "early-solar-panel-equipment"
Equipment.power = "12kW"
Equipment.icon = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-solar-panel-equipment.png"
Equipment.icon_size = 32
Equipment.sprite.filename = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-solar-panel-equipment.png"
Equipment.sprite.size = 32

local Item = table.deepcopy(data.raw["item"]["solar-panel-equipment"])
Item.name = "early-solar-panel-equipment"
Item.placed_as_equipment_result = "early-solar-panel-equipment"
Item.icon = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-solar-panel-equipment.png"
Item.icon_size = 32

local Recipe = table.deepcopy(data.raw["recipe"]["solar-panel-equipment"])
Recipe.enabled = true
Recipe.result = "early-solar-panel-equipment"
Recipe.name = "early-solar-panel-equipment"
Recipe.ingredients = {{"electronic-circuit", 1},{"small-lamp", 5},{"copper-cable", 2}}

data:extend{Equipment, Item, Recipe}