local p = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui", p:WaitForChild("PlayerGui"))
gui.Name = "FakeAdminGift"

local g = Instance.new("Frame", gui)
g.Size = UDim2.new(0,420,0,300)
g.Position = UDim2.new(0.5,-210,0.5,-150)
g.BackgroundColor3 = Color3.fromRGB(45,45,60)

local t = Instance.new("TextLabel", g)
t.Size = UDim2.new(1,0,0,40)
t.Text = "~GIFT~"
t.Font = Enum.Font.SourceSansBold
t.TextSize = 28
t.TextColor3 = Color3.new(1,1,1)
t.BackgroundTransparency = 1

local img = Instance.new("ImageLabel", g)
img.Size = UDim2.new(0,150,0,150)
img.Position = UDim2.new(0,20,0,60)
img.BackgroundTransparency = 1
img.Image = "rbxassetid://18450151234"

local name = Instance.new("TextLabel", g)
name.Size = UDim2.new(0,200,0,40)
name.Position = UDim2.new(0,180,0,70)
name.Text = "Admin Treadmill - Gift"
name.Font = Enum.Font.SourceSansBold
name.TextSize = 20
name.TextColor3 = Color3.new(1,1,1)
name.BackgroundTransparency = 1

local warn = Instance.new("TextLabel", g)
warn.Size = UDim2.new(0,200,0,60)
warn.Position = UDim2.new(0,180,0,110)
warn.Text = "MAKE SURE THE PLAYER DOESN'T ALREADY OWN THE GAMEPASS.\nNO REFUNDS."
warn.Font = Enum.Font.SourceSans
warn.TextSize = 16
warn.TextColor3 = Color3.fromRGB(255,200,200)
warn.BackgroundTransparency = 1

local send = Instance.new("TextButton", g)
send.Size = UDim2.new(0,380,0,45)
send.Position = UDim2.new(0,20,0,230)
send.Text = "SEND GIFT (1599 Robux)"
send.Font = Enum.Font.SourceSansBold
send.TextSize = 22
send.TextColor3 = Color3.new(1,1,1)
send.BackgroundColor3 = Color3.fromRGB(120,40,40)

local buy = Instance.new("Frame", gui)
buy.Size = UDim2.new(0,420,0,260)
buy.Position = UDim2.new(0.5,-210,0.5,-130)
buy.BackgroundColor3 = Color3.fromRGB(35,35,50)
buy.Visible = false

local bt = Instance.new("TextLabel", buy)
bt.Size = UDim2.new(1,0,0,40)
bt.Text = "~GIFT~"
bt.Font = Enum.Font.SourceSansBold
bt.TextSize = 28
bt.TextColor3 = Color3.new(1,1,1)
bt.BackgroundTransparency = 1

local info = Instance.new("TextLabel", buy)
info.Size = UDim2.new(1,-20,0,80)
info.Position = UDim2.new(0,10,0,50)
info.Text = "Buy Robux and item\nAdmin Treadmill - Gift\nPrice: 2000 Robux"
info.Font = Enum.Font.SourceSans
info.TextSize = 20
info.TextColor3 = Color3.new(1,1,1)
info.BackgroundTransparency = 1

local bb = Instance.new("TextButton", buy)
bb.Size = UDim2.new(0,380,0,45)
bb.Position = UDim2.new(0,20,0,160)
bb.Text = "BUY"
bb.Font = Enum.Font.SourceSansBold
bb.TextSize = 22
bb.TextColor3 = Color3.new(1,1,1)
bb.BackgroundColor3 = Color3.fromRGB(40,120,40)

local msg = Instance.new("TextLabel", buy)
msg.Size = UDim2.new(1,0,0,40)
msg.Position = UDim2.new(0,0,0,210)
msg.Text = ""
msg.Font = Enum.Font.SourceSansBold
msg.TextSize = 22
msg.TextColor3 = Color3.new(0,1,0)
msg.BackgroundTransparency = 1

send.MouseButton1Click:Connect(function()
    g.Visible = false
    buy.Visible = true
end)

bb.MouseButton1Click:Connect(function()
    msg.Text = "Gift Sent!"
end)
