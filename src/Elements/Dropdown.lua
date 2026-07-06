local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local UIS     = game:GetService("UserInputService")
local Mouse   = game:GetService("Players").LocalPlayer:GetMouse()
local Camera  = game:GetService("Workspace").CurrentCamera
local Creator = require(Root.Creator)
local New     = Creator.New

local Dropdown = {}
Dropdown.__index = Dropdown
Dropdown.__type  = "Dropdown"

function Dropdown:New(idx, config)
	local lib    = self.Library
	local el     = require(Root.Components.Element)(config.Title, config.Description, self.Container, false)
	el.DescLabel.Size = UDim2.new(1, -170, 0, 14)

	local d = {
		Values   = config.Values  or {},
		Value    = config.Default,
		Multi    = config.Multi   or false,
		Buttons  = {},
		Opened   = false,
		Type     = "Dropdown",
		Callback = config.Callback or function() end,
		SetTitle = el.SetTitle,
		SetDesc  = el.SetDesc,
		Frame    = el.Frame,
	}
	if d.Multi and type(d.Value) ~= "table" then
		d.Value = {}
	end

	-- value display label
	local valueLabel = New("TextLabel", {
		FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json"),
		Text             = "--",
		TextSize         = 13,
		TextXAlignment   = Enum.TextXAlignment.Left,
		Size             = UDim2.new(1, -30, 0, 14),
		Position         = UDim2.new(0, 8, 0.5, 0),
		AnchorPoint      = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		TextTruncate     = Enum.TextTruncate.AtEnd,
		ThemeTag         = { TextColor3 = "Text" },
	})

	local arrowIcon = New("ImageLabel", {
		Image           = "rbxassetid://10709790948",
		Size            = UDim2.fromOffset(16, 16),
		AnchorPoint     = Vector2.new(1, 0.5),
		Position        = UDim2.new(1, -8, 0.5, 0),
		BackgroundTransparency = 1,
		ThemeTag        = { ImageColor3 = "SubText" },
	})

	local btnFrame = New("TextButton", {
		Size             = UDim2.fromOffset(160, 30),
		Position         = UDim2.new(1, -10, 0.5, 0),
		AnchorPoint      = Vector2.new(1, 0.5),
		BackgroundTransparency = 0.9,
		Parent           = el.Frame,
		Text             = "",
		ThemeTag         = { BackgroundColor3 = "DropdownFrame" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 5) }),
		New("UIStroke", {
			Transparency    = 0.5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ThemeTag        = { Color = "InElementBorder" },
		}),
		arrowIcon,
		valueLabel,
	})

	-- optional search box
	local showSearch = not (config.NoSearch == true or config.Search == false)
	local searchBox  = showSearch and New("TextBox", {
		FontFace             = Font.new("rbxasset://fonts/families/GothamSSm.json"),
		TextSize             = 11,
		TextXAlignment       = Enum.TextXAlignment.Left,
		BackgroundTransparency = 0.7,
		BorderSizePixel      = 0,
		Size                 = UDim2.new(1, -10, 0, 24),
		Position             = UDim2.fromOffset(5, 5),
		PlaceholderText      = "Search options...",
		ClearTextOnFocus     = false,
		Text                 = "",
		ThemeTag             = { TextColor3 = "Text", BackgroundColor3 = "Input", PlaceholderColor3 = "SubText" },
	}) or nil
	if searchBox then
		New("UICorner", { CornerRadius = UDim.new(0, 4), Parent = searchBox })
	end

	local scrollOffY = showSearch and 33 or 5
	local scrollH    = showSearch and -38 or -10
	local listLayout = New("UIListLayout", { Padding = UDim.new(0, 3) })
	local listScroll = New("ScrollingFrame", {
		Size                      = UDim2.new(1, -5, 1, scrollH),
		Position                  = UDim2.fromOffset(5, scrollOffY),
		BackgroundTransparency    = 1,
		BottomImage               = "rbxassetid://6889812791",
		MidImage                  = "rbxassetid://6889812721",
		TopImage                  = "rbxassetid://6276641225",
		ScrollBarImageColor3      = Color3.fromRGB(255, 255, 255),
		ScrollBarImageTransparency = 0.95,
		ScrollBarThickness        = 4,
		BorderSizePixel           = 0,
		CanvasSize                = UDim2.fromScale(0, 0),
	}, { listLayout })

	-- DropdownBackgroundImage / DropdownBackgroundTransparency support
	local bgImage   = config.DropdownBackgroundImage   or (lib.DropdownBackgroundImage   or "")
	local bgTransp  = config.DropdownBackgroundTransparency
	if bgTransp == nil then bgTransp = (lib.DropdownBackgroundTransparency or 0.4) end

	local popupChildren = {
		listScroll,
		New("UICorner", { CornerRadius = UDim.new(0, 7) }),
		New("UIStroke", { ApplyStrokeMode = Enum.ApplyStrokeMode.Border, ThemeTag = { Color = "DropdownBorder" } }),
	}

	if bgImage ~= "" then
		table.insert(popupChildren, New("ImageLabel", {
			BackgroundTransparency = 1,
			Image                  = bgImage,
			ScaleType              = Enum.ScaleType.Stretch,
			Size                   = UDim2.fromScale(1, 1),
			ImageTransparency      = bgTransp,
			ZIndex                 = 0,
		}))
	else
		table.insert(popupChildren, New("ImageLabel", {
			BackgroundTransparency = 1,
			Image                  = "http://www.roblox.com/asset/?id=5554236805",
			ScaleType              = Enum.ScaleType.Slice,
			SliceCenter            = Rect.new(23, 23, 277, 277),
			Size                   = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
			Position               = UDim2.fromOffset(-15, -15),
			ImageColor3            = Color3.fromRGB(0, 0, 0),
			ImageTransparency      = 0.1,
		}))
	end

	if searchBox then table.insert(popupChildren, 1, searchBox) end

	local popupInner = New("Frame", {
		Size     = UDim2.fromScale(1, 0.6),
		ThemeTag = { BackgroundColor3 = "DropdownHolder" },
	}, popupChildren)

	local popupRoot = New("Frame", {
		BackgroundTransparency = 1,
		Size                   = UDim2.fromOffset(170, 300),
		Parent                 = lib.PopupGUI or lib.GUI,
		Visible                = false,
	}, {
		popupInner,
		New("UISizeConstraint", { MinSize = Vector2.new(170, 0) }),
	})

	table.insert(lib.OpenFrames, popupRoot)

	-- determine if popup should appear outside window
	local function isOutside()
		if config.DropdownOutsideWindow ~= nil then return config.DropdownOutsideWindow end
		if lib.DropdownsOutsideWindow then return true end
		return false
	end

	local popupWidth = 170

	local function updatePos()
		if isOutside() then
			local winGui   = lib.GUI or lib.PopupGUI
			local winFrame = winGui and winGui:FindFirstChildWhichIsA("Frame", true)
			local winRight = winFrame and (winFrame.AbsolutePosition.X + winFrame.AbsoluteSize.X)
				or (btnFrame.AbsolutePosition.X + btnFrame.AbsoluteSize.X + 8)
			local popX = winRight + 8
			local popY = btnFrame.AbsolutePosition.Y + btnFrame.AbsoluteSize.Y / 2 - popupRoot.AbsoluteSize.Y / 2
			local maxY = Camera.ViewportSize.Y - popupRoot.AbsoluteSize.Y - 8
			popY = math.max(8, math.min(popY, maxY))
			popupRoot.Position = UDim2.fromOffset(popX, popY)
		else
			local popX = btnFrame.AbsolutePosition.X
			local popY = btnFrame.AbsolutePosition.Y + btnFrame.AbsoluteSize.Y + 4
			if popY + popupRoot.AbsoluteSize.Y > Camera.ViewportSize.Y - 8 then
				popY = btnFrame.AbsolutePosition.Y - popupRoot.AbsoluteSize.Y - 4
			end
			popY = math.max(8, popY)
			popupRoot.Position = UDim2.fromOffset(popX, popY)
		end
	end

	local function updateSize()
		local minH = 42
		if #d.Values > 10 then
			popupRoot.Size = UDim2.fromOffset(popupWidth, 392)
		else
			local h = listLayout.AbsoluteContentSize.Y + 10
			popupRoot.Size = UDim2.fromOffset(popupWidth, math.max(h, minH))
		end
	end

	local function updateCanvas()
		listScroll.CanvasSize = UDim2.fromOffset(0, listLayout.AbsoluteContentSize.Y)
	end

	Creator.AddSignal(btnFrame:GetPropertyChangedSignal("AbsolutePosition"), updatePos)
	Creator.AddSignal(btnFrame:GetPropertyChangedSignal("AbsoluteSize"), function() updatePos(); updateSize() end)

	Creator.AddSignal(btnFrame.MouseButton1Click, function() d:Open() end)

	Creator.AddSignal(UIS.InputBegan, function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			local b, s = popupInner.AbsolutePosition, popupInner.AbsoluteSize
			if Mouse.X < b.X or Mouse.X > b.X + s.X or Mouse.Y < (b.Y - 21) or Mouse.Y > b.Y + s.Y then
				d:Close()
			end
		end
	end)

	local sf = self.ScrollFrame

	function d:Open()
		d.Opened = true
		if sf then sf.ScrollingEnabled = false end
		updatePos(); updateSize()
		popupRoot.Visible = true
		TweenS:Create(popupInner, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Size = UDim2.fromScale(1, 1) }):Play()
	end

	function d:Close()
		d.Opened = false
		if sf then sf.ScrollingEnabled = true end
		popupInner.Size   = UDim2.fromScale(1, 0.6)
		popupRoot.Visible = false
		if searchBox then searchBox.Text = "" end
	end

	function d:Display()
		local text = ""
		if d.Multi then
			local parts = {}
			for k, v in pairs(d.Value) do if v then table.insert(parts, k) end end
			text = table.concat(parts, ", ")
		else
			text = tostring(d.Value or "")
		end
		valueLabel.Text = text == "" and "--" or text
	end

	function d:SetValue(val)
		if d.Multi then
			if type(val) == "table" then
				d.Value = val
			end
		else
			d.Value = val
		end
		d:Display()
		lib:SafeCallback(d.Callback, d.Value)
	end

	function d:SetValues(vals)
		d.Values = vals or {}
		d:BuildList()
	end

	function d:GetActiveValues()
		if d.Multi then
			local out = {}
			for k, v in pairs(d.Value) do if v then table.insert(out, k) end end
			return out
		end
		return d.Value and { d.Value } or {}
	end

	function d:OnChanged(cb)
		d.Changed = cb
	end

	-- filter
	local filterTimer
	local function applyFilter()
		if not searchBox then return end
		local q = (searchBox.Text or ""):lower():gsub("^%s+",""):gsub("%s+$","")
		local blank = q == ""
		for btn, _ in pairs(d.Buttons) do
			local lbl = btn:FindFirstChild("ButtonLabel")
			if lbl then btn.Visible = blank or lbl.Text:lower():find(q, 1, true) ~= nil end
		end
		updateCanvas(); updateSize()
	end
	if searchBox then
		Creator.AddSignal(searchBox:GetPropertyChangedSignal("Text"), function()
			if filterTimer then filterTimer:Disconnect() end
			filterTimer = game:GetService("RunService").Stepped:Connect(function()
				applyFilter()
				if filterTimer then filterTimer:Disconnect(); filterTimer = nil end
			end)
		end)
	end

	function d:BuildList()
		d.Buttons = {}
		for _, child in ipairs(listScroll:GetChildren()) do
			if not child:IsA("UIListLayout") then child:Destroy() end
		end

		for _, val in ipairs(d.Values) do
			local isSelected = d.Multi and d.Value[val] or (d.Value == val)

			local selBar = New("Frame", {
				Size             = UDim2.fromOffset(4, 14),
				BackgroundColor3 = Color3.fromRGB(76, 194, 255),
				Position         = UDim2.fromOffset(-1, 0),
				AnchorPoint      = Vector2.new(0, 0.5),
				ThemeTag         = { BackgroundColor3 = "Accent" },
				Visible          = isSelected,
			}, { New("UICorner", { CornerRadius = UDim.new(0, 2) }) })

			local lbl = New("TextLabel", {
				FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text             = val,
				TextSize         = 13,
				TextXAlignment   = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				AutomaticSize    = Enum.AutomaticSize.Y,
				Size             = UDim2.fromScale(1, 1),
				Position         = UDim2.fromOffset(10, 0),
				Name             = "ButtonLabel",
				ThemeTag         = { TextColor3 = "Text" },
			})

			local row = New("TextButton", {
				Size             = UDim2.new(1, 0, 0, 32),
				BackgroundTransparency = 1,
				Text             = "",
				Parent           = listScroll,
				ThemeTag         = { BackgroundColor3 = "DropdownOption" },
			}, {
				New("UICorner", { CornerRadius = UDim.new(0, 4) }),
				selBar,
				lbl,
			})

			d.Buttons[row] = val

			Creator.AddSignal(row.MouseButton1Click, function()
				if d.Multi then
					d.Value[val] = not d.Value[val]
					selBar.Visible = d.Value[val]
				else
					for btn, _ in pairs(d.Buttons) do
						local bar = btn:FindFirstChildWhichIsA("Frame")
						if bar then bar.Visible = false end
					end
					d.Value    = val
					selBar.Visible = true
					d:Close()
				end
				d:Display()
				lib:SafeCallback(d.Callback, d.Value)
				lib:SafeCallback(d.Changed,  d.Value)
			end)

			Creator.AddSignal(row.MouseEnter, function()
				TweenS:Create(row, TweenInfo.new(0.1), { BackgroundTransparency = 0.85 }):Play()
			end)
			Creator.AddSignal(row.MouseLeave, function()
				TweenS:Create(row, TweenInfo.new(0.1), { BackgroundTransparency = 1 }):Play()
			end)
		end

		updateCanvas(); updateSize()
	end

	function d:Destroy()
		el.Frame:Destroy()
		popupRoot:Destroy()
		lib.Options[idx] = nil
	end

	updatePos(); updateSize()
	d:BuildList()
	d:Display()
	lib.Options[idx] = d
	return d
end

return Dropdown
