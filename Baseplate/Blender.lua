return {	
	["Image"] = "rbxassetid://131216202041851";
	["Title"] = "Blender";
	["Description"] = "this style is blender default style";
	["Version"] = 1;
	---: funuc
	["Baseplate"] = function(B: BasePart)
		local Baseplate = B or Instance.new("Part")
		Baseplate.Name = "Baseplate"
		Baseplate.TopSurface = Enum.SurfaceType.Smooth
		Baseplate.Color = Color3.fromRGB(66, 66, 66)
		Baseplate.Anchored = true
		Baseplate.Locked = true
		Baseplate.Material = Enum.Material.Neon
		Baseplate.Size = Vector3.new(2048, 16, 2048)
		Baseplate.BottomSurface = Enum.SurfaceType.Smooth
		Baseplate.Parent = game:GetService("Workspace")

		local Texture = Instance.new("Texture")
		Texture.OffsetStudsU = 1
		Texture.OffsetStudsV = 1
		Texture.Face = Enum.NormalId.Top
		Texture.StudsPerTileU = 5
		Texture.Transparency = 0.8
		Texture.StudsPerTileV = 5
		Texture.ZIndex = 0
		Texture.Texture = "rbxassetid://15505245889"
		Texture.Parent = Baseplate

		local Line = Instance.new("SurfaceGui")
		Line.Name = "Line"
		Line.Face = Enum.NormalId.Top
		Line.LightInfluence = 1
		Line.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
		Line.ClipsDescendants = true
		Line.MaxDistance = 1000
		Line.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Line.Parent = Baseplate

		local G = Instance.new("Frame")
		G.Name = "G"
		G.AnchorPoint = Vector2.new(0.5, 0.5)
		G.Size = UDim2.new(0, 1, 1, 0)
		G.BorderColor3 = Color3.new(0, 0, 0)
		G.Position = UDim2.new(0.5, 0.0, 0.5, 0)
		G.BorderSizePixel = 0
		G.BackgroundTransparency = 0.5
		G.BackgroundColor3 = Color3.new(0.67, 1, 0)
		G.Parent = Line

		local R = Instance.new("Frame")
		R.Name = "R"
		R.AnchorPoint = Vector2.new(0.5, 0.5)
		R.Size = UDim2.new(1, 0, 0.0, 1)
		R.BorderColor3 = Color3.new(0, 0, 0)
		R.Position = UDim2.new(0.5, 0, 0.5, 0)
		R.BorderSizePixel = 0
		R.BackgroundTransparency = 0.5
		R.BackgroundColor3 = Color3.fromRGB(255, 85, 127)
		R.Parent = Line
	end,
	
	["Lighting"] = function()
		local Lighting = game:GetService("Lighting")
		local Sky = Instance.new("Sky")
		Sky.StarCount = 0
		Sky.SkyboxUp = "rbxassetid://2350402582"
		Sky.SkyboxBk = "rbxassetid://2350402582"
		Sky.SkyboxDn = "rbxassetid://2350402582"
		Sky.SkyboxLf = "rbxassetid://2350402582"
		Sky.SunAngularSize = 0
		Sky.SkyboxFt = "rbxassetid://2350402582"
		Sky.SkyboxRt = "rbxassetid://2350402582"
		Sky.MoonAngularSize = 0
		Sky.Parent = Lighting

		local Atmosphere = Instance.new("Atmosphere")
		Atmosphere.Density = 0.6000000238418579
		Atmosphere.Color = Color3.new(0.88, 0.89, 0.98)
		Atmosphere.Decay = Color3.new(0.88, 0.89, 0.98)
		Atmosphere.Parent = Lighting

		local SunRays = Instance.new("SunRaysEffect")
		SunRays.Name = "SunRays"
		SunRays.Intensity = 0
		SunRays.Spread = 0
		SunRays.Parent = Lighting
	end,
}
