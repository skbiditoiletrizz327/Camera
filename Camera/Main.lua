-- Components
local Camera = workspace.CurrentCamera

-- Modules
local CameraShaker = loadstring(game:HttpGet("https://raw.githubusercontent.com/skbiditoiletrizz327/Camera/main/Camera/Camera/CameraShake.lua"))()

local CamShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(CF)
	Camera.CFrame = Camera.CFrame * CF
end)

CamShake:Start()

local CamShakeModule = {}

function CamShakeModule:Shake(Preset: string)
	CamShake:Shake(CameraShaker.Presets[Preset])
end

function CamShakeModule:ShakeSustain(Preset: string)
	CamShake:ShakeSustain(CameraShaker.Presets[Preset])
end

function CamShakeModule:StopSustained(FadeTime: number)
	CamShake:StopSustained(FadeTime)
end

return CamShakeModule
