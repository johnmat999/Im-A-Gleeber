local calcite_bacteria_recipe = {
    type = "recipe",
    name = "sgu_calcite-bacteria",
    icon = "__simple-gleba-calcite__/graphics/icons/calcite-bacteria.png",
    category = "organic-or-hand-crafting",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
    subgroup = "agriculture-processes",
    order = "e[bacteria]-a[bacteria]-b[calcite]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "jelly", amount = 3},
    },
    results =
    {
      {type = "item", name = "sgu_calcite-bacteria", amount = 1, probability = 0.01 },
      {type = "item", name = "spoilage", amount = 1}
    },
    main_product = "sgu_calcite-bacteria",
    crafting_machine_tint =
    {
      primary = {r = 60, g = 171, b = 56},
      secondary = {r = 195, g = 245, b = 193},
    }
}

local calcite_bacteria_cultivation_recipe = {
    type = "recipe",
    name = "sgu_calcite-bacteria-cultivation",
    icon = "__simple-gleba-calcite__/graphics/icons/calcite-bacteria-cultivation.png",
    category = "organic",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-b[calcite]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "sgu_calcite-bacteria", amount = 1},
      {type = "item", name = "bioflux", amount = 1}
    },
    results =
    {
      {type = "item", name = "sgu_calcite-bacteria", amount = 4}
    },
    crafting_machine_tint =
    {
      primary = {r = 60, g = 171, b = 56},
      secondary = {r = 195, g = 245, b = 193},
    },
    show_amount_in_title = false
}

data:extend { calcite_bacteria_recipe, calcite_bacteria_cultivation_recipe }
