-- Fake Robux Gift GUI for Xeno (Client-Side Only)
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FakeTreadmillGift"
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 320, 0, 180)
Frame.Position = UDim2.new(0.5, -160, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
Frame.Active = true
Frame.Draggable = true
Frame.Visible = true -- ⭐ AUTO OPEN
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 35)
Title.Text = "TREADMILL ROBUX GIFT"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20
Title.BackgroundTransparency = 1
Title.Parent = Frame

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 35, 0, 35)
Close.Position = UDim2.new(1, -35, 0, 0)
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Close.Parent = Frame

Close.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

local AmountLabel = Instance.new("TextLabel")
AmountLabel.Position = UDim2.new(0, 10, 0, 50)
AmountLabel.Size = UDim2.new(1, -20, 0, 25)
AmountLabel.Text = "Robux Amount:"
AmountLabel.TextColor3 = Color3.new(1, 1, 1)
AmountLabel.BackgroundTransparency = 1
AmountLabel.Font = Enum.Font.SourceSans
AmountLabel.TextSize = 18
AmountLabel.Parent = Frame

local AmountBox = Instance.new("TextBox")
AmountBox.Position = UDim2.new(0, 140, 0, 50)
AmountBox.Size = UDim2.new(0, 150, 0, 25)
AmountBox.PlaceholderText = "e.g. 5000"
AmountBox.Text = ""
AmountBox.Font = Enum.Font.SourceSans
AmountBox.TextSize = 18
AmountBox.ClearTextOnFocus = false
AmountBox.Parent = Frame

local BuyButton = Instance.new("TextButton")
BuyButton.Size = UDim2.new(1, -20, 0, 35)
BuyButton.Position = UDim2.new(0, 10, 0, 90)
BuyButton.Text = "BUY GIFT"
BuyButton.Font = Enum.Font.SourceSansBold
BuyButton.TextSize = 18
BuyButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
BuyButton.Parent = Frame

local Message = Instance.new("TextLabel")
Message.Position = UDim2.new(0, 10, 0, 135)
Message.Size = UDim2.new(1, -20, 0, 30)
Message.Text = ""
Message.TextColor3 = Color3.new(0, 1, 0)
Message.BackgroundTransparency = 1
Message.Font = Enum.Font.SourceSansItalic
Message.TextSize = 18
Message.Parent = Frame

-- Fake Gift Action
BuyButton.MouseButton1Click:Connect(function()
    local amount = tonumber(AmountBox.Text)
    if amount and amount > 0 then
        Message.TextColor3 = Color3.new(0, 1, 0)
        Message.Text = "Gift Sent! (" .. amount .. " Robux)"
    else
        Message.TextColor3 = Color3.new(1, 0, 0)
        Message.Text = "Invalid amount!"
    end
end)
