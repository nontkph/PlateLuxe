local Baseplate = Instance.new("Part")
Baseplate.Name = "Baseplate"
Baseplate.TopSurface = Enum.SurfaceType.Smooth
Baseplate.Color = Color3.new(0.36, 0.36, 0.36)
Baseplate.Anchored = true
Baseplate.Locked = true
Baseplate.Size = Vector3.new(2048.00, 16.00, 2048.00)
Baseplate.BottomSurface = Enum.SurfaceType.Smooth
Baseplate.BrickColor = BrickColor.new("Dark grey metallic")
Baseplate.Position = Vector3.new(0.00, -8.00, 0.00)
Baseplate.CFrame = CFrame.new(0.00, -8.00, 0.00, -0.00, -0.00, -1.00)
Baseplate.Parent = game:GetService("Workspace")

local Texture = Instance.new("Texture")
Texture.Face = Enum.NormalId.Top
Texture.StudsPerTileU = 8
Texture.Transparency = 0.800000011920929
Texture.StudsPerTileV = 8
Texture.Color3 = Color3.new(0.00, 0.00, 0.00)
Texture.Texture = "rbxassetid://6372755229"
Texture.Parent = Baseplate

