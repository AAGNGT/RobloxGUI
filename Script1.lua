----------- Roblox GUI -----------
local ScreenGui = Instance.new("ScreenGui")
local GUIMenu = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local exit = Instance.new("TextButton")
local Closure = Instance.new("TextButton")
local GameMenu = Instance.new("ScrollingFrame")
local script1 = Instance.new("ImageButton")
local script2 = Instance.new("ImageButton")
local script3 = Instance.new("ImageButton")
local script4 = Instance.new("ImageButton")
local script5 = Instance.new("ImageButton")
local iconOPEN = Instance.new("ImageButton")
local UIGridLayout = Instance.new("UIGridLayout")

--Version:
VersionGUI = "GUI v2.4.1"
--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

GUIMenu.Name = "GUIMenu"
GUIMenu.Parent = ScreenGui
GUIMenu.BackgroundColor3 = Color3.fromRGB(60, 66, 66)
GUIMenu.Position = UDim2.new(0.282, 0, -0.507, 0)
GUIMenu.Size = UDim2.new(0, 584, 0, 329)
GUIMenu.Visible = false
GUIMenu.Active = true
GUIMenu.Draggable = true

UICorner.Parent = GUIMenu

TextLabel.Parent = GUIMenu
TextLabel.BackgroundColor3 = Color3.fromRGB(103, 68, 0)
TextLabel.Size = UDim2.new(0, 584, 0, 52)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = VersionGUI                    --------GUI--------
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

ImageLabel.Parent = GUIMenu
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.0172344744, 0, 0.0116799772, 0)
ImageLabel.Size = UDim2.new(0, 44, 0, 44)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7755851043"

exit.Name = "exit"
exit.Parent = GUIMenu
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exit.Position = UDim2.new(0.915072918, 0, 0.0257846415, 0)
exit.Size = UDim2.new(0, 35, 0, 35)
exit.Font = Enum.Font.SourceSans
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextScaled = true
exit.TextSize = 14.000
exit.TextWrapped = true
exit.MouseButton1Down:connect(function()

	GUIMenu.Visible = false
	iconOPEN.Visible = false

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hyun8941/Roblox/main/xFrost%20Notify/Notify%20V1.lua", true))()

	Notify("Leave GUI","Bye", 4)
end)

Closure.Name = "Closure"
Closure.Parent = GUIMenu
Closure.BackgroundColor3 = Color3.fromRGB(170, 0, 127)
Closure.Position = UDim2.new(0.837328792, 0, 0.0243161097, 0)
Closure.Size = UDim2.new(0, 35, 0, 35)
Closure.Font = Enum.Font.SourceSans
Closure.Text = "-"
Closure.TextColor3 = Color3.fromRGB(0, 0, 0)
Closure.TextSize = 71.000
Closure.TextWrapped = true
Closure.MouseButton1Down:connect(function()

	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, -0.517, 0)
	)

	wait(0.9)
	iconOPEN.Visible = true
	GUIMenu.Visible = false
end)

GameMenu.Name = "GameMenu"
GameMenu.Parent = GUIMenu
GameMenu.Active = true
GameMenu.BackgroundColor3 = Color3.fromRGB(90, 99, 99)
GameMenu.Position = UDim2.new(0.0172344893, 0, 0.20364742, 0)
GameMenu.Size = UDim2.new(0, 559, 0, 249)

-------- script------------
script1.Name = "script1"
script1.Parent = GameMenu
script1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script1.Position = UDim2.new(0.021, 0, 0, 0)
script1.Size = UDim2.new(0, 100, 0, 100)
script1.Image = "http://www.roblox.com/asset/?id=7997842374"
script1.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

script2.Name = "script2"
script2.Parent = GameMenu
script2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script2.Position = UDim2.new(0.238, 0, 0, 0)
script2.Size = UDim2.new(0, 100, 0, 100)
script2.Image = "http://www.roblox.com/asset/?id=8000230044"
script2.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/eqL5LdQQ", true))()
end)

script3.Name = "script3"
script3.Parent = GameMenu
script3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script3.Size = UDim2.new(0, 100, 0, 100)
script3.Image = "http://www.roblox.com/asset/?id=8000901170"
script3.MouseButton1Down:connect(function()
	_G.coinfarm = true
	while _G.coinfarm do
		local CoinLocations = game:GetService("Workspace").CoinLocations:GetChildren()
		local you = game.Players.LocalPlayer

		for i = 1,#CoinLocations do

			local CL = CoinLocations[i]

			you.Character.HumanoidRootPart.CFrame = CL.CFrame

			print(i ..' '..CL.Name..'s'.." collected")

			wait(.15)

		end
	end
end)

script4.Name = "script4"
script4.Parent = GameMenu
script4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script4.Size = UDim2.new(0, 100, 0, 100)
script4.Image = "http://www.roblox.com/asset/?id=8005573834"
script4.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

script5.Name = "script5"
script5.Parent = GameMenu
script5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script5.Size = UDim2.new(0, 100, 0, 100)
script5.Image = "http://www.roblox.com/asset/?id=8032189927"
script5.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

UIGridLayout.Parent = GameMenu
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
UIGridLayout.CellSize = UDim2.new(0, 120, 0, 120)

iconOPEN.Name = "iconOPEN"
iconOPEN.Parent = ScreenGui
iconOPEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iconOPEN.BorderSizePixel = 0
iconOPEN.Position = UDim2.new(0, 0, 0.581, 0)
iconOPEN.Size = UDim2.new(0, 100, 0, 100)
iconOPEN.Image = "http://www.roblox.com/asset/?id=8032590887"
iconOPEN.MouseButton1Click:connect(function()

	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, 0.432, 0)
	)


	GUIMenu.Visible = true
	iconOPEN.Visible = false
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hyun8941/Roblox/main/xFrost%20Notify/Notify%20V1.lua", true))()

Notify("Join GUI","Hi", 4)