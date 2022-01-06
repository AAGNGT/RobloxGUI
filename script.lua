--screenGui
local ScriptGUI = Instance.new("ScreenGui")
local Sound = Instance.new("Sound")

--Password
local PasswordFrame = Instance.new("Frame")
local PasswordFrame_2 = Instance.new("Frame")
local HiText = Instance.new("TextLabel") 
local PassBox = Instance.new("TextBox")
local PassBox_2 = Instance.new("TextBox")
local PassBtn = Instance.new("TextButton")
local exit = Instance.new("TextButton")

--JoinGame
local OPENJoin = Instance.new("TextButton")
local JoinGameFrame = Instance.new("Frame")
local Join_UIGradient = Instance.new("UIGradient")
local Join_UICorner = Instance.new("UICorner")
local JoinText = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")


ScriptGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Sound.Parent = ScriptGUI
Sound.SoundId = "rbxassetid://1673280232"

--OPENBtn
OPENJoin.Parent = ScriptGUI
OPENJoin.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
OPENJoin.BorderSizePixel = 0
OPENJoin.Position = UDim2.new(0, 0, 0.144, 0)
OPENJoin.Size = UDim2.new(0, 276, 0, 18)
OPENJoin.Font = Enum.Font.SourceSans
OPENJoin.Text = "<"
OPENJoin.TextColor3 = Color3.fromRGB(0, 0, 0)
OPENJoin.TextScaled = true
OPENJoin.TextSize = 14.000
OPENJoin.TextWrapped = true
OPENJoin.Visible = false
OPENJoin.MouseButton1Click:connect(function()
	if JoinGameFrame.Position == UDim2.new(0, 0, 0.173, 0) then
		OPENJoin.Text = ">"
		JoinGameFrame:TweenPosition(
			UDim2.new(-1, 0, 0.173, 0),
			"Out",
			"Bounce",
			0.5,
			false
		)
	else
		OPENJoin.Text = "<"
		JoinGameFrame:TweenPosition(
			UDim2.new(0, 0, 0.173, 0),
			"Out",
			"Bounce",
			1,
			false
		)
	end
end)

--JoinGame
JoinGameFrame.Name = "JoinGameFrame"
JoinGameFrame.Parent = ScriptGUI
JoinGameFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JoinGameFrame.Position = UDim2.new(-1, 0, 0.173, 0)
JoinGameFrame.Size = UDim2.new(0, 276, 0, 398)
JoinGameFrame.Visible = false

Join_UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(149, 149, 149)), ColorSequenceKeypoint.new(0.96, Color3.fromRGB(2, 2, 2)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
Join_UIGradient.Parent = JoinGameFrame

Join_UICorner.Parent = JoinGameFrame

--JoinText
JoinText.Name = "JoinText"
JoinText.Parent = JoinGameFrame
JoinText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JoinText.BackgroundTransparency = 1.000
JoinText.Position = UDim2.new(0.115942031, 0, 0.0100502511, 0)
JoinText.Size = UDim2.new(0, 200, 0, 50)
JoinText.Font = Enum.Font.SourceSansBold
JoinText.Text = "Join game is "
JoinText.TextColor3 = Color3.fromRGB(153, 153, 153)
JoinText.TextScaled = true
JoinText.TextSize = 14.000
JoinText.TextWrapped = true

TextLabel.Parent = JoinGameFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.137681156, 0, 0.135678396, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "BedWars"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

--PasswordFRame
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

local UICorner_3 = Instance.new("UICorner")
exit.Name = "exit"
exit.Parent = PasswordFrame
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exit.Position = UDim2.new(0.887719214, 0, 0.0192837454, 0)
exit.Size = UDim2.new(0, 25, 0, 25)
exit.Font = Enum.Font.SourceSans
exit.Text = "x"
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextScaled = true
exit.TextSize = 14.000
exit.TextWrapped = true
exit.MouseButton1Click:connect(function()
	PasswordFrame:TweenPosition(
		UDim2.new(0.384, 0, -1, 0)
	)
	Sound:Play()
	ScriptGUI:Destroy()
end)

UICorner_3.Parent = exit

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

PassBox.Name = "PassBox"
PassBox.Parent = PasswordFrame
PassBox.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
PassBox.BorderSizePixel = 2
PassBox.Position = UDim2.new(0.147368416, 0, 0.250688702, 0)
PassBox.Size = UDim2.new(0, 200, 0, 50)
PassBox.Font = Enum.Font.Nunito
PassBox.PlaceholderText = "user name"
PassBox.Text = ""
PassBox.TextColor3 = Color3.fromRGB(0, 0, 0)
PassBox.TextScaled = true
PassBox.TextSize = 14.000
PassBox.TextWrapped = true

PassBox_2.Name = "PassBox_2"
PassBox_2.Parent = PasswordFrame
PassBox_2.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
PassBox_2.BorderSizePixel = 2
PassBox_2.Position = UDim2.new(0.147368416, 0, 0.479338825, 0)
PassBox_2.Size = UDim2.new(0, 200, 0, 50)
PassBox_2.Font = Enum.Font.Nunito
PassBox_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
PassBox_2.PlaceholderText = "password"
PassBox_2.Text = ""
PassBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
PassBox_2.TextScaled = true
PassBox_2.TextSize = 14.000
PassBox_2.TextWrapped = true

PassBtn.Name = "Pass"
PassBtn.Parent = PasswordFrame
PassBtn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
PassBtn.Position = UDim2.new(0.147368416, 0, 0.724517882, 0)
PassBtn.Size = UDim2.new(0, 200, 0, 50)
PassBtn.Font = Enum.Font.SourceSans
PassBtn.Text = "OK"
PassBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
PassBtn.TextScaled = true
PassBtn.TextSize = 14.000
PassBtn.TextWrapped = true
PassBtn.MouseButton1Click:connect(function()
	if PassBox.Text == PlayId and 
		PassBox_2.Text == "AAGNGT" then
		PassBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Sound:Play()
		wait(1)
		PasswordFrame:TweenPosition(
			UDim2.new(0.384, 0, -1, 0)
		)
		wait(1)
		JoinGameFrame.Visible = true
		OPENJoin.Visible = true
		JoinGameFrame:TweenPosition(
			UDim2.new(0, 0, 0.173, 0)
		)

	else
		Sound:Play()
		PassBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		wait(1.5)
		PassBtn.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
	end
end)

PasswordFrame:TweenPosition(
	UDim2.new(0.384, 0, 0.205457464, 0)
)