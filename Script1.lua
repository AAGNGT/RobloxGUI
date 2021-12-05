----------- Roblox GUI -----------
local GUIMenu = Instance.new("Frame")           --主畫面
local ScreenGui = Instance.new("ScreenGui")     --結合ScreenGui
local GUIUICorner = Instance.new("UICorner")    --GUI圈圓形
local VersionUICorner = Instance.new("UICorner")--Version外圈圓形
local VersionText = Instance.new("TextLabel")   --版本Text
local icon = Instance.new("ImageLabel")         --icon

local exit = Instance.new("TextButton")          --離開主選單exit
local Closure = Instance.new("TextButton")       --關閉主選單Closure
local iconOPEN = Instance.new("ImageButton")     --開啟主選單
local resetBtn = Instance.new("ImageButton")     --重設按鈕

local GameMenu = Instance.new("ScrollingFrame")  --腳本畫面
local GameUIGridLayout = Instance.new("UIGridLayout")--自動排版
local script1 = Instance.new("ImageButton")      --BedWars
local script2 = Instance.new("ImageButton")      --監獄人生
local script3 = Instance.new("ImageButton")      --Vans World
local script4 = Instance.new("ImageButton")      --誰是殺手
local script5 = Instance.new("ImageButton")      --時髦星期五

--Version:
VersionGUI = "GUI v1.1.2"

--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--主畫面--
GUIMenu.Name = "GUIMenu"
GUIMenu.Parent = ScreenGui
GUIMenu.BackgroundColor3 = Color3.fromRGB(60, 66, 66)
GUIMenu.Position = UDim2.new(0.282, 0, -0.507, 0)
GUIMenu.Size = UDim2.new(0, 584, 0, 329)
GUIMenu.Visible = false
GUIMenu.Active = true
GUIMenu.Draggable = true

--GUI圈圓形
GUIUICorner.Parent = GUIMenu

--版本Text
VersionText.Parent = GUIMenu
VersionText.BackgroundColor3 = Color3.fromRGB(103, 68, 0)
VersionText.Size = UDim2.new(0, 584, 0, 52)
VersionText.Font = Enum.Font.SourceSans
VersionText.Text = VersionGUI                    --------GUI--------
VersionText.TextColor3 = Color3.fromRGB(0, 0, 0)
VersionText.TextScaled = true
VersionText.TextSize = 14.000
VersionText.TextWrapped = true

--Version外圈圓形
VersionUICorner.Parent = VersionText

--icon
icon.Parent = GUIMenu
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.Position = UDim2.new(0.0172344744, 0, 0.0116799772, 0)
icon.Size = UDim2.new(0, 44, 0, 44)
icon.Image = "http://www.roblox.com/asset/?id=7755851043"

--重設按鈕
resetBtn.Name = "resetBtn"
resetBtn.Parent = GUIMenu
resetBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resetBtn.BackgroundTransparency = 1.000
resetBtn.Position = UDim2.new(0.746686578, 0, 0.0101122279, 0)
resetBtn.Size = UDim2.new(0, 45, 0, 45)
resetBtn.Image = "rbxassetid://8181273323"
resetBtn.MouseButton1Click:connect(function()
	
	GUIMenu.Visible = false
	iconOPEN.Visible = false
	
end)

--離開主選單exit
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

--關閉主選單Closure
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

--開啟主選單
iconOPEN.Name = "iconOPEN"
iconOPEN.Parent = ScreenGui
iconOPEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iconOPEN.BorderSizePixel = 0
iconOPEN.Position = UDim2.new(0, 0, 0.581, 0)
iconOPEN.Size = UDim2.new(0, 100, 0, 100)
iconOPEN.Image = "http://www.roblox.com/asset/?id=8032590887"
iconOPEN.BackgroundTransparency = 1
iconOPEN.MouseButton1Click:connect(function()

	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, 0.432, 0)
	)


	GUIMenu.Visible = true
	iconOPEN.Visible = false
end)

-------- script-------------------- script-------------------- script-------------------- script-------------------- script------------
GameMenu.Name = "GameMenu"
GameMenu.Parent = GUIMenu
GameMenu.Active = true
GameMenu.BackgroundColor3 = Color3.fromRGB(90, 99, 99)
GameMenu.Position = UDim2.new(0.0172344893, 0, 0.20364742, 0)
GameMenu.Size = UDim2.new(0, 559, 0, 249)


--BedWars
script1.Name = "script1"
script1.Parent = GameMenu
script1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script1.Position = UDim2.new(0.021, 0, 0, 0)
script1.Size = UDim2.new(0, 100, 0, 100)
script1.Image = "http://www.roblox.com/asset/?id=7997842374"
script1.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

--監獄人生
script2.Name = "script2"
script2.Parent = GameMenu
script2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script2.Position = UDim2.new(0.238, 0, 0, 0)
script2.Size = UDim2.new(0, 100, 0, 100)
script2.Image = "http://www.roblox.com/asset/?id=8000230044"
script2.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/eqL5LdQQ", true))()
end)

--Vans World
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

--誰是殺手
script4.Name = "script4"
script4.Parent = GameMenu
script4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script4.Size = UDim2.new(0, 100, 0, 100)
script4.Image = "http://www.roblox.com/asset/?id=8005573834"
script4.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

--時髦星期五
script5.Name = "script5"
script5.Parent = GameMenu
script5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script5.Size = UDim2.new(0, 100, 0, 100)
script5.Image = "http://www.roblox.com/asset/?id=8032189927"
script5.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

--自動排版
GameUIGridLayout.Parent = GameMenu
GameUIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
GameUIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
GameUIGridLayout.CellSize = UDim2.new(0, 120, 0, 120)

--loading say hi
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hyun8941/Roblox/main/xFrost%20Notify/Notify%20V1.lua", true))()

Notify("Join GUI","Hi", 4)