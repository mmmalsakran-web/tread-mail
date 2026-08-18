-- Fake Robux Sender GUI (Visual Only)
-- Safe, client-side only, TikTok style

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 380, 0, 260)
frame.Position = UDim2.new(0.5, -190, 0.5, -130)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "💸 Fake Robux Sender"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.Parent = frame

-- Username Box
local userBox = Instance.new("TextBox")
userBox.Size = UDim2.new(0, 330, 0, 40)
userBox.Position = UDim2.new(0, 25, 0, 60)
userBox.PlaceholderText = "Enter username..."
userBox.Text = ""
userBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
userBox.TextColor3 = Color3.fromRGB(255, 255, 255)
userBox.Font = Enum.Font.GothamSemibold
userBox.TextSize = 20
userBox.Parent = frame
Instance.new("UICorner", userBox).CornerRadius = UDim.new(0, 10)

-- Amount Box
local amountBox = Instance.new("TextBox")
amountBox.Size = UDim2.new(0, 330, 0, 40)
amountBox.Position = UDim2.new(0, 25, 0, 110)
amountBox.PlaceholderText = "Amount (e.g. 9999)"
amountBox.Text = ""
amountBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
amountBox.TextColor3 = Color3.fromRGB(255, 255, 255)
amountBox.Font = Enum.Font.GothamSemibold
amountBox.TextSize = 20
amountBox.Parent = frame
Instance.new("UICorner", amountBox).CornerRadius = UDim.new(0, 10)

-- Send Button
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(0, 330, 0, 45)
sendBtn.Position = UDim2.new(0, 25, 0, 165)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
sendBtn.Text = "Send Robux"
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Font = Enum.Font.GothamBold
sendBtn.TextSize = 22
sendBtn.Parent = frame
Instance.new("UICorner", sendBtn).CornerRadius = UDim.new(0, 10)

-- Status Label
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, 0, 0, 40)
status.Position = UDim2.new(0, 0, 0, 215)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.Font = Enum.Font.GothamSemibold
status.TextSize = 20
status.Parent = frame

-- Fake sending animation
sendBtn.MouseButton1Click:Connect(function()
    local user = userBox.Text
    local amount = amountBox.Text

    if user == "" or amount == "" then
        status.Text = "❌ Missing username or amount"
        return
    end

    status.Text = "⏳ Sending "..amount.." Robux to "..user.."..."
    sendBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 180)

    task.wait(2.5)

    status.Text = "✅ Successfully sent "..amount.." Robux!"
    sendBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
end)
