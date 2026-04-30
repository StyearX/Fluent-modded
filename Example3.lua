-- This script is just a lua example, you can use this UI library for your script (mobile support)
-- LOAD FLUENT MODDED LIBRARY

local Fluent = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/FluentPro/Fluent.lua"))()

-- Grab managers (must be done before creating the window)
local SaveManager = Fluent.SaveManager
local InterfaceManager = Fluent.InterfaceManager
local FloatingButtonManager = Fluent.FloatingButtonManager

-- CREATE MAIN WINDOW

local Window = Fluent:CreateWindow({
    Title              = "FluentModded",
    SubTitle           = "dev : StyearX, EvilFish",
    TabWidth           = 160,
    Size               = UDim2.fromOffset(480, 460),
    Acrylic            = true,
    Theme              = "Blood Red",
    MinimizeKey        = Enum.KeyCode.LeftControl,
    UserInfoTop        = true,                     -- Show user info at the TOP
    UserInfoTitle      = game:GetService("Players").LocalPlayer.DisplayName,
    UserInfoSubtitle   = "Advanced User",
    UserInfoColor      = Color3.fromRGB(180, 10, 20),
    Search             = true,                     -- Enable tab search
})

-- CREATE TABS

local MainTab     = Window:AddTab({ Title = "Main",     Icon = "home"     })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })
local DialogTab   = Window:AddTab({ Title = "Dialog",   Icon = "message-circle" })
local InfoTab     = Window:AddTab({ Title = "UserInfo", Icon = "user"     })

-- SECTION: BASIC CONTROLS (MainTab)

local BasicSection = MainTab:AddSection("Basic Controls")

-- Toggle
BasicSection:AddToggle("MyToggle", {
    Title    = "Enable Feature",
    Default  = false,
    Callback = function(value)
        print("[Toggle]", value)
    end,
})

-- Slider
BasicSection:AddSlider("MySlider", {
    Title    = "Volume",
    Default  = 50,
    Min      = 0,
    Max      = 100,
    Rounding = 1,
    Callback = function(value)
        print("[Slider]", value)
    end,
})

-- Input
BasicSection:AddInput("MyInput", {
    Title       = "Username",
    Placeholder = "Type here...",
    Numeric     = false,
    Finished    = false,
    Callback    = function(value)
        print("[Input]", value)
    end,
})

-- SECTION: ADVANCED COMPONENTS (MainTab)
local AdvancedSection = MainTab:AddSection("Advanced")

-- Dropdown WITH search (default, NoSearch = false or omitted)
AdvancedSection:AddDropdown("DropdownWithSearch", {
    Title    = "Dropdown (with search)",
    Values   = { "Apple", "Banana", "Cherry", "Date", "Elderberry" },
    Default  = "Apple",
    Multi    = false,
    -- NoSearch = false (default) → search bar appears
    Callback = function(value)
        print("[Dropdown w/ search]", value)
    end,
})

-- Dropdown WITHOUT search (NoSearch = true)
AdvancedSection:AddDropdown("DropdownNoSearch", {
    Title    = "Dropdown (NO search)",
    Values   = { "Red", "Green", "Blue", "Yellow" },
    Default  = "Red",
    Multi    = false,
    NoSearch = true,   -- 👈 disables the search box inside the dropdown
    Callback = function(value)
        print("[Dropdown no search]", value)
    end,
})

-- Multi‑select Dropdown (with search, because NoSearch not set)
AdvancedSection:AddDropdown("MultiDropdown", {
    Title    = "Multi‑Select (with search)",
    Values   = { "Option 1", "Option 2", "Option 3", "Option 4" },
    Default  = { "Option 1", "Option 3" },  -- multiple defaults
    Multi    = true,
    Callback = function(value)
        print("[Multi Dropdown] Selected:", value)
    end,
})

-- Colorpicker
AdvancedSection:AddColorpicker("MyColorpicker", {
    Title        = "Pick a Color",
    Default      = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback     = function(color)
        print("[Color]", color)
    end,
})

-- Keybind – Toggle mode (default)
AdvancedSection:AddKeybind("KeybindToggle", {
    Title    = "Keybind (Toggle)",
    Default  = "LeftAlt",
    Mode     = "Toggle",   -- press to toggle on/off
    Callback = function(toggled)
        print("[Toggle Keybind] state:", toggled)
    end,
})

-- Keybind – Hold mode
AdvancedSection:AddKeybind("KeybindHold", {
    Title    = "Keybind (Hold)",
    Default  = "F",
    Mode     = "Hold",     -- stays true while held
    Callback = function(held)
        print("[Hold Keybind] holding:", held)
    end,
})

