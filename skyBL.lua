-- mxxme1 on discord, skyboxes script
-- mwa ;)

local skyboxesnames = {
    Purple = function()
       local skybox = Instance.new("Skybox")
        skybox.ImageAbove = "id" 
        skybox.DownImage = "id" 
        skybox.LeftImage = "id"
        skybox.RightImage = "id" 
        skybox.BackImage = "id" 
        skybox.FrontImage = "id"
    end,
    Blue = function()
        local skybox = Instance.new("Skybox")
        skybox.ImageAbove = "id" 
        skybox.DownImage = "id" 
        skybox.LeftImage = "id"
        skybox.RightImage = "id" 
        skybox.BackImage = "id" 
        skybox.FrontImage = "id"
    end,
    Waves = function()
        local skybox = Instance.new("Skybox")
        skybox.ImageAbove = "7182865887" 
        skybox.DownImage = "7182865887" 
        skybox.LeftImage = "7182865887"
        skybox.RightImage = "7182865887"
        skybox.BackImage = "7182865887"
        skybox.FrontImage = "7182865887"
    end
}

function printnames()
  print(1, #skyboxesnames)
end



function skyboxcreator(choice)
  local created = function()
  if game.ReplicatedStorage.Bgyfaftpouppoob then
    return true
  end
end
  
  if created and choice == 1 and #skyboxesnames then
    game.Lighting:ClearAllChildren()
    task.wait()
    skyboxesnames[tostring(choice)]()
    task.wait()
    local Yeslol = Instance.new("Folder")
    Yeslol.Parent = game.ReplicatedStorage
    Yeslol.Name = "Bgyfaftpouppoob"
    
  elseif not created and choice == 1 and #skyboxesnames then
    game.Lighting:ClearAllChildren()
    task.wait()
    skyboxesnames[tostring(choice)]()
    task.wait()
    local Yeslol = Instance.new("Folder")
    Yeslol.Parent = game.ReplicatedStorage
    Yeslol.Name = "Bgyfaftpouppoob"
    
  else
    return warn("Error, no choice")
  end
end
