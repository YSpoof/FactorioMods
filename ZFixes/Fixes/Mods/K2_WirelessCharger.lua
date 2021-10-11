if mods["K2_Wireless-Charger"] then
    local dr = data.raw
    local drt = dr.technology

    drt["kr-tesla-coil"].prerequisites = {"modular-armor"}
    drt["kr-tesla-coil"].unit = {count = 100, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1} }, time = 60 }
    drt["kr-tesla-coil-upgrade-mk1"].unit.count = 150
    drt["kr-tesla-coil-upgrade-mk2"].unit.count = 200
    drt["kr-tesla-coil-upgrade-mk3"].unit.count = 350

    dr.recipe["energy-absorber"].ingredients = {{"iron-plate", 6}, {"copper-cable", 200}}
end
