local pollution = { property = "pressure", min = 1000, max = 1000 }
local spores = { property = "pressure", min = 2000, max = 2000 }

for _, planet in pairs(data.raw["planet"]) do
    if planet.pollutant_type and planet.pollutant_type == "pollution" then
        if planet.surface_properties["pressure"] and planet.surface_properties["pressure"] > pollution.max then
            pollution.max = planet.surface_properties["pressure"]
        end
        if planet.surface_properties["pressure"] and planet.surface_properties["pressure"] < pollution.min then
            pollution.min = planet.surface_properties["pressure"]
        end
    elseif planet.pollutant_type and planet.pollutant_type == "spores" then
        if planet.surface_properties["pressure"] and planet.surface_properties["pressure"] > spores.max then
            spores.max = planet.surface_properties["pressure"]
        end
        if planet.surface_properties["pressure"] and planet.surface_properties["pressure"] < spores.min then
            spores.min = planet.surface_properties["pressure"]
        end
    end
end

if pollution.min < 1 then
    pollution.min = 1
end
if spores.min < 1 then
    spores.min = 1
end

data.raw["recipe"]["atan-pollution-scrubbing"].surface_conditions = { pollution }
data.raw["recipe"]["atan-spore-scrubbing"].surface_conditions = { spores }
