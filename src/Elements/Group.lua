local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Group = {}
Group.__index = Group
Group.__type  = "Group"

function Group:New(_, config)
	local D      = (type(config) == "table") and config or {}
	local parent = self.Container
	local cols   = D.Columns or 2
	local gap    = D.Gap     or 6

	local wrap = New("Frame", {
		Size                 = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		AutomaticSize        = Enum.AutomaticSize.Y,
		Parent               = parent,
	})
	New("UIListLayout", {
		FillDirection       = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment   = Enum.VerticalAlignment.Top,
		Padding             = UDim.new(0, gap),
		Parent              = wrap,
	})

	local totalGap  = gap * (cols - 1)
	local colScale  = 1 / cols
	local colOffset = -math.floor(totalGap / cols + 0.5)

	local mod = { Frame = wrap, Type = "Group", Elements = {}, _section = nil }
	function mod:SetSection(sec) self._section = sec end

	function mod:AddElement()
		local el = New("Frame", {
			Size          = UDim2.new(colScale, colOffset, 0, 0),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Parent        = wrap,
		})
		local sec    = self._section
		local colObj = setmetatable({
			Container     = el,
			Type          = sec and sec.Type or nil,
			ScrollFrame   = sec and sec.ScrollFrame or nil,
			_elementCount = 0,
		}, getmetatable(sec))
		table.insert(mod.Elements, { Frame = el, ColObj = colObj })
		return colObj
	end

	function mod:Destroy() wrap:Destroy() end
	return mod
end

return Group
