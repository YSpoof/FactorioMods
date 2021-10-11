local Chassi = table.deepcopy(data.raw["item"]["flying-robot-frame"])

Chassi.name = "early-flying-robot-frame"
Chassi.icon = "__ZEarlyBots__/Graphics/Icons/robots/early-flying-robot-frame.png"

local Recipe = table.deepcopy(data.raw["recipe"]["flying-robot-frame"])
Recipe.enabled = true
Recipe.name = "early-flying-robot-frame"
Recipe.ingredients = {{"electronic-circuit", 1}, {"iron-gear-wheel", 5}, {"copper-plate", 2}, {"wood", 4}}
Recipe.result = "early-flying-robot-frame"

data:extend{Chassi, Recipe}