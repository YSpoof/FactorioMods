for _, corpse in pairs(data.raw["corpse"]) do
    corpse.time_before_removed = 60 * settings.startup["ZFixes-Corpse"].value
end