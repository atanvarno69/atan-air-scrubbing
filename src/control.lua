--- @param data EventData
local function on_build(data)
    local entity = data.entity --[[@as LuaEntity]]
    if entity.quality.level == 0 then
        return
    end
    local surface = entity.surface
    local info = {
        name = entity.quality.name .. "-" .. entity.name,
        position = entity.position,
        quality = entity.quality,
        force = entity.force,
        fast_replace = true,
        player = entity.last_user,
    }
    entity.destroy()
    surface.create_entity(info)
end

local filter = { filter = "name", name = "atan-air-scrubber" }

script.on_event(defines.events.on_built_entity, on_build, { filter })
script.on_event(defines.events.on_robot_built_entity, on_build, { filter })
