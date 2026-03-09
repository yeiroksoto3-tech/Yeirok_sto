local player = game.Players.LocalPlayer
local Players = game:GetService("Players")

local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0,400,0,250)
frame.Position = UDim2.new(0.3,0,0.2,0)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,50)
title.Text = "yeirok"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(0,0,255)
title.BackgroundTransparency = 1

-- Obtener ID del usuario de forma segura
local userId
local success = pcall(function()
	userId = Players:GetUserIdFromNameAsync("yeirok_sto")
end)

if success then
	local thumbType = Enum.ThumbnailType.AvatarBust
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

	local avatarButton = Instance.new("ImageButton", frame)
	avatarButton.Size = UDim2.new(0,120,0,120)
	avatarButton.Position = UDim2.new(0,20,0,70)
	avatarButton.Image = content
	avatarButton.BackgroundColor3 = Color3.fromRGB(0,0,255)

	avatarButton.MouseButton1
