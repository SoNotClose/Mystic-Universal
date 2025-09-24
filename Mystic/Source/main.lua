+-- MYSTIC UNIVERSAL MADE BY YOURS TRUELY

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
    KeySystem = false, -- turned off
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
local plr = Window:CreateTab("Player", "user-cog") -- playertab
local fun = Window:CreateTab("Fun", "smile") -- funtab
local saf = Window:CreateTab("Safety", "shield-check") -- safteytab
local ex = Window:CreateTab("Experimental", "flask-conical") -- experimentaltab
local op = Window:CreateTab("Overpowered", "crown") -- overpoweredtab
local msc = Window:CreateTab("Misc", "cog") -- misctab









-- yes most of the code is reused
-- maintab




-- player tab


local LPlayerSection = plr:CreateSection("Local Player")
local WSSlida = plr:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 250},
   Increment = 0.1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeed",
   Callback = function(Value)
      local RunService = game:GetService("RunService")
      local player = game.Players.LocalPlayer

      RunService.RenderStepped:Connect(function()
         if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = Value
         end
      end)
   end,
})

local JPSlida = plr:CreateSlider({
   Name = "JumpPower",
   Range = {0, 250},
   Increment = 0.1,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPower",
   Callback = function(Value)
      local RunService = game:GetService("RunService")
      local player = game.Players.LocalPlayer

      RunService.RenderStepped:Connect(function()
         if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = Value
         end
      end)
   end,
})

local Sizeslida = plr:CreateSlider({
    Name = "Size Changer",
    Range = {0, 100},
    Increment = 0.1,
    Suffix = "x",
    CurrentValue = 10,
    Flag = "sizeslida",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local LocalPlayer = Players.LocalPlayer

        RunService.RenderStepped:Connect(function()
            local character = LocalPlayer.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:ScaleTo(Value)
                end
            end
        end)
    end,
})


local jumpConnection

local InfJump = plr:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "infjump",
   Callback = function(enabled)
      local UIS = game:GetService("UserInputService")
      local Players = game:GetService("Players")
      local LocalPlayer = Players.LocalPlayer
         
      if enabled then -- ik theres multipel ways of doing this but i wanna try this
         jumpConnection = UIS.JumpRequest:Connect(function()
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
               LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
         end)
      else
         if jumpConnection then
            jumpConnection:Disconnect()
            jumpConnection = nil
         end
      end
   end,
})

local FreezeYaself = plr:CreateToggle({
    Name = "Freeze Yourself",
    CurrentValue = false,
    Flag = "fy",
    Callback = function(Value)
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")

        local player = Players.LocalPlayer
        local locked = Value

        RunService.RenderStepped:Connect(function()
            local character = player.Character
            if character then
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    rootPart.Anchored = locked
                end
            end
        end)
    end,
})


local gblPlayerSection = plr:CreateSection("Global Players")

local ptselectedPlayer = nil

local ptweenSpeed = 2

local tpMode = "Teleport"

local PlayerDropdown = plr:CreateDropdown({
   Name = "Select Player",
   Options = {},
   CurrentOption = {},
   MultipleOptions = false,
   Flag = "plrlistdropdown",
   Callback = function(Options)
      selectedPlayer = Options[1]
   end,
})

local function updatePlayerList()
   local names = {}
   for _, player in ipairs(game.Players:GetPlayers()) do
      table.insert(names, player.Name)
   end
   PlayerDropdown:Refresh(names)
end

updatePlayerList()
game.Players.PlayerAdded:Connect(updatePlayerList)
game.Players.PlayerRemoving:Connect(updatePlayerList)



local ForceUpdatePlrList = plr:CreateButton({
   Name = "Force Update List",
   Callback = function()
      updatePlayerList()
   end,
})


local TPMode = plr:CreateDropdown({
   Name = "TP Mode",
   Options = {"Tween", "Teleport", "CFrame"},
   CurrentOption = {"Teleport"},
   MultipleOptions = false,
   Flag = "tpmode",
   Callback = function(Options)
      tpMode = Options[1]
   end,
})

local playertweenSpeed = 2

local PlayerTweenSpeed = plr:CreateSlider({
   Name = "Tween Speed",
   Range = {1, 10},
   Increment = 0.5,
   Suffix = "s",
   CurrentValue = 2,
   Flag = "playertweenspeed",
   Callback = function(Value)
      ptweenSpeed = Value
   end,
})

local Teleport = plr:CreateButton({
   Name = "Teleport to Player",
   Callback = function()
      local localPlayer = game.Players.LocalPlayer
      local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

      if not (localPlayer and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
         print("Teleport failed invalid target.")
         return
      end

      local targetPos = targetPlayer.Character.HumanoidRootPart.Position
      local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")

      if not hrp then return end

      if tpMode == "Teleport" then
         hrp.Position = targetPos
      elseif tpMode == "CFrame" then
         local targetHRP = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
         local targetCFrame = targetHRP and targetHRP.CFrame
      if targetCFrame then
         hrp.CFrame = CFrame.new(targetCFrame.Position) * CFrame.Angles(0, targetCFrame:ToEulerAnglesYXZ())
      end
      elseif tpMode == "Tween" then
         local TweenService = game:GetService("TweenService")
         local tweenInfo = TweenInfo.new(ptweenSpeed, Enum.EasingStyle.Linear)
         local goal = {CFrame = CFrame.new(targetPos)}
         local tween = TweenService:Create(hrp, tweenInfo, goal)
         tween:Play()
      end
   end,
})
