local GUIMenu = Instance.new("Frame")    
local iconOPEN = Instance.new("ImageButton") 
local resetBtn = Instance.new("ImageButton")    
ResetText = Instance.new("TextLabel")    

GUIMenu.Visible = false
iconOPEN.Visible = false

ResetText.Visible = true

local Reset = 0

while Reset < 3 do
    Reset += 1
    ResetText.Text = "Resetting."
    wait(0.5)
    ResetText.Text = "Resetting.."
    wait(0.5)
    ResetText.Text = "Resetting..."
    wait(0.5)
end

ResetText.Visible = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/AAGNGT/RobloxGUI/main/Script1.lua", true))()
