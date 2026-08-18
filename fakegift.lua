-- Fake Treadmill Gift Animation (GitHub Version)
-- Safe, self-contained, executor-ready

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.ResetOnSpawn = false

-- Main gift frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "🎁 Sending Treadmill Gift..."
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.Parent = frame

-- Progress bar outline
local outline = Instance.new("Frame")
outline.Size = UDim2.new(0, 300, 0, 25)
outline.Position = UDim2.new(0, 25, 0, 70)
outline.BorderSizePixel = 2
outline.Parent = frame

-- Progress bar fill
local bar = Instance.new("Frame")
bar.Size = UDim2.new(0, 0, 0, 25)
bar.Position = outline.Position
bar.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
bar.Parent = frame

-- Fake animation
task.spawn(function()
    for i = 1, 300 do
        bar.Size = UDim2.new(0, i, 0, 25)
        frame.Position = UDim2.new(0.5, -175 + math.random(-2,2), 0.5, -100 + math.random(-2,2))
        task.wait(0.01)
    end

    -- Flash effect
    for i = 1, 6 do
        frame.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        task.wait(0.1)
        frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        task.wait(0.1)
    end

    title.Text = "✅ Gift Sent!"
    bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    bar.Size = UDim2.new(0, 300, 0, 25)

    task.wait(1.5)
    frame:Destroy()
end)
