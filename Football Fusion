local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Gui')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local ulib = library.new("Slimsploit", 5013109572)
    
local page = ulib:addPage("FF2", 5012544693)
    
local section1 = page:addSection("Main")
local section2 = page:addSection("Misc.")
local section3 = page:addSection("Game Data")

local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")

function magBall(ball)
   if ball and player.Character then
       firetouchinterest(player.Character["Left Arm"], ball, 0)
       firetouchinterest(player.Character["Right Arm"], ball, 0)
       task.wait()
       firetouchinterest(player.Character["Left Arm"], ball, 1)
       firetouchinterest(player.Character["Right Arm"], ball, 1)
   end
end
section1:addTextbox("Mags should auto disable if you are voted as QB", nil, function()end)
section1:addToggle("Legit Mags", nil, function(bool)
    shared.Mags = bool
    rs.Stepped:Connect(function()
    if shared.Mags and not game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) and not game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "Football" and v:IsA("BasePart") then
               wait()
               local mag = (player.Character.Torso.Position - v.Position).Magnitude
               magBall(v)
               print('Magz On! :)')
           end
        end
    else
        wait()
        print('Magz Off :(')
    end
    if shared.Mags and game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) or game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
        print('Magz Auto-Disabled as QB')
    end
end)
end)

section2:addToggle("Auto-Captain - Doesnt Work :(", nil,function(bool)
    shared.Cap = bool
    if shared.Cap then
        game:GetService("Players").LocalPlayer.AutoCapValue.Value = true
        print('Auto Captain On')
    else
        game:GetService("Players").LocalPlayer.AutoCapValue.Value = false
        print('Auto Captain Off')
    end
end)
local fumbleChance = ''
spawn(function()
    while wait(0.5) do
        fumbleChance = game.ReplicatedStorage.Values.Rule_Fumble.Value
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Slimsploit.Main.FF2["Game Data"].Container:GetDescendants()) do
            if v:IsA("TextLabel") and v.Text == '.' then
                v.Text = 'Fumble Chance: '.. fumbleChance
            end
        end
    end
end)
section3:addTextbox(".", nil, function()end)
section3:addTextbox("WIP", nil, function()end)
section3:addTextbox("WIP", nil, function()end)
section3:addTextbox("WIP", nil, function()end)
