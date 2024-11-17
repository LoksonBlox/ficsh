local fishingPoint1 = Vector3.new(-787, 132, -3104)                -- Coordinates for Fishing Point 1
local mainFishingPoint = Vector3.new(-1521.34, -234.71, -2877.44)  -- Coordinates for Main Fishing Point
local sellingPoint = Vector3.new(-928.36, 131.08, -1108.83)        -- Coordinates for Selling Point

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame to hold the buttons and make it draggable
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 220, 0, 190) -- Adjusted height for new button
mainFrame.Position = UDim2.new(0.5, -110, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark theme
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Add rounding to the main frame
local mainFrameCorner = Instance.new("UICorner")
mainFrameCorner.CornerRadius = UDim.new(0, 10)
mainFrameCorner.Parent = mainFrame

-- Create a title for the frame (optional)
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Fishing Teleports"
titleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 14
titleLabel.Parent = mainFrame

-- Create the "Teleport to Fishing Point 1" button
local fishingPoint1Button = Instance.new("TextButton")
fishingPoint1Button.Size = UDim2.new(1, -20, 0, 30)
fishingPoint1Button.Position = UDim2.new(0, 10, 0, 35)
fishingPoint1Button.Text = "Teleport to Fishing Point 1"
fishingPoint1Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
fishingPoint1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
fishingPoint1Button.Font = Enum.Font.Gotham
fishingPoint1Button.TextSize = 16
fishingPoint1Button.BorderSizePixel = 0
fishingPoint1Button.Parent = mainFrame

-- Add rounding to the fishingPoint1Button
local button1Corner = Instance.new("UICorner")
button1Corner.CornerRadius = UDim.new(0, 10)
button1Corner.Parent = fishingPoint1Button

-- Hover effect for fishingPoint1Button
fishingPoint1Button.MouseEnter:Connect(function()
    fishingPoint1Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
end)
fishingPoint1Button.MouseLeave:Connect(function()
    fishingPoint1Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end)

-- Create the "Teleport to Main Fishing" button
local mainFishingButton = Instance.new("TextButton")
mainFishingButton.Size = UDim2.new(1, -20, 0, 30)
mainFishingButton.Position = UDim2.new(0, 10, 0, 70)
mainFishingButton.Text = "Teleport to OP fishing point"
mainFishingButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFishingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
mainFishingButton.Font = Enum.Font.Gotham
mainFishingButton.TextSize = 16
mainFishingButton.BorderSizePixel = 0
mainFishingButton.Parent = mainFrame

-- Add rounding to the mainFishingButton
local button2Corner = Instance.new("UICorner")
button2Corner.CornerRadius = UDim.new(0, 10)
button2Corner.Parent = mainFishingButton

-- Hover effect for mainFishingButton
mainFishingButton.MouseEnter:Connect(function()
    mainFishingButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
end)
mainFishingButton.MouseLeave:Connect(function()
    mainFishingButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end)

-- Create the "Teleport to Selling Point" button
local sellingPointButton = Instance.new("TextButton")
sellingPointButton.Size = UDim2.new(1, -20, 0, 30)
sellingPointButton.Position = UDim2.new(0, 10, 0, 105)
sellingPointButton.Text = "Teleport to Selling Point"
sellingPointButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
sellingPointButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sellingPointButton.Font = Enum.Font.Gotham
sellingPointButton.TextSize = 16
sellingPointButton.BorderSizePixel = 0
sellingPointButton.Parent = mainFrame

-- Add rounding to the sellingPointButton
local button3Corner = Instance.new("UICorner")
button3Corner.CornerRadius = UDim.new(0, 10)
button3Corner.Parent = sellingPointButton

-- Hover effect for sellingPointButton
sellingPointButton.MouseEnter:Connect(function()
    sellingPointButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
end)
sellingPointButton.MouseLeave:Connect(function()
    sellingPointButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
end)

-- Create a TextBox for username input
local playerTextBox = Instance.new("TextBox")
playerTextBox.Size = UDim2.new(1, -20, 0, 30)
playerTextBox.Position = UDim2.new(0, 10, 0, 140)
playerTextBox.PlaceholderText = "Enter Username/Display Name"
playerTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
playerTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
playerTextBox.Font = Enum.Font.Gotham
playerTextBox.TextSize = 16
playerTextBox.BorderSizePixel = 0
playerTextBox.Parent = mainFrame

-- Add rounding to the playerTextBox
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 10)
textBoxCorner.Parent = playerTextBox

-- Teleport function
local function teleportToPosition(position)
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

-- Connect buttons to teleport function
fishingPoint1Button.MouseButton1Click:Connect(function()
    teleportToPosition(fishingPoint1)
end)
mainFishingButton.MouseButton1Click:Connect(function()
    teleportToPosition(mainFishingPoint)
end)
sellingPointButton.MouseButton1Click:Connect(function()
    teleportToPosition(sellingPoint)
end)

-- Function to teleport above a player by partial name
local function teleportAbovePlayer(partialName)
    local localPlayer = game.Players.LocalPlayer
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer then
            if string.find(string.lower(player.Name), string.lower(partialName)) or 
               string.find(string.lower(player.DisplayName), string.lower(partialName)) then
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local targetPosition = player.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
                    localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    break
                end
            end
        end
    end
end

-- Connect the TextBox to trigger teleport on Enter key
playerTextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed and playerTextBox.Text ~= "" then
        teleportAbovePlayer(playerTextBox.Text)
        playerTextBox.Text = "" -- Clear text box after teleport
    end
end)

-- Toggle visibility with Right Ctrl
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightControl then
        mainFrame.Visible = not mainFrame.Visible
    end
end)
