--print("BOB-PF")

enemyteam = game.Workspace.Players:GetChildren()[1]
friendlyteam = game.Workspace.Players:GetChildren()[2]

while wait(0.1) do
    for _, v in enemyteam:GetDescendants() do
        if v.ClassName == "Model" then
            if not v:FindFirstChild("Highlight") then
                local h = Instance.new("Highlight", v)
                h.FillColor = Color3.new(1, 0, 0)
                h.FillTransparency = 0.4
                print(string.format("Highlighted %s", v.Name))
            end
            
            -- Add Health Bar
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            if humanoid and not v:FindFirstChild("HealthBar") then
                local healthBar = Instance.new("BillboardGui")
                healthBar.Name = "HealthBar"
                healthBar.Parent = v
                healthBar.Adornee = v
                healthBar.Size = UDim2.new(0, 100, 0, 20)
                healthBar.StudsOffset = Vector3.new(0, 3, 0)
                
                local frame = Instance.new("Frame", healthBar)
                frame.Size = UDim2.new(1, 0, 1, 0)
                frame.BackgroundColor3 = Color3.new(1, 0, 0)
                
                local health = Instance.new("TextLabel", healthBar)
                health.Size = UDim2.new(1, 0, 1, 0)
                health.BackgroundTransparency = 1
                health.TextColor3 = Color3.new(1, 1, 1)
                health.TextStrokeTransparency = 0
                health.Text = string.format("HP: %d", humanoid.Health)
            end

            -- Add Player Name
            local nameTag = v:FindFirstChild("NameTag")
            if not nameTag then
                nameTag = Instance.new("BillboardGui")
                nameTag.Name = "NameTag"
                nameTag.Parent = v
                nameTag.Adornee = v
                nameTag.Size = UDim2.new(0, 100, 0, 50)
                nameTag.StudsOffset = Vector3.new(0, 5, 0)
                
                local label = Instance.new("TextLabel", nameTag)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.new(1, 1, 1)
                label.TextStrokeTransparency = 0
                label.Text = v.Name
            end
        end
    end

    for _, v in friendlyteam:GetDescendants() do
        if v.ClassName == "Model" then
            if not v:FindFirstChild("Highlight") then
                local h = Instance.new("Highlight", v)
                h.FillColor = Color3.new(0.227451, 1, 0.054902)
                h.FillTransparency = 0.8
                print(string.format("Highlighted %s", v.Name))
            end

            -- Add Health Bar
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            if humanoid and not v:FindFirstChild("HealthBar") then
                local healthBar = Instance.new("BillboardGui")
                healthBar.Name = "HealthBar"
                healthBar.Parent = v
                healthBar.Adornee = v
                healthBar.Size = UDim2.new(0, 100, 0, 20)
                healthBar.StudsOffset = Vector3.new(0, 3, 0)
                
                local frame = Instance.new("Frame", healthBar)
                frame.Size = UDim2.new(1, 0, 1, 0)
                frame.BackgroundColor3 = Color3.new(0, 1, 0)
                
                local health = Instance.new("TextLabel", healthBar)
                health.Size = UDim2.new(1, 0, 1, 0)
                health.BackgroundTransparency = 1
                health.TextColor3 = Color3.new(1, 1, 1)
                health.TextStrokeTransparency = 0
                health.Text = string.format("HP: %d", humanoid.Health)
            end

            -- Add Player Name
            local nameTag = v:FindFirstChild("NameTag")
            if not nameTag then
                nameTag = Instance.new("BillboardGui")
                nameTag.Name = "NameTag"
                nameTag.Parent = v
                nameTag.Adornee = v
                nameTag.Size = UDim2.new(0, 100, 0, 50)
                nameTag.StudsOffset = Vector3.new(0, 5, 0)
                
                local label = Instance.new("TextLabel", nameTag)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.TextColor3 = Color3.new(1, 1, 1)
                label.TextStrokeTransparency = 0
                label.Text = v.Name
            end
        end
    end
end
