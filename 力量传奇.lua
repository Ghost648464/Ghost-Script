local Interstellar = {
    Whitelist = {},
    killplayer = "",
    AutoKill = false,
    Main = false,
    ToolName = "",
    Rocks = "",
    Rock = "",
    stone = "",
    AutoOpen = false,
    birth = 9e9
}

local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local petshow = {}
local BuyPetShop = ""
local EvolvePet = ""

for i, pet in pairs(game:GetService("ReplicatedStorage").cPetShopFolder:GetChildren()) do
    petshow[i] = pet.Name
end

local crystalshow = {}
local OpenCrystal = ""

for i, crystal in pairs(game:GetService("Workspace").mapCrystalsFolder:GetChildren()) do
    crystalshow[i] = crystal.Name
end
local function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end

local speeds = 5
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat

local function updatespeed(char, hum)
	if nowe == true then
		tpwalking = false
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait()

		for i = 1, speeds do
			spawn(function()
				tpwalking = true

				while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						char:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
	end
end

speaker.CharacterAdded:Connect(function(char)
	local char = speaker.Character
	if char then
		task.wait(0.7)
		char.Humanoid.PlatformStand = false
		char.Animate.Disabled = false
	end
end)

local dropdown = {}
local playernamedied = ""

for i, player in ipairs(Players:GetPlayers()) do
    dropdown[i] = player.Name
end

local function Refresh()
    dropdown = {}
    for i, player in ipairs(Players:GetPlayers()) do
        dropdown[i] = player.Name
    end
end
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 
 wait(1)
  Notification:Notify( 
     {Title = "ROBLOX-Ghost script（鬼脚本）", Description = "鬼脚本作者：鬼"}, 
     {OutlineColor = Color3.fromRGB(255, 0, 0),Time = 5, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=78699805802392", ImageColor = Color3.fromRGB(0, 0, 255)} 
 ) 
 wait(1.5)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/block/refs/heads/main/UI/%E5%BD%A9%E8%99%B9UI.lua"))() 
local window = library:new(" 鬼脚本-通用")

local Ghost_1 = window:Tab("公告", "78699805802392") --2
local Ghost_2 = window:Tab("人物功能", "78699805802392") --
local Ghost_3 = window:Tab("主要功能", "78699805802392") --
local Ghost_4 = window:Tab("锻炼功能", "78699805802392") --
local Ghost_5 = window:Tab("水晶功能", "78699805802392") --
local Ghost_6 = window:Tab("购买功能", "78699805802392") --
local Ghost_7 = window:Tab("进化功能", "78699805802392") --
local Ghost_8 = window:Tab("传送功能", "78699805802392") --
local Ghost_9 = window:Tab("刷业报功能", "78699805802392") --
local Ghost_10 = window:Tab("刷重生功能", "78699805802392") --
local Ghost_11 = window:Tab("查看和复制游戏数据", "78699805802392") --
local Ghost_12 = window:Tab("", "78699805802392") --
local Ghost_13 = window:Tab("", "78699805802392") --
local Ghost_14 = window:Tab("", "78699805802392") --
local Ghost_15 = window:Tab("", "78699805802392") --
local Ghost_16 = window:Tab("", "78699805802392") --
local Ghost_17 = window:Tab("", "78699805802392") --
local Ghost_19 = window:Tab("", "78699805802392") --
local Ghost_20 = window:Tab("", "78699805802392") --
----------------------------------------------------------------------------------------------------------------------------------------
local Ghost_1a = Ghost_1:section("Ghost-Script",true)
local Ghost_1b = Ghost_1:section("UI设置",true)
local Player = Ghost_2:section("玩家调整功能",true)
local Game = Ghost_2:section("游戏调整功能",true)
local Main = Ghost_3:section("Ghost-Script",true)
local Exercise = Ghost_4:section("Ghost-Script",true)
local Crystal = Ghost_5:section("Ghost-Script",true)
local Buys = Ghost_6:section("Ghost-Script",true)
local Evolve = Ghost_7:section("Ghost-Script",true)
local teleport = Ghost_8:section("Ghost-Script",true)
local Karma = Ghost_9:section("Ghost-Script",true)
local Birth = Ghost_10:section("Ghost-Script",true)
local Look = Ghost_11:section("查看",true)
local Copy = Ghost_11:section("复制",true)

Ghost_1a:Label("鬼脚本")
Ghost_1a:Label("作者：鬼")
Ghost_1a:Label("鬼脚本禁止倒卖!")
Ghost_1a:Label("鬼脚本作者：3368904118")
Ghost_1a:Label("鬼脚本官群：858895377")
Ghost_1a:Button("点我复制鬼脚本作者",function()
    setclipboard("3368904118")
end)    
Ghost_1a:Button("点我复制鬼脚本官群",function()
    setclipboard("858895377")
end)    

Ghost_1b:Toggle("移除UI辉光", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
        else
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
        end
    end)
Ghost_1b:Toggle("彩虹UI", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
        end
    end)

Ghost_1b:Button("摧毁GUI",function()
            game:GetService("CoreGui")["frosty is cute"]:Destroy()
        end)    

Player:Toggle("飞行", "Fly", false, function(Value)
	local char = speaker.Character
	if not char or not char.Humanoid then
		return
	end

	local hum = char.Humanoid
	if nowe == true then
		nowe = false

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)	
	else
		nowe = true
		updatespeed(char, hum)

		char.Animate.Disabled = true
		for i,v in next, hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		hum:ChangeState(Enum.HumanoidStateType.Swimming)
	end
    
    local function CheckRig()
        if speaker.Character and speaker.Character:FindFirstChild("Torso") then
                return speaker.Character.Torso
        elseif speaker.Character and speaker.Character:FindFirstChild("LowerTorso") then
                return speaker.Character.LowerTorso
        end
    end


	local UpperTorso = CheckRig()
	local flying = true
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	local bg = Instance.new("BodyGyro", UpperTorso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = UpperTorso.CFrame

	local bv = Instance.new("BodyVelocity", UpperTorso)
	bv.velocity = Vector3.new(0,0.1,0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

	if nowe == true then
		hum.PlatformStand = true
	end

	while nowe == true or hum.Health == 0 do
		task.wait()

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed-1
			if speed < 0 then
				speed = 0
			end
		end
		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
		else
			bv.velocity = Vector3.new(0,0,0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	end

	ctrl = {f = 0, b = 0, l = 0, r = 0}
	lastctrl = {f = 0, b = 0, l = 0, r = 0}
	speed = 0
	bg:Destroy()
	bv:Destroy()

	hum.PlatformStand = false
	char.Animate.Disabled = false
	tpwalking = false
end, false)

Player:Button("速度 + 1", function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		speeds = speeds + 1
		updatespeed(char, hum)
		end
end)

Player:Button("速度 - 1", function()
	local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		if speeds > 1 then
			speeds = speeds - 1
			updatespeed(char, hum)
		end
    end
end)

Player:Button("上升", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
end)

Player:Button("下降", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
end)

local Flyspeed = Player:Label("当前速度:"..speeds)
spawn(function()
while wait() do
pcall(function()
Flyspeed.Text = "当前速度:"..game:GetService("Players").speeds
end)
end
end)

Game:Textbox("力量", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.leaderstats.Strength.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("耐力", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.Durability.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("敏捷", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.Agility.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("重生", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("宝石", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.Gems.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("邪恶业报", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.evilKarma.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("好人业报", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.goodKarma.Value = Value
    else
        warn("错误数字")
    end
end)

Game:Textbox("总业报", "Textboxflags", "输入", function(Value)
    if Value then
        game:GetService("Players").LocalPlayer.leaderstats.Kills.Value = Value
    else
        warn("错误数字")
    end
end)

Main:Toggle("自动加入战斗","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
            wait()
        end
    end
end)

Main:Button("收集宝石",function()
    jk = {}
    for _, v in pairs(game:GetService("ReplicatedStorage").chestRewards:GetDescendants()) do
        if v.Name ~= "Light Karma Chest" and v.Name ~= "Evil Karma Chest" then
            table.insert(jk, v.Name)
        end
    end
    for i = 1, #jk do
        wait(2)
        game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(jk[i])
    end
end)

Main:Toggle("自动挥拳", "Auto Active", false, function(Value)
    autopunch = Value
		game:GetService("RunService").Stepped:connect(
		function()
			pcall(
				function()
					if autopunch then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "leftHand")
						game:GetService("Players").LocalPlayer.muscleEvent:FireServer("punch", "rightHand")
						if autopunch then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(
								game:GetService("Players").LocalPlayer.Backpack.Punch
							)
						end
					end

				end
			)
		end
		)
end)

Main:Slider("自定义挥拳间隔", "Slider", 0, 0, 9999999999, function(Value)
    game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = Value
end)

Exercise:Dropdown("选择工具", "Dropdown", {"哑铃","俯卧撑","仰卧起坐","倒立"}, function(Value)
    if Value == "哑铃" then
        Interstellar.ToolName = "Weight"
    elseif Value == "俯卧撑" then
        Interstellar.ToolName = "Pushups"
    elseif Value == "仰卧起坐" then
        Interstellar.ToolName = "Situps"
    elseif Value == "倒立" then
        Interstellar.ToolName = "Handstands"
    end
end)

Exercise:Toggle("自动锻炼","LS", false, function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == Interstellar.ToolName then
            v.Parent = game.Players.LocalPlayer.Character
            v:FindFirstChildOfClass("NumberValue").Value = 0
            wait()
        end
    end
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)

Exercise:Toggle("自动全锻炼全部工具","LS", false, function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Weight" or v.Name == "Handstands" or v.Name == "Pushups" or v.Name == "Situps" then
            v.Parent = game.Players.LocalPlayer.Character
            v:FindFirstChildOfClass("NumberValue").Value = 0
            wait()
        end
    end
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)

Exercise:Label("自动石头V1")

Exercise:Dropdown("选择石头", "Choose Rocks", {"Tiny Rock","Inferno Rock","Punching Rock","","Rock Of Legends","Muscle King Mountain"}, function(Value)
    Interstellar.Rocks = Value
end)

Exercise:Toggle("自动打石头(把石头传送过来打)", "Auto Rock", false, function(rock)
    getgenv().rock = rock
while getgenv().rock do
wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
local OldPOS = game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.CFrame
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.CanCollide = false
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.Transparency = 100
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.rockGui.rockName.Visible = false
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.rockGui.statLabel.Visible = false
end
if not getgenv().rock then
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.CFrame = CFrame.new(OldPOS)
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.CanCollide = true
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.Transparency = 0
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.rockGui.rockName.Visible = true
game:GetService("Workspace").machinesFolder[Interstellar.Rocks].Rock.rockGui.statLabel.Visible = true
end
end)

Exercise:Label("自动石头V2")

Exercise:Dropdown("选择石头", "Choose Rocks", {"Frozen Rock","Inferno Rock","Rock Of Legends","Muscle King Mountain"}, function(Value)
    Interstellar.Rock = Value
end)

Exercise:Toggle("自动打石头(隔空打石头)", "Auto Rock", false, function(rocks)
    getgenv().rocks = rocks
while getgenv().rocks do
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == "Punch" then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then
h:Activate()
end
end
firetouchinterest(game.workspace.machinesFolder[Interstellar.Rock].Rock, game.Players.LocalPlayer.Character.LeftHand, 0)
firetouchinterest(game.workspace.machinesFolder[Interstellar.Rock].Rock, game.Players.LocalPlayer.Character.LeftHand, 1)
wait()
end
end)

Exercise:Label("自动石头V3")

Exercise:Dropdown("选择石头", "Auto Rock", {"小石头","中石头","大石头","沙滩石头","蓝石头","紫石头","橙石头","白石头","绿石头"}, function(Value)
    Interstellar.stone = Value
end)

Exercise:Toggle("自动打石头(传送过去打)", "Auto Rock", false, function(Value)
 getgenv().RK0 = Value
 while getgenv().RK0 do
 wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Punch" then
    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end

for i,h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if h:IsA("Tool") and h.Name == "Punch" then 
h:Activate()
end
end
if Interstellar.stone == "小石头" then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159)
elseif Interstellar.stone == "中石头" then
if game.Players.LocalPlayer.Durability.Value >= 10 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299)
end
elseif Interstellar.stone == "大石头" then
if game.Players.LocalPlayer.Durability.Value >= 100 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928)
end
elseif Interstellar.stone == "沙滩石头" then
if game.Players.LocalPlayer.Durability.Value >= 5000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394)
end
elseif Interstellar.stone == "蓝石头" then
if game.Players.LocalPlayer.Durability.Value >= 150000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2566.78076, 3.97019577, -277.503235, -0.923934579, -4.11600105e-08, -0.382550538, -3.38838042e-08, 1, -2.57576183e-08, 0.382550538, -1.08360858e-08, -0.923934579)
end
elseif Interstellar.stone == "紫石头" then
if game.Players.LocalPlayer.Durability.Value >= 400000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148)
end
elseif Interstellar.stone == "橙石头" then
if game.Players.LocalPlayer.Durability.Value >= 750000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783)
end
elseif Interstellar.stone == "白石头" then
if game.Players.LocalPlayer.Durability.Value >= 1000000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997) 
end
elseif Interstellar.stone == "绿石头" then
if game.Players.LocalPlayer.Durability.Value >= 5000000 then
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137) 
end
end
end
if not getgenv().RK0 then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):UnequipTools()        
end
end)

