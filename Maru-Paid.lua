NANE = "Maru Hub | Beta Version"

if game.CoreGui:FindFirstChild(NANE) then
    game.CoreGui:FindFirstChild(NANE):Destroy()
end
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NinoGod/OreoHub/main/OreoHub.lua"))() -- Colours By Nino_exe #4468
local venyx = library.new(NANE, 5013109572)





local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(self,...)
local getmedthod = getnamecallmethod()
    if getmedthod == "Kick" then
        print("Bypass!")
        wait(math.huge)
        return
    end
return old(self,...)
end)





if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    Three = true
    do
        local count = 0
        for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
            if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then 
                v:Destroy()
                count = count + 1
                if count > 2 then
                    break
                end
            end
        end
    end
end 



-- first page
local page = venyx:addPage("Auto Farms", 7529398102)

local section1 = page:addSection("Auto Farm")
local section2 = page:addSection("Auto Buy")

local page2 = venyx:addPage("Auto Stats", 7040410130)
local stats = page2:addSection("Check Point")
local autostats = page2:addSection("Auto Stats")



local page3 = venyx:addPage("Players", 7252023075)
local tab = page3:addSection("Player Tab")
local misc = page3:addSection("Players Function")
local misc1 = page3:addSection("Aimbot Tab")
local misc2 = page3:addSection("Auto Bounty")
local safe = page3:addSection("Safe function")




local page4 = venyx:addPage("Teleport", 7044226690)
local tp = page4:addSection("World TP Tab")
local tp2 = page4:addSection("Islands")





local page5 = venyx:addPage("Shop", 7294901968)
local gtab2 = page5:addSection("Buy Misc")
local gtab3 = page5:addSection("Buy Malee")

local page8 = venyx:addPage("Devil Fruit", 7044284832)
local dtab = page8:addSection("Devil Fruit")
local dtab2 = page8:addSection("Sniper Tab")


local page9 = venyx:addPage("Dungeon", 7251993295)
local ltab1 = page9:addSection("Auto Chip")
local ltab2 = page9:addSection("Auto Raid")



local page7 = venyx:addPage("Game", 7044233235)
local stab = page7:addSection("Grab Tab")
local stab0 = page7:addSection("Menu Tab")
local stab2 = page7:addSection("Server")
local stab1 = page7:addSection("Boat Tab")
local stab3 = page7:addSection("Character")

local page6 = venyx:addPage("Settings", 7040347038)
local setf = page6:addSection("Auto Farm Settings")
local fake = page6:addSection("Fake Function")








_G.SelectToolWeapon = nil
function EquipWeapon(ToolSe)
   if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
       getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
       wait(.1)
       game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
   end
end







function click()
    require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 60
    require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))    
end


dtab2:addDropdown("Select/Fruts", {"Bomb-Bomb", "Spike-Spike", "Chop-Chop", "Spring-Spring", "Smoke-Smoke"}, function(text)
    SelectFruit = text
end)



dtab2:addToggle("Sniper Fruit", faslse, function()
    spawn(function()
        while wait() do
            local args = {
                [1] = "GetFruits"
            }
             
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
             local args = {
                [1] = "PurchaseRawFruit",
                [2] = SelectFruit
            }
             
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end)
end)

