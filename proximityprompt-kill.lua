local prox = script.Parent -- replace with location of the proximityprompt

prox.Triggered:Connect(function(plr)
    plr.Character.Humanoid:TakeDamage(100)
    game.ReplicatedStorage.Death:FireClient(plr, {
      -- Messages for guiding light would be here --
      --- Example: "You died to Rush"; --
    })
end)
