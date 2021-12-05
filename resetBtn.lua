 
ResetText = Instance.new("TextLabel")    

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