section1:addToggle("Auto Farm Level", false, function(a)
    _G.AUTOFARM = a

    while _G.AUTOFARM do wait()
      pcall(function()
        EquipWeapon(_G.SelectToolWeapon)
          
    local LEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
    
    if LEVEL == 1 or LEVEL <= 9 then
        MON = "Bandit [Lv. 5]"
        QUESTNAME = "BanditQuest1"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(1060.7056884766, 16.455068588257, 1547.9978027344)
        PUKPOS = CFrame.new(1097.2778320313, 66.485931396484, 1614.8713378906)
        REWARD = "Reward:\n$350\n250 Exp."
    elseif LEVEL == 10 or LEVEL <= 14 then
        MON = "Gorilla [Lv. 20]"
        QUESTNAME = "JungleQuest"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(-1599.82532, 36.8521347, 153.959076, 0.00275422214, 5.1952032e-08, -0.999996185, 1.33985356e-08, 1, 5.1989133e-08, 0.999996185, -1.35416744e-08, 0.00275422214)
        PUKPOS = CFrame.new(-1610.2681884766, 20.852096557617, 144.16523742676)
        REWARD = "Reward:\n$800\n1,800 Exp."
    elseif LEVEL == 15 or LEVEL <= 29 then
        MON = "Monkey [Lv. 14]"
        QUESTNAME = "JungleQuest"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(-1599.82532, 36.8521347, 153.959076, 0.00275422214, 5.1952032e-08, -0.999996185, 1.33985356e-08, 1, 5.1989133e-08, 0.999996185, -1.35416744e-08, 0.00275422214)
        PUKPOS = CFrame.new(-1610.2681884766, 20.852096557617, 144.16523742676)
        REWARD = "Reward:\n$800\n1,800 Exp."
    elseif LEVEL == 35 or LEVEL <= 39 then
        MON = "Pirate [Lv. 35]"
        QUESTNAME = "BuggyQuest1"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        PUKPOS = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
        REWARD = "Reward:\n$3,000\n10,000 Exp."
    elseif LEVEL == 40 or LEVEL <= 59 then
        MON = "Brute [Lv. 45]"
        QUESTNAME = "BuggyQuest1"
        QUESTNUM = 2
        QUESTPOS = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        PUKPOS = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
        REWARD = "Reward:\n$3,500\n15,000 Exp."
    elseif LEVEL == 60 or LEVEL <= 74 then
        MON = "Desert Bandit [Lv. 60]"
        QUESTNAME = "DesertQuest"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
        PUKPOS = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
        REWARD = "Reward:\n$4,000\n35,000 Exp."
    elseif LEVEL == 75 or LEVEL <= 89 then
        MON = "Desert Officer [Lv. 70]"
        QUESTNAME = "DesertQuest"
        QUESTNUM = 2
        QUESTPOS = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
        PUKPOS = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
        REWARD = "Reward:\n$4,500\n50,000 Exp."
    elseif LEVEL == 90 or LEVEL <= 99 then
        MON = "Snow Bandit [Lv. 90]"
        QUESTNAME = "SnowQuest"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
        PUKPOS = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        REWARD = "Reward:\n$5,000\n70,000 Exp."
    elseif LEVEL == 100 or LEVEL <= 119 then
        MON = "Snowman [Lv. 100]"
        QUESTNAME = "SnowQuest"
        QUESTNUM = 2
        QUESTPOS = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
        PUKPOS = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
        REWARD = "Reward:\n$5,500\n120,000 Exp."    
    elseif LEVEL == 120 or LEVEL <= 149 then
        MON = "Chief Petty Officer [Lv. 120]"
        QUESTNAME = "MarineQuest2"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
        PUKPOS = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
        REWARD = "Reward:\n$6,000\n180,000 Exp."
    
    
    
    
    elseif LEVEL == 1825 or LEVEL <= 1849 then
        MON = "Forest Pirate [Lv. 1825]"
        QUESTNAME = "DeepForestIsland"
        QUESTNUM = 1
        QUESTPOS = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
        PUKPOS = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        REWARD = "Reward:\n$13,000\n61,000,000 Exp."
    elseif LEVEL == 1850 or LEVEL <= 1899 then
        MON = "Mythological Pirate [Lv. 1850]"
        QUESTNAME = "DeepForestIsland"
        QUESTNUM = 2
        REWARD = "Reward:\n$13,000\n64,000,000 Exp."
        QUESTPOS = CFrame.new(-13230.9658, 332.413177, -7624.93457, 0.455187887, -8.75483792e-08, 0.890395403, -4.99329189e-10, 1, 9.85805499e-08, -0.890395403, -4.53172717e-08, 0.455187887)
        PUKPOS = CFrame.new(-13654.9893, 469.822784, -6970.78369, 0.952340543, 2.57623842e-08, -0.305036813, 8.97913299e-09, 1, 1.1248995e-07, 0.305036813, -1.09867713e-07, 0.952340543)    
    elseif LEVEL == 1900 or LEVEL <= 1924 then
        MON = "Jungle Pirate [Lv. 1900]"
        QUESTNAME = "DeepForestIsland2"
        QUESTNUM = 1
        REWARD = "Reward:\n$13,000\n67,000,000 Exp."
        QUESTPOS = CFrame.new(-12681.1875, 390.876617, -9899.07813, 0.54442966, -5.77085792e-08, -0.83880651, -1.43213015e-08, 1, -7.80937199e-08, 0.83880651, 5.45293375e-08, 0.54442966)
        PUKPOS = CFrame.new(-12094.2979, 331.773315, -10563.0127, 0.319699943, -6.73379574e-08, -0.947518826, 3.25387433e-08, 1, -6.00888583e-08, 0.947518826, -1.16206689e-08, 0.319699943)

    elseif LEVEL >= 1925 then
        MON = "Musketeer Pirate [Lv. 1925]"
        QUESTNAME = "DeepForestIsland2"
        QUESTNUM = 2
        REWARD = "Reward:\n$15,000\n70,000,000 Exp."
        QUESTPOS = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
        PUKPOS = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
    end
    
    
    if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
    else
    local args = {
        [1] = "Buso"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
    
    
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestReward.Title.Text ~= REWARD then
    local args = {
        [1] = "AbandonQuest"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
        
    
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = QUESTPOS
            wait(.5)
    local args = {
        [1] = "StartQuest",
        [2] = QUESTNAME,
        [3] = QUESTNUM
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PUKPOS
    end
    
    
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == MON  then
            if v.Humanoid.Health <= 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PUKPOS
                else
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,14,0)
            v.Humanoid:ChangeState(11)
            click()
            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
            v.HumanoidRootPart.Transparency = 1
            v.HumanoidRootPart.CanCollide = false
            v.Humanoid.WalkSpeed = 0
            v.Humanoid.JumpPower = 0
            end
            end
    end
    
    if _G.AUTOFARM == false then
        -- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "AbandonQuest"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end



    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    
            for ii,vv in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == MON then
                if vv.Name == MON then
            vv.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            vv.HumanoidRootPart.CanCollide = false
            end
            end
            end
    
    
    
     
    end 
     end)
    end
    end)





section1:addToggle("Fast Attack", false, function(a)
        pcall(function()
            _G.FastAttack = a
        
                if _G.FastAttack then 
                    require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 60
                    require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
                    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/FastAttack.lua")()
                end
            end)
        end)


        section1:addToggle("Auto ElectricClaw", false, function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10368.372070313, 331.65426635742, -10126.990234375)
            wait(.5)
            local args = {
                [1] = "BuyElectricClaw"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait(.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12551.794921875, 337.16836547852, -7541.5478515625)
            wait(.3)
            local args = {
                [1] = "BuyElectricClaw"
            }
            
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            wait(.2)
        end)

stats:addButton("Check Stat Point", function()
     game.StarterGui:SetCore("SendNotification", {
         Title = "Points", 
         Text = "Points = " ..game:GetService("Players")["LocalPlayer"].Data.Points.Value,
         Icon = "",
         Duration = 2.5
        })
    end)



        
        










_G.STATSUPPOINT = 1

autostats:addToggle("Melee", nil, function(value)
_G.UPMELEE = value
while _G.UPMELEE do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = _G.STATSUPPOINT
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

autostats:addToggle("Defense", nil, function(value)
_G.UPDEFENDS = value
while _G.UPDEFENDS do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = _G.STATSUPPOINT
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

autostats:addToggle("Sword", nil, function(value)
_G.UPSWORD = value
while _G.UPSWORD do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = _G.STATSOPPOINT
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

autostats:addToggle("Gun", nil, function(value)
_G.UPGUN = value
while _G.UPGUN do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = _G.STATSOPPOINT
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

autostats:addToggle("Blox fruit", nil, function(value)
_G.UPFRUIT = value
while _G.UPFRUIT do wait()
local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = _G.STATSOPPOINT
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)








autostats:addSlider("Select stats point", 1, 0, 10, function(value)
_G.STATSUPPOINT = value
end)








-- second page
local theme = venyx:addPage("Theme")
local colors = theme:addSection("Colors")
local key = theme:addSection("Keybind")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end




key:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end, function()
end)


tp:addButton("First Sea",function()
    local args = {
        [1] = "TravelMain" -- OLD WORLD to NEW WORLD made by Nino_exe
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
tp:addButton("Second Sea",function()
    local args = {
        [1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD made by Nino_exe
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end)
tp:addButton("Third Sea", function()
    local args = {
        [1] = "TravelZou" -- Tp to third sea by Nino_exe
    }

    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)




tp:addButton("Teleport to SeaBeatsts",function()
    for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,100,0)
        end
    end
end)




if game.PlaceId == 2753915549 then
    tp2:addButton("Start Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.2832, 16.3085976, 1426.86792)
    end)
    tp2:addButton("Marine Start",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881969, 2046.99817)
    end)
    tp2:addButton("Middle Town",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.824158, 7.88708115, 1436.67908)
    end)
    tp2:addButton("Jungle",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.77222, 11.8870859, 341.356476)
    end)
    tp2:addButton("Pirate Village",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.34998, 4.78708982, 3855.91992)
    end)
    tp2:addButton("Desert",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 6.47350502, 4192.88721)
    end)
    tp2:addButton("Frozen Village",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.00928, 27.0074959, -1211.73376)
    end)
    tp2:addButton("MarineFord",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.687294, 4260.55908)
    end)
    tp2:addButton("Colosseum",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.35474, 7.38933945, -3014.37305)
    end)
    tp2:addButton("Sky 1st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.707275, -2622.35449)
    end)
    tp2:addButton("Sky 2st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249, 903.708557, -1912.69055)
    end)
    tp2:addButton("Sky 3st Floor",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.31006, 5545.52832, -320.704956)
    end)
    tp2:addButton("Prison",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.16455, 5.68742752, 740.194641)
    end)
    tp2:addButton("Magma Village",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.75879, 8.61593437, 8467.87695)
    end)
    tp2:addButton("UndeyWater City",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8516, 11.7796879, 1819.78418)
    end)
    tp2:addButton("Fountain City",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124, 4.53632832, 4037.8562)
    end)
    tp2:addButton("House Cyborg's",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.72559, 71.3003616, 3998.23047)
    end)
    tp2:addButton("Shank's Room",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
    end)
    tp2:addButton("Mob Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
    end)
