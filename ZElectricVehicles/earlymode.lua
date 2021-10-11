local dr = data.raw

if mods["SchallPrimaryBattery"] then

dr["technology"]["zelectric-transformer"].prerequisites = {"engine"}

dr["technology"]["zelectric-transformer"].unit = { count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1} }, time = 30 }

dr["recipe"]["zelectric-transformer"].ingredients = {
      {type = "item", name = "iron-plate", amount = 50},
      {type = "item", name = "copper-cable", amount = 200},
      {type = "item", name = "engine-unit", amount = 10},
    }

end
