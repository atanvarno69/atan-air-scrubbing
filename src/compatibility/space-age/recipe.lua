if not mods["space-age"] then
    return
end

data.raw["recipe"]["atan-pollution-filter"].category = "organic-or-assembling"
data.raw["recipe"]["atan-pollution-filter"].ingredients[1].name = "carbon"
data.raw["recipe"]["atan-pollution-filter-cleaning"].category = "organic-or-chemistry"

data.raw["recipe"]["atan-air-scrubber"].surface_conditions = {
    { property = "pressure", min = 1 },
}
data:extend({
    {
        type = "recipe",
        name = "atan-spore-filter",
        category = "organic-or-assembling",
        enabled = false,
        energy_required = 2,
        ingredients = {
            { type = "item", name = "carbon", amount = 2 },
            { type = "item", name = "steel-plate", amount = 1 },
            { type = "item", name = "plastic-bar", amount = 1 },
        },
        results = {
            { type = "item", name = "atan-spore-filter", amount = 1 },
        },
    },
    {
        type = "recipe",
        name = "atan-spore-filter-cleaning",
        category = "organic-or-chemistry",
        enabled = false,
        icons = {
            { icon = "__atan-air-scrubbing__/graphics/icons/used-spore-filter.png" },
            { icon = "__base__/graphics/icons/fluid/water.png", scale = 0.25, shift = { -6, -6 } },
        },
        energy_required = 20,
        ingredients = {
            { type = "item", name = "atan-used-spore-filter", amount = 10 },
            { type = "fluid", name = "water", amount = 300 },
        },
        results = {
            {
                type = "item",
                name = "atan-spore-filter",
                amount_min = 8,
                amount_max = 10,
                ignored_by_productivity = 10,
            },
            {
                type = "item",
                name = "spoilage",
                amount_min = 0,
                amount_max = 3,
                probability = 0.1,
            },
        },
        main_product = "atan-spore-filter",
        allow_quality = false,
    },
    {
        type = "recipe",
        name = "atan-spore-scrubbing",
        category = "atmospheric-filtration",
        enabled = false,
        icons = {
            { icon = "__space-age__/graphics/icons/gleba.png", draw_background = true },
            {
                icon = "__atan-air-scrubbing__/graphics/icons/air-scrubber.png",
                draw_background = true,
                scale = 0.4,
                shift = { 2, 6 },
            },
        },
        energy_required = 60,
        ingredients = {
            { type = "item", name = "atan-spore-filter", amount = 1 },
        },
        results = {
            { type = "item", name = "atan-used-spore-filter", amount = 1 },
        },
        main_product = "atan-used-spore-filter",
        allow_productivity = false,
        allow_quality = false,
    },
})
