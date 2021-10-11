if mods["aai-industry"] then
-- DO NOTHING, SINCE I TRIED BUT I HAD NO LUCKY, IF YOU CAN MAKE IT WORK , REPORT TO ME SO I CAN ADD YOUR CODE
-- AND CREDIT YOU FOR THAT, THANK U SO MUCH!
else
data.raw["recipe"]["electric-engine-unit"].category = "crafting"
data.raw["recipe"]["electric-engine-unit"].ingredients = {
          {
            "advanced-circuit",
            2
          },
          {
            "engine-unit",
            1
          },
          {
            "plastic-bar",
            2
          },
          {
            "copper-cable",
            50
          },
}
end