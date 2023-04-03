local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("By Varap", "RJTheme3")
local Tab_cred = Window:NewTab("Credits")
local Section_cred = Tab_cred:NewSection("Ctrl click tp")
local Tab = Window:NewTab("Farm coins")
local Section = Tab:NewSection("Farm coins")
local Tab_DT = Window:NewTab("Dell door")
local Section_DT = Tab_DT:NewSection("Dell door")
local Tab_EF = Window:NewTab("Esp and Fly")
local Section_EF = Tab_EF:NewSection("Not my esp Not my fly")
local character = game.Players.LocalPlayer.Character
local humanoid = character:FindFirstChildOfClass("Humanoid")
Section_cred:NewLabel("anti afk")
Section_cred:NewButton("copy my github", "", function()
	setclipboard("https://github.com/Varap228/Water-Park-NEW-Briquatica-script/tree/main")
end)
Section_cred:NewButton("copy my pastebin", "", function()
	setclipboard("https://pastebin.com/8sB6hMVa")
end)
function farm_Coins()
	for i,b in pairs(workspace.Coins:GetChildren()) do
		character.HumanoidRootPart.CFrame = b.CFrame
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.5)
		if _G.conis == false then
			break
		end
	end
end
Section:NewButton("One farm coins", "", function()
	for i,b in pairs(workspace.Coins:GetChildren()) do
		character.HumanoidRootPart.CFrame = b.CFrame
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		wait(0.5)
	end
end)
Section:NewToggle("Farm coins", "", function(coin)
    if coin then
        _G.conis = true;
while _G.conis == true do
	farm_Coins()
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
    wait()
end
    else
        _G.conis = false;
    end
end)
Section:NewSlider("Walk Speed", "changes speed", 500, 16, function(walk) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walk
end)
Section:NewSlider("Jump Power", "changes jump power", 500, 50, function(jump) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
end)
Section_DT:NewButton("dell Gapepass door", "removes some toll doors", function()
	for i,n in pairs(workspace.Gamepass:GetDescendants()) do
		if n.Name == "door1" then
			n:destroy()
		end
	end
end)
Section_DT:NewButton("⚠dell ALL doors⚠", "the game may freeze", function()
	for i,n in pairs(workspace:GetDescendants()) do
		if n.Name == "door1" then
			n:destroy()
		end
	end
end)
Section_EF:NewButton("Esp player press Q", "", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/s7viVmDR"))()
end)
Section_EF:NewButton("Fly", "", function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
Section:NewKeybind("remove gui", "hides the script on the button", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