end

if game.PlaceId == 4442272183 then
    tp2:addButton("First Spot",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.9490662, 18.0710983, 2834.98779)
    end)

    tp2:addButton("Kingdom of Rose",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Kingdom of Rose"].CFrame
    end)

    tp2:addButton("Dark Areas",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["_WorldOrigin"].Locations["Dark Arena"].CFrame
    end)

    tp2:addButton("Flamingo Mansion",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.096313, 331.886475, 673.464966)
    end)

    tp2:addButton("Flamingo Room",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2302.19019, 15.1778421, 663.811035)
    end)

    tp2:addButton("Green bit",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.14697, 72.9919434, -3166.51416)
    end)

    tp2:addButton("Cafe",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-385.250916, 73.0458984, 297.388397)
    end)

    tp2:addButton("Factory",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.42569, 210.019623, -432.504791)
    end)

    tp2:addButton("Colosseum",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.58191, 44.5890656, 1360.30652)
    end)

    tp2:addButton("Ghost Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5571.84424, 195.182297, -795.432922)
    end)

    tp2:addButton("Ghost Island 2nd",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5931.77979, 5.19706631, -1189.6908)
    end)

    tp2:addButton("Snow Mountain",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1384.68298, 453.569031, -4990.09766)
    end)

    tp2:addButton("Hot and Cold",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6026.96484, 14.7461271, -5071.96338)
    end)

    tp2:addButton("Magma Side",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
    end)

    tp2:addButton("Cursed Ship",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.059143, 124.752518, 33071.8125)
    end)

    tp2:addButton("Frosted Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5400.40381, 28.21698, -6236.99219)
    end)

    tp2:addButton("Forgotten Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3043.31543, 238.881271, -10191.5791)
    end)

    tp2:addButton("Usoopp Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4748.78857, 8.35370827, 2849.57959)
    end)

    tp2:addButton("Raids Low",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5554.95313, 329.075623, -5930.31396)
    end)

    tp2:addButton("Minisky Island",function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.358917, 49325.7031, -35259.3008)
    end)
