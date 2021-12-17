local ScriptGUI = Instance.new("ScreenGui")
local Sound = Instance.new("Sound")
local PasswordFrame = Instance.new("Frame")
local PasswordFrame_2 = Instance.new("Frame")

ScriptGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Sound.Parent = ScriptGUI
Sound.SoundId = "rbxassetid://1673280232"

local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

PasswordFrame.Parent = ScriptGUI
PasswordFrame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
PasswordFrame.Position = UDim2.new(0.442370087, 0, 0.205457464, 0)
PasswordFrame.Size = UDim2.new(0, 285, 0, 363)
PasswordFrame.ZIndex = 1
UICorner.Parent = PasswordFrame

PasswordFrame_2.Parent = PasswordFrame
PasswordFrame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PasswordFrame_2.Position = UDim2.new(0, 0, 0.975206614, 0)
PasswordFrame_2.Size = UDim2.new(0, 285, 0, 22)
PasswordFrame_2.ZIndex = 0
UICorner_2.Parent = PasswordFrame_2

Sound:Play()

