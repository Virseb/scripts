-- mxxme1 on discord, skyboxes script
-- mwa ;)

local skyboxesnames = {
    Purple = function()
       local sky = Instance.new("Sky")
      sky.Parent = game.Lighting
        sky.SkyboxBk = "id" 
        sky.SkyboxDn = "id" 
        sky.SkyboxLf = "id"
        sky.SkyboxRt = "id" 
        sky.SkyboxBk = "id" 
        sky.SkyboxFt = "id"
    end,
    Blue = function()
        local sky = Instance.new("Sky")
      sky.Parent = game.Lighting
        sky.SkyboxBk = "id" 
        sky.SkyboxDn = "id" 
        sky.SkyboxLf = "id"
        sky.SkyboxRt = "id" 
        sky.SkyboxBk = "id" 
        sky.SkyboxFt = "id"
    end,
    Waves = function()
        local sky = Instance.new("Sky")
      sky.Parent = game.Lighting
        sky.SkyboxBk = "7182865887" 
        sky.SkyboxDn = "7182865887" 
        sky.SkyboxLf = "7182865887"
        sky.SkyboxRt = "7182865887"
        sky.SkyboxBk = "7182865887"
        sky.SkyboxFt = "7182865887"
    end
}

function printnames()
  print(1, #skyboxesnames)
end

function skyboxcreator(choice)
    if not choice or not skyboxesnames[choice] then
        return warn("Error: Invalid choice")
    end
    
    local created = game.ReplicatedStorage:FindFirstChild("Bgyfaftpouppoob")
    if not created then
        created = Instance.new("Folder")
        created.Name = "Bgyfaftpouppoob"
        created.Parent = game.ReplicatedStorage
    end

    game.Lighting:ClearAllChildren()
    task.wait()
    skyboxesnames[choice]()
end

-- skyboxcreator("Waves")
