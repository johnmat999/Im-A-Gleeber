local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

local calcite_bacteria = {
    type = "item",
    name = "sgu_calcite-bacteria",
    icon = "__simple-gleba-calcite__/graphics/icons/calcite-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__simple-gleba-calcite__/graphics/icons/calcite-bacteria.png", scale = 0.5, mipmap_count = 4 },
      { size = 64, filename = "__simple-gleba-calcite__/graphics/icons/calcite-bacteria-2.png", scale = 0.5, mipmap_count = 4 }
    },
    subgroup = "agriculture-processes",
    order = "b[agriculture]-d[copper-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "calcite"
}

data:extend({calcite_bacteria})
