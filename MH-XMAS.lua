
-- Only Keep one Option   on (by changing false to true) else it will break.

-- _G.GiftExchange = false -- false/true 
-- _G.PresentTeleporter = false -- false/true 
-- ^^ above is  for a different Part of Script. ^^ --

-- Don't change anything if you don't know --

_G.CFrameSave = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
print(_G.CFrameSave)



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
    wait(3)
    virtualUser:SetKeyDown(122)
    virtualUser:SetKeyUp(122)
    wait()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-60, 160, 557))
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
    wait(15)
end

while _G.PresentTeleporter == true do
    PresentTP()
    wait()
end