end

if game.PlaceId == 7449423635 then
    tp2:addButton("Port Town", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-291.60256958008, 43.86499786377, 5459.919921875)
    end)
    tp2:addButton("Hydar Island", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3558.0576171875, 72.423530578613, -491.10144042969)
    end)
    tp2:addButton("Great Tree", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2250.6081542969, 25.88773727417, -6452.6118164063)
    end)
    tp2:addButton("Floating Turtle", function()
        game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11463.234375, 751.84136962891, -7956.5590820313)
    end)
    tp2:addButton("Castle on the Sea", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4982.5913085938, 314.51559448242, -3017.0119628906)
    end)
    tp2:addButton("Mansion", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12551.794921875, 337.16836547852, -7541.5478515625)
    end)
end


stab:addToggle("Grab All Chest[RISK]", false, function(ch)


_G.Chest = ch
spawn(function()
    while wait() do
        if _G.Chest then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                    v.CanCollide = false
                                            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1.5, Enum.EasingStyle.Linear)
                        tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = v.CFrame})
                        tween:Play()
                end 
            end
        end
    end
end)
end)

-- stab2
stab2:addButton("Rejoin",function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)









-- farm

section1:addToggle("Auto Factory",false,function(vu)
    _G.AUTOFAC = vu
        while _G.AUTOFAC do wait()
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
                EquipWeapon(SelectToolWeapon)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end)
        end
