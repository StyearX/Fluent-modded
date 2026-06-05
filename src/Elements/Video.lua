local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Video = {}
Video.__index = Video
Video.__type  = "Video"

function Video:New(_, config)
	local D      = (type(config) == "table") and config or {}
	local parent = self.Container
	local lib    = self.Library
	local src    = D.Video  or ""
	local looped = D.Looped ~= false
	local vol    = D.Volume or 0
	local auto   = D.AutoPlay ~= false
	local radius = D.Radius or 8

	local function resolveSync(s)
		if type(s) ~= "string" or s == "" then return "" end
		if s:match("^rbxassetid://") or s:match("^rbxasset://") then return s end
		if s:match("^%d+$") then return "rbxassetid://" .. s end
		return ""
	end

	local resolved = resolveSync(src)
	local hasVideo = resolved ~= ""

	local wrap = New("Frame", {
		Size                 = UDim2.new(1, -16, 0, hasVideo and 220 or 150),
		BackgroundTransparency = 0.85,
		ClipsDescendants     = true,
		Parent               = parent,
		ThemeTag             = { BackgroundColor3 = "Element" },
	})
	New("UICorner",  { CornerRadius = UDim.new(0, radius), Parent = wrap })
	New("UIStroke",  { Transparency = 0.6, Thickness = 1, ThemeTag = { Color = "InElementBorder" }, Parent = wrap })

	local vid = nil
	if hasVideo then
		vid = Instance.new("VideoFrame")
		vid.Size                 = UDim2.new(1, 0, 0, 152)
		vid.BackgroundTransparency = 1
		vid.Looped               = looped
		vid.Volume               = vol
		vid.Video                = resolved
		vid.Parent               = wrap
		Instance.new("UICorner", vid).CornerRadius = UDim.new(0, radius)

		-- Controls bar
		local controls = New("Frame", {
			Size     = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 0, 156),
			BackgroundColor3     = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.35,
			ZIndex   = 4,
			Parent   = wrap,
		})
		New("UICorner",    { CornerRadius = UDim.new(0, radius), Parent = controls })
		New("UIListLayout",{ FillDirection = Enum.FillDirection.Horizontal, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 4), Parent = controls })
		New("UIPadding",   { PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6), Parent = controls })

		local function ctrlBtn(label, cb)
			local btn = New("TextButton", {
				Size  = UDim2.fromOffset(60, 22),
				BackgroundTransparency = 0.7,
				Text  = label,
				TextSize = 11,
				ZIndex = 5,
				Parent = controls,
				ThemeTag = { BackgroundColor3 = "Tab", TextColor3 = "Text" },
			})
			New("UICorner", { CornerRadius = UDim.new(0, 4), Parent = btn })
			Creator.AddSignal(btn.MouseButton1Click, function() pcall(cb) end)
			return btn
		end

		local playBtn  = ctrlBtn("▶ Play",  function() vid:Play()  end)
		local pauseBtn = ctrlBtn("⏸ Pause", function() vid:Pause() end)
		local stopBtn  = ctrlBtn("⏹ Stop",  function() vid:Stop()  end)

		if auto and resolved ~= "" then
			task.spawn(function()
				task.wait(0.05)
				if vid and vid.Parent then vid:Play() end
			end)
		end
	else
		-- Placeholder
		New("TextLabel", {
			Size             = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text             = "No video — use rbxassetid://",
			TextSize         = 12,
			TextTransparency = 0.4,
			Parent           = wrap,
			ThemeTag         = { TextColor3 = "SubText" },
		})
	end

	local mod = { Frame = wrap, Type = "Video", VideoFrame = vid }
	function mod:SetVideo(v)
		local r = resolveSync(v)
		if vid then vid.Video = r end
	end
	function mod:Destroy() wrap:Destroy() end
	return mod
end

return Video
