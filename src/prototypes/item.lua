local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "atan-air-scrubber",
        subgroup = "smelting-machine",
        order = "f[air-scrubber]",
        icon = "__atan-air-scrubbing__/graphics/icons/air-scrubber.png",
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = "atan-air-scrubber",
        stack_size = 50,
        weight = 20 * kg,
    },
    {
        type = "item",
        name = "atan-pollution-filter",
        subgroup = "atan-filters",
        order = "a[air-filter]",
        icon = "__atan-air-scrubbing__/graphics/icons/pollution-filter.png",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 50,
        weight = 10 * kg,
    },
    {
        type = "item",
        name = "atan-used-pollution-filter",
        subgroup = "atan-filters",
        order = "b[used-air-filter]",
        icon = "__atan-air-scrubbing__/graphics/icons/used-pollution-filter.png",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 50,
        weight = 10 * kg,
    },
})

if not mods["space-age"] then
    return
end

data:extend({
    {
        type = "item",
        name = "atan-spore-filter",
        subgroup = "atan-filters",
        order = "a[air-filter]",
        icon = "__atan-air-scrubbing__/graphics/icons/spore-filter.png",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 50,
        weight = 10 * kg,
    },
    {
        type = "item",
        name = "atan-used-spore-filter",
        subgroup = "atan-filters",
        order = "b[used-air-filter]",
        icon = "__atan-air-scrubbing__/graphics/icons/used-spore-filter.png",
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        stack_size = 50,
        weight = 10 * kg,
    },
})
