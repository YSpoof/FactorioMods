local scfg = settings.startup
local req = require

-- Vanilla --


-- BlueCircuit

if scfg["ZFixes-Blue-Circuit"].value then
req("Fixes/Vanilla/BlueCircuit")
end


-- Electric Engine Unit

if scfg["ZFixes-ElectricEngine"].value then
req("Fixes/Vanilla/Electirc-Engine-Unit")
end


-- LandFill Cheaper

if scfg["ZFixes-LandFill"].value then
req("Fixes/Vanilla/LandFill")
end


-- Plastic Stack

req("Fixes/Vanilla/Plastic")


-- Linked Chest

if scfg["ZFixes-LinkedChest"].value then
req("Fixes/Vanilla/LinkedChest")
end


-- Beacons

if scfg["ZFixes-Beacons"].value then 
req("Fixes/Vanilla/Beacons")
end


-- Steel-Plate

if scfg["ZFixes-Steel-Plate"].value then
req("Fixes/Vanilla/Steel-Plate")
end


-- Logistic Contrast

req("Fixes/Vanilla/LogisticContrast")


-- Chests Recipes

if scfg["ZFixes-ChestsRecipes"].value then
req("Fixes/Vanilla/ChestsRecipes")
end


-- Smaller Logistic Delivery Icon

req("Fixes/Vanilla/SmallLogisticDelivery")

-- End Vanilla --

-- Mods --


-- Bob's Assembly

if scfg["ZFixes-Bob-Assembly"].value then
req("Fixes/Mods/BobAssembly")

end


-- Bob's Warfare

if scfg["ZFixes-Bob-Warfare"].value then
req("Fixes/Mods/BobWarfare")
end


-- Bob's Greenhouse

if scfg["ZFixes-Bob-Greenhouse"].value then
req("Fixes/Mods/BobGreenHouse")
end


-- Bob's Mining

if scfg["ZFixes-Bob-Mining"].value then
req("Fixes/Mods/BobMining")
end


-- K2 Wireless Charger

if scfg["ZFixes-K2WirelessCharger"].value then
req("Fixes/Mods/K2_WirelessCharger")
end


-- ShockTurret

if scfg["ZFixes-ShockTurret"].value then
req("Fixes/Mods/ShockTurret")
end


-- End Mods --


-- Extras


-- Coocked Fish Thanks to asher_sky 

if scfg["ZFixes-CookedFish"].value then
req("Fixes/Extras/CookedFish")
end


-- EarlyGrid

if scfg["ZFixes-EarlyGrid"].value then
req("Fixes/Extras/EarlyGrid")
end


-- Upgraded Roboports Thanks to Optera

if scfg["ZFixes-UpgradedRoboports"].value then
req("Fixes/Extras/UpgradedRoboports")
end


-- Personal BatteryPack Thanks to Endus322

if scfg["ZFixes-Personal-BatteryPack"].value then
req("Fixes/Extras/BatteryPack")
end

-- Power Poles Fixes Thanks to PiggyWhiskey

if scfg["ZFixes-PowerPoles"].value then
req("Fixes/Extras/PowerPoles")
end


-- NightVision Equipment 1x1

if scfg["ZFixes-NVE"].value then
req("Fixes/Extras/NightVisionEquipment")
end


-- Wood2Coal

if scfg["ZFixes-Coal-Recipe"].value then
req("Fixes/Extras/Wood2Coal")
end


-- Darker Night

if scfg["ZFixes-DarkerNight"].value then
req("Fixes/Extras/DarkerNight")
end


-- Reduce Damage Red Thanks to perfectwill


if scfg["ZFixes-LessRed"].value then
req("Fixes/Extras/LessRed")
end


-- Corpse Time

req("Fixes/Vanilla/Corpse")


-- Solar Improvements ( Also improves Accumulators )

if scfg["ZFixes-SolarImprovments"].value then
req("Fixes/Extras/SolarImprovments")
end


-- Finite Oil

if scfg["ZFixes-FiniteOil"].value then
data.raw.resource["crude-oil"].infinite = false
data.raw.resource["crude-oil"].minimum = 60
data.raw.resource["crude-oil"].normal = 6000
data.raw.resource["crude-oil"].additional_richness = 2200
end


-- Realist Heat-Pipe Heat Glow Thanks to max2344

req("Fixes/Extras/HeatGlow")


-- Wooden Floor

req("Fixes/Extras/WoodenFloor")

-- End Extras --
