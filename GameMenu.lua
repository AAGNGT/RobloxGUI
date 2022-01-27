----------- Roblox GUI -----------
local GUIMenu = Instance.new("Frame")           --主畫面
local ScreenGui = Instance.new("ScreenGui")     --結合ScreenGui
local GUIUICorner = Instance.new("UICorner")    --GUI圈圓形
local VersionUICorner = Instance.new("UICorner")--Version外圈圓形
local SettingCorner = Instance.new("UICorner")  --設置圓形
local VersionText = Instance.new("TextLabel")   --版本Text
local icon = Instance.new("ImageLabel")         --icon

local exit = Instance.new("TextButton")          --離開主選單exit
local Closure = Instance.new("TextButton")       --關閉主選單Closure
local iconOPEN = Instance.new("ImageButton")     --開啟主選單
local resetBtn = Instance.new("ImageButton")     --重設按鈕
ResetText = Instance.new("TextLabel")            --重設Text
local settingBtn = Instance.new("ImageButton")   --設置按鈕
local SettingMenu = Instance.new("Frame")        --設置Menu
local Sound = Instance.new("Sound")              --Mc Music

local goScript = Instance.new("ImageButton")       --go script 

local GameMenu = Instance.new("ScrollingFrame")  --腳本畫面
local GameUIGridLayout = Instance.new("UIGridLayout")--自動排版

local number = Instance.new("TextLabel")         --GUI編號

local Blur = Instance.new("BlurEffect")
local Black = Instance.new("Frame")  

--Version:
VersionGUI = "GUI v1.3.1"

local tostring = tostring(math.random(1, 100))
--ScreenGui:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.Name = "ScreenGui " ..tostring
warn("-----",ScreenGui,"-----")

--Number
number.Name = "Number"
number.Parent = VersionText
number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
number.BackgroundTransparency = 1.000
number.Position = UDim2.new(0.178, 0, 0.385, 0)
number.Size = UDim2.new(0, 92, 0, 39)
number.Font = Enum.Font.SourceSansBold
number.Text = "Number : " ..tostring
number.TextColor3 = Color3.fromRGB(255, 255, 0)
number.TextSize = 18
number.TextWrapped = true

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
VersionText.TextSize = 50
VersionText.TextWrapped = true

--Version外圈圓形
VersionUICorner.Parent = VersionText

--icon
icon.Parent = GUIMenu
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.Position = UDim2.new(0.0172344744, 0, 0.0116799772, 0)
icon.Size = UDim2.new(0, 44, 0, 44)
icon.Image = "http://www.roblox.com/asset/?id=7755851043"

Sound.Parent = ScreenGui
Sound.SoundId = "rbxassetid://535716488"
Sound.Volume = 5

--go script
goScript.Name = "GoScript"
goScript.Parent = GUIMenu
goScript.ImageTransparency = 0.4
goScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
goScript.BackgroundTransparency = 1.000
goScript.Position = UDim2.new(0.0925769582, 0, 0.00303951465, 0)
goScript.Size = UDim2.new(0, 50, 0, 50)
goScript.Image = "rbxassetid://8278845824"
goScript.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AAGNGT/RobloxGUI/main/script.lua", true))()
end)

goScript.MouseEnter:Connect(function()
	goScript.ImageTransparency = 0
end)
goScript.MouseLeave:Connect(function()
	goScript.ImageTransparency = 0.4
end)

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

------設定menu------------設定menu---------設定menu---------設定menu------

--設置按鈕
settingBtn.Name = "settingBtn"
settingBtn.Parent = GUIMenu
settingBtn.ImageTransparency = 0.3
settingBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
settingBtn.BackgroundTransparency = 1.000
settingBtn.Position = UDim2.new(0.760273993, 0, 0.00911856815, 0)
settingBtn.Size = UDim2.new(0, 45, 0, 45)
settingBtn.Image = "rbxassetid://8243379485"
settingBtn.MouseButton1Click:connect(function()
	if SettingMenu.Position == UDim2.new(0.604, 0, -0, 0) and SettingMenu.Visible == false then
		SettingMenu.Visible = true
		SettingMenu:TweenPosition(
			UDim2.new(1.017, 0, 0, 0),
			"Out",
			"Bounce",
			1,
			false
		)
	else
		SettingMenu:TweenPosition(
			UDim2.new(0.604, 0, -0, 0),
			"Out",
			"Bounce",
			1,
			false
		)
		wait(1)
		SettingMenu.Visible = false
	end
end)