-- Button
AdvancedSection:AddButton({
    Title    = "Show Notification",
    Callback = function()
        Fluent:Notify({ Title = "Button", Content = "Clicked!", Duration = 3 })
    end,
})

-- Paragraph
AdvancedSection:AddParagraph({
    Title   = "Information",
    Content = "This is a read‑only paragraph. It can contain long descriptions or help text."
})

-- DIALOG DEMONSTRATION (DialogTab)

local DialogSection = DialogTab:AddSection("Interactive Dialogs")

DialogSection:AddButton({
    Title = "Open Simple Dialog",
    Callback = function()
        Window:Dialog({
            Title   = "Simple Dialog",
            Content = "This is a basic dialog with two buttons.",
            Buttons = {
                { Title = "OK", Callback = function() print("OK clicked") end },
                { Title = "Cancel" }
            }
        })
    end,
})

DialogSection:AddButton({
    Title = "Dialog with Custom Callback",
    Callback = function()
        Window:Dialog({
            Title   = "Confirm Action",
            Content = "Do you really want to reset all settings?",
            Buttons = {
                { Title = "Yes", Callback = function()
                    Fluent:Notify({ Title = "Reset", Content = "Settings reset!", Duration = 2 })
                end },
                { Title = "No" }
            }
        })
    end,
})

DialogSection:AddButton({
    Title = "Long Content Dialog",
    Callback = function()
        Window:Dialog({
            Title   = "Information",
            Content = "This dialog has a Floating Fishess.",
            Buttons = {
                { Title = "Got it" }
            }
        })
    end,
}) 

-- userinfo test (InfoTab)
local InfoSection = InfoTab:AddSection("UserInfo Examples")

InfoSection:AddParagraph({
    Title   = "Current Settings",
    Content = "This window uses UserInfoTop = true\nSee the top bar for user info.\nYou can also try UserInfo = true (bottom) in another window."
})

InfoSection:AddButton({
    Title = "Show UserInfo Bottom Example",
    Callback = function()
        -- Create a second window to demonstrate UserInfo = true (bottom)
        local SecondWindow = Fluent:CreateWindow({
            Title              = "Second Window",
            SubTitle           = "UserInfo at Bottom",
            TabWidth           = 160,
            Size               = UDim2.fromOffset(500, 400),
            Acrylic            = false,
            Theme              = "Ash Gray",
            MinimizeKey        = Enum.KeyCode.LeftControl,
            UserInfo           = true,    -- 👈 shows user info at the BOTTOM
            UserInfoTitleBottom= game:GetService("Players").LocalPlayer.DisplayName,
            UserInfoSubtitleBottom = "Bottom Info Example",
            UserInfoColor      = Color3.fromRGB(60, 120, 200),
            Search             = false,
        })
        local demo = SecondWindow:AddTab({ Title = "Demo", Icon = "info" })
        local sec = demo:AddSection("Bottom UserInfo")
        sec:AddParagraph({
            Title = "Note",
            Content = "This window has UserInfo = true, so the user info is at the bottom.\nClose this window to dismiss."
        })
        sec:AddButton({
            Title = "Close Window",
            Callback = function()
                SecondWindow:Destroy()
            end
        })
        SecondWindow:SelectTab(1)
    end,
})

-- Manager Setup

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
FloatingButtonManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("MyHub")
SaveManager:SetFolder("MyHub/Config")
FloatingButtonManager:SetFolder("MyHub/Floating")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:BuildConfigSection(SettingsTab)

SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
FloatingButtonManager:LoadAutoloadConfig()

-- FLOATING BUTTON (open/minimize UI) -- optional 

local OpenGui = Instance.new("ScreenGui")
OpenGui.Name         = "OpenUI"
OpenGui.ResetOnSpawn = false
OpenGui.Parent       = game:GetService("CoreGui")

local OpenBtn = Instance.new("ImageButton")
OpenBtn.Size                   = UDim2.fromOffset(55, 55)
OpenBtn.Position               = UDim2.new(0.02, 0, 0.85, 0)
OpenBtn.BackgroundColor3       = Color3.fromRGB(105, 105, 105)
OpenBtn.BackgroundTransparency = 0
OpenBtn.Image                  = "rbxassetid://"   -- replace with your icon ID if desired
OpenBtn.Parent                 = OpenGui
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0.2, 0)

FloatingButtonManager:AddButton("OpenBtn", OpenBtn, false, false)

