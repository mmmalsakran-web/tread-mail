-- Fake Admin Treadmill Gift Popup (Exact Copy Style)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- Main GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FakeAdminGift"
ScreenGui.Parent = PlayerGui

-- Gift Frame
local GiftFrame = Instance.new("Frame")
GiftFrame.Size = UDim2.new(0, 420, 0, 300)
GiftFrame.Position = UDim2.new(0.5, -210, 0.5, -150)
GiftFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
GiftFrame.BorderSizePixel = 0
GiftFrame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "~GIFT~"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 28
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Parent = GiftFrame

-- Admin Treadmill Image (Fake)
local Image = Instance.new("ImageLabel")
Image.Size = UDim2.new(0, 150, 0, 150)
Image.Position = UDim2.new(0, 20, 0, 60)
Image.BackgroundTransparency = 1
Image.Image = "rbxassetid://18450151234"
Image.Parent = GiftFrame

-- Item Name
local ItemName = Instance.new("TextLabel")
ItemName.Size = UDim2.new(0, 200, 0, 40)
ItemName.Position = UDim2.new(0, 180, 0, 70)
ItemName.Text = "Admin Treadmill - Gift"
ItemName.Font = Enum.Font.SourceSansBold
ItemName.TextSize = 20
ItemName.TextColor3 = Color3.new(1, 1, 1)
ItemName.BackgroundTransparency = 1
ItemName.Parent = GiftFrame

-- Warning Text
local Warning = Instance.new("TextLabel")
Warning.Size = UDim2.new(0, 200, 0, 60)
Warning.Position = UDim2.new(0, 180, 0, 110)
Warning.Text = "MAKE SURE THE PLAYER DOESN'T ALREADY OWN THE GAMEPASS.\nNO REFUNDS."
Warning.Font = Enum.Font.SourceSans
Warning.TextSize = 16
Warning.TextColor3 = Color3.fromRGB(255, 200, 200)
Warning.BackgroundTransparency = 1
Warning.Parent = GiftFrame

-- Send Gift Button
local SendGift = Instance.new("TextButton")
SendGift.Size = UDim2.new(0, 380, 0, 45)
SendGift.Position = UDim2.new(0, 20, 0, 230)
SendGift.Text = "SEND GIFT (1599 Robux)"
SendGift.Font = Enum.Font.SourceSansBold
SendGift.TextSize = 22
SendGift.TextColor3 = Color3.new(1, 1, 1)
SendGift.BackgroundColor3 = Color3.fromRGB(120, 40, 40)
SendGift.Parent = GiftFrame

-- BUY Popup
local BuyFrame = Instance.new("Frame")
BuyFrame.Size = UDim2.new(0, 420, 0, 260)
BuyFrame.Position = UDim2.new(0.5, -210, 0.5, -130)
BuyFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
BuyFrame.BorderSizePixel = 0
BuyFrame.Visible = false
BuyFrame.Parent = ScreenGui

local BuyTitle = Instance.new("TextLabel")
BuyTitle.Size = UDim2.new(1, 0, 0, 40)
BuyTitle.Text = "~GIFT~"
BuyTitle.Font = Enum.Font.SourceSansBold
BuyTitle.TextSize = 28
BuyTitle.TextColor3 = Color3.new(1, 1, 1)
BuyTitle.BackgroundTransparency = 1
BuyTitle.Parent = BuyFrame

local BuyInfo = Instance.new("TextLabel")
BuyInfo.Size = UDim2.new(1, -20, 0, 80)
BuyInfo.Position = UDim2.new(0, 10, 0, 50)
BuyInfo.Text = "Buy Robux and item\nAdmin Treadmill - Gift\nPrice: 2000 Robux"
BuyInfo.Font = Enum.Font.SourceSans
BuyInfo.TextSize = 20
BuyInfo.TextColor3 = Color3.new(1, 1, 1)
BuyInfo.BackgroundTransparency = 1
BuyInfo.Parent = BuyFrame

local BuyButton = Instance.new("TextButton")
BuyButton.Size = UDim2.new(0, 380, 0, 45)
BuyButton.Position = UDim2.new(0, 20, 0, 160)
BuyButton.Text = "BUY"
BuyButton.Font = Enum.Font.SourceSansBold
BuyButton.TextSize = 22
BuyButton.TextColor3 = Color3.new(1, 1, 1)
BuyButton.BackgroundColor3 = Color3.fromRGB(40, 120, 40)
BuyButton.Parent = BuyFrame

local BuyMessage = Instance.new("TextLabel")
BuyMessage.Size = UDim2.new(1, 0, 0, 40)
BuyMessage.Position = UDim2.new(0, 0, 0, 210)
BuyMessage.Text = ""
BuyMessage.Font = Enum.Font.SourceSansBold
BuyMessage.TextSize = 22
BuyMessage.TextColor3 = Color3.new(0, 1, 0)
BuyMessage.BackgroundTransparency = 1
BuyMessage.Parent = BuyFrame

-- Button Logic
SendGift.MouseButton1Click:Connect(function()
    GiftFrame.Visible = false
    BuyFrame.Visible = true
end)

BuyButton.MouseButton1Click:Connect(function()
    BuyMessage.Text = "Gift Sent!"
end)
