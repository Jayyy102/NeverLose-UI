local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/UI-Libraries/main/Neverlose/source.lua"))()
-- Toggle UI: Library:Toggle()

local Window = Library:Window({
    text = "PurpleWare"
})

local TabSection = Window:TabSection({
    text = "Modules"
})

local Tab = TabSection:Tab({
    text = "Combat",
    icon = "rbxassetid://7999345313",
})
--AimAssist
local Section = Tab:Section({
    text = "Aimassist"
    callback = function(boolean)
        print("Toggle current: ",boolean)
    end
})

Section:Toggle({
    text = "Toggle",
    state = false, -- Default boolean
})

Section:Slider({
    text = "Slider",
    min = 0,
    max = 100,
    -- [[Float = 0,]] Idk what it does
    callback = function(number)
        print(number)
    end
})

--[[
    blacklisted keybind:
        Return
        Space
        Tab
        W,A,S,D,I,O
        Unknown
]]

Section:Keybind({
    text = "Keybind",
    default = Enum.KeyCode.Z,
    callback = function(defaultBind)
        print("Triggered keybind")
        print(defaultBind)
    end
})
--AutoClicker
local Section = Tab:Section({
    text = "AutoClicker"
})

--Reach
local Section = Tab:Section({
    text = "Reach"
})

Section:Toggle({
    text = "Toggle",
    state = false, -- Default boolean
    callback = function(boolean)
        print("Toggle current: ",boolean)
    end
})

Section:Slider({
    text = "Slider",
    min = 10,
    max = 100,
    -- [[Float = 0,]] Idk what it does
    callback = function(number)
        print(number)
    end
})

--[[
    blacklisted keybind:
        Return
        Space
        Tab
        W,A,S,D,I,O
        Unknown
]]

Section:Keybind({
    text = "Keybind",
    default = Enum.KeyCode.Z,
    callback = function(defaultBind)
        print("Triggered keybind")
        print(defaultBind)
    end
})

local Tab = TabSection:Tab({
    text = "Blatant",
    icon = "http://www.roblox.com/asset/?id=8273837821",
})

local Section = Tab:Section({
    text = "Reach"
})

Section:Toggle({
    text = "Toggle",
    state = false, -- Default boolean
    callback = function(boolean)
        print("Toggle current: ",boolean)
    end
})
