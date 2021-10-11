local drr = data.raw["recipe"]

drr["processing-unit"].normal.energy_required = 5
drr["processing-unit"].normal.ingredients = {
          {
            "electronic-circuit",
            3
          },
          {
            "advanced-circuit",
            2
          },
          {
            amount = 10,
            name = "sulfuric-acid",
            type = "fluid"
          }
}