Crystal:Dropdown("选择水晶", "Choose Crystal", crystalshow, function(Value)
    OpenCrystal = Value
end)

Crystal:Button("购买水晶", function()
game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", OpenCrystal)
end)

Crystal:Toggle("自动购买","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
        wait()
     end
end
end)

Crystal:Toggle("蓝色水晶（1000水晶）（0重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
        wait()
     end
end
end)

Crystal:Toggle("绿色水晶（3000水晶）（0重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Green Crystal")
        wait()
     end
end
end)

Crystal:Toggle("冰霜水晶（5000水晶）（1重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Frost Crystal")
        wait()
     end
end
end)

Crystal:Toggle("神话水晶（8000水晶）（5重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Mythical Crystal")
        wait()
     end
end
end)

Crystal:Toggle("地狱火水晶（15000水晶）（15重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
        wait()
     end
end
end)

Crystal:Toggle("传奇水晶（30000水晶）（30重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Legends Crystal")
        wait()
     end
end
end)

Crystal:Toggle("肌肉精英水晶（100万水晶）（30重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Muscle Elite Crystal")
        wait()
     end
end
end)

Crystal:Toggle("力量之王水晶（1.500万水晶）（5重生）","LS", false, function(state)
    Interstellar.AutoOpen = state
    if Interstellar.AutoOpen then
        while Interstellar.AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Galaxy Oracle Crystal")
        wait()
     end
end
end)

