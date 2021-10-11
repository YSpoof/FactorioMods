local Equipment = table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-equipment"])

Equipment.name = "early-personal-roboport-equipment"
Equipment.charging_distance = 0.3000000000000001
Equipment.charge_approach_distance = 1.300000000000000
Equipment.charging_energy = "200kW"
Equipment.charging_station_count = 1
Equipment.construction_radius = 10
Equipment.energy_source = {buffer_capacity = "5MJ", input_flow_limit = "1200KW", type = "electric", usage_priority = "secondary-input"}
Equipment.take_result = "early-personal-roboport-equipment"
Equipment.icon = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-personal-roboport-equipment.png"
Equipment.icon_size = 64
Equipment.sprite.filename = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-personal-roboport-equipment.png"
Equipment.sprite.size = 64
Equipment.shape.width = 2
Equipment.shape.height = 1
Equipment.robot_limit = 5

local Item = table.deepcopy(data.raw["item"]["personal-roboport-equipment"])

Item.name = "early-personal-roboport-equipment"
Item.placed_as_equipment_result = "early-personal-roboport-equipment"
Item.icon = "__ZEarlyBots__/Graphics/Icons/personal-equipment/early-personal-roboport-equipment.png"
Item.icon_size = 64

local Recipe = table.deepcopy(data.raw["recipe"]["personal-roboport-equipment"])
Recipe.enabled = true
Recipe.name = "early-personal-roboport-equipment"
Recipe.ingredients = {{"electronic-circuit", 5},{"iron-gear-wheel", 10}}
Recipe.result = "early-personal-roboport-equipment"


data:extend{Equipment, Item, Recipe}