
-- Only Keep one Option   on (by changing false to true) else it will break.

 _G.GiftExchange = false -- false/true 
 _G.PresentTeleporter = false -- false/true 
 _G.WaitTimeLine = 3
-- ^^ above is  for a different Part of Script. ^^ --
-- Don't change anything if you don't know --


_G.LPLR = game:GetService("Players").LocalPlayer
_G.LPLRNAME = game:GetService("Players").LocalPlayer.Name
_G.CFrameSave = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
print(_G.CFrameSave)
_G.CalcedResult = 15-(_G.WaitTimeLine)
print(_G.CalcedResult)
if _G.CalcedResult < 0 then
    print("CalcedResult is less than 0")
    print(_G.CalcedResult)
end

function PresentTP()
    for i,v in pairs(game.Workspace:GetChildren()) do 
        if v.Name == 'Present' then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    end
    end
end

function GiftExProc()
    local virtualUser = game:GetService('VirtualUser')
    virtualUser:CaptureController()
    virtualUser:SetKeyDown(122)
    virtualUser:SetKeyUp(122)
    wait(_G.WaitTimeLine)
    virtualUser:SetKeyDown(122)
    virtualUser:SetKeyUp(122)
    wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-59.6750717, 159.070862, 577.100891))
    wait()
    local Event = game:GetService("ReplicatedStorage").CashInGift
    Event:InvokeServer()
    local Event = game:GetService("ReplicatedStorage").CashInGift
    Event:InvokeServer()
    local Event = game:GetService("ReplicatedStorage").CashInGift
    Event:InvokeServer()
    local Event = game:GetService("ReplicatedStorage").CashInGift
    Event:InvokeServer()
    wait(1)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = _G.CFrameSave
    
end

while _G.GiftExchange == true do
    GiftExProc()
    wait(_G.CalcedResult)
end

while _G.PresentTeleporter == true do
    PresentTP()
    wait()
end

for i,v in pairs(game.Workspace.Tycoons:GetDescendants()) do
    if v.Owner