Birth:Toggle("自动重生","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            wait()
        end
    end
end)

Buys:Dropdown("选择购买的宠物", "Choose Pet", petshow, function(Value)
    BuyPetShop = Value
end)

Buys:Button("购买", function()
game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(BuyPetShop))
end)

Buys:Toggle("自动购买", "Auto buy", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild(BuyPetShop))
            wait()
        end
    end
end)

Buys:Toggle("自动购买暗星猎人","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Darkstar Hunter"))
            wait()
        end
    end
end)

Buys:Toggle("自动购买小金人","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Gold Warrior"))
            wait()
        end
    end
end)

Buys:Toggle("自动购买以太精灵兔子","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Aether Spirit Bunny"))
            wait()
        end
    end
end)

Buys:Toggle("自动购买肌肉王光环","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Muscle King"))
            wait()
        end
    end
end)

Buys:Toggle("自动购买控制论对决龙","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").cPetShopRemote:InvokeServer(game:GetService("ReplicatedStorage").cPetShopFolder:FindFirstChild("Cybernetic Showdown Dragon"))
            wait()
        end
    end
end)

Evolve:Dropdown("选择进化的宠物", "Choose Pet", petshow, function(Value)
    EvolvePet = Value
end)

Evolve:Button("进化", function()
game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet",EvolvePet)
end)

