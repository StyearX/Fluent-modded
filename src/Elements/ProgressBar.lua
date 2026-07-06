local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local Creator = require(Root.Creator)
local New     = Creator.New

local ProgressBar = {}
ProgressBar.__index = ProgressBar
ProgressBar.__type  = "ProgressBar"

function ProgressBar:New(idx, config)
	local lib = self.Library
	local minV, maxV = config.Min or 0, config.Max or 100

	local t = {
		Value = math.clamp(config.Default or minV, minV, maxV),
		Min   = minV,
		Max   = maxV,
		Type  = "ProgressBar",
	}

	local wrap = New("Frame", {
		Size = UDim2.new(1, 0, 0, config.Title and 46 or 26),
		BackgroundTransparency = 1,
		Parent = self.Container,
	})
	t.Frame = wrap

	local titleLbl
	if config.Title then
		titleLbl = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
			Text = tostring(config.Title),
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -50, 0, 16),
			Position = UDim2.new(0, 0, 0, 0),
			ThemeTag = { TextColor3 = "Text" },
			Parent = wrap,
		})
	end

	local pctLbl
	if config.ShowPercent ~= false then
		pctLbl = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = "0%",
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Right,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 50, 0, 16),
			Position = UDim2.new(1, -50, 0, 0),
			ThemeTag = { TextColor3 = "SubText" },
			Parent = wrap,
		})
	end

	local rail = New("Frame", {
		Size = UDim2.new(1, 0, 0, 8),
		Position = UDim2.new(0, 0, 1, -8),
		BackgroundTransparency = 0.4,
		Parent = wrap,
		ThemeTag = { BackgroundColor3 = "ProgressBarRail" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(1, 0) }),
	})

	local fill = New("Frame", {
		Size = UDim2.fromScale(0, 1),
		Parent = rail,
		ThemeTag = { BackgroundColor3 = "ProgressBarFill" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(1, 0) }),
	})

	function t:SetTitle(s)
		if titleLbl then titleLbl.Text = tostring(s or "") end
	end

	function t:SetValue(val)
		val = math.clamp(tonumber(val) or t.Min, t.Min, t.Max)
		t.Value = val
		local alpha = (t.Max > t.Min) and (val - t.Min) / (t.Max - t.Min) or 0
		TweenS:Create(fill, TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Size = UDim2.fromScale(alpha, 1) }):Play()
		if pctLbl then pctLbl.Text = math.floor(alpha * 100) .. "%" end
	end

	function t:Destroy()
		wrap:Destroy()
		if idx then lib.Options[idx] = nil end
	end

	t:SetValue(t.Value)
	if idx then lib.Options[idx] = t end
	return t
end

return ProgressBar
