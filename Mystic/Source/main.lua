-- MYSTIC UNIVERSAL MADE BY YOURS TRUELY

--[[

	Mystic

  people who contributed
	sonotclose | Programming

why is it only me :<
]]







local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local snc = {
    TextColor = Color3.fromRGB(220, 240, 255),
    Background = Color3.fromRGB(15, 25, 35),
    Topbar = Color3.fromRGB(20, 40, 60),
    Shadow = Color3.fromRGB(10, 20, 30),
    NotificationBackground = Color3.fromRGB(20, 40, 60),
    NotificationActionsBackground = Color3.fromRGB(200, 230, 255),
    TabBackground = Color3.fromRGB(40, 80, 100),
    TabStroke = Color3.fromRGB(45, 90, 110),
    TabBackgroundSelected = Color3.fromRGB(180, 220, 240),
    TabTextColor = Color3.fromRGB(220, 240, 255),
    SelectedTabTextColor = Color3.fromRGB(30, 60, 80),
    ElementBackground = Color3.fromRGB(25, 50, 70),
    ElementBackgroundHover = Color3.fromRGB(30, 60, 80),
    SecondaryElementBackground = Color3.fromRGB(20, 40, 60),
    ElementStroke = Color3.fromRGB(40, 80, 100),
    SecondaryElementStroke = Color3.fromRGB(30, 60, 80),
    SliderBackground = Color3.fromRGB(0, 170, 200),
    SliderProgress = Color3.fromRGB(0, 170, 200),
    SliderStroke = Color3.fromRGB(0, 190, 220),
    ToggleBackground = Color3.fromRGB(20, 40, 60),
    ToggleEnabled = Color3.fromRGB(0, 170, 200),
    ToggleDisabled = Color3.fromRGB(100, 100, 100),
    ToggleEnabledStroke = Color3.fromRGB(0, 190, 220),
    ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
    ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
    ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),
    DropdownSelected = Color3.fromRGB(30, 60, 80),
    DropdownUnselected = Color3.fromRGB(20, 40, 60),
    InputBackground = Color3.fromRGB(20, 40, 60),
    InputStroke = Color3.fromRGB(65, 65, 65),
    PlaceholderColor = Color3.fromRGB(178, 200, 220)
}

local Window = Rayfield:CreateWindow({
    Name = "Mystic",
    Icon = 0,
    LoadingTitle = "mystic universlal",
    LoadingSubtitle = "made by sonotclose",
    ShowText = "",
    Theme = snc,
    ToggleUIKeybind = Enum.KeyCode.Insert,
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "mysticontop"
    },
    Discord = {
        Enabled = true,
        Invite = "https://discord.gg/SqxnfjjwgC",
        RememberJoins = false
    },
    KeySystem = true,
    KeySettings = {
        Title = "Key System",
        Subtitle = "Mystic Key System",
        Note = "Key can be found in the discord under sub annoucements",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"9X4F2-KL7P8-QW3Z9-MN6T5"} -- can be found here for smart people or in my discord
    }
})

-- ray tabs
local mt = Window:CreateTab("Main", "sticky-note") -- maintab
local plr = Window:CreateTab("Player", "user-cog")
local fun = Window:CreateTab("Fun", "smile")
local saf = Window:CreateTab("Safety", "shield-check")
local ex = Window:CreateTab("Experimental", "flask-conical")
local op = Window:CreateTab("Overpowered", "crown")
local msc = Window:CreateTab("Misc", "cog")

-- im working on all the code now in visual studio code ilkl import it soon
