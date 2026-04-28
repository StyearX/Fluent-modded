local Fluent = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/N/XXX.lua"))()

local Window = Fluent:CreateWindow({
    Title = "FluentModded",
    SubTitle = "v2",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Blood Red",
    MinimizeKey = Enum.KeyCode.LeftControl,
    UserInfo = true,
    UserInfoSubtitle = "Premium version",
    Search = true,
})

local MainTab = Window:AddTab({ Title = "Main", Icon = "home" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

local BasicSection = MainTab:AddSection("Basic Controls")
local AdvancedSection = MainTab:AddSection("Advanced")

BasicSection:AddToggle("MyToggle", {
    Title = "Toggle",
    Default = false,
    Callback = function(value)
        print("[Toggle]", value)
    end,
})

BasicSection:AddSlider("MySlider", {
    Title = "Slider",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(value)
        print("[Slider]", value)
    end,
})

BasicSection:AddInput("MyInput", {
    Title = "Input",
    Placeholder = "Type here...",
    Numeric = false,
    Finished = false,
    Callback = function(value)
        print("[Input]", value)
    end,
})

AdvancedSection:AddDropdown("MyDropdown", {
    Title = "Dropdown",
    Values = { "Option A", "Option B", "Option C" },
    Default = "Option A",
    Multi = false,
    Callback = function(value)
        print("[Dropdown]", value)
    end,
})

AdvancedSection:AddColorpicker("MyColorpicker", {
    Title = "Color",
    Default = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback = function(color)
        print("[Color]", color)
    end,
})

AdvancedSection:AddKeybind("MyKeybind", {
    Title = "Keybind",
    Default = "LeftAlt",
    Mode = "Toggle",
    Callback = function(toggled)
        print("[Keybind]", toggled)
    end,
})

AdvancedSection:AddButton({
    Title = "Button",
    Callback = function()
        Fluent:Notify({ Title = "Button", Content = "Clicked!", Duration = 3 })
    end,
})

-- SaveManager (built-in, no loadstring needed)
local SaveManager = Fluent.SaveManager
local InterfaceManager = Fluent.InterfaceManager

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("MyHub")
SaveManager:SetFolder("MyHub/Config")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)

SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()

-- Floating button
local OpenGui = Instance.new("ScreenGui")
OpenGui.Name = "OpenUI"
OpenGui.ResetOnSpawn = false
OpenGui.Parent = game:GetService("CoreGui")

local OpenBtn = Instance.new("ImageButton")
OpenBtn.Size = UDim2.fromOffset(55, 55)
OpenBtn.Position = UDim2.new(0.02, 0, 0.85, 0)
OpenBtn.BackgroundColor3 = Color3.fromRGB(105, 105, 105)
OpenBtn.BackgroundTransparency = 0.5
OpenBtn.Image = "rbxassetid://121343473918667"
OpenBtn.Parent = OpenGui
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0.2, 0)

local dragActive, dragStart, startPos
OpenBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragActive = true
        dragStart = input.Position
        startPos = OpenBtn.Position
    end
end)
OpenBtn.InputChanged:Connect(function(input)
    if dragActive and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        OpenBtn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragActive = false
    end
end)
OpenBtn.MouseButton1Click:Connect(function()
    if Window and Window.Minimize then Window:Minimize() end
end)

Fluent:Notify({
    Title = "FluentModded",
    Content = "Loaded!",
    Duration = 4,
})

Window:SelectTab(1)
