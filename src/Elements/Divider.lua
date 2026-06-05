local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Divider = {}
Divider.__index = Divider
Divider.__type  = "Divider"

function Divider:New()
	local line = New("Frame", {
		Size                 = UDim2.new(1, -8, 0, 1),
		AnchorPoint          = Vector2.new(0.5, 0),
		Position             = UDim2.fromScale(0.5, 0),
		BackgroundTransparency = 0.7,
		BorderSizePixel      = 0,
		Parent               = self.Container,
		ThemeTag             = { BackgroundColor3 = "InElementBorder" },
	})
	local mod = { Frame = line, Type = "Divider" }
	function mod:Destroy() line:Destroy() end
	return mod
end

return Divider
