local Root    = script.Parent.Parent
local UIS     = game:GetService("UserInputService")
local Creator = require(Root.Creator)
local New     = Creator.New

local Keybind = {}
Keybind.__index = Keybind
Keybind.__type  = "Keybind"

function Keybind:New(idx, config)
	assert(config.Title,   "Keybind - Missing Title")
	assert(config.Default, "Keybind - Missing Default")
	local lib = self.Library

	local k = {
		Value           = config.Default,
		Toggled         = false,
		Mode            = config.Mode or "Toggle",
		Type            = "Keybind",
		Callback        = config.Callback        or function() end,
		ChangedCallback = config.ChangedCallback or function() end,
	}

	local el = require(Root.Components.Element)(config.Title, config.Description, self.Container, true)
	k.SetTitle = el.SetTitle
	k.SetDesc  = el.SetDesc

	local keyLabel = New("TextLabel", {
		FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json"),
		Text             = config.Default,
		TextSize         = 13,
		TextXAlignment   = Enum.TextXAlignment.Center,
		Size             = UDim2.new(0, 0, 0, 14),
		AutomaticSize    = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		LayoutOrder      = 2,
		ThemeTag         = { TextColor3 = "Text" },
	})

	local mouseIco = New("ImageLabel", {
		Size             = UDim2.fromOffset(13, 13),
		BackgroundTransparency = 1,
		Image            = "rbxassetid://10734898592",
		ImageTransparency = 0.35,
		LayoutOrder      = 1,
		ThemeTag         = { ImageColor3 = "SubText" },
	})

	local bindBtn = New("TextButton", {
		Size             = UDim2.fromOffset(0, 30),
		Position         = UDim2.new(1, -10, 0.5, 0),
		AnchorPoint      = Vector2.new(1, 0.5),
		BackgroundTransparency = 0.9,
		Parent           = el.Frame,
		AutomaticSize    = Enum.AutomaticSize.X,
		Text             = "",
		ThemeTag         = { BackgroundColor3 = "Keybind" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 5) }),
		New("UIPadding", { PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 8) }),
		New("UIListLayout", {
			FillDirection      = Enum.FillDirection.Horizontal,
			VerticalAlignment  = Enum.VerticalAlignment.Center,
			Padding            = UDim.new(0, 4),
			SortOrder          = Enum.SortOrder.LayoutOrder,
		}),
		New("UIStroke", { Transparency = 0.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, ThemeTag = { Color = "InElementBorder" } }),
		mouseIco,
		keyLabel,
	})

	local listening = false

	function k:GetState()
		if UIS:GetFocusedTextBox() and k.Mode ~= "Always" then return false end
		if k.Mode == "Always" then return true end
		if k.Mode == "Hold" then
			if k.Value == "None" then return false end
			if k.Value == "MouseLeft"  then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) end
			if k.Value == "MouseRight" then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
			return UIS:IsKeyDown(Enum.KeyCode[k.Value])
		end
		return k.Toggled
	end

	function k:SetValue(key, mode)
		k.Value = key  or k.Value
		k.Mode  = mode or k.Mode
		keyLabel.Text = k.Value
	end

	function k:OnChanged(cb) k.Changed = cb; cb(k.Value) end
	function k:OnClick(cb)   k.Clicked = cb end

	function k:DoClick()
		lib:SafeCallback(k.Callback, k.Toggled)
		lib:SafeCallback(k.Clicked,  k.Toggled)
	end

	function k:Destroy()
		el.Frame:Destroy()
		lib.Options[idx] = nil
	end

	Creator.AddSignal(bindBtn.InputBegan, function(inp)
		if inp.UserInputType ~= Enum.UserInputType.MouseButton1 and inp.UserInputType ~= Enum.UserInputType.Touch then return end
		listening = true
		keyLabel.Text = "..."
		task.wait(0.2)
		local conn1, conn2
		conn1 = UIS.InputBegan:Connect(function(inp2)
			local key
			if inp2.UserInputType == Enum.UserInputType.Keyboard then
				key = inp2.KeyCode.Name
			elseif inp2.UserInputType == Enum.UserInputType.MouseButton1 then
				key = "MouseLeft"
			elseif inp2.UserInputType == Enum.UserInputType.MouseButton2 then
				key = "MouseRight"
			end
			if not key then return end
			conn2 = UIS.InputEnded:Connect(function(inp3)
				if inp3.KeyCode.Name == key or
					(key == "MouseLeft"  and inp3.UserInputType == Enum.UserInputType.MouseButton1) or
					(key == "MouseRight" and inp3.UserInputType == Enum.UserInputType.MouseButton2)
				then
					listening    = false
					k.Value      = key
					keyLabel.Text = key
					lib:SafeCallback(k.ChangedCallback, inp3.KeyCode or inp3.UserInputType)
					lib:SafeCallback(k.Changed,         inp3.KeyCode or inp3.UserInputType)
					conn1:Disconnect(); conn2:Disconnect()
				end
			end)
		end)
	end)

	Creator.AddSignal(UIS.InputBegan, function(inp)
		if listening or UIS:GetFocusedTextBox() then return end
		if k.Mode == "Toggle" then
			local n = k.Value
			if (n == "MouseLeft"  and inp.UserInputType == Enum.UserInputType.MouseButton1) or
			   (n == "MouseRight" and inp.UserInputType == Enum.UserInputType.MouseButton2) or
			   (inp.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode.Name == n) then
				k.Toggled = not k.Toggled
				k:DoClick()
			end
		elseif k.Mode == "Hold" then
			local n = k.Value
			if (n == "MouseLeft"  and inp.UserInputType == Enum.UserInputType.MouseButton1) or
			   (n == "MouseRight" and inp.UserInputType == Enum.UserInputType.MouseButton2) or
			   (inp.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode.Name == n) then
				lib:SafeCallback(k.Callback, true)
			end
		end
	end)

	Creator.AddSignal(UIS.InputEnded, function(inp)
		if UIS:GetFocusedTextBox() then return end
		if k.Mode == "Hold" then
			local n = k.Value
			if (n == "MouseLeft"  and inp.UserInputType == Enum.UserInputType.MouseButton1) or
			   (n == "MouseRight" and inp.UserInputType == Enum.UserInputType.MouseButton2) or
			   (inp.UserInputType == Enum.UserInputType.Keyboard and inp.KeyCode.Name == n) then
				lib:SafeCallback(k.Callback, false)
			end
		end
	end)

	lib.Options[idx] = k
	return k
end

return Keybind