Evolve:Toggle("自动进化","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet",EvolvePet)
            wait()
        end
    end
end)

Evolve:Toggle("自动进化暗星猎人","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet","Darkstar Hunter")
            wait()
        end
    end
end)

Evolve:Toggle("自动进化小金人","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet","Gold Warrior")
            wait()
        end
    end
end)

Evolve:Toggle("自动进化以太精灵兔子","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet","Aether Spirit Bunny")
            wait()
        end
    end
end)

Evolve:Toggle("自动进化控制论对决龙","LS", false, function(state)
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer("evolvePet","Cybernetic Showdown Dragon")
            wait()
        end
    end
end)

local killplayer = Karma:Dropdown("选择锁定玩家", "", dropdown, function(Value)
    Interstellar.killplayer = Value
end)

Karma:Button("重置玩家名字", function()
    Refresh()
    killplayer:SetOptions(dropdown)
end)

Karma:Toggle("自动击杀锁定玩家", "", false, function(Value)
    Interstellar.AutoKill = Value
    if Interstellar.AutoKill then
        while Interstellar.AutoKill do
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= Players.LocalPlayer and player.Name == Interstellar.killplayer then
                    local character = player.Character
                    if character then
                        local head = character:FindFirstChild("Head")
                        local localPlayer = game.Players.LocalPlayer
                        local leftHand = localPlayer and localPlayer.Character:FindFirstChild("LeftHand")
                        if head and leftHand then
                            pcall(function()
                                firetouchinterest(head, leftHand, 0)
                                wait(0.01)
                                firetouchinterest(head, leftHand, 1)
                            end)
                        end
                    end
                end
            end
            wait(0.1)
        end
    end
end)

