-- FluentModded Example Script
-- GitHub: https://github.com/StyearX/Fluent-Modded
--
-- Icon packs (prefix/icon-name):
--   solar/home-bold    -> https://github.com/StyearX/Icons/tree/main/solar
--   gravity/archive    -> https://github.com/StyearX/Icons/tree/main/gravity
--   lucide/home        -> https://github.com/StyearX/Icons/tree/main/lucide
--   craft/home         -> https://github.com/StyearX/Icons/tree/main/craft
--   geist/home         -> https://github.com/StyearX/Icons/tree/main/geist
--   sfsymbols/house    -> https://github.com/StyearX/Icons/tree/main/sfsymbols

local Fluent = loadstring(game:HttpGet(
    "https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentLite"
))()

-- Register a custom theme before creating the window
Fluent:RegisterCustomTheme("MyTheme", {
    Accent              = Color3.fromRGB(96, 205, 255),
    AcrylicMain         = Color3.fromRGB(20, 20, 30),
    AcrylicBorder       = Color3.fromRGB(50, 50, 70),
    AcrylicGradient     = ColorSequence.new(Color3.fromRGB(20, 20, 30), Color3.fromRGB(10, 10, 20)),
    AcrylicNoise        = 0.8,
    TitleBarLine        = Color3.fromRGB(50, 50, 70),
    Tab                 = Color3.fromRGB(30, 30, 45),
    Element             = Color3.fromRGB(25, 25, 38),
    ElementBorder       = Color3.fromRGB(50, 50, 70),
    InElementBorder     = Color3.fromRGB(60, 60, 85),
    ElementTransparency = 0.85,
    ToggleSlider        = Color3.fromRGB(40, 40, 60),
    ToggleToggled       = Color3.fromRGB(96, 205, 255),
    SliderRail          = Color3.fromRGB(40, 40, 60),
    DropdownFrame       = Color3.fromRGB(20, 20, 32),
    DropdownHolder      = Color3.fromRGB(15, 15, 25),
    DropdownBorder      = Color3.fromRGB(50, 50, 70),
    DropdownOption      = Color3.fromRGB(28, 28, 42),
    Keybind             = Color3.fromRGB(28, 28, 42),
    Input               = Color3.fromRGB(18, 18, 28),
    InputFocused        = Color3.fromRGB(12, 12, 20),
    InputIndicator      = Color3.fromRGB(60, 60, 90),
    InputIndicatorFocus = Color3.fromRGB(96, 205, 255),
    Dialog              = Color3.fromRGB(15, 15, 25),
    DialogHolder        = Color3.fromRGB(12, 12, 20),
    DialogHolderLine    = Color3.fromRGB(40, 40, 60),
    DialogButton        = Color3.fromRGB(22, 22, 35),
    DialogButtonBorder  = Color3.fromRGB(50, 50, 70),
    DialogBorder        = Color3.fromRGB(50, 50, 70),
    DialogInput         = Color3.fromRGB(18, 18, 28),
    DialogInputLine     = Color3.fromRGB(60, 60, 90),
    Text                = Color3.fromRGB(240, 240, 255),
    SubText             = Color3.fromRGB(140, 140, 175),
    Hover               = Color3.fromRGB(35, 35, 55),
    HoverChange         = 0.04,
    ShineEnabled        = true,
    StrokeShine         = false,
    StrokeDark          = Color3.fromRGB(40, 40, 60),
    IconColor           = Color3.fromRGB(96, 205, 255),
    IconSize            = 18,
    Background          = nil,
    BackgroundTransparency = 0,
    ThemeAccentColors   = { Color3.fromRGB(96, 205, 255) },
})

local Window = Fluent:CreateWindow({
    Title            = "FluentModded",
    SubTitle         = "dev : StyearX, EvilFish",
    TabWidth         = 139,
    Size             = UDim2.fromOffset(480, 460),
    Acrylic          = true,
    Theme            = "AMOLED",
    MinimizeKey      = Enum.KeyCode.LeftControl,
    UserInfo         = true,
    UserInfoTop      = false,
    UserInfoTitle    = "", -- Only works on UserInfoTop 
    UserInfoSubtitle = "", -- Only Works on UserInfoTop
    UserInfoColor    = Color3.fromRGB(180, 10, 20),
    Search           = true,
})

local MainTab     = Window:AddTab({ Title = "Main",     Icon = "solar/home-bold" })
local MediaTab    = Window:AddTab({ Title = "Media",    Icon = "solar/play-bold" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "gravity/archive" })

-- Basic Controls
local BasicSection = MainTab:AddSection("Basic Controls")

BasicSection:AddToggle("MyToggle", {
    Title    = "Enable Feature",
    Icon     = "solar/shield-bold",
    Default  = false,
    Callback = function(value)
        print("[Toggle]", value)
    end,
})

