----------- Roblox GUI -----------
local GUIMenu = Instance.new("Frame")           --主畫面
local ScreenGui = Instance.new("ScreenGui")     --結合ScreenGui
local GUIUICorner = Instance.new("UICorner")    --GUI圈圓形
local VersionUICorner = Instance.new("UICorner")--Version外圈圓形
local SettingCorner = Instance.new("UICorner")  --設置圓形
local VersionText = Instance.new("TextLabel")   --版本Text
local icon = Instance.new("ImageLabel")         --icon
local Black = Instance.new("Frame")             --護眼畫面

local exit = Instance.new("TextButton")          --離開主選單exit
local Closure = Instance.new("TextButton")       --關閉主選單Closure
local iconOPEN = Instance.new("ImageButton")     --開啟主選單
local resetBtn = Instance.new("ImageButton")     --重設按鈕
ResetText = Instance.new("TextLabel")            --重設Text
local settingBtn = Instance.new("ImageButton")   --設置按鈕
local SettingMenu = Instance.new("Frame")        --設置Menu

local GameMenu = Instance.new("ScrollingFrame")  --腳本畫面
local GameUIGridLayout = Instance.new("UIGridLayout")--自動排版
local script1 = Instance.new("ImageButton")      --BedWars
local script2 = Instance.new("ImageButton")      --監獄人生
local script3 = Instance.new("ImageButton")      --Vans World
local script4 = Instance.new("ImageButton")      --誰是殺手
local script5 = Instance.new("ImageButton")      --時髦星期五

--Version:
VersionGUI = "GUI v1.1.8"

--ScreenGui:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true

--主畫面--
GUIMenu.Name = "GUIMenu"
GUIMenu.Parent = ScreenGui
GUIMenu.BackgroundColor3 = Color3.fromRGB(60, 66, 66)
GUIMenu.Position = UDim2.new(0.282, 0, -0.507, 0)
GUIMenu.Size = UDim2.new(0, 584, 0, 329)
GUIMenu.Visible = false
GUIMenu.Active = true
GUIMenu.Draggable = true

--護眼畫面
Black.Parent = ScreenGui
Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Black.BackgroundTransparency = 0.660
Black.Size = UDim2.new(1, 0, 1, 0)
Black.ZIndex = 0
Black.Visible = false

local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

TextLabel.Parent = SettingMenu
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.035, 0, 0.043, 0)
TextLabel.Size = UDim2.new(0, 173, 0, 47)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Eye protection"
TextLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = SettingMenu
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.Position = UDim2.new(0.827, 0, 0.068, 0)
TextButton.Size = UDim2.new(0, 30, 0, 30)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:connect(function()
	if Black.Visible == false then
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Black.Visible = true
	else
		Black.Visible = false
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end	
end)


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

--重設Text
ResetText.Name = "ResetText"
ResetText.Parent = ScreenGui
ResetText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ResetText.BackgroundTransparency = 1.000
ResetText.Position = UDim2.new(0.375811696, 0, 0.109149285, 0)
ResetText.Size = UDim2.new(0, 291, 0, 68)
ResetText.Font = Enum.Font.SourceSans
ResetText.Text = "Resetting"
ResetText.TextColor3 = Color3.fromRGB(255, 0, 0)
ResetText.TextScaled = true
ResetText.TextSize = 14.000
ResetText.TextWrapped = true
ResetText.Visible = false

--重設按鈕
resetBtn.Name = "resetBtn"
resetBtn.Parent = GUIMenu
resetBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resetBtn.BackgroundTransparency = 1.000
resetBtn.Position = UDim2.new(0.682, 0, 0.01, 0)
resetBtn.Size = UDim2.new(0, 45, 0, 45)
resetBtn.Image = "rbxassetid://8181273323"
resetBtn.MouseButton1Click:connect(function()

	GUIMenu.Visible = false
	iconOPEN.Visible = false

	ResetText.Visible = true

	local Reset = 0

	while Reset < 7 do
		Reset += 1
		ResetText.Text = "Resetting."
		wait(0.2)
		ResetText.Text = "Resetting.."
		wait(0.2)
		ResetText.Text = "Resetting..."
		wait(0.2)
	end
	
Black:TweenPosition(
	UDim2.new(0, 0,-1, 0)
	)
	
	ResetText.TextColor3 = Color3.fromRGB(85, 255, 0)
	ResetText.Text = "ok"
	wait(1.1)
	ResetText.Text = "Please reload the script"
	wait(3)
	ResetText.Visible = false

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

	iconOPEN.Visible = false

	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, -0.517, 0)
	)
	Black:TweenPosition(
		UDim2.new(0, 0,-1, 0)
	)
	wait(0.5)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hyun8941/Roblox/main/xFrost%20Notify/Notify%20V1.lua", true))()

	Notify("Leave GUI","Bye", 4)



	GUIMenu.Visible = false
	Black.Visible = false
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

--設置按鈕
settingBtn.Name = "settingBtn"
settingBtn.Parent = GUIMenu
settingBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
settingBtn.BackgroundTransparency = 1.000
settingBtn.Position = UDim2.new(0.760273993, 0, 0.00911856815, 0)
settingBtn.Size = UDim2.new(0, 45, 0, 45)
settingBtn.Image = "rbxassetid://8243379485"
settingBtn.MouseButton1Click:connect(function()
	SettingMenu.Visible = not SettingMenu.Visible	
end)

--設置Menu
SettingMenu.Name = "SettingMenu"
SettingMenu.Parent = GUIMenu
SettingMenu.BackgroundColor3 = Color3.fromRGB(60, 66, 66)
SettingMenu.Position = UDim2.new(1.01369858, 0, 0.00911854114, 0)
SettingMenu.Size = UDim2.new(0, 226, 0, 323)
SettingMenu.Visible = false

SettingCorner.Parent = SettingMenu

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