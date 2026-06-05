local Root    = script.Parent.Parent
local Creator = require(Root.Creator)

local Input = {}
Input.__index = Input
Input.__type  = "Input"

function Input:New(idx, config)
	assert(config.Title, "Input - Missing Title")
	local lib = self.Library

	local h = {
		Value    = config.Default  or "",
		Numeric  = config.Numeric  or false,
		Finished = config.Finished or false,
		Callback = config.Callback or function() end,
		Type     = "Input",
	}

	local el = require(Root.Components.Element)(config.Title, config.Description, self.Container, false)
	h.SetTitle = el.SetTitle
	h.SetDesc  = el.SetDesc

	local tb = require(Root.Components.Textbox)(el.Frame, true)
	tb.Frame.Position     = UDim2.new(1, -10, 0.5, 0)
	tb.Frame.AnchorPoint  = Vector2.new(1, 0.5)
	tb.Frame.Size         = UDim2.fromOffset(160, 30)
	tb.Input.Text         = config.Default        or ""
	tb.Input.PlaceholderText = config.Placeholder or ""

	local box = tb.Input

	function h:SetValue(val)
		if config.MaxLength and #val > config.MaxLength then val = val:sub(1, config.MaxLength) end
		if h.Numeric and not tonumber(val) and #val > 0 then val = h.Value end
		h.Value  = val
		box.Text = val
		lib:SafeCallback(h.Callback, val)
		lib:SafeCallback(h.Changed,  val)
	end

	function h:OnChanged(cb) h.Changed = cb; cb(h.Value) end

	function h:Destroy()
		el.Frame:Destroy()
		lib.Options[idx] = nil
	end

	if h.Finished then
		Creator.AddSignal(box.FocusLost, function(enter)
			if enter then h:SetValue(box.Text) end
		end)
	else
		Creator.AddSignal(box:GetPropertyChangedSignal("Text"), function()
			h:SetValue(box.Text)
		end)
	end

	lib.Options[idx] = h
	return h
end

return Input
