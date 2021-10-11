local bool = "bool-setting"
local int = "int-setting"
local start = "startup"
local rglobal = "runtime-global"
data:extend({
    {
        type = bool,
        name = "ZFixes-Bob-Warfare",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Bob-Greenhouse",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Bob-Assembly",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Coal-Recipe",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Steam-Furnace",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Super-QOL",
        setting_type = rglobal,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Blue-Circuit",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Bob-Mining",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-EarlyGrid",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-ElectricEngine",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-LandFill",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Personal-BatteryPack",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-CookedFish",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-UpgradedRoboports",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-PowerPoles",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-LinkedChest",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Beacons",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-Steel-Plate",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-NVE",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-K2WirelessCharger",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-DarkerNight",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-LessRed",
        setting_type = start,
        default_value = true
    },
    {
        type = int,
        name = "ZFixes-Corpse",
        setting_type = start,
        default_value = 30,
        minimum_value = 1
    },
    {
        type = bool,
        name = "ZFixes-SolarImprovments",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-FiniteOil",
        setting_type = start,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-ShockTurret",
        setting_type = start,
        default_value = true
    },
    {
        type = int,
        name = "ZFixes-Respawn",
        setting_type = rglobal,
        default_value = 5,
        minimum_value = 1
    },
    {
        type = bool,
        name = "ZFixes-CarStart",
        setting_type = rglobal,
        default_value = true
    },
    {
        type = bool,
        name = "ZFixes-SpiderStart",
        setting_type = rglobal,
        default_value = false
    },
    {
        type = "double-setting",
        name = "ZFixes-CharSpeed",
        setting_type = rglobal,
        default_value = 1.5,
        minimum_value = 1
    },
    {
        type = bool,
        name = "ZFixes-ChestsRecipes",
        setting_type = start,
        default_value = true
    },
})
