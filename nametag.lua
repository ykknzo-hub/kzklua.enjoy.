local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

local billboard = Instance.new("BillboardGui")
billboard.Parent = head
billboard.Adornee = head
billboard.Size = UDim2.new(0, 200, 0, 50)
billboard.StudsOffset = Vector3.new(0, 3, 0)
billboard.AlwaysOnTop = true

local textLabel = Instance.new("TextLabel")
textLabel.Parent = billboard
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
textLabel.TextColor3 = Color3.fromRGB(255,255,255)
textLabel.Text = "KZK CO-FOUNDER"
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 28
textLabel.BackgroundTransparency = 0.4
textLabel.TextStrokeTransparency = 0.6