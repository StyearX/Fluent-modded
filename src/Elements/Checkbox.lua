local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local Creator = require(Root.Creator)
local New     = Creator.New

local Checkbox = {}
Checkbox.__index = Checkbox
Checkbox.__type  = "Checkbox"

function Checkbox:New(idx, config)
	assert(config.Title, "Checkbox - Missing Title")
	local lib = self.Library

	local t = {
		Value    = config.Default and true or false,
		Callback = config.Callback or function() end,
		Type     = "Checkbox",
	}

	local el = require(Root.Components.Element)(config.Title, config.Description, self.Container, true)
	t.SetTitle = el.SetTitle
	t.SetDesc  = el.SetDesc
	t.Frame    = el.Frame

	local box = New("Frame", {
		Size        = UDim2.fromOffset(20, 20),
		AnchorPoint = Vector2.new(1, 0.5),
		Position    = UDim2.new(1, -10, 0.5, 0),
		Parent      = el.Frame,
		ThemeTag    = { BackgroundColor3 = "CheckboxUnchecked" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 5) }),
	})
	local boxStroke = New("UIStroke", { Transparency = 0.4, Thickness = 1.4, ThemeTag = { Color = "CheckboxChecked" }, Parent = box })
	local check = New("ImageLabel", {
		Size              = UDim2.fromOffset(14, 14),
		AnchorPoint       = Vector2.new(0.5, 0.5),
		Position          = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 1,
		Image             = "rbxassetid://10709790644",
		ImageTransparency = 1,
		ThemeTag          = { ImageColor3 = "CheckboxCheck" },
		Parent            = box,
	})

	function t:OnChanged(cb) t.Changed = cb; cb(t.Value) end

	function t:SetValue(val)
		val     = not not val
		t.Value = val
		Creator.OverrideTag(box,       { BackgroundColor3 = val and "CheckboxChecked" or "CheckboxUnchecked" })
		Creator.OverrideTag(boxStroke, { Color             = val and "CheckboxChecked" or "CheckboxUnchecked" })
		check.ImageTransparency = val and 0 or 1
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

return Checkbox