-- Dragging logic 
local _dragActive, _dragStart, _startPos
OpenBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = true
        _dragStart  = input.Position
        _startPos   = OpenBtn.Position
    end
end)
OpenBtn.InputChanged:Connect(function(input)
    if _dragActive and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - _dragStart
        OpenBtn.Position = UDim2.new(
            _startPos.X.Scale, _startPos.X.Offset + delta.X,
            _startPos.Y.Scale, _startPos.Y.Offset + delta.Y
        )
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = false
    end
end)
OpenBtn.MouseButton1Click:Connect(function()
    if Window and Window.Minimize then Window:Minimize() end
end)

-- Notification 
Fluent:Notify({
    Title    = "FluentModded",
    Content  = "example loaded!",
    Duration = 4,
})

-- Select the first tab
Window:SelectTab(1)local BasicSection = MainTab:AddSection("Basic Controls")

-- Toggle
BasicSection:AddToggle("MyToggle", {
    Title    = "Enable Feature",
    Default  = false,
    Callback = function(value)
        print("[Toggle]", value)
    end,
})

-- Slider
BasicSection:AddSlider("MySlider", {
    Title    = "Volume",
    Default  = 50,
    Min      = 0,
    Max      = 100,
    Rounding = 1,
    Callback = function(value)
        print("[Slider]", value)
    end,
})

-- Input
BasicSection:AddInput("MyInput", {
    Title       = "Username",
    Placeholder = "Type here...",
    Numeric     = false,
    Finished    = false,
    Callback    = function(value)
        print("[Input]", value)
    end,
})

-- SECTION: ADVANCED COMPONENTS (MainTab)
local AdvancedSection = MainTab:AddSection("Advanced")

-- Dropdown WITH search (default, NoSearch = false or omitted)
AdvancedSection:AddDropdown("DropdownWithSearch", {
    Title    = "Dropdown (with search)",
    Values   = { "Apple", "Banana", "Cherry", "Date", "Elderberry" },
    Default  = "Apple",
    Multi    = false,
    -- NoSearch = false (default) → search bar appears
    Callback = function(value)
        print("[Dropdown w/ search]", value)
    end,
})

-- Dropdown WITHOUT search (NoSearch = true)
AdvancedSection:AddDropdown("DropdownNoSearch", {
    Title    = "Dropdown (NO search)",
    Values   = { "Red", "Green", "Blue", "Yellow" },
    Default  = "Red",
    Multi    = false,
    NoSearch = true,   -- 👈 disables the search box inside the dropdown
    Callback = function(value)
        print("[Dropdown no search]", value)
    end,
})

-- Multi‑select Dropdown (with search, because NoSearch not set)
AdvancedSection:AddDropdown("MultiDropdown", {
    Title    = "Multi‑Select (with search)",
    Values   = { "Option 1", "Option 2", "Option 3", "Option 4" },
    Default  = { "Option 1", "Option 3" },  -- multiple defaults
    Multi    = true,
    Callback = function(value)
        print("[Multi Dropdown] Selected:", value)
    end,
})

-- Colorpicker
AdvancedSection:AddColorpicker("MyColorpicker", {
    Title        = "Pick a Color",
    Default      = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback     = function(color)
        print("[Color]", color)
    end,
})

-- Keybind – Toggle mode (default)
AdvancedSection:AddKeybind("KeybindToggle", {
    Title    = "Keybind (Toggle)",
    Default  = "LeftAlt",
    Mode     = "Toggle",   -- press to toggle on/off
    Callback = function(toggled)
        print("[Toggle Keybind] state:", toggled)
    end,
})

-- Keybind – Hold mode
AdvancedSection:AddKeybind("KeybindHold", {
    Title    = "Keybind (Hold)",
    Default  = "F",
    Mode     = "Hold",     -- stays true while held
    Callback = function(held)
        print("[Hold Keybind] holding:", held)
    end,
})

-- Button
AdvancedSection:AddButton({
    Title    = "Show Notification",
    Callback = function()
        Fluent:Notify({ Title = "Button", Content = "Clicked!", Duration = 3 })
    end,
})

-- Paragraph
AdvancedSection:AddParagraph({
    Title   = "Information",
    Content = "This is a read‑only paragraph. It can contain long descriptions or help text."
})

-- DIALOG DEMONSTRATION (DialogTab)

local DialogSection = DialogTab:AddSection("Interactive Dialogs")

DialogSection:AddButton({
    Title = "Open Simple Dialog",
    Callback = function()
        Window:Dialog({
            Title   = "Simple Dialog",
            Content = "This is a basic dialog with two buttons.",
            Buttons = {
                { Title = "OK", Callback = function() print("OK clicked") end },
                { Title = "Cancel" }
            }
        })
    end,
})

