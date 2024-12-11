if not mods["space-age"] then
    return
end

data:extend({
    {
        type = "technology",
        name = "atan-spore-scrubbing",
        icon = "__atan-air-scrubbing__/graphics/technology/air-scrubbing.png",
        icon_size = 256,
        prerequisites = { "agricultural-science-pack" },
        unit = {
            count = 250,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "agricultural-science-pack", 1 },
            },
        },
        effects = {
            { type = "unlock-recipe", recipe = "atan-spore-scrubbing" },
            { type = "unlock-recipe", recipe = "atan-spore-filter" },
            { type = "unlock-recipe", recipe = "atan-spore-filter-cleaning" },
        },
    },
})
