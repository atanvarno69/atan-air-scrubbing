data:extend({
    {
        type = "recipe",
        name = "atan-air-scrubber",
        icon = "__atan-air-scrubbing__/graphics/icons/air-scrubber.png",
        enabled = false,
        energy_required = 2,
        ingredients = {
            { type = "item", name = "iron-gear-wheel", amount = 5 },
            { type = "item", name = "electronic-circuit", amount = 3 },
            { type = "item", name = "steel-plate", amount = 2 },
            { type = "item", name = "efficiency-module", amount = 2 },
        },
        results = {
            { type = "item", name = "atan-air-scrubber", amount = 1 },
        },
        allow_productivity = false,
    },
    {
        type = "recipe",
        name = "atan-pollution-filter",
        category = "crafting",
        enabled = false,
        energy_required = 2,
        ingredients = {
            { type = "item", name = "coal", amount = 2 },
            { type = "item", name = "steel-plate", amount = 1 },
            { type = "item", name = "plastic-bar", amount = 1 },
        },
        results = {
            { type = "item", name = "atan-pollution-filter", amount = 1 },
        },
    },
    {
        type = "recipe",
        name = "atan-pollution-filter-cleaning",
        category = "chemistry",
        enabled = false,
        icons = {
            { icon = "__atan-air-scrubbing__/graphics/icons/used-pollution-filter.png" },
            { icon = "__base__/graphics/icons/fluid/water.png", scale = 0.25, shift = { -6, -6 } },
        },
        energy_required = 20,
        ingredients = {
            { type = "item", name = "atan-used-pollution-filter", amount = 10 },
            { type = "fluid", name = "water", amount = 300 },
        },
        results = {
            {
                type = "item",
                name = "atan-pollution-filter",
                amount_min = 8,
                amount_max = 10,
                ignored_by_productivity = 10,
            },
            {
                type = "item",
                name = "sulfur",
                amount_min = 0,
                amount_max = 3,
                probability = 0.1,
            },
        },
        main_product = "atan-pollution-filter",
        allow_quality = false,
        auto_recycle = false,
    },
    {
        type = "recipe",
        name = "atan-pollution-scrubbing",
        category = "atmospheric-filtration",
        enabled = false,
        icons = {
            { icon = "__base__/graphics/icons/nauvis.png", draw_background = true },
            {
                icon = "__atan-air-scrubbing__/graphics/icons/air-scrubber.png",
                draw_background = true,
                scale = 0.4,
                shift = { 2, 6 },
            },
        },
        energy_required = 60,
        ingredients = {
            { type = "item", name = "atan-pollution-filter", amount = 1 },
        },
        results = {
            { type = "item", name = "atan-used-pollution-filter", amount = 1 },
        },
        main_product = "atan-used-pollution-filter",
        allow_productivity = false,
        allow_quality = false,
        auto_recycle = false,
    },
})
