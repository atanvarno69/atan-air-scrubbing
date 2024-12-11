if not mods["space-age"] then
    return
end

data.raw["furnace"]["atan-air-scrubber"].heating_energy = "100kW"
data.raw["furnace"]["atan-air-scrubber"].energy_source.emissions_per_minute["spores"] = -40
data.raw["furnace"]["atan-air-scrubber"].graphics_set.reset_animation_when_frozen = true