Karma:Toggle("锁定攻击邪恶业报", "warry!!!!", false, function(Value)
    _G.killevil = Value
    if _G.killevil then
        while _G.killevil do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game:GetService("Players").LocalPlayer and player.evilKarma.Value > 1 and player.leaderstats.Kills.Value < 0 then
                    local targetPosition = player.Character and player.Character.Head and player.Character.Head.Position or Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") and v.Name == "Punch" then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                        end
                    end
                    for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if h:IsA("Tool") and h.Name == "Punch" then
                            h:Activate()
                        end
                    end
                    wait()
                end
            end
            wait()
        end
    end
end)

Karma:Toggle("锁定攻击善良业报", "warry!!!!", false, function(Value)
    _G.killgood = Value
    if _G.killgood then
        while _G.killgood do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game:GetService("Players").LocalPlayer and player.goodKarma.Value > 1 and player.leaderstats.Kills.Value > 0 then
                    local targetPosition = player.Character and player.Character.Head and player.Character.Head.Position or Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") and v.Name == "Punch" then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                        end
                    end
                    for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if h:IsA("Tool") and h.Name == "Punch" then
                            h:Activate()
                        end
                    end
                    wait()
                end
            end
            wait()
        end
    end
end)

Karma:Toggle("攻击所有人", "warry!!!!", false, function(Value)
    _G.killall = Value
    if _G.killall then
        while _G.killall do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game:GetService("Players").LocalPlayer then
                    local targetPosition = player.Character and player.Character.Head and player.Character.Head.Position or Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") and v.Name == "Punch" then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                        end
                    end
                    for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if h:IsA("Tool") and h.Name == "Punch" then
                            h:Activate()
                        end
                    end
                    wait()
                end
            end
            wait()
        end
    end
end)

local Whitelists = Karma:Dropdown("选择玩家添加白名单", "Dropdown", dropdown, function(Value)
    table.insert(Interstellar.Whitelist, Value)
end)

local Deletelist = Karma:Dropdown("选择玩家删除白名单", "Dropdown", dropdown, function(Value)
    for i, v in ipairs(Interstellar.Whitelist) do
        if v == Value then
            table.remove(Interstellar.Whitelist, i)
            break
        end
    end
end)

Karma:Button("重置玩家名字", function()
    Refresh()
    Whitelists:SetOptions(dropdown)
    Deletelist:SetOptions(dropdown)
end)

Karma:Toggle("攻击所有人(除了白名单)", "warry!!!!", false, function(Value)
    _G.killall = Value
    if _G.killall then
        while _G.killall do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                if player ~= game:GetService("Players").LocalPlayer and not table.find(Interstellar.Whitelist, player.Name) then
                    local targetPosition = player.Character and player.Character.Head and player.Character.Head.Position or Vector3.new(0, 0, 0)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v:IsA("Tool") and v.Name == "Punch" then
                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(v)
                        end
                    end
                    for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if h:IsA("Tool") and h.Name == "Punch" then
                            h:Activate()
                        end
                    end
                    wait()
                end
            end
            wait()
        end
    end
end)

Karma:Button("查看白名单玩家", function()
    local white = table.concat(Interstellar.Whitelist, ", ")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "冷",
        Text = "白名单玩家: " .. white,
        Duration = 5,
    })
end)

Birth:Label("配合自动锻炼")

