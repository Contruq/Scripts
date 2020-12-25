local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local PLR = game:GetService("Players")
local LocPLR = PLR.LocalPlayer
local LocCF = LocPLR.Character.HumanoidRootPart.CFrame
local Place = game.PlaceId
local PlaceMH = 258258996
local PlaceVOID1 = 4464946645
local VM1CF =   CFrame.new(Vector3.new(-819, 44, 1394))
print(LocCF)


local function SMV215()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Contruq/Scripts/main/SMV215", true))()
end

SMV215()

local function TeleportToVOID()
if Place ~= PlaceMH and Place ~= PlaceVOID1 then
    TeleportService:Teleport(PlaceMH, LocPLR)
elseif Place == PlaceMH and Place ~= PlaceVOID1 then
    print("Teleporting to Void")
    TeleportService:Teleport(PlaceVOID1, LocPLR)
elseif Place ~= PlaceMH and Place == PlaceVOID1 then
    print("Succesfully Teleported to Void")
end
end

local function TeleportVM1()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-820, 44, 1394))
end

TeleportToVOID()

local function StepCompleter()
wait(2)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-817, 43, 1350))
wait(19)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-464, 43, 966))
wait(10)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-505, 43, 495))
wait(13)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-952, 54, -71))
wait(10)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1329, 43, 1106))
wait(13)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1280, 43, 865))
wait(20)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1683, 512, 2687))
wait(5)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1684, 512, 2713))
wait(30)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1684, 513, 2743))
end


if Place == PlaceVOID1 then
print("Starting StepCompleter")
StepCompleter()
else print("Not in Void :( can't do ")
end
print("Started")
