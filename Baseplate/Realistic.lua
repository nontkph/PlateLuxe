return {	
	["Image"] = "rbxassetid://121166389795676";
	["Title"] = "Realistic";
	["Description"] = "Classic sky and baseplate grid";
	["Version"] = 1;
	---: funuc
	["Baseplate"] = function(B: BasePart)
		local Baseplate = B or Instance.new("Part")
		Baseplate.Name = "Baseplate"
		Baseplate.TopSurface = Enum.SurfaceType.Smooth
		Baseplate.Color = Color3.new(0.35, 0.35, 0.35)
		Baseplate.Anchored = true
		Baseplate.Locked = true
		Baseplate.Material = Enum.Material.Glass
		Baseplate.Size = Vector3.new(2048.00, 16.00, 2048.00)
		Baseplate.BottomSurface = Enum.SurfaceType.Smooth
		Baseplate.BrickColor = BrickColor.new("Dark grey metallic")
		Baseplate.Position = Vector3.new(0.00, -8.00, 0.00)
		Baseplate.CFrame = CFrame.new(0.00, -8.00, 0.00, -0.00, -0.00, -1.00)
		Baseplate.Parent = game:GetService("Workspace")

		local Texture = Instance.new("Texture")
		Texture.Face = Enum.NormalId.Top
		Texture.StudsPerTileU = 8
		Texture.Transparency = 0.3499999940395355
		Texture.StudsPerTileV = 8
		Texture.Texture = "rbxassetid://7045572623"
		Texture.Parent = Baseplate

		for i, v in next, Baseplate:GetChildren() do
			if v ~= Texture then
				v:Destroy()
			end
		end

	end,

	["Lighting"] = function()
		local Lighting = game:GetService("Lighting")

		local Atmosphere = Instance.new("Atmosphere")
		Atmosphere.Density = 0.3
		Atmosphere.Color = Color3.new(0.78, 0.78, 0.78)
		Atmosphere.Decay = Color3.new(0.42, 0.44, 0.49)
		Atmosphere.Offset = 0.25
		Atmosphere.Parent = Lighting

		local Realistic_Sky = Instance.new("Sky")
		Realistic_Sky.Name = "Realistic Sky"
		Realistic_Sky.StarCount = 1334
		Realistic_Sky.SkyboxUp = "http://www.roblox.com/asset/?id=150335642"
		Realistic_Sky.SkyboxBk = "http://www.roblox.com/asset/?id=150335574"
		Realistic_Sky.SkyboxDn = "http://www.roblox.com/asset/?id=150335585"
		Realistic_Sky.SkyboxLf = "http://www.roblox.com/asset/?id=150335620"
		Realistic_Sky.SkyboxFt = "http://www.roblox.com/asset/?id=150335628"
		Realistic_Sky.SkyboxRt = "http://www.roblox.com/asset/?id=150335610"
		Realistic_Sky.Parent = Lighting

		local Bloom = Instance.new("BloomEffect")
		Bloom.Name = "Bloom"
		Bloom.threshold = 0.8
		Bloom.Intensity = 1
		Bloom.Size = 56
		Bloom.Parent = Lighting

		local Blur = Instance.new("BlurEffect")
		Blur.Name = "Blur"
		Blur.Enabled = false
		Blur.Parent = Lighting

		local ColorCorrection = Instance.new("ColorCorrectionEffect")
		ColorCorrection.Name = "ColorCorrection"
		ColorCorrection.Parent = Lighting

		local SunRays = Instance.new("SunRaysEffect")
		SunRays.Name = "SunRays"
		SunRays.Parent = Lighting


		for i, v in next, Lighting:GetChildren() do
			if v ~= Realistic_Sky and v ~= Atmosphere and v ~= SunRays and v ~= Bloom and v ~= ColorCorrection and v ~= Blur then
				v:Destroy()
			end
		end
	end,
}