--設置Menu
SettingMenu.Name = "SettingMenu"
SettingMenu.Parent = GUIMenu
SettingMenu.BackgroundColor3 = Color3.fromRGB(60, 66, 66)
SettingMenu.Position = UDim2.new(0.604, 0, -0, 0)
SettingMenu.Size = UDim2.new(0, 226, 0, 329)
SettingMenu.Visible = false
SettingMenu.ZIndex = 0

SettingCorner.Parent = SettingMenu

--護眼畫面
local TextLabel = Instance.new("TextLabel")    
local TextButton = Instance.new("TextButton")             

Black.Parent = ScreenGui
Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Black.BackgroundTransparency = 1
Black.Size = UDim2.new(1, 0, 1, 0)
Black.ZIndex = 0

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
	if TextButton.BackgroundColor3 == Color3.fromRGB(255, 0, 0) then 
		TextButton.Visible = false
		wait(0.2)
		Black.BackgroundTransparency = 0.90
		wait(0.2)
		Black.BackgroundTransparency = 0.80
		wait(0.2)
		Black.BackgroundTransparency = 0.70
		wait(0.2)
		Black.BackgroundTransparency = 0.65
		wait(0.2)
		Black.BackgroundTransparency = 0.57
		TextButton.Visible = true
		TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	else
		TextButton.Visible = false
		Black.BackgroundTransparency = 0.65
		wait(0.2)
		Black.BackgroundTransparency = 0.70
		wait(0.2)
		Black.BackgroundTransparency = 0.80
		wait(0.2)
		Black.BackgroundTransparency = 0.90
		wait(0.2)
		Black.BackgroundTransparency = 1
		TextButton.Visible = true
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end	
end)

--模糊畫面--
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")

Blur.Parent = game.Lighting
Blur.Enabled = true
Blur.Size = 0

TextLabel_2.Parent = SettingMenu
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.035, 0, 0.192, 0)
TextLabel_2.Size = UDim2.new(0, 173, 0, 47)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Blurred picture"
TextLabel_2.TextColor3 = Color3.fromRGB(190, 190, 190)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton_2.Parent = SettingMenu
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextButton_2.Position = UDim2.new(0.827, 0, 0.22, 0)
TextButton_2.Size = UDim2.new(0, 30, 0, 30)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Click:connect(function()
	if Blur.Enabled == true then 
		Blur.Enabled = false
		TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	else
		Blur.Enabled = true
		TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	end	
end)

--開啟關閉按鈕-------開啟關閉按鈕------開啟關閉按鈕-----開啟關閉按鈕-----

--開啟主選單
iconOPEN.Name = "iconOPEN"
iconOPEN.Parent = ScreenGui
iconOPEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
iconOPEN.BorderSizePixel = 0
iconOPEN.Position = UDim2.new(0, 0, 0.581, 0)
iconOPEN.Size = UDim2.new(0, 100, 0, 100)
iconOPEN.Visible = false
iconOPEN.Image = "http://www.roblox.com/asset/?id=8032590887"
iconOPEN.BackgroundTransparency = 1
iconOPEN.MouseButton1Click:connect(function()
	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, 0.432, 0)
	)

	Blur.Size = 24

	GUIMenu.Visible = true
	iconOPEN.Visible = false
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
Closure.MouseButton1Click:connect(function()
	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, -0.517, 0)
	)

	Blur.Size = 24
	wait(0.2)
	Blur.Size = 15
	wait(0.2)
	Blur.Size = 9
	wait(0.2)
	Blur.Size = 3
	wait(0.2)
	Blur.Size = 0

	iconOPEN.Visible = true
	GUIMenu.Visible = false
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
exit.MouseButton1Click:connect(function()
	iconOPEN.Visible = false

	GUIMenu:TweenPosition(
		UDim2.new(0.282, 0, -0.517, 0)
	)
	Black:TweenPosition(
		UDim2.new(0, 0,-1, 0)
	)

	Blur.Size = 24
	wait(0.2)
	Blur.Size = 15
	wait(0.2)
	Blur.Size = 9
	wait(0.2)
	Blur.Size = 3
	wait(0.2)
	Blur.Size = 0
	print("-----exit OK-----")
	ScreenGui:Destroy()
end)

