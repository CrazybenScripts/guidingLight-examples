local killBrick = script.Parent -- replace with location of part

killBrick.Touched:Connect(function(hit)
    if not hit.Parent:FindFirstChild("Humanoid") then return end
    local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
    plr.Character.Humanoid:TakeDamage(100)
    game.ReplicatedStorage.Death:FireClient(plr, {
      -- Messages for guiding light would be here --
      --- Example: "You died to Rush"; --
    })
end)
