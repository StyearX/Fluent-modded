local Themes = {
	Names = {
		"AshGray",
		"Charcoal",
		"PearlWhite",
		"NeonPurple",
		"DeepViolet",
		"BloodRed",
	},
}

for _, Theme in next, script:GetChildren() do
	local Required = require(Theme)
	Themes[Required.Name] = Required
end

return Themes
