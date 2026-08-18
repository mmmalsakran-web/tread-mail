-- Fake Treadmill Gift GUI (Visual Only)
-- Includes Gold, Diamond, Candy, Admin treadmills

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false
gui.Name = "FakeTreadmillGift"

-- Main Gift Window
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 460, 0, 360)
frame.Position = UDim2.new(0.5, -230, 0.5, -180)
frame.BackgroundColor3 = Color3.fromRGB(90, 0, 140)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Parent = gui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "~ GIFT ~"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.Parent = frame

-- Username Box
local userBox = Instance.new("TextBox")
userBox.Size = UDim2.new(1, -30, 0, 40)
userBox.Position = UDim2.new(0, 15, 0, 60)
userBox.PlaceholderText = "Enter player username..."
userBox.BackgroundColor3 = Color3.fromRGB(40, 0, 70)
userBox.TextColor3 = Color3.fromRGB(255, 255, 255)
userBox.Font = Enum.Font.Gotham
userBox.TextSize = 20
userBox.Parent = frame
Instance.new("UICorner", userBox).CornerRadius = UDim.new(0, 10)

-- Treadmill Images
local treadmillImages = {
    Gold = "rbxassetid://18485141077",
    Diamond = "rbxassetid://18485141077",
    Candy = "rbxassetid://18485141077",
    Admin = "rbxassetid://18485141077"
}

local selected = "Admin"

-- Preview Image
local preview = Instance.new("ImageLabel")
preview.Size = UDim2.new(0, 200, 0, 140)
preview.Position = UDim2.new(0.5, -100, 0, 110)
preview.BackgroundTransparency = 1
preview.Image = treadmillImages[selected]
preview.Parent = frame

-- Buttons for treadmill selection
local function makeButton(name, pos)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 100, 0, 35)
    btn.Position = pos
    btn.BackgroundColor3 = Color3.fromRGB(120, 0, 180)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 18
    btn.Text = name
    btn.Parent = frame
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)

    btn.MouseButton1Click:Connect(function()
        selected = name
        preview.Image = treadmillImages[selected]
    end)
end

makeButton("Gold", UDim2.new(0, 20, 0, 260))
makeButton("Diamond", UDim2.new(0, 130, 0, 260))
makeButton("Candy", UDim2.new(0, 240, 0, 260))
makeButton("Admin", UDim2.new(0, 350, 0, 260))

-- Send Gift Button
local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(1, -30, 0, 45)
sendBtn.Position = UDim2.new(0, 15, 0, 310)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 175, 255)
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.Font = Enum.Font.GothamBold
sendBtn.TextSize = 22
sendBtn.Text = "SEND GIFT"
sendBtn.Parent = frame
Instance.new("UICorner", sendBtn).CornerRadius = UDim.new(0, 10)

-- Fake confirmation popup
local popup = Instance.new("Frame")
popup.Size = UDim2.new(0, 300, 0, 140)
popup.Position = UDim2.new(0.5, -150, 0.4, -70)
popup.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
popup.BorderSizePixel = 0
popup.Visible = false
popup.Parent = gui
Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 12)

local popupText = Instance.new("TextLabel")
popupText.Size = UDim2.new(1, -20, 1, -20)
popupText.Position = UDim2.new(0, 10, 0, 10)
popupText.BackgroundTransparency = 1
popupText.TextColor3 = Color3.fromRGB(255, 255, 255)
popupText.Font = Enum.Font.GothamSemibold
popupText.TextSize = 20
popupText.TextWrapped = true
popupText.Parent = popup

-- Send Logic (Fake)
sendBtn.MouseButton1Click:Connect(function()
    local user = userBox.Text

    if user == "" then
        popupText.Text = "✗ Enter a username first!"
        popup.Visible = true
        task.wait(2)
        popup.Visible = false
        return
    end

    popupText.Text = "✓ Sent " .. selected .. " Treadmill to " .. user .. " (FAKE)"
    popup.Visible = true

    task.wait(3)
    popup.Visible = false
end)

-- Keybind (RightShift)
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        frame.Visible = not frame.Visible
    end
end)
