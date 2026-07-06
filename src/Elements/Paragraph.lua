local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Paragraph = {}
Paragraph.__index = Paragraph
Paragraph.__type  = "Paragraph"

function Paragraph:New(_, config)
	config = config or {}
	config.Title = config.Title or ""
	config.Content = config.Content or ""
	local el = require(Root.Components.Element)(config.Title, config.Content, self.Container, false)
	el.Frame.BackgroundTransparency = 0.92
	el.Border.Transparency          = 0.6
	return el
end

return Paragraph
