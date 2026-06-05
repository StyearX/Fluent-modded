local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local Creator = require(Root.Creator)
local New     = Creator.New

local Toggle = {}
Toggle.__index = Toggle
Toggle.__type  = "Toggle"

function Toggle:New(idx, config)
	assert(config.Title, "Toggle - Missing Title")
	local lib = self.Library

	local t = {
		Value    = config.Default or false,
		Callback = config.Callback or function() end,
		Type     = "Toggle",
	}

	local el = require(Root.Components.Element)(config.Title, config.Description, self.Container, true)
	el.DescLabel.Size = UDim2.new(1, -54, 0, 14)
	t.SetTitle = el.SetTitle
	t.SetDesc  = el.SetDesc

	local knob = New("ImageLabel", {
		AnchorPoint      = Vector2.new(0, 0.5),
		Size             = UDim2.fromOffset(14, 14),
		Position         = UDim2.new(0, 2, 0.5, 0),
		Image            = "http://www.roblox.com/asset/?id=12266946128",
		ImageTransparency = 0.5,
		ThemeTag         = { ImageColor3 = "ToggleSlider" },
	})
	local stroke = New("UIStroke", { Transparency = 0.5, ThemeTag = { Color = "ToggleSlider" } })

	local track = New("Frame", {
		Size             = UDim2.fromOffset(36, 18),
		AnchorPoint      = Vector2.new(1, 0.5),
		Position         = UDim2.new(1, -10, 0.5, 0),
		Parent           = el.Frame,
		BackgroundTransparency = 1,
		ThemeTag         = { BackgroundColor3 = "Accent" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 9) }),
		stroke,
		knob,
	})

	function t:OnChanged(cb) t.Changed = cb; cb(t.Value) end

	function t:SetValue(val)
		val     = not not val
		t.Value = val
		Creator.OverrideTag(stroke, { Color = val and "Accent" or "ToggleSlider" })
		Creator.OverrideTag(knob,   { ImageColor3 = val and "ToggleToggled" or "ToggleSlider" })
		TweenS:Create(knob,  TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.new(0, val and 19 or 2, 0.5, 0) }):Play()
		TweenS:Create(track, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { BackgroundTransparency = val and 0 or 1 }):Play()
		knob.ImageTransparency = val and 0 or 0.5
		lib:SafeCallback(t.Callback, val)
		lib:SafeCallback(t.Changed,  val)
	end

	function t:Destroy()
		el.Frame:Destroy()
		lib.Options[idx] = nil
	end

	Creator.AddSignal(el.Frame.MouseButton1Click, function() t:SetValue(not t.Value) end)
	t:SetValue(t.Value)
	lib.Options[idx] = t
	return t
end

return Toggle
