data:extend{
    {
        type = "technology",
        name = "ZEarlyBots-EarlyLogistics",
        icon = "__ZEarlyBots__/Graphics/Technology/early-logistic-bots.png",
        icon_size = 128,
        prerequisites = {"steel-processing", "logistic-science-pack", "automation", "electronics"},
        effects = 
        {
          { type = "unlock-recipe", recipe = "early-logistic-bot" },
          { type = "unlock-recipe", recipe = "early-roboport" },
        },
        unit = { count = 125, ingredients = { {"automation-science-pack", 1}, {"logistic-science-pack", 1}}, time = 30 },
        order = "g-i-a"
    },
}
