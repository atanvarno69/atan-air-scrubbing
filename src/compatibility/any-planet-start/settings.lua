if mods["any-planet-start"] then
    return
end

data:extend({
    {
        type = "string-setting",
        name = "aps-planet",
        setting_type = "startup",
        default_value = "nauvis",
        allowed_values = { "nauvis" },
        hidden = true,
    },
})