BasicSection:AddSlider("MySlider", {
    Title    = "Volume",
    Icon     = "solar/volume-loud-bold",
    Default  = 50,
    Min      = 0,
    Max      = 100,
    Rounding = 1,
    Callback = function(value)
        print("[Slider]", value)
    end,
})

BasicSection:AddInput("MyInput", {
    Title       = "Username",
    Icon        = "solar/user-circle-bold",
    Placeholder = "Type here...",
    Numeric     = false,
    Finished    = false,
    Callback    = function(value)
        print("[Input]", value)
    end,
})

-- Advanced Controls
local AdvSection = MainTab:AddSection("Advanced Controls")

AdvSection:AddDropdown("DropdownSearch", {
    Title    = "Dropdown (with search)",
    Icon     = "solar/magnifer-bold",
    Values   = { "Apple", "Banana", "Cherry", "Date", "Elderberry" },
    Default  = "Apple",
    Multi    = false,
    Callback = function(v) print("[Dropdown]", v) end,
})

AdvSection:AddDropdown("DropdownNoSearch", {
    Title    = "Dropdown (no search)",
    Icon     = "solar/list-bold",
    Values   = { "Red", "Green", "Blue", "Yellow" },
    Default  = "Red",
    Multi    = false,
    NoSearch = true,
    Callback = function(v) print("[Dropdown NoSearch]", v) end,
})

AdvSection:AddDropdown("MultiDropdown With Search", {
    Title    = "Multi-Select",
    Icon     = "solar/layers-bold",
    Values   = { "Option 1", "Option 2", "Option 3", "Option 4" },
    Default  = { "Option 1", "Option 3" },
    Multi    = true,
    NoSearch = false,
    Callback = function(v) print("[Multi]", v) end,
})

AdvSection:AddDropdown("MultiDropdown Without Search", {
    Title    = "Multi-Select",
    Icon     = "solar/layers-bold",
    Values   = { "Option 1", "Option 2", "Option 3", "Option 4" },
    Default  = { "Option 1", "Option 3" },
    Multi    = true,
    NoSearch = true,
    Callback = function(v) print("[Multi]", v) end,
})

AdvSection:AddColorpicker("MyColor", {
    Title        = "Pick a Color",
    Icon         = "solar/pallete-bold",
    Default      = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback     = function(c) print("[Color]", c) end,
})

AdvSection:AddKeybind("KeyToggle", {
    Title    = "Keybind (Toggle)",
    Icon     = "solar/keyboard-bold",
    Default  = "LeftAlt",
    Mode     = "Toggle",
    Callback = function(state) print("[Toggle Keybind]", state) end,
})

AdvSection:AddKeybind("KeyHold", {
    Title    = "Keybind (Hold)",
    Icon     = "solar/hand-holding-bold",
    Default  = "F",
    Mode     = "Hold",
    Callback = function(held) print("[Hold Keybind]", held) end,
})

AdvSection:AddButton({
    Title    = "Show Notification",
    Icon     = "solar/bell-bold",
    Callback = function()
        Fluent:Notify({ Title = "FluentModded", Content = "Button clicked!", Duration = 3 })
    end,
})

AdvSection:AddParagraph({
    Title   = "Information",
    Content = "This is a read-only paragraph element.",
})

AdvSection:AddParagraph({
    Title   = "Fisch Bypass Status",
    Content = "Active: " .. tostring(Fluent.FischBypass) ..
              "\n(Auto-enables in Fisch - GameId 5750914919)",
})

-- Components & Layout
local CompSection = MainTab:AddSection("Components")

CompSection:AddButton({
    Title    = "Simple Dialog",
    Icon     = "solar/chat-round-bold",
    Callback = function()
        Window:Dialog({
            Title   = "Simple Dialog",
            Content = "Basic dialog with two buttons.",
            Buttons = {
                { Title = "OK",     Callback = function() print("OK") end },
                { Title = "Cancel" },
            },
        })
    end,
})

CompSection:AddButton({
    Title    = "Confirm Reset",
    Icon     = "solar/danger-bold",
    Callback = function()
        Window:Dialog({
            Title   = "Confirm",
            Content = "Reset all settings?",
            Buttons = {
                { Title = "Yes", Callback = function()
                    Fluent:Notify({ Title = "Done", Content = "Settings reset!", Duration = 2 })
                end },
                { Title = "No" },
            },
        })
    end,
})


CompSection:AddButton({
    Title    = "Apply MyTheme (custom)",
    Icon     = "solar/pallete-bold",
    Callback = function()
        Fluent:SetTheme("MyTheme")
        Fluent:Notify({ Title = "Theme", Content = "MyTheme applied!", Duration = 2 })
    end,
})