DialogSection:AddButton({
    Title = "Dialog with Custom Callback",
    Callback = function()
        Window:Dialog({
            Title   = "Confirm Action",
            Content = "Do you really want to reset all settings?",
            Buttons = {
                { Title = "Yes", Callback = function()
                    Fluent:Notify({ Title = "Reset", Content = "Settings reset!", Duration = 2 })
                end },
                { Title = "No" }
            }
        })
    end,
})

DialogSection:AddButton({
    Title = "Long Content Dialog",
    Callback = function()
        Window:Dialog({
            Title   = "Information",
            Content = "This dialog has a Floating Fishess.",
            Buttons = {
                { Title = "Got it" }
            }
        })
    end,
}) 

-- userinfo test (InfoTab)
local InfoSection = InfoTab:AddSection("UserInfo Examples")

InfoSection:AddParagraph({
    Title   = "Current Settings",
    Content = "This window uses UserInfoTop = true\nSee the top bar for user info.\nYou can also try UserInfo = true (bottom) in another window."
})

InfoSection:AddButton({
    Title = "Show UserInfo Bottom Example",
    Callback = function()
        -- Create a second window to demonstrate UserInfo = true (bottom)
        local SecondWindow = Fluent:CreateWindow({
            Title              = "Second Window",
            SubTitle           = "UserInfo at Bottom",
            TabWidth           = 160,
            Size               = UDim2.fromOffset(500, 400),
            Acrylic            = false,
            Theme              = "Ash Gray",
            MinimizeKey        = Enum.KeyCode.LeftControl,
            UserInfo           = true,    -- 👈 shows user info at the BOTTOM
            UserInfoTitleBottom= game:GetService("Players").LocalPlayer.DisplayName,
            UserInfoSubtitleBottom = "Bottom Info Example",
            UserInfoColor      = Color3.fromRGB(60, 120, 200),
            Search             = false,
        })
        local demo = SecondWindow:AddTab({ Title = "Demo", Icon = "info" })
        local sec = demo:AddSection("Bottom UserInfo")
        sec:AddParagraph({
            Title = "Note",
            Content = "This window has UserInfo = true, so the user info is at the bottom.\nClose this window to dismiss."
        })
        sec:AddButton({
            Title = "Close Window",
            Callback = function()
                SecondWindow:Destroy()
            end
        })
        SecondWindow:SelectTab(1)
    end,
})

-- Manager Setup

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
FloatingButtonManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("MyHub")
SaveManager:SetFolder("MyHub/Config")
FloatingButtonManager:SetFolder("MyHub/Floating")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:BuildConfigSection(SettingsTab)

SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
FloatingButtonManager:LoadAutoloadConfig()

-- FLOATING BUTTON (open/minimize UI) -- optional 

local OpenGui = Instance.new("ScreenGui")
OpenGui.Name         = "OpenUI"
OpenGui.ResetOnSpawn = false
OpenGui.Parent       = game:GetService("CoreGui")

local OpenBtn = Instance.new("ImageButton")
OpenBtn.Size                   = UDim2.fromOffset(55, 55)
OpenBtn.Position               = UDim2.new(0.02, 0, 0.85, 0)
OpenBtn.BackgroundColor3       = Color3.fromRGB(105, 105, 105)
OpenBtn.BackgroundTransparency = 0
OpenBtn.Image                  = "rbxassetid://"   -- replace with your icon ID if desired
OpenBtn.Parent                 = OpenGui
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0.2, 0)

FloatingButtonManager:AddButton("OpenBtn", OpenBtn, false, false)

-- Dragging logic 
local _dragActive, _dragStart, _startPos
OpenBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = true
        _dragStart  = input.Position
        _startPos   = OpenBtn.Position
    end
end)
OpenBtn.InputChanged:Connect(function(input)
    if _dragActive and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - _dragStart
        OpenBtn.Position = UDim2.new(
            _startPos.X.Scale, _startPos.X.Offset + delta.X,
            _startPos.Y.Scale, _startPos.Y.Offset + delta.Y
        )
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = false
    end
end)
OpenBtn.MouseButton1Click:Connect(function()
    if Window and Window.Minimize then Window:Minimize() end
end)

-- Notification 
Fluent:Notify({
    Title    = "FluentModded",
    Content  = "example loaded!",
    Duration = 4,
})

-- Select the first tab
Window:SelectTab(1)
