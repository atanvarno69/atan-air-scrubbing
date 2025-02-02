if not mods["space-age"] then
    return
end

if settings.startup["aps-planet"].value == "none" then
    data.raw["technology"]["atan-pollution-scrubbing"].prerequisites = { "space-platform", "efficiency-module" }
    table.insert(data.raw["technology"]["atan-spore-scrubbing"].prerequisites, "atan-pollution-scrubbing")
else
    data.raw["technology"]["atan-pollution-scrubbing"].prerequisites =
        { "planet-discovery-nauvis", "efficiency-module" }
    table.insert(
        data.raw["technology"]["atan-spore-scrubbing"].effects,
        { type = "unlock-recipe", recipe = "atan-air-scrubber" }
    )
    table.insert(data.raw["technology"]["atan-spore-scrubbing"].prerequisites, "efficiency-module")
end
if settings.startup["aps-planet"].value == "gleba" then
    table.insert(data.raw["technology"]["atan-pollution-scrubbing"].prerequisites, "atan-spore-scrubbing")
    data.raw["technology"]["atan-pollution-scrubbing"].effects[4] = nil
end
