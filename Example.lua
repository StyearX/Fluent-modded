local Fluent = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/N/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/StyearX/Fluent-Modded/refs/heads/main/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/StyearX/Fluent-Modded/refs/heads/main/Addons/InterfaceManager.lua"))()
local FloatingManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/StyearX/Fluent-Modded/refs/heads/main/Addons/SaveFloatingButtonManager.lua"))()

-- Create Window: Main UI container
local Window = Fluent:CreateWindow({
    Title = "FluentModded",
    SubTitle = "Vraigos",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 420),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tabs: Different pages in the UI
local MainTab = Window:AddTab({ Title = "Main", Icon = "home" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

-- Sections: Groups to organize elements inside tabs
local BasicSection = MainTab:AddSection("Basic Controls")
local AdvancedSection = MainTab:AddSection("Advanced")
local InfoSection = MainTab:AddSection("Information")

-- Toggle: On/off switch for enabling/disabling features
local MyToggle = BasicSection:AddToggle("MyToggle", {
    Title = "Toggle",
    Description = "Enable/disable your feature",
    Default = false -- set to true to enable by default
})
MyToggle:OnChanged(function(value)
    print("[Toggle] State:", value)
end)

-- Slider: Adjust numeric values with a sliding bar
local MySlider = BasicSection:AddSlider("MySlider", {
    Title = "Slider",
    Description = "Adjust a numeric value",
    Default = 50, -- starting value
    Min = 0, -- minimum value
    Max = 100, -- maximum value
    Rounding = 1 -- decimal places (0 = whole numbers, 1 = one decimal)
})
MySlider:OnChanged(function(value)
    print("[Slider] Value:", value)
end)

-- Input: Text or number entry field
local MyInput = BasicSection:AddInput("MyInput", {
    Title = "Input",
    Description = "Enter text or number",
    Default = "Hello",
    Placeholder = "Type here...",
    Numeric = false, -- set to true to only allow numbers
    Finished = false -- set to true to only fire callback when pressing Enter
})
MyInput:OnChanged(function(value)
    print("[Input] Text:", value)
end)

-- Dropdown: Select from a list of options
local MyDropdown = AdvancedSection:AddDropdown("MyDropdown", {
    Title = "Dropdown",
    Description = "Select one option",
    Values = { "Option A", "Option B", "Option C" },
    Default = "Option A",
    Multi = false -- set to true so the dropdown can have more than 1 selection
})
MyDropdown:OnChanged(function(value)
    print("[Dropdown] Selected:", value)
end)

-- Colorpicker: Pick colors with RGB/Hex picker
local MyColorpicker = AdvancedSection:AddColorpicker("MyColorpicker", {
    Title = "Colorpicker",
    Description = "Pick a color",
    Default = Color3.fromRGB(255, 0, 0), -- Red by default
    Transparency = 0 -- 0 = no transparency, 1 = fully transparent
})
MyColorpicker:OnChanged(function(color)
    print("[Colorpicker] RGB:", color.R, color.G, color.B)
end)

-- Keybind: Assign keyboard keys to toggle features
local MyKeybind = AdvancedSection:AddKeybind("MyKeybind", {
    Title = "Keybind",
    Description = "Press a key to toggle something",
    Default = "LeftAlt",
    Mode = "Toggle" -- options: "Toggle", "Hold", "Always"
})
MyKeybind:OnClick(function(toggled)
    print("[Keybind] Toggled:", toggled)
end)

-- Button: Execute actions when clicked
local MyButton = AdvancedSection:AddButton({
    Title = "Button",
    Description = "Click to execute action",
    Callback = function()
        Fluent:Notify({ Title = "Button", Content = "Action executed!", Duration = 3 }) -- duration in seconds
    end
})

-- Paragraph: Display static text information
InfoSection:AddParagraph({
    Title = "Information",
    Content = "Complete Fluent UI example with SaveManager.\nMinimize button works on mobile/PC."
})

-- Function to minimize/restore the main window
local function SafeMinimize()
    if Window and Window.Minimize then
        Window:Minimize()
    end
end

-- ScreenGui: Container for the floating button
local OpenGui = Instance.new("ScreenGui")
OpenGui.Name = "OpenUI"
OpenGui.ResetOnSpawn = false -- keeps the GUI after player respawn
OpenGui.Parent = game:GetService("CoreGui")

-- Floating button: ImageButton to open/minimize the UI
local OpenBtn = Instance.new("ImageButton")
OpenBtn.Size = UDim2.fromOffset(55, 55)
OpenBtn.Position = UDim2.new(0.02, 0, 0.85, 0) -- X = 2% from left, Y = 85% from top
OpenBtn.BackgroundColor3 = Color3.fromRGB(105, 105, 105)
OpenBtn.BackgroundTransparency = 0.5
OpenBtn.Image = "rbxassetid://" -- put image ID between quotes to add an icon
OpenBtn.Parent = OpenGui

-- UICorner: Makes the floating button rounded
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0.2, 0)

-- Drag functionality for floating button (supports mouse and touch)
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

-- Click floating button to minimize/restore UI
OpenBtn.MouseButton1Click:Connect(SafeMinimize)

-- Button in Settings tab to minimize/restore
SettingsTab:AddButton({
    Title = "Minimize / Restore Window",
    Description = "Tap to hide/show the main UI",
    Callback = SafeMinimize
})

-- Setup SaveManager: For saving/loading configurations
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
FloatingManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings() -- don't save theme settings
InterfaceManager:SetFolder("PlaceHolderHub")
SaveManager:SetFolder("PlaceHolderHub/Config")
FloatingManager:SetFolder("PlaceHolderHub")

-- Build settings sections
InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)
FloatingManager:BuildConfigSection(SettingsTab)

-- Auto-load last saved config
SaveManager:LoadAutoloadConfig()

-- Notify user that UI is ready
Fluent:Notify({
    Title = "FluentModded",
    Content = "UI loaded. Settings tab now has save manager.",
    Duration = 5
})

-- Select the first tab (Main tab)
Window:SelectTab(1)
