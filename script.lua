local ScriptGUI = Instance.new("ScreenGui")
local Sound = Instance.new("Sound")
local PasswordFrame = Instance.new("Frame")
local PasswordFrame_2 = Instance.new("Frame")
local HiText = Instance.new("TextLabel") 

ScriptGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Sound.Parent = ScriptGUI
Sound.SoundId = "rbxassetid://1673280232"

local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

PasswordFrame.Parent = ScriptGUI
PasswordFrame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
PasswordFrame.Position = UDim2.new(0.384, 0, -1, 0)  
PasswordFrame.Size = UDim2.new(0, 285, 0, 363)
PasswordFrame.ZIndex = 1
UICorner.Parent = PasswordFrame

PasswordFrame_2.Parent = PasswordFrame
PasswordFrame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PasswordFrame_2.Position = UDim2.new(0, 0, 0.975206614, 0)
PasswordFrame_2.Size = UDim2.new(0, 285, 0, 22)
PasswordFrame_2.ZIndex = 0
UICorner_2.Parent = PasswordFrame_2

PlayId = game.Players.LocalPlayer.DisplayName

HiText.Parent = PasswordFrame
HiText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HiText.BackgroundTransparency = 1.000
HiText.Position = UDim2.new(0.147368416, 0, 0.05785124, 0)
HiText.Size = UDim2.new(0, 200, 0, 50)
HiText.Font = Enum.Font.SourceSansBold
HiText.Text = "HI, " .. PlayId 
HiText.TextColor3 = Color3.fromRGB(153, 153, 153)
HiText.TextScaled = true
HiText.TextSize = 14.000
HiText.TextWrapped = true

PasswordFrame:TweenPosition(
	UDim2.new(0.384, 0, 0.205457464, 0)
)

