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
local GameNameText = Instance.new("TextLabel")


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

GameNameText.Parent = JoinGameFrame
GameNameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameNameText.BackgroundTransparency = 1.000
GameNameText.Position = UDim2.new(0.137681156, 0, 0.135678396, 0)
GameNameText.Size = UDim2.new(0, 200, 0, 50)
GameNameText.Font = Enum.Font.SourceSansBold
GameNameText.Text = "AAGNGT"
GameNameText.TextColor3 = Color3.fromRGB(255, 255, 255)
GameNameText.TextScaled = true
GameNameText.TextSize = 14.000
GameNameText.TextWrapped = true


local Gameicon = Instance.new("ImageLabel")
local GameCorner = Instance.new("UICorner")

local LeftBtn = Instance.new("ImageButton")
local LeftCorner = Instance.new("UICorner")

local rightBtn = Instance.new("ImageButton")
local rightCorner = Instance.new("UICorner")
local ok = Instance.new("ImageButton")

Gameicon.Name = "Gameicon"
Gameicon.Parent = JoinGameFrame
Gameicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gameicon.Position = UDim2.new(0.300724626, 0, 0.309045255, 0)
Gameicon.Size = UDim2.new(0, 110, 0, 110)
Gameicon.Image = "http://www.roblox.com/asset/?id=7755851043"

GameCorner.Parent = Gameicon
-- 0 = 強人bb
-- 1 = 大亨遊戲
-- 2 = 跑酷地圖
-- 3 = BedWars

local GameNumbers = 0

LeftBtn.Name = "LeftBtn"
LeftBtn.Parent = JoinGameFrame
LeftBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftBtn.Position = UDim2.new(0.728260815, 0, 0.640703499, 0)
LeftBtn.Size = UDim2.new(0, 66, 0, 66)
LeftBtn.Image = "http://www.roblox.com/asset/?id=8467430096"
LeftBtn.ImageTransparency = 0.3
LeftBtn.MouseButton1Click:connect(function()
	GameNumbers += 1
	if GameNumbers == 1 then
		Gameicon.Image = "http://www.roblox.com/asset/?id=8178110807"  -- 大亨遊戲
		GameNameText.Text = "Tycoon Game"
		rightBtn.Visible = true
	elseif GameNumbers == 2 then
		Gameicon.Image = "http://www.roblox.com/asset/?id=8178352950"  -- 跑酷地圖
		GameNameText.Text = "Parkour map"
	elseif GameNumbers == 3 then
		LeftBtn.Visible = false
		Gameicon.Image = "http://www.roblox.com/asset/?id=7997842374"  -- BedWars
		GameNameText.Text = "BedWars"
	end	
	
end)


LeftCorner.Name = "LeftCorner"
LeftCorner.Parent = LeftBtn

rightBtn.Name = "rightBtn"
rightBtn.Parent = JoinGameFrame
rightBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rightBtn.Position = UDim2.new(0.0326086953, 0, 0.640703499, 0)
rightBtn.Size = UDim2.new(0, 66, 0, 66)
rightBtn.Image = "http://www.roblox.com/asset/?id=8467429760"
rightBtn.Visible = false
rightBtn.ImageTransparency = 0.3
rightBtn.MouseButton1Click:connect(function()
	GameNumbers -= 1
	if GameNumbers == 0 then
		rightBtn.Visible = false
		Gameicon.Image = "http://www.roblox.com/asset/?id=7755851043"  -- 強人bb
		GameNameText.Text = "AAGNGT"
	elseif GameNumbers == 1 then
		Gameicon.Image = "http://www.roblox.com/asset/?id=8178110807"  -- 大亨遊戲
		GameNameText.Text = "Tycoon Game"
	elseif GameNumbers == 2 then
		LeftBtn.Visible = true
		Gameicon.Image = "http://www.roblox.com/asset/?id=8178352950"  -- 跑酷地圖
		GameNameText.Text = "Parkour map"
	end
	
end)

rightCorner.Name = "rightCorner"
rightCorner.Parent = rightBtn

ok.Name = "ok"
ok.Parent = JoinGameFrame
ok.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ok.BackgroundTransparency = 1.000
ok.Position = UDim2.new(0.300724626, 0, 0.643216074, 0)
ok.Size = UDim2.new(0, 110, 0, 65)
ok.Image = "http://www.roblox.com/asset/?id=8467487817"
ok.MouseButton1Click:connect(function()
	if GameNumbers == 0 then
		game:GetService("TeleportService"):Teleport("7754960945")
	elseif GameNumbers == 1 then
		game:GetService("TeleportService"):Teleport("8071502838")
	elseif GameNumbers == 2 then
		game:GetService("TeleportService"):Teleport("7757703450")
	elseif GameNumbers == 3 then
		game:GetService("TeleportService"):Teleport("6872265039")
	end
end)

rightBtn.MouseEnter:Connect(function()
	rightBtn.ImageTransparency = 0
end)
rightBtn.MouseLeave:Connect(function()
	rightBtn.ImageTransparency = 0.3
end)

LeftBtn.MouseEnter:Connect(function()
	LeftBtn.ImageTransparency = 0
end)
LeftBtn.MouseLeave:Connect(function()
	LeftBtn.ImageTransparency = 0.3
end)

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

while true do
	GameNameText.TextColor3 = Color3.fromRGB(255, 0, 0)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(255, 170, 0)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(255, 255, 0)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(0, 255, 0)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(85, 255, 127)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(0, 255, 255)
	wait(0.3)
	GameNameText.TextColor3 = Color3.fromRGB(85, 0, 127)
end