CompSection:AddButton({
    Title    = "Apply AMOLED",
    Icon     = "solar/moon-bold",
    Callback = function()
        Fluent:SetTheme("AMOLED")
        Fluent:Notify({ Title = "Theme", Content = "AMOLED applied!", Duration = 2 })
    end,
})

CompSection:AddButton({
    Title    = "Apply Blood Red",
    Icon     = "solar/fire-bold",
    Callback = function()
        Fluent:SetTheme("Blood Red")
        Fluent:Notify({ Title = "Theme", Content = "Blood Red applied!", Duration = 2 })
    end,
})

-- Media Tab
local IconInfoSection = MediaTab:AddSection("Icon Packs")

IconInfoSection:AddParagraph({ Title = "Solar",      Content = "solar/home-bold\ngithub.com/StyearX/Icons/tree/main/solar"     })
IconInfoSection:AddParagraph({ Title = "Gravity",    Content = "gravity/archive\ngithub.com/StyearX/Icons/tree/main/gravity"   })
IconInfoSection:AddParagraph({ Title = "Lucide",     Content = "lucide/home\ngithub.com/StyearX/Icons/tree/main/lucide"        })
IconInfoSection:AddParagraph({ Title = "Craft",      Content = "craft/home\ngithub.com/StyearX/Icons/tree/main/craft"          })
IconInfoSection:AddParagraph({ Title = "Geist",      Content = "geist/home\ngithub.com/StyearX/Icons/tree/main/geist"          })
IconInfoSection:AddParagraph({ Title = "SF Symbols", Content = "sfsymbols/house\ngithub.com/StyearX/Icons/tree/main/sfsymbols" })

local IconDemoSection = MediaTab:AddSection("Icon Demo")

IconDemoSection:AddButton({ Title = "solar/fire-bold",  Icon = "solar/fire-bold",  Callback = function() Fluent:Notify({ Title = "Solar",   Content = "solar/fire-bold",  Duration = 2 }) end })
IconDemoSection:AddButton({ Title = "gravity/archive",  Icon = "gravity/archive",  Callback = function() Fluent:Notify({ Title = "Gravity", Content = "gravity/archive",  Duration = 2 }) end })
IconDemoSection:AddButton({ Title = "lucide/zap",       Icon = "lucide/zap",       Callback = function() Fluent:Notify({ Title = "Lucide",  Content = "lucide/zap",       Duration = 2 }) end })
IconDemoSection:AddButton({ Title = "sfsymbols/house",  Icon = "sfsymbols/house",  Callback = function() Fluent:Notify({ Title = "SFSym",   Content = "sfsymbols/house",  Duration = 2 }) end })

-- Settings Tab
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
FloatingButtonManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("FluentModded")
SaveManager:SetFolder("FluentModded/Config")
FloatingButtonManager:SetFolder("FluentModded/Floating")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:BuildConfigSection(SettingsTab)

SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
FloatingButtonManager:LoadAutoloadConfig()

-- Floating button to open/minimize UI
local OpenGui = Instance.new("ScreenGui")
OpenGui.Name         = "OpenUI"
OpenGui.ResetOnSpawn = false
OpenGui.Parent       = game:GetService("CoreGui")

local OpenBtn = Instance.new("ImageButton")
OpenBtn.Size                   = UDim2.fromOffset(55, 55)
OpenBtn.Position               = UDim2.new(0.02, 0, 0.85, 0)
OpenBtn.BackgroundColor3       = Color3.fromRGB(105, 105, 105)
OpenBtn.BackgroundTransparency = 0
OpenBtn.Image                  = "rbxassetid://"
OpenBtn.Parent                 = OpenGui
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0.2, 0)

FloatingButtonManager:AddButton("OpenBtn", OpenBtn, false, false)

-- Drag logic for floating button
local _dragActive, _dragStart, _startPos

OpenBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = true
        _dragStart  = input.Position
        _startPos   = OpenBtn.Position
    end
end)

OpenBtn.InputChanged:Connect(function(input)
    if _dragActive and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then
        local delta = input.Position - _dragStart
        OpenBtn.Position = UDim2.new(
            _startPos.X.Scale, _startPos.X.Offset + delta.X,
            _startPos.Y.Scale, _startPos.Y.Offset + delta.Y
        )
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
    or input.UserInputType == Enum.UserInputType.Touch then
        _dragActive = false
    end
end)

OpenBtn.MouseButton1Click:Connect(function()
    if Window and Window.Minimize then Window:Minimize() end
end)

-- Startup notification
Fluent:Notify({
    Title    = "FluentModded",
    Content  = "Loaded! Fisch bypass: " .. tostring(Fluent.FischBypass),
    Duration = 4,
})

Window:SelectTab(1)
