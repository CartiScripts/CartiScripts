local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/Gui')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local ulib = library.new("Carti Script", 5013109572)
    
local page = ulib:addPage("Football Fusion", 5012544693)
    
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
       firetouchinterest(player.Character["Left Arm"], ball, 0.8)
       firetouchinterest(player.Character["Right Arm"], ball, 0.8)
   end
end
section1:addTextbox("", nil, function()end)
section1:addToggle("Realistic Mag", nil, function(bool)
    shared.Mags = bool
    rs.Stepped:Connect(function()
    if shared.Mags and not game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) and not game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
       for i,v in pairs(workspace:GetChildren()) do
           if v.Name == "Football" and v:IsA("BasePart") then
               wait()
               local mag = (player.Character.Torso.Position - v.Position).Magnitude
               magBall(v)
               print('Active')
           end
        end
    else
        wait()
        print('De-Active')
    end
    if shared.Mags and game:GetService("ReplicatedStorage").Values.HomeQB.Value:match(player.Name) or game:GetService("ReplicatedStorage").Values.AwayQB.Value:match(player.Name) then
        print('CartiMagz Disable When QB')
    end
end)
end)

section2:addToggle("Auto-Captain - Broken For The Moment :(", nil,function(bool)
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
section3:addTextbox("Test 1", nil, function()end)
section3:addTextbox("Test 2", nil, function()end)
section3:addTextbox("Test 3", nil, function()end)
section3:addTextbox("Test 4", nil, function()end)
