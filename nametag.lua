--=====================================================================
--  KZK CUSTOM NAMETAG - Generated via Discord Bot
--  Username: GoIdNation
--  Custom Name: KZK CO-FOUNDER
--=====================================================================

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer

-- Wait for character
local char = lp.Character or lp.CharacterAdded:Wait()
local head = char:WaitForChild("Head")

-- Remove old nametag if exists
local pg = lp:WaitForChild("PlayerGui")
local oldTag = pg:FindFirstChild("CustomKZKTag")
if oldTag then oldTag:Destroy() end

-- Create Billboard
local bb = Instance.new("BillboardGui")
bb.Name = "CustomKZKTag"
bb.Parent = pg
bb.Size = UDim2.new(0, 150, 0, 42)
bb.StudsOffset = Vector3.new(0, 2.2, 0)
bb.AlwaysOnTop = true
bb.MaxDistance = math.huge
bb.Adornee = head

-- Background Frame
local bg = Instance.new("Frame")
bg.Parent = bb
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(5, 3, 15)
bg.BackgroundTransparency = 0.2
bg.BorderSizePixel = 0
bg.ZIndex = 1
bg.ClipsDescendants = true

local cr = Instance.new("UICorner")
cr.CornerRadius = UDim.new(0, 10)
cr.Parent = bg

-- Glow Effect (2-color gradient)
local glow = Instance.new("Frame")
glow.Name = "Glow"
glow.Parent = bg
glow.Size = UDim2.new(1.1, 0, 1.1, 0)
glow.Position = UDim2.new(-0.05, 0, -0.05, 0)
glow.BackgroundTransparency = 0
glow.BackgroundColor3 = Color3.new(1, 1, 1)
glow.BorderSizePixel = 0
glow.ZIndex = 0

local glowGrad = Instance.new("UIGradient")
glowGrad.Color = ColorSequence.new(
  Color3.fromRGB(255, 0, 0),
  Color3.fromRGB(255, 255, 255)
)
glowGrad.Rotation = 0
glowGrad.Transparency = NumberSequence.new{
  NumberSequenceKeypoint.new(0, 0.8),
  NumberSequenceKeypoint.new(1, 1)
}
glowGrad.Parent = glow

local glowCr = Instance.new("UICorner")
glowCr.CornerRadius = UDim.new(0, 13)
glowCr.Parent = glow

-- Left Icon
local leftIcon = Instance.new("ImageLabel")
leftIcon.Name = "LeftIcon"
leftIcon.Parent = bg
leftIcon.Size = UDim2.new(0.35, 0, 0.95, 0)
leftIcon.Position = UDim2.new(0.02, 0, 0.025, 0)
leftIcon.BackgroundTransparency = 1
leftIcon.Image = "rbxassetid://120600951592841"
leftIcon.ScaleType = Enum.ScaleType.Fit
leftIcon.ZIndex = 4

-- Custom Name Label
local kzk = Instance.new("TextLabel")
kzk.Name = "CustomName"
kzk.Parent = bg
kzk.Size = UDim2.new(0.61, 0, 0.5, 0)
kzk.Position = UDim2.new(0.37, 0, 0.12, 0)
kzk.BackgroundTransparency = 1
kzk.Text = "KZK CO-FOUNDER"
kzk.TextColor3 = Color3.fromRGB(255, 255, 255)
kzk.TextScaled = true
kzk.TextXAlignment = Enum.TextXAlignment.Center
kzk.Font = Enum.Font.GothamBold
kzk.TextStrokeTransparency = 0.5
kzk.ZIndex = 3

local kzkGrad = Instance.new("UIGradient")
kzkGrad.Color = ColorSequence.new(
  Color3.fromRGB(255, 0, 0),
  Color3.fromRGB(255, 255, 255)
)
kzkGrad.Rotation = 0
kzkGrad.Parent = kzk

local kzkConstraint = Instance.new("UITextSizeConstraint")
kzkConstraint.MaxTextSize = 30
kzkConstraint.Parent = kzk

-- Username Label
local dname = Instance.new("TextLabel")
dname.Name = "Username"
dname.Parent = bg
dname.Size = UDim2.new(0.61, 0, 0.3, 0)
dname.Position = UDim2.new(0.37, 0, 0.65, 0)
dname.BackgroundTransparency = 1
dname.Text = "@GoIdNation"
dname.TextColor3 = Color3.fromRGB(255, 255, 255)
dname.TextScaled = true
dname.TextXAlignment = Enum.TextXAlignment.Center
dname.Font = Enum.Font.Gotham
dname.TextStrokeTransparency = 0.7
dname.ZIndex = 3

local dnameGrad = Instance.new("UIGradient")
dnameGrad.Color = ColorSequence.new(
  Color3.fromRGB(255, 0, 0),
  Color3.fromRGB(255, 255, 255)
)
dnameGrad.Rotation = 0
dnameGrad.Parent = dname

local dnameConstraint = Instance.new("UITextSizeConstraint")
dnameConstraint.MaxTextSize = 12
dnameConstraint.Parent = dname

-- Particle Dots Animation
local pFrm = Instance.new("Frame")
pFrm.Parent = bg
pFrm.Size = UDim2.new(1, 0, 1, 0)
pFrm.BackgroundTransparency = 1
pFrm.ZIndex = 1

for i = 1, 18 do
  local dot = Instance.new("Frame")
  dot.Parent = pFrm
  dot.Size = UDim2.new(0, 2, 0, 2)
  dot.Position = UDim2.new(math.random() * 0.9 + 0.05, 0, math.random() * 0.9 + 0.05, 0)
  dot.BackgroundColor3 = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(255, 255, 255), math.random())
  dot.BackgroundTransparency = math.random(30, 70) / 100
  dot.ZIndex = 1
  
  local dc = Instance.new("UICorner")
  dc.CornerRadius = UDim.new(1, 0)
  dc.Parent = dot
end

-- Text Glow Animation
spawn(function()
  while bb and bb.Parent do
    for i = 0, 1, 0.1 do
      if not kzk then break end
      kzk.TextStrokeTransparency = 0.5 + i * 0.4
      wait(0.03)
    end
    for i = 1, 0, -0.1 do
      if not kzk then break end
      kzk.TextStrokeTransparency = 0.5 + i * 0.4
      wait(0.03)
    end
    wait(0.2)
  end
end)

-- Particle Movement Animation
spawn(function()
  while bb and bb.Parent do
    for _, dot in pairs(pFrm:GetChildren()) do
      if dot:IsA("Frame") then
        local pos = dot.Position
        local y = pos.Y.Scale - 0.01
        if y < -0.1 then y = 1.1 end
        dot.Position = UDim2.new(pos.X.Scale, 0, y, 0)
        dot.BackgroundTransparency = 0.3 + math.random(0, 50) / 100
      end
    end
    wait(0.05)
  end
end)

print("✅ KZK Nametag loaded for GoIdNation!")