local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Space = {}
Space.__index = Space
Space.__type  = "Space"

function Space:New(_, config)
	local D = (type(config) == "table") and config or {}
	local h = D.Height or 8
	local sp = New("Frame", {
		Size                 = UDim2.new(1, 0, 0, h),
		BackgroundTransparency = 1,
		BorderSizePixel      = 0,
		Parent               = self.Container,
	})
	local mod = { Frame = sp, Type = "Space" }
	function mod:Destroy() sp:Destroy() end
	return mod
end

return Space