-------- script-------------------- script-------------------- script-------------------- script-------------------- script------------
local script1 = Instance.new("ImageButton")      --Roblox Studio
local script2 = Instance.new("ImageButton")      --BedWars
local script3 = Instance.new("ImageButton")      --監獄人生
local script4 = Instance.new("ImageButton")      --Vans World
local script5 = Instance.new("ImageButton")      --誰是殺手
local script6 = Instance.new("ImageButton")      --時髦星期五
local script7 = Instance.new("ImageButton")      --arsenal
local script8 = Instance.new("ImageButton")      --史詩級小遊戲

GameMenu.Name = "GameMenu"
GameMenu.Parent = GUIMenu
GameMenu.Active = true
GameMenu.BackgroundColor3 = Color3.fromRGB(90, 99, 99)
GameMenu.Position = UDim2.new(0.0172344893, 0, 0.20364742, 0)
GameMenu.Size = UDim2.new(0, 559, 0, 249)

--Roblox Studio
script1.Name = "script1"
script1.Parent = GameMenu
script1.ImageTransparency = 0.4
script1.AutoButtonColor = false
script1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script1.Size = UDim2.new(0, 100, 0, 100)
script1.Image = "http://www.roblox.com/asset/?id=5150434563"
script1.MouseButton1Click:connect(function()
	Sound:Play()
	if game:GetService'CoreGui':FindFirstChild'Dex' then
		game:GetService'CoreGui'.Dex:Destroy();
	end

	math.randomseed(tick())

	local charset = {}
	for i = 48,  57 do table.insert(charset, string.char(i)) end
	for i = 65,  90 do table.insert(charset, string.char(i)) end
	for i = 97, 122 do table.insert(charset, string.char(i)) end
	function RandomCharacters(length)
		if length > 0 then
			return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
		else
			return ""
		end
	end

	local Dex = game:GetObjects("rbxassetid://3567096419")[1]
	Dex.Name = RandomCharacters(math.random(5, 20))
	Dex.Parent = game:GetService("CoreGui")

	local function Load(Obj, Url)
		local function GiveOwnGlobals(Func, Script)
			local Fenv = {}
			local RealFenv = {script = Script}
			local FenvMt = {}
			FenvMt.__index = function(a,b)
				if RealFenv[b] == nil then
					return getfenv()[b]
				else
					return RealFenv[b]
				end
			end
			FenvMt.__newindex = function(a, b, c)
				if RealFenv[b] == nil then
					getfenv()[b] = c
				else
					RealFenv[b] = c
				end
			end
			setmetatable(Fenv, FenvMt)
			setfenv(Func, Fenv)
			return Func
		end

		local function LoadScripts(Script)
			if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
				spawn(function()
					GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
				end)
			end
			for i,v in pairs(Script:GetChildren()) do
				LoadScripts(v)
			end
		end

		LoadScripts(Obj)
	end

	Load(Dex)
end)


--BedWars
script2.Name = "script2"
script2.Parent = GameMenu
script2.ImageTransparency = 0.4
script2.AutoButtonColor = false
script2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script2.Position = UDim2.new(0.021, 0, 0, 0)
script2.Size = UDim2.new(0, 100, 0, 100)
script2.Image = "http://www.roblox.com/asset/?id=7997842374"
script2.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()	
end)

