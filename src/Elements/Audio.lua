local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Audio = {}
Audio.__index = Audio
Audio.__type  = "Audio"

function Audio:New(_, config)
	local D      = (type(config) == "table") and config or {}
	local parent = self.Container
	local lib    = self.Library
	local src    = D.Audio or D.Sound or ""
	local vol    = D.Volume   or 1
	local looped = D.Looped   or false
	local auto   = D.AutoPlay or false
	local title  = D.AudioTitle or D.Title or "Audio"

	local function resolveSync(s)
		if type(s) ~= "string" or s == "" then return "" end
		if s:match("^rbxassetid://") or s:match("^rbxasset://") then return s end
		if s:match("^%d+$") then return "rbxassetid://" .. s end
		return ""
	end

	local resolved = resolveSync(src)
	local hasAudio = resolved ~= ""

	-- Container frame
	local wrap = New("Frame", {
		Size                 = UDim2.new(1, 0, 0, 46),
		BackgroundTransparency = 0.85,
		Parent               = parent,
		ThemeTag             = { BackgroundColor3 = "Element" },
	})
	New("UICorner", { CornerRadius = UDim.new(0, 6), Parent = wrap })
	New("UIStroke", { Transparency = 0.6, Thickness = 1, ThemeTag = { Color = "InElementBorder" }, Parent = wrap })

	New("TextLabel", {
		Text             = hasAudio and title or "No audio source",
		TextSize         = 13,
		TextXAlignment   = Enum.TextXAlignment.Left,
		Size             = UDim2.new(1, -16, 0, 14),
		Position         = UDim2.fromOffset(12, 8),
		BackgroundTransparency = 1,
		Parent           = wrap,
		ThemeTag         = { TextColor3 = "Text" },
	})

	local sound = nil
	if hasAudio then
		sound = Instance.new("Sound")
		sound.SoundId  = resolved
		sound.Volume   = vol
		sound.Looped   = looped
		sound.Parent   = wrap

		local function ctrlBtn(label, cb)
			local btn = New("TextButton", {
				Size  = UDim2.fromOffset(52, 20),
				BackgroundTransparency = 0.75,
				Text  = label,
				TextSize = 11,
				ZIndex   = 3,
				Parent   = wrap,
				ThemeTag = { BackgroundColor3 = "Tab", TextColor3 = "Text" },
			})
			New("UICorner", { CornerRadius = UDim.new(0, 4), Parent = btn })
			Creator.AddSignal(btn.MouseButton1Click, function() pcall(cb) end)
			return btn
		end

		local btnHolder = New("Frame", {
			Size             = UDim2.new(1, -16, 0, 20),
			Position         = UDim2.fromOffset(8, 22),
			BackgroundTransparency = 1,
			Parent           = wrap,
		})
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding       = UDim.new(0, 6),
			Parent        = btnHolder,
		})

		local playBtn  = ctrlBtn(" Play",  function() sound:Play()  end); playBtn.Parent  = btnHolder
		local pauseBtn = ctrlBtn(" Pause", function() sound:Pause() end); pauseBtn.Parent = btnHolder
		local stopBtn  = ctrlBtn(" Stop",  function() sound:Stop()  end); stopBtn.Parent  = btnHolder

		if auto then
			task.spawn(function()
				task.wait(0.1)
				if sound and sound.Parent then sound:Play() end
			end)
		end
	end

	local mod = { Frame = wrap, Type = "Audio", Sound = sound }
	function mod:SetAudio(v)
		local r = resolveSync(v)
		if sound then sound.SoundId = r end
	end
	function mod:Destroy()
		if sound then pcall(function() sound:Stop(); sound:Destroy() end) end
		wrap:Destroy()
	end
	return mod
end

return Audio
