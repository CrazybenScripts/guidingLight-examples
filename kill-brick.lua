local killBrick = script.Parent -- replace with location of part

killBrick.Touched:Connect(function(hit)
    local plr = game.Players:GetPlayerFromCharacter(hit.Parent)
    plr.Charcter.Humanoid:TakeDamage(100)
    game.ReplicatedStorage.Death:FireClient(plr, {
      -- Messages for guiding light would be here --
      --- Example: "You died to Rush"; --
    })
end)