--監獄人生
script3.Name = "script3"
script3.Parent = GameMenu
script3.ImageTransparency = 0.4
script3.AutoButtonColor = false
script3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script3.Position = UDim2.new(0.238, 0, 0, 0)
script3.Size = UDim2.new(0, 100, 0, 100)
script3.Image = "http://www.roblox.com/asset/?id=8000230044"
script3.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://pastebin.com/raw/eqL5LdQQ", true))()
end)

--Vans World
script4.Name = "script4"
script4.ImageTransparency = 0.4
script4.AutoButtonColor = false
script4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script4.Size = UDim2.new(0, 100, 0, 100)
script4.Image = "http://www.roblox.com/asset/?id=8000901170"
script4.MouseButton1Click:connect(function()
	Sound:Play()
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
script6.Name = "script6"
script6.Parent = GameMenu
script6.ImageTransparency = 0.4
script6.AutoButtonColor = false
script6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script6.Size = UDim2.new(0, 100, 0, 100)
script6.Image = "http://www.roblox.com/asset/?id=8005573834"
script6.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

--時髦星期五
script5.Name = "script5"
script5.Parent = GameMenu
script5.ImageTransparency = 0.4
script5.AutoButtonColor = false
script5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script5.Size = UDim2.new(0, 100, 0, 100)
script5.Image = "http://www.roblox.com/asset/?id=8032189927"
script5.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
end)

--arsenal
script7.Name = "script7"
script7.Parent = GameMenu
script7.ImageTransparency = 0.4
script7.AutoButtonColor = false
script7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script7.Size = UDim2.new(0, 100, 0, 100)
script7.Image = "http://www.roblox.com/asset/?id=7699371504"
script7.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
end)

--史詩級小遊戲
script8.Name = "script8"
script8.Parent = GameMenu
script8.ImageTransparency = 0.4
script8.AutoButtonColor = false
script8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
script8.Position = UDim2.new(0.021, 0, 0, 0)
script8.Size = UDim2.new(0, 100, 0, 100)
script8.Image = "http://www.roblox.com/asset/?id=8383643615"
script8.MouseButton1Click:connect(function()
	Sound:Play()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI"))()
end)

--自動排版
GameUIGridLayout.Parent = GameMenu
GameUIGridLayout.SortOrder = Enum.SortOrder.Name
GameUIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
GameUIGridLayout.CellSize = UDim2.new(0, 120, 0, 120)

script1.MouseEnter:Connect(function()
	script1.ImageTransparency = 0
end)
script1.MouseLeave:Connect(function()
	script1.ImageTransparency = 0.4
end)

script2.MouseEnter:Connect(function()
	script2.ImageTransparency = 0
end)
script2.MouseLeave:Connect(function()
	script2.ImageTransparency = 0.4
end)

script3.MouseEnter:Connect(function()
	script3.ImageTransparency = 0
end)
script3.MouseLeave:Connect(function()
	script3.ImageTransparency = 0.4
end)

script4.MouseEnter:Connect(function()
	script4.ImageTransparency = 0
end)
script4.MouseLeave:Connect(function()
	script4.ImageTransparency = 0.4
end)

script5.MouseEnter:Connect(function()
	script5.ImageTransparency = 0
end)
script5.MouseLeave:Connect(function()
	script5.ImageTransparency = 0.4
end)

script6.MouseEnter:Connect(function()
	script6.ImageTransparency = 0
end)
script6.MouseLeave:Connect(function()
	script6.ImageTransparency = 0.4
end)

script7.MouseEnter:Connect(function()
	script7.ImageTransparency = 0
end)
script7.MouseLeave:Connect(function()
	script7.ImageTransparency = 0.4
end)

script8.MouseEnter:Connect(function()
	script8.ImageTransparency = 0
end)
script8.MouseLeave:Connect(function()
	script8.ImageTransparency = 0.4
end)

resetBtn.MouseEnter:Connect(function()
	resetBtn.ImageTransparency = 0
end)
resetBtn.MouseLeave:Connect(function()
	resetBtn.ImageTransparency = 0.3
end)

settingBtn.MouseEnter:Connect(function()
	settingBtn.ImageTransparency = 0
end)
settingBtn.MouseLeave:Connect(function()
	settingBtn.ImageTransparency = 0.3
end)

