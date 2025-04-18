local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "furnace",
        name = "atan-air-scrubber",
        icon = "__atan-air-scrubbing__/graphics/icons/air-scrubber.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "atan-air-scrubber" },
        fast_replaceable_group = nil,
        max_health = 350,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        resistances = { { type = "fire", percent = 70 } },
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        damaged_trigger_effect = hit_effects.entity(),
        module_slots = 0,
        allowed_effects = { "consumption", "speed" },
        crafting_categories = { "atmospheric-filtration" },
        crafting_speed = 1,
        source_inventory_size = 1,
        result_inventory_size = 1,
        show_recipe_icon = false,
        show_recipe_icon_on_map = false,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                ["pollution"] = -40,
            },
        },
        energy_usage = "150kW",
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound = {
            apparent_volume = 1,
            idle_sound = { filename = "__base__/sound/idle1.ogg" },
            sound = { filename = "__atan-air-scrubbing__/sounds/air-scrubber.ogg" },
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20,
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__atan-air-scrubbing__/graphics/entity/air-scrubber-shadow.png",
                        priority = "high",
                        size = { 400, 350 },
                        shift = { 0, 0 },
                        scale = 0.5,
                        line_length = 1,
                        repeat_count = 60,
                        draw_as_shadow = true,
                        animation_speed = 0.5,
                    },
                    {
                        filename = "__atan-air-scrubbing__/graphics/entity/air-scrubber-animation.png",
                        size = { 210, 290 },
                        shift = { 0, 0 },
                        scale = 0.5,
                        line_length = 8,
                        frame_count = 60,
                        animation_speed = 0.5,
                    },
                },
            },
        },
    },
})
