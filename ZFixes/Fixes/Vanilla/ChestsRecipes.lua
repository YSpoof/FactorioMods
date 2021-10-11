local drr = data.raw["recipe"]

drr["wooden-chest"].ingredients = {
          {
            "wood",
            6
          }
}

drr["iron-chest"].ingredients = {
          {
            "wooden-chest",
            1
          },
          {
            "iron-plate",
            6
          }
}

drr["steel-chest"].ingredients = {
          {
            "iron-chest",
            1
          },
          {
            "steel-plate",
            6
          }
}