--if
if game.Workspace:FindFirstChild(" Noob") then
	iconOPEN.Visible = true
else
	local loadFrame = Instance.new("Frame")
	local loadImage = Instance.new("ImageLabel")
	local loadText = Instance.new("TextLabel")
	local loadVersion = Instance.new("TextLabel")
	PartText = Instance.new("Part")
	
	PartText.Parent = game.Workspace
	PartText.Name = " Noob"
	PartText.Transparency = 1
	PartText.CanCollide = false
	
	loadFrame.Name = "loadFrame"
	loadFrame.Parent = ScreenGui
	loadFrame.BackgroundColor3 = Color3.fromRGB(104, 99, 103)
	loadFrame.Position = UDim2.new(0.441558391, 0, 0.255216688, 0)
	loadFrame.Size = UDim2.new(0, 239, 0, 261)

	loadImage.Parent = loadFrame
	loadImage.BackgroundColor3 = Color3.fromRGB(104, 99, 103)
	loadImage.BackgroundTransparency = 1.000
	loadImage.Position = UDim2.new(0.204, 0, 0.23, 0)
	loadImage.Size = UDim2.new(0, 140, 0, 140)
	loadImage.Image = "rbxassetid://275671230"

	loadVersion.Name = "loadVersion"
	loadVersion.Parent = loadFrame
	loadVersion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	loadVersion.BackgroundTransparency = 1.000
	loadVersion.Position = UDim2.new(0.066945605, 0, 0.758620679, 0)
	loadVersion.Size = UDim2.new(0, 200, 0, 50)
	loadVersion.Font = Enum.Font.DenkOne
	loadVersion.Text = VersionGUI
	loadVersion.TextColor3 = Color3.fromRGB(0, 0, 0)
	loadVersion.TextScaled = true
	loadVersion.TextSize = 14.000
	loadVersion.TextWrapped = true

	loadText.Parent = loadFrame
	loadText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	loadText.BackgroundTransparency = 1.000
	loadText.Position = UDim2.new(0.075, 0, 0.069, 0)
	loadText.Size = UDim2.new(0, 200, 0, 50)
	loadText.Font = Enum.Font.Oswald
	loadText.Text = "Downloading"
	loadText.TextColor3 = Color3.fromRGB(0, 0, 0)
	loadText.TextScaled = true
	loadText.TextSize = 14.000
	loadText.TextWrapped = true

	for i = 1, 1210 do
		wait(0.00001)
		loadImage.Rotation = loadImage.Rotation + 4
		loadText.Text = "Downloading " ..i.. "/1210"
		if i == 253 or i == 489 or i == 998 or i == 1367 then
			wait(0.5)
		end

		if i == 400 or i == 500 or i == 600 or i == 700 or i == 800 or i == 900 or i == 1000 then
			warn("----- download"..i.. "% -----" )
		end
	end
	print("-----download OK-----")
	loadImage.Rotation = 0
	loadImage.Image = "rbxassetid://501164670"
	loadVersion.TextColor3 = Color3.fromRGB(0, 255, 0)
	loadText.TextColor3 = Color3.fromRGB(0, 255, 0)
	wait(1.5)

	loadFrame:TweenPosition(
		UDim2.new(0.442, 0, -1, 0)
	)
	iconOPEN.Visible = true
end

--重設按鈕
resetBtn.Name = "resetBtn"
resetBtn.Parent = GUIMenu
resetBtn.ImageTransparency = 0.3
resetBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resetBtn.BackgroundTransparency = 1.000
resetBtn.Position = UDim2.new(0.682, 0, 0.01, 0)
resetBtn.Size = UDim2.new(0, 45, 0, 45)
resetBtn.Image = "rbxassetid://8181273323"
resetBtn.MouseButton1Click:connect(function()
	GUIMenu.Visible = false
	iconOPEN.Visible = false
	Blur.Size = 0

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
	print("-----Reset OK-----")
	ScreenGui:Destroy()
	game.Workspace:FindFirstChild(" Noob"):Remove()
end)