local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local Creator = require(Root.Creator)
local New     = Creator.New

local CollapsibleSection = {}
CollapsibleSection.__index = CollapsibleSection
CollapsibleSection.__type  = "CollapsibleSection"

function CollapsibleSection:New(tab, title, icon, startOpen)
	startOpen = (startOpen ~= false)
	local parent = tab.Container
	local lib = tab.Library

	-- outer container
	local outer = New("Frame", {
		Size            = UDim2.new(1, 0, 0, 26),
		BackgroundTransparency = 1,
		LayoutOrder     = tab._elementCount or 0,
		Parent          = parent,
	})

	-- header
	local header = New("TextButton", {
		Size            = UDim2.new(1, 0, 0, 26),
		BackgroundTransparency = 1,
		Text            = "",
		AutoButtonColor = false,
		Parent          = outer,
	})

	-- icon
	local iconOffset = 0
	if icon then
		local iconImg = New("ImageLabel", {
			Name          = "_SecIcon",
			Size          = UDim2.fromOffset(14, 14),
			Position      = UDim2.fromOffset(0, 3),
			BackgroundTransparency = 1,
			ImageColor3   = Color3.fromRGB(255, 255, 255),
			ImageTransparency = 0.25,
			Parent        = header,
		})
		iconOffset = 22
		task.defer(function()
			local ic = lib:GetIcon and lib:GetIcon(icon)
			if ic then
				if type(ic) == "table" then
					iconImg.Image           = ic.Image or ""
					iconImg.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
					iconImg.ImageRectSize   = ic.ImageRectSize or Vector2.new()
				else
					iconImg.Image = tostring(ic)
				end
			end
		end)
	end

	local titleLabel = New("TextLabel", {
		RichText        = true,
		Text            = title,
		TextTransparency = 0,
		FontFace        = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
		TextSize        = 18,
		TextXAlignment  = "Left",
		TextYAlignment  = "Center",
		Size            = UDim2.new(1, -36, 0, 18),
		Position        = UDim2.fromOffset(iconOffset, 2),
		BackgroundTransparency = 1,
		ThemeTag        = { TextColor3 = "Text" },
		Parent          = header,
	})

	-- chevron
	local chevron = New("ImageLabel", {
		Name            = "_SecChevron",
		Size            = UDim2.fromOffset(16, 16),
		AnchorPoint     = Vector2.new(1, 0.5),
		Position        = UDim2.new(1, 0, 0, 11),
		BackgroundTransparency = 1,
		ImageColor3     = Color3.fromRGB(255, 255, 255),
		ImageTransparency = 0.25,
		ThemeTag        = { ImageColor3 = "Text" },
		Parent          = header,
	})
	-- load chevron icon
	task.defer(function()
		local ic = lib:GetIcon and lib:GetIcon("lucide/chevron-right")
		if ic and type(ic) == "table" then
			chevron.Image           = ic.Image or ""
			chevron.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
			chevron.ImageRectSize   = ic.ImageRectSize or Vector2.new()
		end
	end)

	-- content area
	local content = New("Frame", {
		Size            = UDim2.new(1, 0, 0, 0),
		Position        = UDim2.fromOffset(0, 26),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder     = 2,
		Parent          = outer,
	})

	local layout = New("UIListLayout", {
		Padding         = UDim.new(0, 5),
		SortOrder       = Enum.SortOrder.LayoutOrder,
		Parent          = content,
	})

	New("UIPadding", {
		PaddingTop      = UDim.new(0, 5),
		PaddingBottom   = UDim.new(0, 5),
		PaddingLeft     = UDim.new(0, 4),
		PaddingRight    = UDim.new(0, 4),
		Parent          = content,
	})

	local isOpen = false
	local innerHeight = 0
	local duration = 0.22
	local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

	local function applyArrow(open, animate)
		local rot = open and 90 or 0
		if animate then
			TweenS:Create(chevron, TweenInfo.new(duration, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Rotation = rot }):Play()
		else
			chevron.Rotation = rot
		end
	end

	local function setOpen(open, animate)
		isOpen = open
		applyArrow(open, animate)
		local contentHeight = open and (innerHeight + 10) or 0
		local totalHeight   = 26 + contentHeight
		if animate then
			TweenS:Create(content, tweenInfo, { Size = UDim2.new(1, 0, 0, contentHeight) }):Play()
			TweenS:Create(outer,   tweenInfo, { Size = UDim2.new(1, 0, 0, totalHeight) }):Play()
		else
			content.Size = UDim2.new(1, 0, 0, contentHeight)
			outer.Size   = UDim2.new(1, 0, 0, totalHeight)
		end
	end

	layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		local newH = layout.AbsoluteContentSize.Y
		innerHeight = newH
		if isOpen then
			local ch = newH + 10
			content.Size = UDim2.new(1, 0, 0, ch)
			outer.Size   = UDim2.new(1, 0, 0, 26 + ch)
		end
	end)

	header.MouseButton1Click:Connect(function()
		setOpen(not isOpen, true)
	end)

	task.defer(function()
		innerHeight = layout.AbsoluteContentSize.Y
		setOpen(startOpen, false)
	end)

	local section = {
		Type        = "CollapsibleSection",
		Container   = content,
		ScrollFrame = tab.ScrollFrame,
		_elementCount = 0,
	}

	function section:Open(animate)   setOpen(true,  animate ~= false) end
	function section:Close(animate)  setOpen(false, animate ~= false) end
	function section:Toggle(animate) setOpen(not isOpen, animate ~= false) end
	function section:IsOpen()        return isOpen end
	function section:SetTitle(text)  titleLabel.Text = tostring(text or "") end

	setmetatable(section, CollapsibleSection)
	return section
end

return CollapsibleSection
