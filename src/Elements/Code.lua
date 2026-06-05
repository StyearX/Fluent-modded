local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Code = {}
Code.__index = Code
Code.__type  = "Code"

function Code:New(_, config)
	local D      = (type(config) == "table") and config or {}
	local parent = self.Container
	local lib    = self.Library
	local code   = D.Code  or ""
	local title  = D.Title or ""
	local cb     = D.OnCopy

	local wrap = New("Frame", {
		Size                 = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 0.88,
		AutomaticSize        = Enum.AutomaticSize.Y,
		Parent               = parent,
		ThemeTag             = { BackgroundColor3 = "Element" },
	})
	New("UICorner", { CornerRadius = UDim.new(0, 8),  Parent = wrap })
	New("UIStroke", { Transparency = 0.7, Thickness = 1, ThemeTag = { Color = "InElementBorder" }, Parent = wrap })
	New("UIPadding", { PaddingTop = UDim.new(0,8), PaddingBottom = UDim.new(0,8), PaddingLeft = UDim.new(0,10), PaddingRight = UDim.new(0,36), Parent = wrap })

	if title ~= "" then
		New("TextLabel", { FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold), Text = title, TextSize = 11, TextXAlignment = Enum.TextXAlignment.Left, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 14), LayoutOrder = 1, Parent = wrap, ThemeTag = { TextColor3 = "SubText" } })
	end

	local codeLabel = New("TextLabel", { FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json"), Text = code, TextSize = 12, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 2, Parent = wrap, ThemeTag = { TextColor3 = "Text" } })

	if title ~= "" then
		New("UIListLayout", { FillDirection = Enum.FillDirection.Vertical, Padding = UDim.new(0,4), SortOrder = Enum.SortOrder.LayoutOrder, Parent = wrap })
	end

	local copyBtn = New("TextButton", { Size = UDim2.fromOffset(24,24), Position = UDim2.new(1,4,0,6), AnchorPoint = Vector2.new(0,0), BackgroundTransparency = 0.7, Text = "", ZIndex = 3, Parent = wrap, ThemeTag = { BackgroundColor3 = "Tab" } })
	New("UICorner", { CornerRadius = UDim.new(0,6), Parent = copyBtn })
	local copyIcoImg = New("ImageLabel", { Size = UDim2.fromOffset(14,14), Position = UDim2.fromScale(0.5,0.5), AnchorPoint = Vector2.new(0.5,0.5), BackgroundTransparency = 1, Parent = copyBtn, ThemeTag = { ImageColor3 = "SubText" } })
	local copyIc = lib and lib:GetIcon("solar/copy-bold")
	if copyIc and type(copyIc) == "table" then
		copyIcoImg.Image = copyIc.Image or ""; copyIcoImg.ImageRectOffset = copyIc.ImageRectOffset or Vector2.new(); copyIcoImg.ImageRectSize = copyIc.ImageRectSize or Vector2.new()
	elseif copyIc then copyIcoImg.Image = tostring(copyIc) end

	Creator.AddSignal(copyBtn.MouseButton1Click, function()
		pcall(function() toclipboard(code) end)
		if cb then pcall(cb) end
	end)

	local mod = { Frame = wrap, Type = "Code" }
	function mod:SetCode(v) code = v; codeLabel.Text = v end
	function mod:Set(v)     code = v; codeLabel.Text = v end
	function mod:Destroy()  wrap:Destroy() end
	return mod
end

return Code
