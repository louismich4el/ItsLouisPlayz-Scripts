getgenv().Settings = {
    Remove_Grass,
    Remove_Trees,
    Remove_Walls,
}

workspace.Thrown.ChildAdded:Connect(function(v)
    if v:IsA("BasePart") then
        task.wait()
        v:Destroy()
    end
end)

workspace.Terrain.ChildAdded:Connect(function(v)
    if v:IsA("Attachment") then
        task.wait()
        v:Destroy()
    end
end)

if Settings.Remove_Grass then
    workspace.Map.Grass:Destroy()
    workspace.Map.GrassBottom:Destroy()
    workspace.Map.GrassTop:Destroy()
end

if Settings.Remove_Trees then
    workspace.Map.Trees:Destroy()
end

if Settings.Remove_Walls then
    workspace.Map.Walls:Destroy()
end

for i, v in game:GetDescendants() do
    if v:IsA("BasePart") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.BackSurface = "SmoothNoOutlines"
        v.BottomSurface = "SmoothNoOutlines"
        v.FrontSurface = "SmoothNoOutlines"
        v.LeftSurface = "SmoothNoOutlines"
        v.RightSurface = "SmoothNoOutlines"
        v.TopSurface = "SmoothNoOutlines"
    elseif v:IsA("Decal") or v:IsA("Texture") then
        v.Transparency = 1
    end
end

game.StarterGui:SetCore("SendNotification",{
    Title = "Rewrited Anti Lag Loaded! If The Debris Isnt Getting Destroyed It'll Be Soon Sometime.";
    Text = "Script Made By ItsLouisPlayz On Youtube :)";
    Icon = "";
    Duration = 3;
})

warn("1ml3g1t was here")
