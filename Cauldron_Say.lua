-- Registers events for new recipe attribute "say".
Cauldron_RegisterEvent("RECIPE_ENABLE", function(_, recipe)
    if not recipe["say"] then
        return
    end

    -- Call Blizzard API to send message
    SendChatMessage(recipe["say"], "SAY")
end)

Cauldron_RegisterEvent("RECIPE_DISABLE", function(_, recipe)
    if not recipe["say"] then
        return
    end

    SendChatMessage("I'm disabled :(")
end)
