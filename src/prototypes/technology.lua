local technologies = {
    ["pollution-scrubbing"] = {
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
}

if not mods["space-age"] then
    data:extend({ technologies["pollution-scrubbing"] })
    return
end

technologies["spore-scrubbing"] = {
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
}

if settings.startup["aps-planet"].value == "nauvis" then
    technologies["pollution-scrubbing"].prerequisites = { "space-platform", "efficiency-module" }
    table.insert(technologies["spore-scrubbing"].prerequisites, "atan-pollution-scrubbing")
else
    technologies["pollution-scrubbing"].prerequisites = { "planet-discovery-nauvis", "efficiency-module" }
    table.insert(technologies["spore-scrubbing"].effects, { type = "unlock-recipe", recipe = "atan-air-scrubber" })
    table.insert(technologies["spore-scrubbing"].prerequisites, "efficiency-module")
end
if settings.startup["aps-planet"].value == "gleba" then
    table.insert(technologies["pollution-scrubbing"].prerequisites, "atan-spore-scrubbing")
    technologies["pollution-scrubbing"].effects[4] = nil
end

for _, tech in pairs(technologies) do
    data:extend({ tech })
end
