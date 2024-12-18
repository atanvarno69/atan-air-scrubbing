data:extend({
    {
        type = "technology",
        name = "atan-pollution-scrubbing",
        icon = "__atan-air-scrubbing__/graphics/technology/air-scrubbing.png",
        icon_size = 256,
        prerequisites = { "chemical-science-pack", "efficiency-module" },
        unit = {
            count = 250,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
            },
        },
        effects = {
            { type = "unlock-recipe", recipe = "atan-pollution-scrubbing" },
            { type = "unlock-recipe", recipe = "atan-pollution-filter" },
            { type = "unlock-recipe", recipe = "atan-pollution-filter-cleaning" },
            { type = "unlock-recipe", recipe = "atan-air-scrubber" },
        },
    },
})
