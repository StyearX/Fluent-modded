local Root    = script.Parent.Parent
local UIS     = game:GetService("UserInputService")
local Creator = require(Root.Creator)
local New     = Creator.New

local Slider = {}
Slider.__index = Slider
Slider.__type  = "Slider"

function Slider:New(idx, config)
	assert(config.Title,   "Slider - Missing Title")
	assert(config.Default ~= nil, "Slider - Missing Default")
	assert(config.Min     ~= nil, "Slider - Missing Min")
	assert(config.Max     ~= nil, "Slider - Missing Max")
	assert(config.Rounding ~= nil, "Slider - Missing Rounding")
	local lib = self.Library

	local s = {
		Value    = nil,
		Min      = config.Min,
		Max      = config.Max,
		Rounding = config.Rounding,
		Callback = config.Callback or function() end,
		Type     = "Slider",
	}

	local el = require(Root.Components.Element)(config.Title, config.Description, self.Container, false)
	el.DescLabel.Size = UDim2.new(1, -170, 0, 14)
	s.SetTitle = el.SetTitle
	s.SetDesc  = el.SetDesc

	local knob = New("ImageLabel", {
		AnchorPoint = Vector2.new(0, 0.5),
		Position    = UDim2.new(0, -10, 0.5, 0),
		Size        = UDim2.fromOffset(20, 20),
		Image       = "http://www.roblox.com/asset/?id=12266946128",
		ThemeTag    = { ImageColor3 = "Accent" },
		ZIndex      = 3,
	})

	local fill = New("Frame", {
		Size     = UDim2.new(0, 0, 1, 0),
		ThemeTag = { BackgroundColor3 = "Accent" },
	}, { New("UICorner", { CornerRadius = UDim.new(1, 0) }) })

	local valueLabel = New("TextLabel", {
		FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
		Text             = "",
		TextSize         = 13,
		TextXAlignment   = Enum.TextXAlignment.Right,
		BackgroundTransparency = 1,
		Size             = UDim2.new(0, 100, 0, 14),
		Position         = UDim2.new(0, -4, 0.5, 0),
		AnchorPoint      = Vector2.new(1, 0.5),
		ThemeTag         = { TextColor3 = "SubText" },
	})

	local track = New("Frame", {
		Size             = UDim2.new(1, 0, 0, 6),
		AnchorPoint      = Vector2.new(1, 0.5),
		Position         = UDim2.new(1, -10, 0.5, 0),
		BackgroundTransparency = 0.4,
		Parent           = el.Frame,
		ThemeTag         = { BackgroundColor3 = "SliderRail" },
	}, {
		New("UICorner",        { CornerRadius = UDim.new(1, 0) }),
		New("UISizeConstraint",{ MaxSize = Vector2.new(150, math.huge) }),
		valueLabel,
		fill,
		New("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(10, 0),
			Size     = UDim2.new(1, -20, 1, 0),
		}, { knob }),
	})

	local dragging = false
	Creator.AddSignal(knob.InputBegan, function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			dragging = true
		end
	end)
	Creator.AddSignal(knob.InputEnded, function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	Creator.AddSignal(UIS.InputChanged, function(inp)
		if dragging and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
			local inner = track:FindFirstChildWhichIsA("Frame")
			local ratio = math.clamp((inp.Position.X - inner.AbsolutePosition.X) / inner.AbsoluteSize.X, 0, 1)
			s:SetValue(s.Min + (s.Max - s.Min) * ratio)
		end
	end)

	function s:OnChanged(cb) s.Changed = cb; cb(s.Value) end

	function s:SetValue(val)
		val     = lib:Round(math.clamp(val, s.Min, s.Max), s.Rounding)
		s.Value = val
		local ratio = (val - s.Min) / (s.Max - s.Min)
		knob.Position   = UDim2.new(ratio, -10, 0.5, 0)
		fill.Size       = UDim2.fromScale(ratio, 1)
		valueLabel.Text = tostring(val)
		lib:SafeCallback(s.Callback, val)
		lib:SafeCallback(s.Changed,  val)
	end

	function s:Destroy()
		el.Frame:Destroy()
		lib.Options[idx] = nil
	end

	s:SetValue(config.Default)
	lib.Options[idx] = s
	return s
end

return Slider
