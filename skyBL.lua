-- mxxme1 on discord, skyboxes script
-- mwa ;)
local functionstore = {}

    local purple = function()
        local sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.SkyboxBk = "rbxassetid://id" 
        sky.SkyboxDn = "rbxassetid://id" 
        sky.SkyboxLf = "rbxassetid://id"
        sky.SkyboxRt = "rbxassetid://id" 
        sky.SkyboxUp = "rbxassetid://id" 
        sky.SkyboxFt = "rbxassetid://id"
    end
    local blue = function()
        local sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.SkyboxBk = "rbxassetid://id" 
        sky.SkyboxDn = "rbxassetid://id" 
        sky.SkyboxLf = "rbxassetid://id"
        sky.SkyboxRt = "rbxassetid://id" 
        sky.SkyboxUp = "rbxassetid://id" 
        sky.SkyboxFt = "rbxassetid://id"
    end
    local waves = function()
        local sky = Instance.new("Sky")
        sky.Parent = game.Lighting
        sky.SkyboxBk = "rbxassetid://7182865887" 
        sky.SkyboxDn = "rbxassetid://7182865887" 
        sky.SkyboxLf = "rbxassetid://7182865887"
        sky.SkyboxRt = "rbxassetid://7182865887"
        sky.SkyboxUp = "rbxassetid://7182865887"
        sky.SkyboxFt = "rbxassetid://7182865887"
    end

     local skyboxes = {"purple","blue","waves"}


function functionstore:printnames()
    print("Available skyboxes:")
    for name, _ in pairs(skyboxes) do
        print(name)
    end
end
function functionstore:skyboxcreator(choice)
    if not choice or not skyboxes[choice] then
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
    choice()
end
-- skyboxcreator("Waves")
return functionstore
