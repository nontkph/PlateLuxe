return {	
	["Image"] = "rbxassetid://131216202041851";
	["Title"] = "Default";
	["Description"] = "Default Roblox Style";
	
	---: funuc
	["Baseplate"] = function(Baseplate: BasePart)
		local Baseplate = Baseplate or Instance.new("Part")
		Baseplate.Name = "Baseplate"
		Baseplate:ClearAllChildren()
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
	end,
	
	["Lighting"] = function()
		local Lighting = game:GetService("Lighting")

		local Sky = Instance.new("Sky")
		Sky.SkyboxUp = "rbxassetid://6412503613"
		Sky.MoonTextureId = "rbxassetid://6444320592"
		Sky.SkyboxBk = "rbxassetid://6444884337"
		Sky.SkyboxDn = "rbxassetid://6444884785"
		Sky.SkyboxLf = "rbxassetid://6444884337"
		Sky.SunTextureId = "rbxassetid://6196665106"
		Sky.SunAngularSize = 11
		Sky.SkyboxFt = "rbxassetid://6444884337"
		Sky.SkyboxRt = "rbxassetid://6444884337"
		Sky.Parent = Lighting

		local SunRays = Instance.new("SunRaysEffect")
		SunRays.Name = "SunRays"
		SunRays.Intensity = 0.009999999776482582
		SunRays.Spread = 0.10000000149011612
		SunRays.Parent = Lighting

		local Atmosphere = Instance.new("Atmosphere")
		Atmosphere.Density = 0.30000001192092896
		Atmosphere.Color = Color3.new(0.78, 0.78, 0.78)
		Atmosphere.Decay = Color3.new(0.42, 0.44, 0.49)
		Atmosphere.Offset = 0.25
		Atmosphere.Parent = Lighting

		local Bloom = Instance.new("BloomEffect")
		Bloom.Name = "Bloom"
		Bloom.threshold = 2
		Bloom.Intensity = 1
		Bloom.Parent = Lighting

		local DepthOfField = Instance.new("DepthOfFieldEffect")
		DepthOfField.Name = "DepthOfField"
		DepthOfField.Enabled = false
		DepthOfField.FarIntensity = 0.10000000149011612
		DepthOfField.InFocusRadius = 30
		DepthOfField.Parent = Lighting
	end,
}
