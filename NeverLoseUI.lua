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

GuiLibrary["RemoveObject"]("AutoClickerOptionsButton")
runcode(function()
	local oldenable
	local olddisable
	local blockplacetable = {}
	local blockplaceenabled = false
	local autoclickercps = {["GetRandomValue"] = function() return 1 end}
	local autoclicker = {["Enabled"] = false}
	local autoclickertick = tick()
	local autoclickerautoblock = {["Enabled"] = false}
	local autoclickerblocks = {["Enabled"] = false}
	local autoclickermousedown = false
	local autoclickerconnection1
	local autoclickerconnection2
	local firstclick = false
	autoclicker = GuiLibrary["ObjectsThatCanBeSaved"]["CombatWindow"]["Api"].CreateOptionsButton({
		["Name"] = "AutoClicker",
		["Function"] = function(callback)
			if callback then
				autoclickerconnection1 = uis.InputBegan:connect(function(input, gameProcessed)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						autoclickermousedown = true
						firstclick = true
					end
				end)
				autoclickerconnection2 = uis.InputEnded:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						autoclickermousedown = false
					end
				end)
				BindToRenderStep("AutoClicker", 1, function() 
			
					if isAlive() and autoclickermousedown and autoclickertick <= tick() and GuiLibrary["MainGui"].ScaledGui.ClickGui.Visible == false then
						autoclickertick = tick() + (1 / autoclickercps["GetRandomValue"]())
						if skywars["HotbarController"]:getHeldItemInfo() and skywars["HotbarController"]:getHeldItemInfo().Melee then
							skywars["MeleeController"]:strike({
								UserInputType = Enum.UserInputType.MouseButton1
							})
						end
					end
				end)
			else
				oldenable = nil
				olddisable = nil
				if autoclickerconnection1 then
					autoclickerconnection1:Disconnect()
				end
				if autoclickerconnection2 then
					autoclickerconnection2:Disconnect()
				end
				UnbindFromRenderStep("AutoClicker")
			end
		end,
		["HoverText"] = "Hold attack button to automatically click"
	})
	autoclickercps = autoclicker.CreateTwoSlider({
		["Name"] = "CPS",
		["Min"] = 1,
		["Max"] = 20,
		["Function"] = function(val) end,
		["Default"] = 8,
		["Default2"] = 12
	})
end)

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