Birth:Textbox("自定义重生次数","自定义重生次数","LS", false, function(value)
    Interstellar.birth = value
end)

Birth:Toggle("重生到指定的重生次数","LS", false, function(state)
    if game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value >= Interstellar.birth then
    game.Players.LocalPlayer:Kick("已自动重生到"..Interstellar.birth"，已自动为你踢出")
else
    Interstellar.Main = state
    if Interstellar.Main then
        while Interstellar.Main do
            game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            wait()
        end
     end
end
end)

teleport:Button("传送到出生点", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
end)

teleport:Button("传送到冰霜健身房", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
end)

teleport:Button("传送到神话健身房", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
end)

teleport:Button("传送到永恒健身房", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
end)

teleport:Button("传送到传说健身房", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
end)

teleport:Button("传送到肌肉之王健身房", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
end)

teleport:Button("传送到安全岛", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
end)

teleport:Button("传送到幸运抽奖区域", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
end)

local Power = Look:Label("力量: " .. game:GetService("Players").LocalPlayer.leaderstats.Strength.Value)
spawn(function()
    while wait() do
        pcall(function()
            Power.Text = "力量: " .. game:GetService("Players").LocalPlayer.leaderstats.Strength.Value
        end)
    end
end)

local Durability = Look:Label("耐力: " .. game:GetService("Players").LocalPlayer.Durability.Value)
spawn(function()
    while wait() do
        pcall(function()
            Durability.Text = "耐力: " .. game:GetService("Players").LocalPlayer.Durability.Value
        end)
    end
end)

local Agility = Look:Label("敏捷: " .. game:GetService("Players").LocalPlayer.Agility.Value)
spawn(function()
    while wait() do
        pcall(function()
            Agility.Text = "敏捷: " .. game:GetService("Players").LocalPlayer.Agility.Value
        end)
    end
end)

local Rebirth = Look:Label("重生: " .. game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value)
spawn(function()
    while wait() do
        pcall(function()
            Rebirth.Text = "重生: " .. game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
        end)
    end
end)

local Gems = Look:Label("宝石: " .. game:GetService("Players").LocalPlayer.Gems.Value)
spawn(function()
    while wait() do
        pcall(function()
            Gems.Text = "宝石: " .. game:GetService("Players").LocalPlayer.Gems.Value
        end)
    end
end)

local evilKarma = Look:Label("邪恶业报: " .. game:GetService("Players").LocalPlayer.evilKarma.Value)
spawn(function()
    while wait() do
        pcall(function()
            evilKarma.Text = "邪恶业报: " .. game:GetService("Players").LocalPlayer.evilKarma.Value
        end)
    end
end)

local goodKarma = Look:Label("善良业报: " .. game:GetService("Players").LocalPlayer.goodKarma.Value)
spawn(function()
    while wait() do
        pcall(function()
            goodKarma.Text = "善良业报: " .. game:GetService("Players").LocalPlayer.goodKarma.Value
        end)
    end
end)

local Kill = Look:Label("总业报: " .. game:GetService("Players").LocalPlayer.leaderstats.Kills.Value)
spawn(function()
    while wait() do
        pcall(function()
            Kill.Text = "总业报: " .. game:GetService("Players").LocalPlayer.leaderstats.Kills.Value
        end)
    end
end)


local Players = Copy:Dropdown("选择玩家名字已开始下面的功能", 'Dropdown', dropdown, function(v)
    playernamedied = v
end)

Copy:Button("重置玩家名字", function()
    Refresh()
    Players:SetOptions(dropdown)
end)


Copy:Button("复制他的信息", function()
    local player = game:GetService("Players"):FindFirstChild(playernamedied)
    if player then
        local info = "名字: " .. player.Name .. "\n" ..
                     "力量: " .. player.leaderstats.Strength.Value .. "\n" ..
                     "耐力: " .. player.Durability.Value .. "\n" ..
                     "敏捷: " .. player.Agility.Value .. "\n" ..
                     "重生: " .. player.leaderstats.Rebirths.Value .. "\n" ..
                     "宝石数量: " .. player.Gems.Value .. "\n" ..
                     "坏人业报: " .. player.evilKarma.Value .. "\n" ..
                     "好人业报: " .. player.goodKarma.Value .. "\n" ..
                     "总业报: " .. player.leaderstats.Kills.Value
        setclipboard(info)
    end
end)
