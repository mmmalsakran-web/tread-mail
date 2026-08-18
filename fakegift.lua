-- Fake Robux + Treadmill Gift GUI
-- Visual only, client-side, GitHub-ready

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false
gui.Name = "FakeTreadmillGiftGUI"

-- Main frame (hidden by default)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 420, 0, 260)
frame.Position = UDim2.new(0.5, -210, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "🎁 Fake Treadmill Gift"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.Parent = frame

-- Username box
local userBox = Instance.new("TextBox")
userBox.Size = UDim2.new(1, -30, 0, 40)
userBox.Position = UDim2.new(0, 15, 0, 55)
userBox.PlaceholderText = "Target username..."
userBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
userBox.TextColor3 = Color3.fromRGB(255, 255, 255)
userBox.Font = Enum.Font.Gotham
userBox.TextSize = 20
userBox.Parent = frame
Instance.new("UICorner", userBox).CornerRadius = UDim.new(0, 10)

-- Robux amount box
local amountBox = Instance.new("TextBox")
amountBox.Size = UDim2.new(1, -30, 0, 40)
amountBox.Position = UDim2.new(0, 15, 0, 105)
amountBox.PlaceholderText = "Robux amount (e.g. 9999)"
amountBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
amountBox.TextColor3 = Color3.fromRGB(255, 255, 255)
amountBox.Font = Enum.Font.GothamSemibold
amountBox.TextSize = 20
amountBox.Parent = frame
Instance.new("UICorner", amountBox).CornerRadius = UDim.new(0, 10)

-- Send button
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(1, -30, 0, 45)
sendBtn.Position = UDim2.new(0, 15, 0, 155)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 175, 255)
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Font = Enum.Font.GothamBold
sendBtn.TextSize = 22
sendBtn.Text = "Send Fake Treadmill Gift"
sendBtn.Parent = frame
Instance.new("UICorner", sendBtn).CornerRadius = UDim.new(0, 10)

-- Status label
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -30, 0, 35)
status.Position = UDim2.new(0, 15, 0, 210)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.Font = Enum.Font.GothamSemibold
status.TextSize = 18
status.Parent = frame

-- Fake treadmill popup
local popup = Instance.new("Frame")
popup.Size = UDim2.new(0, 260, 0, 120)
popup.Position = UDim2.new(0.5, -130, 0.2, -80)
popup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
popup.BorderSizePixel = 0
popup.Visible = false
popup.Parent = gui
Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 12)

local popupTitle = Instance.new("TextLabel")
popupTitle.Size = UDim2.new(1, 0, 0, 35)
popupTitle.BackgroundTransparency = 1
popupTitle.Text = "🏃 Treadmill Gift"
popupTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
popupTitle.Font = Enum.Font.GothamBold
popupTitle.TextSize = 22
popupTitle.Parent = popup

local popupText = Instance.new("TextLabel")
popupText.Size = UDim2.new(1, -20, 0, 70)
popupText.Position = UDim2.new(0, 10, 0, 40)
popupText.BackgroundTransparency = 1
popupText.TextColor3 = Color3.fromRGB(255, 255, 255)
popupText.Font = Enum.Font.Gotham
popupText.TextSize = 18
popupText.TextWrapped = true
popupText.Parent = popup

-- Send logic (visual only)
sendBtn.MouseButton1Click:Connect(function()
    local user = userBox.Text
    local amount = amountBox.Text

    if user == "" or amount == "" then
        status.Text = "❌ Enter username and amount first"
        return
    end

    status.Text = "⏳ Sending "..amount.." Robux + treadmill to "..user.."..."
    sendBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 200)

    -- Fake delay
    task.wait(2)

    status.Text = "✅ Fake gift sent to "..user.." (visual only)"
    sendBtn.BackgroundColor3 = Color3.fromRGB(0, 175, 255)

    -- Show fake treadmill popup
    popup.Visible = true
    popupText.Text = user.." received a treadmill + "..amount.." Robux! (fake, only you see this)"

    task.wait(2.5)
    popup.Visible = false
end)

-- Keybind to toggle GUI (RightShift)
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        frame.Visible = not frame.Visible
    end
end)