end)











section1:addToggle("Auto SuperHuman",false,function(vu)
    Superhuman = vu
    while Superhuman do wait()
        if Superhuman then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                local args = {
                    [1] = "BuyBlackLeg"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end   
            if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                SelectToolWeapon = "Superhuman"
            end  
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                    SelectToolWeapon = "Black Leg"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                    SelectToolWeapon = "Electro"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                    SelectToolWeapon = "Fishman Karate"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                    SelectToolWeapon = "Dragon Claw"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyElectro"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyElectro"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyFishmanKarate"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyFishmanKarate"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    local args = {
                        [1] = "BuySuperhuman"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    local args = {
                        [1] = "BuySuperhuman"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            end
        end
    end
end)

section2:addToggle("Auto Buy Legendary Sword",false,function(Value)
    LegebdarySword = Value    
    while LegebdarySword do wait()
        if LegebdarySword then
            local args = {
                [1] = "LegendarySwordDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)



section1:addToggle("Auto EliteHunter", false, function(el)
    _G.EliteHunter = el
end)










local weapon = {}

for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
       table.insert(weapon,v.Name)
    end
end

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       table.insert(weapon,v.Name)
    end
end



for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       table.insert(weapon,v.Name)
    end
end





 -- elite
 spawn(function()
    while wait() do
        if _G.EliteHunter then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
                            repeat wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,13,0)
                                if HideHit then
                                    v.HumanoidRootPart.Transparency = 1
                                else
                                    v.HumanoidRootPart.Transparency = 1
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            until _G.EliteHunter == false or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                        end
                    end
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5418.392578125, 313.74130249023, -2824.9157714844)
                end
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5332.7299804688, 1088.7250976563, -2642.2829589844)
                wait(.4)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                wait(.2)
            EquipWeapon(_G.SelectToolWeapon)
            end
        end
    end
end)




local WeaponSelect = nil
section1:addDropdown("Select/Weapon", weapon, function(text)
   _G.SelectToolWeapon = text
end)







-- game tab


gtab2:addButton("Buy SkyJump",function()
    local args = {
        [1] = "BuyHaki",
        [2] = "Geppo"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab2:addButton("Buy Buso Haki",function()
    local args = {
        [1] = "BuyHaki",
        [2] = "Buso"
    }

    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab2:addButton("Buy Observation haki",function()
    local args = {
        [1] = "KenTalk",
        [2] = "Buy"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab2:addButton("Buy Soru",function()
    local args = {
        [1] = "BuyHaki",
        [2] = "Soru"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)


























gtab3:addButton("Black Leg",function()
    local args = {
        [1] = "BuyBlackLeg"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Electro",function()
    local args = {
        [1] = "BuyElectro"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Fishman Karate",function()
    local args = {
        [1] = "BuyFishmanKarate"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Dragon Claw",function()
    local args = {
        [1] = "BlackbeardReward",
        [2] = "DragonClaw",
        [3] = "1"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BlackbeardReward",
        [2] = "DragonClaw",
        [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Superhuman",function()
    local args = {
        [1] = "BuySuperhuman"
    }

    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Death Step",function()
    local args = {
        [1] = "BuyDeathStep"
    }

    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("Shakman Karate",function()
    local args = {
        [1] = "BuySharkmanKarate",
        [2] = true
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BuySharkmanKarate"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

gtab3:addButton("ElectricClaw",function()
local args = {
    [1] = "BuyElectricClaw"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)






--Anti AKF

setf:addToggle("Anit AFK",true,function(vu)
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end)



fake:addTextbox("Fake Level", "Default", function(level)
    game:GetService("Players")["LocalPlayer"].Data.Level.Value = level
end)

fake:addTextbox("Fake Fragments", "Default", function(f)
    game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = f
end)

fake:addTextbox("Fake Beli", "Default", function(m)
    game:GetService("Players")["LocalPlayer"].Data.Beli.Value = m
end)




stab0:addButton("Devil Shop",function()
    local args = {
        [1] = "GetFruits"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

stab0:addButton("Inventory",function()
    local args = {
        [1] = "getInventoryWeapons"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)

stab0:addButton("Color Haki",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)

stab0:addButton("Title Name",function()
    local args = {
        [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)




-- players


spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    _G.SelectToolWeaponGun = v.Name
                end
            end
        end
    end
end)


players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(players,v.Name)
end







tab:addDropdown("Select/Players", players, function(abc)
    _G.SelectP = abc
end)


tab:addButton("Refesh Player", function()
    table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)    



misc:addDropdown("Select/Weapon Kill", weapon, function(kill)
    _G.SelectToolKillWeapon = kill
end)

misc:addToggle("Auto Kill Player[Malee]", false, function(at)
    _G.AUTOKILL = at

    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(players,v.Name)
    end

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AUTOKILL then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        end)
        end)


spawn(function()
    while wait() do
        if _G.AUTOKILL then
        if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        else
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        
        if _G.AUTOKILL   then
            EquipWeapon(_G.SelectToolKillWeapon)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Players[_G.SelectP].Character.HumanoidRootPart.Size = Vector3.new(80,80,80)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.SelectP].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,40)
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))    
        end
        end
    end
end)
end)









misc:addToggle("Auto Kill Player[Gun]", false, function(ad)
    _G.AUTOKILLG = ad

    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(players,v.Name)
    end

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AUTOKILLG then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
        end)
        end)


spawn(function()
    while wait() do
        if _G.AUTOKILLG then
        if game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        else
        local args = {
            [1] = "Buso"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        
        if _G.AUTOKILLG   then
            EquipWeapon(_G.SelectToolKillWeapon)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            game.Players[_G.SelectP].Character.HumanoidRootPart.Size = Vector3.new(80,80,80)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.SelectP].Character.HumanoidRootPart.CFrame * CFrame.new(0,50,50)
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))    
        end
        end
    end
end)
end)





misc1:addToggle("Aimbot Gun", false, function(aim)
    _G.AIMBOT = aim




end)

spawn(function()
    pcall(function()
        local lp = game:GetService('Players').LocalPlayer
        local mouse = lp:GetMouse()
        mouse.Button1Down:Connect(function()
            if _G.AIMBOT and game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectToolWeaponGun) then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(_G.SelectP).Character.HumanoidRootPart.Position,
                    [2] = game:GetService("Players"):FindFirstChild(_G.SelectP).Character.HumanoidRootPart
                }
                game:GetService("Players").LocalPlayer.Character[_G.SelectToolKillWeapon].RemoteFunctionShoot:InvokeServer(unpack(args))  
                end
            end)
        end)
    end)

misc1:addToggle("Aimbot Skill", false, function(aims)
    _G.AimbotSkill = aims

while _G.AimbotSkill do wait()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(_G.SelectP).Character.HumanoidRootPart.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
end
end)
end
end)

tab:addButton("Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.SelectP].Character.HumanoidRootPart.CFrame
end)









if _G.AIMBOT then
    while wait() do
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        ame.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end





spawn(function()
    pcall(function()
        while _G.AUTOKILL do wait()
            if _G.AUTOKILL then
                EquipWeapon(_G.SelectToolKillWeapon)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end

    end)
end)









safe:addToggle("Safe Mode", false, function(xc)
    _G.SafeMode = xc
end)

spawn(function()
    while wait() do
        if _G.SafeMode then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= SelectHp then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000000000000000,0)
            end
        end
    end
end)


safe:addSlider("Select HP For Safe", 2000, 1000, 5000, function(xd)
    SelectHp = xd
end)
-- random

dtab:addButton("Random Fruit", function()
    local args = {
        [1] = "Cousin",
        [2] = "Buy"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)











-- dtab

dtab:addToggle("Grab All Fruit", false, function(vu)
    BRING = vu
        pcall(function()
            while BRING do wait()
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if string.find(v.Name, "Fruit") then 
                        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
		end)
end)

ltab1:addDropdown("Select/Raids", {"Flame", "Ice", "Quake", "Light", "Dark", "String", "Rumble", "Magma", "Human: Budha"}, function(text)
    Select = text
end)

ltab1:addToggle("Auto Buy", false, function(bu)

        _G.AB = bu

            while _G.AB do wait()



            local args = {
                [1] = "RaidsNpc",
                [2] = "Select",
                [3] = Select
            }
    
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end    
end)







ltab2:addToggle("Kill Aura", false, function(v)
    _G.KILLALL = v
    while _G.KILLALL do wait()
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                if v.Name == "HumanoidRootPart" then
                    v.Parent.Humanoid.Health = 0
                    v.Parent.HumanoidRootPart.Size = Vector3.new(40,40,40)
                    v.Parent.HumanoidRootPart.CanCollide = false
                    v.Parent.HumanoidRootPart.Size = Vector3.new(2,2,1)
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
    end



end)




spawn(function()
    while wait() do
        if _G.NextIsland then
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,40,0)
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,40,0)
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,40,0)
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,40,0)
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,40,0)
            end
        end
    end
end)


ltab2:addToggle("Auto Next Island", false, function(at)
    _G.NextIsland = at
end)












if game.PlaceId == 4442272183 then
    ltab2:addButton("Teleport To Lab", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6439.8774414063, 250.6195526123, -4500.068359375)
    end)
end

if game.PlaceId == 7449423635 then
    ltab2:addButton("Teleport To Lab", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5014.5673828125, 314.81817626953, -2820.419921875)
    end)
end




misc:addToggle("Spectate Player", false, function(se)
    Sp = se
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(_G.SelectP)
    repeat wait(.1)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false 
    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)


spawn(function()
    while wait() do
        table.clear(weapon)
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                table.insert(weapon,v.Name)
            end
        end
    end
end)







SelectBoat = {}
for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
    table.insert(SelectBoat,v.Name)
end


stab1:addDropdown("Select Boats",SelectBoat,function(vu)
boatsselect  = vu
end) 

stab1:addButton("Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Boats[boatsselect].Seat.CFrame
end)

stab1:addButton("Refesh Boat", function()
    table.clear(SelectBoat)
    for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
        table.insert(SelectBoat,v.Name)
    end
end)







warn("Anti AFK Actived")

--load page by Nino_exe
venyx:SelectPage(venyx.pages[1], true)
