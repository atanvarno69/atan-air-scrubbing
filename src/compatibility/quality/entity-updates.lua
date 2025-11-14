if not mods["quality"] and not mods["quality-se"] then
    return
end

data.raw["furnace"]["atan-air-scrubber"].placeable_by = { item = "atan-air-scrubber", count = 1, quality = "normal" }

for name, quality in pairs(data.raw["quality"]) do
    if name ~= "quality-unknown" then
        local air_scrubber = table.deepcopy(data.raw["furnace"]["atan-air-scrubber"])
        local modifier = 1 + (quality.level * 0.3)
        air_scrubber.name = name .. "-" .. air_scrubber.name
        air_scrubber.crafting_speed = 1 / modifier
        for key, value in pairs(air_scrubber.energy_source.emissions_per_minute) do
            air_scrubber.energy_source.emissions_per_minute[key] = value * modifier
        end
        air_scrubber.placeable_by = { item = "atan-air-scrubber", count = 1, quality = name }
        air_scrubber.hidden = true
        data.extend({ air_scrubber })
    end
end
