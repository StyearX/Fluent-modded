-- simple script hub example 
local Fluent = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/1.6.0/main.lua"))()

Workspace = game:GetService("Workspace")
RunService = game:GetService("RunService")
Players = game:GetService("Players")
Lighting = game:GetService("Lighting")
StarterGui = game:GetService("StarterGui")
ReplicatedStorage = game:GetService("ReplicatedStorage")
Camera = Workspace.CurrentCamera
LocalPlayer = Players.LocalPlayer
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
PathfindingService = game:GetService("PathfindingService")
CAS = game:GetService("ContextActionService")
HttpService = game:GetService("HttpService")
TeleportService = game:GetService("TeleportService")
MarketplaceService = game:GetService("MarketplaceService")
Stats = game:GetService("Stats")
Sounds = game:GetService("SoundService")

-- the script below is the Built-in Minimazer 
local Minimizer = Fluent:CreateMinimizer({
    Icon = "rbxassetid://109639117875913",
    Size = UDim2.fromOffset(64, 64),
    Position = UDim2.new(0.101969875, 0, 0.110441767, 0),
    Corner = 12,
    BackgroundTransparency = 1,
    IconCorner = 6,
    Transparency = 0,
    Lockable = true,
    LockHoldTime = 1.0,
    Draggable = true,
    OnClickSound = {
        "7127123605", "137566474343039", "438666542",
        "257001341", "257000833", "7127123554",
        "131607746976396", "97325669841459", "109312518223078",
    },
})

Minimizer.Visible = true

Fluent:AddTheme({
    Name = "Monochrome Noir",
    Accent = "#b4b4c3",
    AcrylicMain = "#0c0c0e",
    AcrylicBorder = "#28282d",
    AcrylicGradient = ColorSequence.new({
        ColorSequenceKeypoint.new(0,    Color3.fromHex("#0a0a0c")),
        ColorSequenceKeypoint.new(0.33, Color3.fromHex("#121216")),
        ColorSequenceKeypoint.new(0.66, Color3.fromHex("#16161c")),
        ColorSequenceKeypoint.new(1,    Color3.fromHex("#19191e")),
    }),
    AcrylicNoise = 0.9,
    TitleBarLine = "#50505f",
    Tab = "#141417",
    Element = "#121215",
    ElementBorder = "#323237",
    InElementBorder = "#232328",
    ElementTransparency = 0.92,
    ElementBorderThickness = 1,
    ToggleSlider = "#37373c",
    ToggleToggled = "#c8c8d7",
    SliderRail = "#2d2d32",
    CheckboxUnchecked = "#28282d",
    CheckboxChecked = "#c8c8d7",
    CheckboxCheck = "#0f0f12",
    ProgressBarRail = "#232328",
    ProgressBarFill = "#c8c8d7",
    DropdownFrame = "#0f0f12",
    DropdownHolder = "#141418",
    DropdownBorder = "#323237",
    DropdownOption = "#19191d",
    DropdownBorderThickness = 1,
    Keybind = "#1e1e22",
    Input = "#141418",
    InputFocused = "#1e1e23",
    InputIndicator = "#b4b4c3",
    Dialog = "#0e0e11",
    DialogHolder = "#141418",
    DialogHolderLine = "#323237",
    DialogButton = "#32323a",
    DialogButtonBorder = "#4b4b55",
    DialogBorder = "#2d2d32",
    DialogInput = "#16161a",
    DialogInputLine = "#a0a0af",
    Text = "#ebebf0",
    SubText = "#8c8c94",
    Hover = "#232328",
    HoverChange = 0.06,
    Background = "https://raw.githubusercontent.com/StyearX/Assets/main/backgrounds.png",
    BackgroundTransparency = 0,
    ShineEnabled = true,
    Shine = {
        Speed = 3,
        RotationSpeed = 1.5,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0,   Color3.fromHex("#000000")),
            ColorSequenceKeypoint.new(0.5, Color3.fromHex("#c8c8d7")),
            ColorSequenceKeypoint.new(1,   Color3.fromHex("#000000")),
        }),
    },
    StrokeShine = true,
    StrokeDark = Color3.fromHex("#19191e"),
    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromHex("#2d2d34")),
            ColorSequenceKeypoint.new(1, Color3.fromHex("#19191e")),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0,   Color3.fromHex("#646473")),
            ColorSequenceKeypoint.new(0.5, Color3.fromHex("#41414b")),
            ColorSequenceKeypoint.new(1,   Color3.fromHex("#646473")),
        }),
    },
    DiscordJoinButton = "#5865f2",
    WarningNotifyColor = "#c8a028",
    SuccessNotifyColor = "#3cb45a",
    ErrorNotifyColor = "#c83232",
    InfoNotifyColor = "#5096dc",
})

Window = Fluent:CreateWindow({
    Title = "GoonWares",
    TabWidth = 140,
    SubTitle = ".StyearX",
    Acrylic = true,
    Size = UDim2.fromOffset(680, 680),
    Theme = "Basically Pink",
    Background = true,
    Tags = {
        { Text = "Hello " .. tostring(LocalPlayer.DisplayName), Color = Color3.fromRGB(0, 0, 0) },
    },
    Font = "GothamSSm",
    TitleIcon = "rbxassetid://77838416429094",
    Search = {
        Search = true,
        Highlight = true,
        HighlightColor = Color3.fromRGB(180, 10, 20),
    },
    UserInfo = {
        UserInfo = true,
        UserInfoTitle = LocalPlayer.Name,
        UserInfoSubtitle = LocalPlayer.DisplayName,
        UserInfoColor = Color3.fromRGB(180, 10, 20),
    },
    Anonymous = {
        Default = false,
        ShowAno = true,
        AnoUserInfoTitle = "Hide",
        AnoUserInfoSubTitle = "Any",
    },
    FolderName = "GoonWares",
    ScreenGuiName = "GoonWares",
})

Tabs = {
    Divider       = Window:AddDividerTabs(),
    Main       = Window:AddTab({ Title = "Main", Icon = "circle-dot" }),
    Divider       = Window:AddDividerTabs(),
    Settings   = Window:AddTab({ Title = " Configuration", Icon = "settings" }),
    Divider       = Window:AddDividerTabs(),
    Visual     = Window:AddTabsInHeader({ Title = " Visual", Icon = "image" }),
}

Fluent.NotifyInsideWindow = true

MediaManager:SetFolder("GoonWares/Base")

InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("GoonWares/GameName")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
InterfaceManager:LoadSettings()

SaveManager:SetLibrary(Fluent)
SaveManager:SetFolder("GoonWares/GameName/Config")
SaveManager:IgnoreThemeSettings()
SaveManager:BuildConfigSection(Tabs.Settings)
SaveManager:LoadAutoloadConfig()

FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("GoonWares/GameName/Floating")
FloatingButtonManager:BuildConfigSection(Tabs.Settings)
FloatingButtonManager:LoadAutoloadConfig()

local FloatingButtonLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/StyearX/GoonWares/refs/heads/main/Module/FloatingButtonModule.luau"))()
local FloatButtons = FloatingButtonLib.new(Fluent, FloatingButtonManager)

local ToggleFrame, ToggleButton, _, ToggleSetMode = FloatButtons:Create("DemoToggleFloat", "Auto Jump", true, function(Button)
    local NewState = not Button:GetAttribute("Active")
    Button:SetAttribute("Active", NewState)
    FloatingButtonLib.SetActive(Button, NewState, "Auto Jump")
    Notify("Floating Button", "Auto Jump " .. (NewState and "enabled" or "disabled"), "Info", "solar/widget-bold", 2)
end)

local ButtonFrame, ButtonButton, _, ButtonSetMode = FloatButtons:Create("DemoClickFloat", "Reset Character", false, {
    Text = "Clicked!",
    Callback = function(Button)
        Notify("Floating Button", "Reset Character triggered", "Success", "solar/restart-bold", 2)
    end,
})

local SecFloatToggle = Tabs.Settings:AddSection("Toggle Mode", "solar/toggle-on-circle-bold")

SecFloatToggle:AddToggle("ShowDemoToggleFloat", {
    Title = "Show Auto Jump Floating Button",
    Description = "Toggle mode: text switches between ON and OFF",
    Icon = "solar/widget-bold",
    Default = false,
    Callback = function(Value)
        FloatingButtonLib.SetVisible(ToggleFrame, Value)
    end,
})
FloatButtons:AddModeDropdown(SecFloatToggle, "DemoToggleFloat", ToggleSetMode)
FloatButtons:AddSizeInputs(SecFloatToggle, "DemoToggleFloat", "Auto Jump")
FloatButtons:AddKeybind(SecFloatToggle, "DemoToggleFloat", "Auto Jump", function()
    local NewState = not ToggleButton:GetAttribute("Active")
    ToggleButton:SetAttribute("Active", NewState)
    FloatingButtonLib.SetActive(ToggleButton, NewState, "Auto Jump")
end, "")

SecFloatToggle:AddDivider()

local SecFloatButton = Tabs.Settings:AddSection("Button Mode", "solar/cursor-bold")

SecFloatButton:AddToggle("ShowDemoClickFloat", {
    Title = "Show Reset Character Floating Button",
    Description = "Button mode: click once, text changes to Clicked!, auto resets",
    Icon = "solar/restart-bold",
    Default = false,
    Callback = function(Value)
        FloatingButtonLib.SetVisible(ButtonFrame, Value)
    end,
})
FloatButtons:AddModeDropdown(SecFloatButton, "DemoClickFloat", ButtonSetMode)
FloatButtons:AddSizeInputs(SecFloatButton, "DemoClickFloat", "Reset Character")
FloatButtons:AddKeybind(SecFloatButton, "DemoClickFloat", "Reset Character", function()
    Notify("Floating Button", "Reset Character triggered", "Success", "solar/restart-bold", 2)
end, "")

SecFloatButton:AddDivider()

DConfiguration = {
    Esp = {
        Enabled = false,
        TeamCheck = false,
        IncludeNpc = false,
        BoxType = "3D",
        BoxesEnabled = true,
        NamesEnabled = false,
        DistanceEnabled = false,
        HighlightsEnabled = false,
        TracerEnabled = false,
        TracerPosition = "Top",
        TracerThickness = 1,
        Elements = {},
        RenderConnection = nil,
        TrackedTargets = {},
        EventConnections = {},
    },
    Lighting = {
        OutdoorAmbient = Color3.fromRGB(127, 127, 127),
        Brightness = 2,
        AtmosEnabled = false,
        AtmosDensity = 0,
        AtmosOffset = 0,
        AtmosHaze = 0,
        AtmosGlare = 0,
        AtmosColor = Color3.fromRGB(199, 170, 107),
        AtmosDecay = Color3.fromRGB(91, 127, 232),
        SunRayEnabled = false,
        SunRayIntensity = 0.25,
        SunRaySpread = 0.5,
        CcEnabled = false,
        CcBrightness = 0,
        CcContrast = 0,
        CcSaturation = 0,
        CcTintColor = Color3.fromRGB(255, 255, 255),
        BloomEnabled = false,
        BloomIntensity = 0.35,
        BloomSize = 24,
        BloomThreshold = 0.95,
        CloudsEnabled = false,
        CloudsDensity = 0.5,
        CloudsCover = 0.5,
        CloudsColor = Color3.fromRGB(199, 199, 199),
        BlurEnabled = false,
        BlurSize = 24,
        DofEnabled = false,
        DofFocusDistance = 50,
        DofInFocusRadius = 10,
        DofNearIntensity = 1,
        DofFarIntensity = 1,
    },
    FovCircle = {
        enabled = false,
        size = 150,
        primaryColor = Color3.fromRGB(255, 255, 255),
        secondaryColor = Color3.fromRGB(255, 80, 120),
        rgbMode = false,
        gui = nil,
        circleFrame = nil,
        strokeGradient = nil,
        innerGradient = nil,
        rgbConn = nil,
        loopConn = nil,
        rgbHue = 0,
        loopT = 0,
    },
}

local function CalculateBoxScale(Distance)
    if Distance <= 20 then return 1 else return math.max(20 / Distance, 0.25) end
end

local function GetHumanoidRootLike(Character)
    return Character:FindFirstChild("HumanoidRootPart")
        or Character:FindFirstChild("Torso")
        or Character:FindFirstChild("UpperTorso")
        or Character:FindFirstChild("LowerTorso")
        or Character:FindFirstChild("Head")
end

local function Create2DBox(Character, Color, Scale)
    local Existing = Character:FindFirstChild("Esp_2DBox")
    if Existing then Existing:Destroy() end
    local Billboard = Instance.new("BillboardGui")
    Billboard.Name = "Esp_2DBox"
    Billboard.AlwaysOnTop = true
    Billboard.Size = UDim2.new(0, 60 * Scale, 0, 80 * Scale)
    Billboard.StudsOffset = Vector3.new(0, 0, 0)
    Billboard.ClipsDescendants = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Active = true
    local RootPart = GetHumanoidRootLike(Character)
    if RootPart then
        Billboard.Adornee = RootPart
        Billboard.Parent = RootPart
    else
        Billboard.Adornee = Character
        Billboard.Parent = Character
    end
    local Frame = Instance.new("Frame")
    Frame.Name = "BoxFrame"
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundTransparency = 1
    Frame.BorderSizePixel = 0
    Frame.Parent = Billboard
    local Stroke = Instance.new("UIStroke")
    Stroke.Thickness = math.max(1.5 * Scale, 1)
    Stroke.Transparency = 0.3
    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    Stroke.Color = Color
    Stroke.Parent = Frame
    return { Billboard = Billboard, Frame = Frame, Stroke = Stroke, Scale = Scale }
end

local function Update2DBox(BoxData, Color, Scale)
    if BoxData then
        if BoxData.Stroke then BoxData.Stroke.Color = Color end
        if BoxData.Billboard then BoxData.Billboard.Size = UDim2.new(0, 60 * Scale, 0, 80 * Scale) end
        if BoxData.Stroke then BoxData.Stroke.Thickness = math.max(1.5 * Scale, 1) end
        BoxData.Scale = Scale
    end
end

local function Remove2DBox(Character)
    local Box = Character:FindFirstChild("Esp_2DBox")
    if Box then Box:Destroy() end
    local RootPart = GetHumanoidRootLike(Character)
    if RootPart then
        local BoxInRoot = RootPart:FindFirstChild("Esp_2DBox")
        if BoxInRoot then BoxInRoot:Destroy() end
    end
end

local function Create3DBox(Character, Color, Size)
    local Folder = Character:FindFirstChild("Esp_3DBox")
    if Folder then Folder:Destroy() end
    local RootPart = GetHumanoidRootLike(Character)
    if not RootPart then return nil end
    Folder = Instance.new("Folder")
    Folder.Name = "Esp_3DBox"
    Folder.Parent = Character
    Size = Size or Vector3.new(3, 4, 2.5)
    local Ox = Size.X / 2
    local Oy = Size.Y / 2
    local Oz = Size.Z / 2
    local Edges = {
        {Vector3.new(0, Oy, Oz), Vector3.new(Size.X, 0.1, 0.1)},
        {Vector3.new(0, Oy, -Oz), Vector3.new(Size.X, 0.1, 0.1)},
        {Vector3.new(-Ox, Oy, 0), Vector3.new(0.1, 0.1, Size.Z)},
        {Vector3.new(Ox, Oy, 0), Vector3.new(0.1, 0.1, Size.Z)},
        {Vector3.new(0, -Oy, Oz), Vector3.new(Size.X, 0.1, 0.1)},
        {Vector3.new(0, -Oy, -Oz), Vector3.new(Size.X, 0.1, 0.1)},
        {Vector3.new(-Ox, -Oy, 0), Vector3.new(0.1, 0.1, Size.Z)},
        {Vector3.new(Ox, -Oy, 0), Vector3.new(0.1, 0.1, Size.Z)},
        {Vector3.new(-Ox, 0, Oz), Vector3.new(0.1, Size.Y, 0.1)},
        {Vector3.new(Ox, 0, Oz), Vector3.new(0.1, Size.Y, 0.1)},
        {Vector3.new(-Ox, 0, -Oz), Vector3.new(0.1, Size.Y, 0.1)},
        {Vector3.new(Ox, 0, -Oz), Vector3.new(0.1, Size.Y, 0.1)},
    }
    for _, Edge in ipairs(Edges) do
        local Adornment = Instance.new("BoxHandleAdornment")
        Adornment.Adornee = RootPart
        Adornment.Size = Edge[2]
        Adornment.CFrame = CFrame.new(Edge[1])
        Adornment.Color3 = Color
        Adornment.Transparency = 0.2
        Adornment.ZIndex = 10
        Adornment.AlwaysOnTop = true
        Adornment.Visible = true
        Adornment.Parent = Folder
    end
    return Folder
end

local function Update3DBox(Character, Color)
    local Folder = Character:FindFirstChild("Esp_3DBox")
    if Folder then
        for _, Adornment in ipairs(Folder:GetChildren()) do
            if Adornment:IsA("BoxHandleAdornment") then
                Adornment.Color3 = Color
            end
        end
    end
end

local function Remove3DBox(Character)
    local Folder = Character:FindFirstChild("Esp_3DBox")
    if Folder then Folder:Destroy() end
end

local function CreateBillboard(Character, Name, Color)
    local Existing = Character:FindFirstChild("Esp_Billboard")
    if Existing then Existing:Destroy() end
    local Billboard = Instance.new("BillboardGui")
    Billboard.Name = "Esp_Billboard"
    Billboard.AlwaysOnTop = true
    Billboard.Size = UDim2.new(0, 200, 0, 40)
    Billboard.StudsOffset = Vector3.new(0, 2.5, 0)
    Billboard.ClipsDescendants = false
    Billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Billboard.Active = true
    local RootPart = GetHumanoidRootLike(Character)
    if RootPart then
        Billboard.Adornee = RootPart
        Billboard.Parent = RootPart
    else
        Billboard.Adornee = Character
        Billboard.Parent = Character
    end
    local NameLabel = Instance.new("TextLabel")
    NameLabel.Name = "NameLabel"
    NameLabel.Size = UDim2.new(1, 0, 0, 20)
    NameLabel.Position = UDim2.new(0, 0, 0, 0)
    NameLabel.BackgroundTransparency = 1
    NameLabel.Text = Name
    NameLabel.TextColor3 = Color
    NameLabel.TextSize = 13
    NameLabel.Font = Enum.Font.GothamSemibold
    NameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    NameLabel.TextStrokeTransparency = 0.3
    NameLabel.TextXAlignment = Enum.TextXAlignment.Center
    NameLabel.TextYAlignment = Enum.TextYAlignment.Bottom
    NameLabel.Parent = Billboard
    local DistanceLabel = Instance.new("TextLabel")
    DistanceLabel.Name = "DistanceLabel"
    DistanceLabel.Size = UDim2.new(1, 0, 0, 16)
    DistanceLabel.Position = UDim2.new(0, 0, 0, 18)
    DistanceLabel.BackgroundTransparency = 1
    DistanceLabel.Text = ""
    DistanceLabel.TextColor3 = Color
    DistanceLabel.TextSize = 11
    DistanceLabel.Font = Enum.Font.Gotham
    DistanceLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    DistanceLabel.TextStrokeTransparency = 0.3
    DistanceLabel.TextXAlignment = Enum.TextXAlignment.Center
    DistanceLabel.TextYAlignment = Enum.TextYAlignment.Top
    DistanceLabel.Parent = Billboard
    return { Billboard = Billboard, NameLabel = NameLabel, DistanceLabel = DistanceLabel }
end

local function UpdateBillboard(BillboardData, Name, Distance, Color)
    if not BillboardData then return end
    if Name then
        BillboardData.NameLabel.Text = Name
        BillboardData.NameLabel.TextColor3 = Color
    end
    if Distance then
        BillboardData.DistanceLabel.Text = string.format("%.0f studs", Distance)
        BillboardData.DistanceLabel.TextColor3 = Color
    end
    BillboardData.NameLabel.Visible = Name ~= nil
    BillboardData.DistanceLabel.Visible = Distance ~= nil
end

local function RemoveBillboard(Character)
    local Bill = Character:FindFirstChild("Esp_Billboard")
    if Bill then Bill:Destroy() end
    local RootPart = GetHumanoidRootLike(Character)
    if RootPart then
        local BillInRoot = RootPart:FindFirstChild("Esp_Billboard")
        if BillInRoot then BillInRoot:Destroy() end
    end
end

local function CreateHighlight(Character, Color)
    local Existing = Character:FindFirstChild("Esp_Highlight")
    if Existing then Existing:Destroy() end
    local Highlight = Instance.new("Highlight")
    Highlight.Name = "Esp_Highlight"
    Highlight.Adornee = Character
    Highlight.FillColor = Color
    Highlight.OutlineColor = Color
    Highlight.FillTransparency = 0.5
    Highlight.OutlineTransparency = 0.3
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.Parent = Character
    return Highlight
end

local function UpdateHighlight(Highlight, Color)
    if Highlight then
        Highlight.FillColor = Color
        Highlight.OutlineColor = Color
    end
end

local function RemoveHighlight(Character)
    local Highlight = Character:FindFirstChild("Esp_Highlight")
    if Highlight then Highlight:Destroy() end
end

local function CreateTracer(Color, Thickness)
    local Line = Drawing.new("Line")
    Line.Thickness = Thickness or 1
    Line.Color = Color or Color3.fromRGB(255, 255, 255)
    Line.Transparency = 1
    Line.Visible = false
    return Line
end

local function UpdateTracer(Tracer, Character, Color)
    if not Tracer then return end
    local Hrp = GetHumanoidRootLike(Character)
    if not Hrp or not Hrp:IsDescendantOf(Workspace) then
        Tracer.Visible = false
        return
    end
    local ScreenPos, OnScreen = Camera:WorldToViewportPoint(Hrp.Position)
    if OnScreen then
        local Pos = DConfiguration.Esp.TracerPosition
        local Vp = Camera.ViewportSize
        local From
        if Pos == "Top" then From = Vector2.new(Vp.X / 2, 0)
        elseif Pos == "Center" then From = Vector2.new(Vp.X / 2, Vp.Y / 2)
        else From = Vector2.new(Vp.X / 2, Vp.Y) end
        if Color then Tracer.Color = Color end
        Tracer.Thickness = math.max(1, DConfiguration.Esp.TracerThickness or 1)
        Tracer.From = From
        Tracer.To = Vector2.new(ScreenPos.X, ScreenPos.Y)
        Tracer.Visible = true
    else
        Tracer.Visible = false
    end
end

local function RemoveTracer(Tracer)
    if Tracer then pcall(function() Tracer:Remove() end) end
end

local function CleanupEsp()
    for Character, Esp in pairs(DConfiguration.Esp.Elements) do
        if Esp.Box2D then Remove2DBox(Character) end
        if Esp.Box3D then Remove3DBox(Character) end
        if Esp.Highlight then RemoveHighlight(Character) end
        if Esp.Billboard then RemoveBillboard(Character) end
        if Esp.Tracer then RemoveTracer(Esp.Tracer) end
    end
    DConfiguration.Esp.Elements = {}
end

local function GetTeamColor(Team)
    if Team and Team.TeamColor then return Team.TeamColor.Color end
    return Color3.fromRGB(255, 255, 255)
end

local function ApplyEspToCharacter(Character, DisplayName, Color)
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not (Humanoid and Humanoid.Health > 0) then return false end
    local RefPart = GetHumanoidRootLike(Character)
    if not RefPart then return false end
    if not DConfiguration.Esp.Elements[Character] then
        DConfiguration.Esp.Elements[Character] = {}
    end
    local Esp = DConfiguration.Esp.Elements[Character]
    local Distance = (RefPart.Position - Camera.CFrame.Position).Magnitude
    local Scale = CalculateBoxScale(Distance)
    if DConfiguration.Esp.BoxesEnabled then
        if DConfiguration.Esp.BoxType == "2D" then
            if not Esp.Box2D then Esp.Box2D = Create2DBox(Character, Color, Scale) end
            if Esp.Box2D then Update2DBox(Esp.Box2D, Color, Scale) end
            if Esp.Box3D then Remove3DBox(Character); Esp.Box3D = nil end
        else
            local BoxSize = Vector3.new(2.5, Humanoid.HipHeight + 4, 2)
            if not Esp.Box3D then Esp.Box3D = Create3DBox(Character, Color, BoxSize) end
            if Esp.Box3D then Update3DBox(Character, Color) end
            if Esp.Box2D then Remove2DBox(Character); Esp.Box2D = nil end
        end
    else
        if Esp.Box2D then Remove2DBox(Character); Esp.Box2D = nil end
        if Esp.Box3D then Remove3DBox(Character); Esp.Box3D = nil end
    end
    if DConfiguration.Esp.HighlightsEnabled then
        if not Esp.Highlight then Esp.Highlight = CreateHighlight(Character, Color) end
        if Esp.Highlight then UpdateHighlight(Esp.Highlight, Color) end
    else
        if Esp.Highlight then RemoveHighlight(Character); Esp.Highlight = nil end
    end
    if DConfiguration.Esp.TracerEnabled then
        if not Esp.Tracer then Esp.Tracer = CreateTracer(Color, DConfiguration.Esp.TracerThickness) end
        if Esp.Tracer then UpdateTracer(Esp.Tracer, Character, Color) end
    else
        if Esp.Tracer then RemoveTracer(Esp.Tracer); Esp.Tracer = nil end
    end
    if DConfiguration.Esp.NamesEnabled or DConfiguration.Esp.DistanceEnabled then
        if not Esp.Billboard then Esp.Billboard = CreateBillboard(Character, DisplayName, Color) end
        if Esp.Billboard then
            UpdateBillboard(
                Esp.Billboard,
                DConfiguration.Esp.NamesEnabled and DisplayName or nil,
                DConfiguration.Esp.DistanceEnabled and Distance or nil,
                Color
            )
        end
    else
        if Esp.Billboard then RemoveBillboard(Character); Esp.Billboard = nil end
    end
    return true
end

local function RemoveTrackedCharacter(Character)
    DConfiguration.Esp.TrackedTargets[Character] = nil
    local Esp = DConfiguration.Esp.Elements[Character]
    if Esp then
        if Esp.Box2D then Remove2DBox(Character) end
        if Esp.Box3D then Remove3DBox(Character) end
        if Esp.Highlight then RemoveHighlight(Character) end
        if Esp.Billboard then RemoveBillboard(Character) end
        if Esp.Tracer then RemoveTracer(Esp.Tracer) end
        DConfiguration.Esp.Elements[Character] = nil
    end
end

local function TrackPlayerCharacter(Player, Character)
    if Player == LocalPlayer then return end
    local Color = GetTeamColor(Player.Team)
    DConfiguration.Esp.TrackedTargets[Character] = {
        DisplayName = Player.Name,
        Color = Color,
        IsPlayer = true,
        Player = Player,
    }
    Character.AncestryChanged:Connect(function(_, Parent)
        if not Parent then
            RemoveTrackedCharacter(Character)
        end
    end)
end

local function IsPlayerRig(Model)
    local ModelNameLower = Model.Name:lower()
    for _, Player in ipairs(Players:GetPlayers()) do
        if Player.Name:lower() == ModelNameLower or Player.DisplayName:lower() == ModelNameLower then
            return true
        end
    end
    for _, Child in ipairs(Model:GetChildren()) do
        local ChildNameLower = Child.Name:lower()
        if Child:IsA("Shirt") or Child:IsA("Pants") then
            return true
        end
        for _, Player in ipairs(Players:GetPlayers()) do
            if ChildNameLower == Player.Name:lower() or ChildNameLower == Player.DisplayName:lower() then
                return true
            end
        end
    end
    return false
end

local function TrackNpcCharacter(Model)
    local Humanoid = Model:FindFirstChildOfClass("Humanoid")
    local RefPart = GetHumanoidRootLike(Model)
    if not Humanoid or not RefPart then return end
    if IsPlayerRig(Model) then return end
    DConfiguration.Esp.TrackedTargets[Model] = {
        DisplayName = Model.Name,
        Color = Color3.fromRGB(255, 200, 0),
        IsPlayer = false,
        Player = nil,
    }
    Model.AncestryChanged:Connect(function(_, Parent)
        if not Parent then
            RemoveTrackedCharacter(Model)
        end
    end)
end

local function SetupPlayerTracking()
    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            local Conn = Player.CharacterAdded:Connect(function(Character)
                TrackPlayerCharacter(Player, Character)
            end)
            table.insert(DConfiguration.Esp.EventConnections, Conn)
            if Player.Character then
                TrackPlayerCharacter(Player, Player.Character)
            end
        end
    end
    local ConnAdded = Players.PlayerAdded:Connect(function(Player)
        if Player == LocalPlayer then return end
        local Conn = Player.CharacterAdded:Connect(function(Character)
            TrackPlayerCharacter(Player, Character)
        end)
        table.insert(DConfiguration.Esp.EventConnections, Conn)
    end)
    local ConnRemoving = Players.PlayerRemoving:Connect(function(Player)
        if Player.Character then
            RemoveTrackedCharacter(Player.Character)
        end
    end)
    table.insert(DConfiguration.Esp.EventConnections, ConnAdded)
    table.insert(DConfiguration.Esp.EventConnections, ConnRemoving)
end

local NpcScanConnection = nil

local function SetupNpcTracking()
    if NpcScanConnection then return end
    for _, Desc in ipairs(Workspace:GetDescendants()) do
        if Desc:IsA("Model") and not DConfiguration.Esp.TrackedTargets[Desc] then
            local IsPlayerChar = false
            for _, P in ipairs(Players:GetPlayers()) do
                if P.Character == Desc then
                    IsPlayerChar = true
                    break
                end
            end
            if not IsPlayerChar then
                TrackNpcCharacter(Desc)
            end
        end
    end
    NpcScanConnection = Workspace.DescendantAdded:Connect(function(Desc)
        if Desc:IsA("Model") and DConfiguration.Esp.IncludeNpc then
            local IsPlayerChar = false
            for _, P in ipairs(Players:GetPlayers()) do
                if P.Character == Desc then
                    IsPlayerChar = true
                    break
                end
            end
            if not IsPlayerChar then
                task.delay(0.5, function()
                    if Desc and Desc.Parent then
                        TrackNpcCharacter(Desc)
                    end
                end)
            end
        end
    end)
    table.insert(DConfiguration.Esp.EventConnections, NpcScanConnection)
end

local function TeardownNpcTracking()
    if NpcScanConnection then
        NpcScanConnection:Disconnect()
        NpcScanConnection = nil
    end
    for Character, Data in pairs(DConfiguration.Esp.TrackedTargets) do
        if not Data.IsPlayer then
            RemoveTrackedCharacter(Character)
        end
    end
end

local function UpdateEsp()
    if not DConfiguration.Esp.Enabled then return end

    for Character, Data in pairs(DConfiguration.Esp.TrackedTargets) do
        if Data.IsPlayer then
            if DConfiguration.Esp.TeamCheck and Data.Player and Data.Player.Team == LocalPlayer.Team then
                RemoveTrackedCharacter(Character)
            else
                local Color = GetTeamColor(Data.Player and Data.Player.Team)
                ApplyEspToCharacter(Character, Data.DisplayName, Color)
            end
        elseif DConfiguration.Esp.IncludeNpc then
            ApplyEspToCharacter(Character, Data.DisplayName, Data.Color)
        end
    end

    local CharsToRemove = {}
    for Character, _ in pairs(DConfiguration.Esp.Elements) do
        if not DConfiguration.Esp.TrackedTargets[Character] then
            table.insert(CharsToRemove, Character)
        end
    end
    for _, Character in ipairs(CharsToRemove) do
        local Esp = DConfiguration.Esp.Elements[Character]
        if Esp then
            if Esp.Box2D then Remove2DBox(Character) end
            if Esp.Box3D then Remove3DBox(Character) end
            if Esp.Highlight then RemoveHighlight(Character) end
            if Esp.Billboard then RemoveBillboard(Character) end
            if Esp.Tracer then RemoveTracer(Esp.Tracer) end
        end
        DConfiguration.Esp.Elements[Character] = nil
    end
end

local function StartEspRender()
    if DConfiguration.Esp.RenderConnection then return end
    DConfiguration.Esp.TrackedTargets = {}
    DConfiguration.Esp.EventConnections = {}
    SetupPlayerTracking()
    if DConfiguration.Esp.IncludeNpc then
        SetupNpcTracking()
    end
    DConfiguration.Esp.RenderConnection = RunService.RenderStepped:Connect(UpdateEsp)
end

local function StopEspRender()
    if DConfiguration.Esp.RenderConnection then
        DConfiguration.Esp.RenderConnection:Disconnect()
        DConfiguration.Esp.RenderConnection = nil
    end
    for _, Conn in ipairs(DConfiguration.Esp.EventConnections) do
        Conn:Disconnect()
    end
    DConfiguration.Esp.EventConnections = {}
    NpcScanConnection = nil
    DConfiguration.Esp.TrackedTargets = {}
    CleanupEsp()
end

local function RandFlag(Name)
    return Name .. "_" .. tostring(math.random(100000, 999999))
end

local SecEsp = Tabs.Main:AddSection("Player ESP", "solar/eye-bold")

local EspEnabledFlag = "EspEnabled"
SecEsp:AddToggle(EspEnabledFlag, {
    Title = "Enable ESP",
    Default = false,
    Callback = function(Value)
        DConfiguration.Esp.Enabled = Value
        if Value then StartEspRender() else StopEspRender() end
        if EspButton then
            EspButton:SetAttribute("Active", Value)
            FloatingButtonLib.SetActive(EspButton, Value, "ESP")
        end
    end
})

local GrpEspFilters = SecEsp:AddGroup({ Columns = 2, Gap = 6 })
local ColEspTeamCheck = GrpEspFilters:AddElement()
local ColEspIncludeNpc = GrpEspFilters:AddElement()

ColEspTeamCheck:AddToggle(RandFlag("EspTeamCheck"), {
    Title = "Team Check",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.TeamCheck = Value end
})

ColEspIncludeNpc:AddToggle(RandFlag("EspIncludeNpc"), {
    Title = "Include Npc",
    Default = false,
    Callback = function(Value)
        DConfiguration.Esp.IncludeNpc = Value
        if DConfiguration.Esp.Enabled then
            if Value then SetupNpcTracking() else TeardownNpcTracking() end
        end
    end
})

SecEsp:AddToggle(RandFlag("EspBoxes"), {
    Title = "Show Boxes",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.BoxesEnabled = Value end
})

SecEsp:AddDropdown(RandFlag("EspBoxType"), {
    Title = "Box Type",
    Values = { "2D", "3D" },
    Default = "3D",
    ThemedDropdown = true,
    Callback = function(Value) DConfiguration.Esp.BoxType = Value end
})

SecEsp:AddToggle(RandFlag("EspNames"), {
    Title = "Names",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.NamesEnabled = Value end
})

SecEsp:AddToggle(RandFlag("EspDistance"), {
    Title = "Distance",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.DistanceEnabled = Value end
})

SecEsp:AddToggle(RandFlag("EspHighlight"), {
    Title = "Highlight",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.HighlightsEnabled = Value end
})

SecEsp:AddToggle(RandFlag("EspTracer"), {
    Title = "Tracer",
    Default = false,
    Callback = function(Value) DConfiguration.Esp.TracerEnabled = Value end
})

SecEsp:AddDropdown(RandFlag("EspTracerPos"), {
    Title = "Tracer Origin",
    Values = { "Bottom", "Center", "Top" },
    Default = "Top",
    ThemedDropdown = true,
    Callback = function(Value) DConfiguration.Esp.TracerPosition = Value end
})

SecEsp:AddDivider()
SecEsp:AddSpace({ Height = 20 })
SecEsp:AddDivider()

local EspFrame, EspButton, _, EspSetMode = FloatButtons:Create("EspBtn", "ESP", true, function(Button)
    local NewState = not Button:GetAttribute("Active")
    Button:SetAttribute("Active", NewState)
    DConfiguration.Esp.Enabled = NewState
    if NewState then StartEspRender() else StopEspRender() end
    FloatingButtonLib.SetActive(Button, NewState, "ESP")
    if Fluent.Options[EspEnabledFlag] then
        Fluent.Options[EspEnabledFlag]:SetValue(NewState)
    end
end)
FloatingButtonLib.SetVisible(EspFrame, false)

SecEsp:AddToggle(RandFlag("EspShowBtn"), {
    Title = "Show ESP Button",
    Default = false,
    Callback = function(Value) FloatingButtonLib.SetVisible(EspFrame, Value) end
})

FloatButtons:AddModeDropdown(SecEsp, "EspBtn", EspSetMode)
FloatButtons:AddSizeInputs(SecEsp, "EspBtn", "ESP")
FloatButtons:AddKeybind(SecEsp, "EspBtn", "ESP", function()
    local NewState = not EspButton:GetAttribute("Active")
    EspButton:SetAttribute("Active", NewState)
    DConfiguration.Esp.Enabled = NewState
    if NewState then StartEspRender() else StopEspRender() end
    FloatingButtonLib.SetActive(EspButton, NewState, "ESP")
    if Fluent.Options[EspEnabledFlag] then
        Fluent.Options[EspEnabledFlag]:SetValue(NewState)
    end
end, "")

SecEsp:AddDivider()

local LC = DConfiguration.Lighting

local function GetOrCreateSky()
    local sky = Lighting:FindFirstChildOfClass("Sky")
    if not sky then
        sky = Instance.new("Sky")
        sky.Name = "Sky"
        sky.Parent = Lighting
    end
    return sky
end

local function GetOrCreate(className, name)
    local inst = Lighting:FindFirstChildOfClass(className)
    if not inst then
        inst = Instance.new(className)
        inst.Name = name or className
        inst.Parent = Lighting
    end
    return inst
end

local function GetOrCreateDoF()
    local cam = workspace.CurrentCamera
    local dof = cam:FindFirstChildOfClass("DepthOfFieldEffect")
    if not dof then
        dof = Instance.new("DepthOfFieldEffect")
        dof.Name = "DepthOfFieldEffect"
        dof.Parent = cam
    end
    return dof
end

local SecLighting = Tabs.Visual:AddSection("Lighting Configuration", "solar/sun-fog-bold")
SecLighting:AddSpace({ Height = 15 })

SecLighting:AddToggle("LightingCelestialBodies", {
    Title = "Celestial Bodies",
    Description = "Show sun & moon in the sky",
    Default = GetOrCreateSky().CelestialBodiesShown,
    Callback = function(v)
        GetOrCreateSky().CelestialBodiesShown = v
    end,
})

SecLighting:AddSlider("LightingSunAngularSize", {
    Title = "Sun Angular Size",
    Min = 0, Max = 60, Default = math.round(GetOrCreateSky().SunAngularSize), Rounding = 0,
    Callback = function(v)
        GetOrCreateSky().SunAngularSize = v
    end,
})

SecLighting:AddSlider("LightingMoonAngularSize", {
    Title = "Moon Angular Size",
    Min = 0, Max = 60, Default = math.round(GetOrCreateSky().MoonAngularSize), Rounding = 0,
    Callback = function(v)
        GetOrCreateSky().MoonAngularSize = v
    end,
})

SecLighting:AddInput("LightingSunTextureId", {
    Title = "Sun Texture ID",
    Placeholder = "rbxassetid://...",
    Default = "rbxassetid://91816974179437",
    Finished = true,
    Callback = function(v)
        v = v:gsub("^%s*(.-)%s*$", "%1")
        if v ~= "" then
            if not v:match("^rbxassetid://") then v = "rbxassetid://" .. v end
            GetOrCreateSky().SunTextureId = v
        end
    end,
})

SecLighting:AddInput("LightingMoonTextureId", {
    Title = "Moon Texture ID",
    Placeholder = "rbxassetid://...",
    Finished = true,
    Callback = function(v)
        v = v:gsub("^%s*(.-)%s*$", "%1")
        if v ~= "" then
            if not v:match("^rbxassetid://") then v = "rbxassetid://" .. v end
            GetOrCreateSky().MoonTextureId = v
        end
    end,
})

SecLighting:AddSlider("LightingStarCount", {
    Title = "Star Count",
    Min = 0, Max = 5000, Default = GetOrCreateSky().StarCount, Rounding = 0,
    Callback = function(v)
        GetOrCreateSky().StarCount = v
    end,
})

SecLighting:AddSlider("LightingBrightness", {
    Title = "Ambient Brightness",
    Min = 0, Max = 2, Default = LC.Brightness, Rounding = 2,
    Callback = function(v)
        LC.Brightness = v
        Lighting.Brightness = v
    end,
})

SecLighting:AddColorpicker("LightingOutdoorAmbient", {
    Title = "Outdoor Ambient",
    Default = LC.OutdoorAmbient,
    Callback = function(v)
        LC.OutdoorAmbient = v
        Lighting.OutdoorAmbient = v
    end,
})

SecLighting:AddDivider()
SecLighting:AddSpace({ Height = 15 })

local colAtmos = SecLighting:AddCollapsibleSection("Atmosphere", "solar/clouds-bold", false)

colAtmos:AddToggle("AtmosEnabled", {
    Title = "Enable Atmosphere",
    Default = LC.AtmosEnabled,
    Callback = function(v)
        LC.AtmosEnabled = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if v then
            if not atmos then
                atmos = Instance.new("Atmosphere")
                atmos.Name = "Atmosphere"
                atmos.Parent = Lighting
            end
            atmos.Density = LC.AtmosDensity
            atmos.Offset = LC.AtmosOffset
            atmos.Haze = LC.AtmosHaze
            atmos.Glare = LC.AtmosGlare
            atmos.Color = LC.AtmosColor
            atmos.Decay = LC.AtmosDecay
        else
            if atmos then atmos:Destroy() end
        end
    end,
})
colAtmos:AddSlider("AtmosDensity", {
    Title = "Density",
    Min = 0, Max = 1, Default = LC.AtmosDensity, Rounding = 2,
    Callback = function(v)
        LC.AtmosDensity = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Density = v end
    end,
})
colAtmos:AddSlider("AtmosOffset", {
    Title = "Offset",
    Min = 0, Max = 1, Default = LC.AtmosOffset, Rounding = 2,
    Callback = function(v)
        LC.AtmosOffset = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Offset = v end
    end,
})
colAtmos:AddSlider("AtmosHaze", {
    Title = "Haze",
    Min = 0, Max = 10, Default = LC.AtmosHaze, Rounding = 1,
    Callback = function(v)
        LC.AtmosHaze = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Haze = v end
    end,
})
colAtmos:AddSlider("AtmosGlare", {
    Title = "Glare",
    Min = 0, Max = 1, Default = LC.AtmosGlare, Rounding = 2,
    Callback = function(v)
        LC.AtmosGlare = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Glare = v end
    end,
})
colAtmos:AddColorpicker("AtmosColor", {
    Title = "Color",
    Default = LC.AtmosColor,
    Callback = function(v)
        LC.AtmosColor = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Color = v end
    end,
})
colAtmos:AddColorpicker("AtmosDecay", {
    Title = "Decay",
    Default = LC.AtmosDecay,
    Callback = function(v)
        LC.AtmosDecay = v
        local atmos = Lighting:FindFirstChildOfClass("Atmosphere")
        if atmos then atmos.Decay = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })

local colSunRay = SecLighting:AddCollapsibleSection("Sun Rays", "solar/sun-bold", false)

colSunRay:AddToggle("SunRayEnabled", {
    Title = "Enable Sun Rays",
    Default = LC.SunRayEnabled,
    Callback = function(v)
        LC.SunRayEnabled = v
        local sr = Lighting:FindFirstChildOfClass("SunRaysEffect")
        if v then
            if not sr then
                sr = Instance.new("SunRaysEffect")
                sr.Name = "SunRaysEffect"
                sr.Parent = Lighting
            end
            sr.Intensity = LC.SunRayIntensity
            sr.Spread = LC.SunRaySpread
        else
            if sr then sr:Destroy() end
        end
    end,
})
colSunRay:AddSlider("SunRayIntensity", {
    Title = "Intensity",
    Min = 0, Max = 1, Default = LC.SunRayIntensity, Rounding = 2,
    Callback = function(v)
        LC.SunRayIntensity = v
        local sr = Lighting:FindFirstChildOfClass("SunRaysEffect")
        if sr then sr.Intensity = v end
    end,
})
colSunRay:AddSlider("SunRaySpread", {
    Title = "Spread",
    Min = 0, Max = 1, Default = LC.SunRaySpread, Rounding = 2,
    Callback = function(v)
        LC.SunRaySpread = v
        local sr = Lighting:FindFirstChildOfClass("SunRaysEffect")
        if sr then sr.Spread = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })

local colCC = SecLighting:AddCollapsibleSection("Color Correction", "solar/eye-bold", false)

colCC:AddToggle("CCEnabled", {
    Title = "Enable Color Correction",
    Default = LC.CcEnabled,
    Callback = function(v)
        LC.CcEnabled = v
        local cc = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if v then
            if not cc then
                cc = Instance.new("ColorCorrectionEffect")
                cc.Name = "ColorCorrectionEffect"
                cc.Parent = Lighting
            end
            cc.TintColor = LC.CcTintColor
        else
            if cc then cc:Destroy() end
        end
    end,
})
colCC:AddSlider("CCBrightness", {
    Title = "Brightness",
    Min = -1, Max = 1, Default = LC.CcBrightness, Rounding = 2,
    Callback = function(v)
        LC.CcBrightness = v
        local cc = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if cc then cc.Brightness = v end
    end,
})
colCC:AddSlider("CCContrast", {
    Title = "Contrast",
    Min = -1, Max = 1, Default = LC.CcContrast, Rounding = 2,
    Callback = function(v)
        LC.CcContrast = v
        local cc = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if cc then cc.Contrast = v end
    end,
})
colCC:AddSlider("CCSaturation", {
    Title = "Saturation",
    Min = -1, Max = 1, Default = LC.CcSaturation, Rounding = 2,
    Callback = function(v)
        LC.CcSaturation = v
        local cc = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if cc then cc.Saturation = v end
    end,
})
colCC:AddColorpicker("CCTintColor", {
    Title = "Tint Color",
    Default = LC.CcTintColor,
    Callback = function(v)
        LC.CcTintColor = v
        local cc = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
        if cc then cc.TintColor = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })


local colBloom = SecLighting:AddCollapsibleSection("Bloom", "solar/star-shine-bold", false)

colBloom:AddToggle("BloomEnabled", {
    Title = "Enable Bloom",
    Default = LC.BloomEnabled,
    Callback = function(v)
        LC.BloomEnabled = v
        local bl = Lighting:FindFirstChildOfClass("BloomEffect")
        if v then
            if not bl then
                bl = Instance.new("BloomEffect")
                bl.Name = "BloomEffect"
                bl.Parent = Lighting
            end
        else
            if bl then bl:Destroy() end
        end
    end,
})
colBloom:AddSlider("BloomIntensity", {
    Title = "Intensity",
    Min = 0, Max = 1, Default = LC.BloomIntensity, Rounding = 2,
    Callback = function(v)
        LC.BloomIntensity = v
        local bl = Lighting:FindFirstChildOfClass("BloomEffect")
        if bl then bl.Intensity = v end
    end,
})
colBloom:AddSlider("BloomSize", {
    Title = "Size",
    Min = 0, Max = 56, Default = LC.BloomSize, Rounding = 0,
    Callback = function(v)
        LC.BloomSize = v
        local bl = Lighting:FindFirstChildOfClass("BloomEffect")
        if bl then bl.Size = v end
    end,
})
colBloom:AddSlider("BloomThreshold", {
    Title = "Threshold",
    Min = 0, Max = 1, Default = LC.BloomThreshold, Rounding = 2,
    Callback = function(v)
        LC.BloomThreshold = v
        local bl = Lighting:FindFirstChildOfClass("BloomEffect")
        if bl then bl.Threshold = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })


local colClouds = SecLighting:AddCollapsibleSection("Clouds", "solar/clouds-bold", false)

colClouds:AddToggle("CloudsEnabled", {
    Title = "Enable Clouds",
    Default = LC.CloudsEnabled,
    Callback = function(v)
        LC.CloudsEnabled = v
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        local clouds = terrain:FindFirstChildOfClass("Clouds")
        if v then
            if not clouds then
                clouds = Instance.new("Clouds")
                clouds.Parent = terrain
            end
            clouds.Color = LC.CloudsColor
        else
            if clouds then clouds:Destroy() end
        end
    end,
})
colClouds:AddSlider("CloudsDensity", {
    Title = "Density",
    Min = 0, Max = 1, Default = LC.CloudsDensity, Rounding = 2,
    Callback = function(v)
        LC.CloudsDensity = v
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        local clouds = terrain:FindFirstChildOfClass("Clouds")
        if clouds then clouds.Density = v end
    end,
})
colClouds:AddSlider("CloudsCover", {
    Title = "Cover",
    Min = 0, Max = 1, Default = LC.CloudsCover, Rounding = 2,
    Callback = function(v)
        LC.CloudsCover = v
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        local clouds = terrain:FindFirstChildOfClass("Clouds")
        if clouds then clouds.Cover = v end
    end,
})
colClouds:AddColorpicker("CloudsColor", {
    Title = "Color",
    Default = LC.CloudsColor,
    Callback = function(v)
        LC.CloudsColor = v
        local terrain = workspace:FindFirstChildOfClass("Terrain")
        if not terrain then return end
        local clouds = terrain:FindFirstChildOfClass("Clouds")
        if clouds then clouds.Color = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })

local colBlur = SecLighting:AddCollapsibleSection("Blur", "solar/layers-minimalistic-bold", false)

colBlur:AddToggle("BlurEnabled", {
    Title = "Enable Blur",
    Default = LC.BlurEnabled,
    Callback = function(v)
        LC.BlurEnabled = v
        local blur = Lighting:FindFirstChildOfClass("BlurEffect")
        if v then
            if not blur then
                blur = Instance.new("BlurEffect")
                blur.Name = "BlurEffect"
                blur.Parent = Lighting
            end
        else
            if blur then blur:Destroy() end
        end
    end,
})
colBlur:AddSlider("BlurSize", {
    Title = "Size",
    Min = 0, Max = 56, Default = LC.BlurSize, Rounding = 0,
    Callback = function(v)
        LC.BlurSize = v
        local blur = Lighting:FindFirstChildOfClass("BlurEffect")
        if blur then blur.Size = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })


local colDoF = SecLighting:AddCollapsibleSection("Depth Of Field", "solar/camera-bold", false)

colDoF:AddToggle("DoFEnabled", {
    Title = "Enable Depth Of Field",
    Default = LC.DofEnabled,
    Callback = function(v)
        LC.DofEnabled = v
        local cam = workspace.CurrentCamera
        local dof = cam:FindFirstChildOfClass("DepthOfFieldEffect")
        if v then
            GetOrCreateDoF()
        else
            if dof then dof:Destroy() end
        end
    end,
})
colDoF:AddSlider("DoFFocusDistance", {
    Title = "Focus Distance",
    Min = 0, Max = 150, Default = LC.DofFocusDistance, Rounding = 0,
    Callback = function(v)
        LC.DofFocusDistance = v
        local dof = workspace.CurrentCamera:FindFirstChildOfClass("DepthOfFieldEffect")
        if dof then dof.FocusDistance = v end
    end,
})
colDoF:AddSlider("DoFInFocusRadius", {
    Title = "In-Focus Radius",
    Min = 0, Max = 50, Default = LC.DofInFocusRadius, Rounding = 0,
    Callback = function(v)
        LC.DofInFocusRadius = v
        local dof = workspace.CurrentCamera:FindFirstChildOfClass("DepthOfFieldEffect")
        if dof then dof.InFocusRadius = v end
    end,
})
colDoF:AddSlider("DoFNearIntensity", {
    Title = "Near Intensity",
    Min = 0, Max = 1, Default = LC.DofNearIntensity, Rounding = 2,
    Callback = function(v)
        LC.DofNearIntensity = v
        local dof = workspace.CurrentCamera:FindFirstChildOfClass("DepthOfFieldEffect")
        if dof then dof.NearIntensity = v end
    end,
})
colDoF:AddSlider("DoFFarIntensity", {
    Title = "Far Intensity",
    Min = 0, Max = 1, Default = LC.DofFarIntensity, Rounding = 2,
    Callback = function(v)
        LC.DofFarIntensity = v
        local dof = workspace.CurrentCamera:FindFirstChildOfClass("DepthOfFieldEffect")
        if dof then dof.FarIntensity = v end
    end,
})

SecLighting:AddSpace({ Height = 15 })


SecSetTime = Tabs.Visual:AddSection("Set Time", "solar/clock-circle-bold")
SecSetTime:AddSpace({ Height = 15 })

local SetTimeInput = ""
local SetTimeEnabled = false
local SetTimeConnection = nil

local function ApplyLightingTime(TimeStr)
    local H, M = TimeStr:match("^(%d+):(%d+)$")
    H, M = tonumber(H), tonumber(M)
    if not H or not M or H > 23 or M > 59 then
        Notify("Set Time", "Invalid format! Use HH:MM (e.g. 14:30)", "Error", nil, 3)
        return false
    end
    Lighting.TimeOfDay = string.format("%02d:%02d:00", H, M)
    return true
end

SecSetTime:AddInput("SetTimeInput", {
    Title = "Time (HH:MM)",
    Placeholder = "e.g. 14:30",
    Numeric = false,
    Callback = function(Value)
        SetTimeInput = Value
    end,
})

SecSetTime:AddDivider()
SecSetTime:AddSpace({ Height = 15 })
SecSetTime:AddDivider()

SecSetTime:AddButton({
    Title = "Apply Time",
    Callback = function()
        if ApplyLightingTime(SetTimeInput) then
            Notify("Set Time", "Time set to " .. SetTimeInput, "Success", nil, 3)
        end
    end,
})

SecSetTime:AddToggle("SetTimeLockToggle", {
    Title = "Lock Time",
    Description = "Prevent the game from changing the time",
    Default = false,
    Callback = function(State)
        SetTimeEnabled = State
        if SetTimeConnection then
            SetTimeConnection:Disconnect()
            SetTimeConnection = nil
        end
        if State then
            if SetTimeInput == "" then
                Notify("Set Time", "Enter a time first!", "Warning", nil, 3)
                return
            end
            ApplyLightingTime(SetTimeInput)
            SetTimeConnection = RunService.Heartbeat:Connect(function()
                if not SetTimeEnabled then return end
                local H, M = SetTimeInput:match("^(%d+):(%d+)$")
                if H and M then
                    Lighting.TimeOfDay = string.format("%02d:%02d:00", tonumber(H), tonumber(M))
                end
            end)
        end
    end,
})

local function buildColorSequence()
    return ColorSequence.new({
        ColorSequenceKeypoint.new(0, DConfiguration.FovCircle.primaryColor),
        ColorSequenceKeypoint.new(1, DConfiguration.FovCircle.secondaryColor),
    })
end

local function applyFovColors()
    if not DConfiguration.FovCircle.strokeGradient then return end
    local cs = buildColorSequence()
    DConfiguration.FovCircle.strokeGradient.Color = cs
    if DConfiguration.FovCircle.innerGradient then
        DConfiguration.FovCircle.innerGradient.Color = cs
    end
end

local function syncFovSize()
    if not DConfiguration.FovCircle.circleFrame then return end
    local s = DConfiguration.FovCircle.size
    DConfiguration.FovCircle.circleFrame.Size = UDim2.new(0, s, 0, s)
    DConfiguration.FovCircle.circleFrame.Position = UDim2.new(0.5, -s / 2, 0.5, -s / 2)
end

local function stopFovLoop()
    if DConfiguration.FovCircle.loopConn then
        DConfiguration.FovCircle.loopConn:Disconnect()
        DConfiguration.FovCircle.loopConn = nil
    end
end

local function startFovLoop()
    stopFovLoop()
    DConfiguration.FovCircle.loopT = 0
    DConfiguration.FovCircle.loopConn = RunService.RenderStepped:Connect(function(dt)
        if not DConfiguration.FovCircle.strokeGradient then return end
        DConfiguration.FovCircle.loopT += dt
        if not DConfiguration.FovCircle.rgbMode then
            DConfiguration.FovCircle.strokeGradient.Rotation = (DConfiguration.FovCircle.loopT * 60) % 360
            if DConfiguration.FovCircle.innerGradient then
                DConfiguration.FovCircle.innerGradient.Rotation = (DConfiguration.FovCircle.loopT * 60) % 360
            end
        end
    end)
end

local function stopFovRgb()
    if DConfiguration.FovCircle.rgbConn then
        DConfiguration.FovCircle.rgbConn:Disconnect()
        DConfiguration.FovCircle.rgbConn = nil
    end
    applyFovColors()
end

local function startFovRgb()
    if DConfiguration.FovCircle.rgbConn then
        DConfiguration.FovCircle.rgbConn:Disconnect()
        DConfiguration.FovCircle.rgbConn = nil
    end
    DConfiguration.FovCircle.rgbHue = 0
    DConfiguration.FovCircle.rgbConn = RunService.Heartbeat:Connect(function(dt)
        if not DConfiguration.FovCircle.strokeGradient then return end
        DConfiguration.FovCircle.rgbHue = (DConfiguration.FovCircle.rgbHue + dt * 0.2) % 1
        local c1 = Color3.fromHSV(DConfiguration.FovCircle.rgbHue, 1, 1)
        local c2 = Color3.fromHSV((DConfiguration.FovCircle.rgbHue + 0.5) % 1, 1, 1)
        local cs = ColorSequence.new({
            ColorSequenceKeypoint.new(0, c1),
            ColorSequenceKeypoint.new(1, c2),
        })
        DConfiguration.FovCircle.strokeGradient.Color = cs
        if DConfiguration.FovCircle.innerGradient then
            DConfiguration.FovCircle.innerGradient.Color = cs
        end
    end)
end

local function createFovGui()
    if DConfiguration.FovCircle.gui then
        DConfiguration.FovCircle.gui:Destroy()
        DConfiguration.FovCircle.gui = nil
    end
    local s = DConfiguration.FovCircle.size
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "FovCircleGui"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.DisplayOrder = 5
    screenGui.Parent = game.CoreGui
    DConfiguration.FovCircle.gui = screenGui
    local circleFrame = Instance.new("Frame")
    circleFrame.Name = "FovCircle"
    circleFrame.Size = UDim2.new(0, s, 0, s)
    circleFrame.Position = UDim2.new(0.5, -s / 2, 0.5, -s / 2)
    circleFrame.BackgroundTransparency = 1
    circleFrame.BorderSizePixel = 0
    circleFrame.ZIndex = 1
    circleFrame.Parent = screenGui
    DConfiguration.FovCircle.circleFrame = circleFrame
    Instance.new("UICorner", circleFrame).CornerRadius = UDim.new(1, 0)
    local innerFrame = Instance.new("Frame")
    innerFrame.Name = "FovInner"
    innerFrame.Size = UDim2.fromScale(1, 1)
    innerFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    innerFrame.BackgroundTransparency = 0.50
    innerFrame.BorderSizePixel = 0
    innerFrame.ZIndex = 2
    innerFrame.Parent = circleFrame
    Instance.new("UICorner", innerFrame).CornerRadius = UDim.new(1, 0)
    local innerGradient = Instance.new("UIGradient")
    innerGradient.Rotation = 90
    innerGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0,   0.15),
        NumberSequenceKeypoint.new(0.5, 0.75),
        NumberSequenceKeypoint.new(1,   0.15),
    })
    innerGradient.Parent = innerFrame
    DConfiguration.FovCircle.innerGradient = innerGradient
    local glassFrame = Instance.new("Frame")
    glassFrame.Name = "FovGlass"
    glassFrame.Size = UDim2.fromScale(1, 1)
    glassFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    glassFrame.BackgroundTransparency = 0.88
    glassFrame.BorderSizePixel = 0
    glassFrame.ZIndex = 3
    glassFrame.Parent = circleFrame
    Instance.new("UICorner", glassFrame).CornerRadius = UDim.new(1, 0)
    local glassGradient = Instance.new("UIGradient")
    glassGradient.Rotation = 90
    glassGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 180, 180)),
    })
    glassGradient.Parent = glassFrame
    local noiseLabel = Instance.new("ImageLabel")
    noiseLabel.Name = "FovNoise"
    noiseLabel.Image = "rbxassetid://9968344227"
    noiseLabel.ScaleType = Enum.ScaleType.Tile
    noiseLabel.TileSize = UDim2.new(0, 128, 0, 128)
    noiseLabel.Size = UDim2.fromScale(1, 1)
    noiseLabel.BackgroundTransparency = 1
    noiseLabel.ImageTransparency = 0.92
    noiseLabel.ZIndex = 4
    noiseLabel.Parent = circleFrame
    Instance.new("UICorner", noiseLabel).CornerRadius = UDim.new(1, 0)
    local circleStroke = Instance.new("UIStroke")
    circleStroke.Thickness = 2
    circleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    circleStroke.Parent = circleFrame
    local strokeGradient = Instance.new("UIGradient")
    strokeGradient.Rotation = 90
    strokeGradient.Parent = circleStroke
    DConfiguration.FovCircle.strokeGradient = strokeGradient
    applyFovColors()
    startFovLoop()
    if DConfiguration.FovCircle.rgbMode then startFovRgb() end
end

local function destroyFovGui()
    stopFovLoop()
    stopFovRgb()
    if DConfiguration.FovCircle.gui then
        DConfiguration.FovCircle.gui:Destroy()
        DConfiguration.FovCircle.gui = nil
        DConfiguration.FovCircle.circleFrame = nil
        DConfiguration.FovCircle.strokeGradient = nil
        DConfiguration.FovCircle.innerGradient = nil
    end
end

local secFovCircle = Tabs.Main:AddSection("FOV Circle", "solar/record-circle-bold")
secFovCircle:AddSpace({ Height = 6 })

secFovCircle:AddCheckbox(RandFlag("FovCircleEnabled"), {
    Title = "Enable FOV Circle",
    Default = DConfiguration.FovCircle.enabled,
    Callback = function(value)
        DConfiguration.FovCircle.enabled = value
        if value then createFovGui() else destroyFovGui() end
    end,
})

secFovCircle:AddSlider(RandFlag("FovCircleSize"), {
    Title = "FOV Circle Size",
    Min = 10,
    Max = 1000,
    Default = DConfiguration.FovCircle.size,
    Rounding = 0,
    LeftIcons = "minus",
    RightIcons = "plus",
    Callback = function(value)
        DConfiguration.FovCircle.size = value
        syncFovSize()
    end,
})

local colFovColor = secFovCircle:AddCollapsibleSection("FOV Circle Color", "solar/palette-bold", false)

colFovColor:AddToggle(RandFlag("FovCircleRgb"), {
    Title = "RGB Mode",
    Default = DConfiguration.FovCircle.rgbMode,
    Callback = function(value)
        DConfiguration.FovCircle.rgbMode = value
        if value then startFovRgb() else stopFovRgb() end
    end,
})

colFovColor:AddColorpicker(RandFlag("FovCircleGradient"), {
    Title = "Stroke Gradient",
    Default = DConfiguration.FovCircle.primaryColor,
    Gradient = true,
    Callback = function(colorSequence)
        if not DConfiguration.FovCircle.strokeGradient then return end
        DConfiguration.FovCircle.primaryColor = colorSequence.Keypoints[1].Value
        DConfiguration.FovCircle.secondaryColor = colorSequence.Keypoints[#colorSequence.Keypoints].Value
        if not DConfiguration.FovCircle.rgbMode then
            DConfiguration.FovCircle.strokeGradient.Color = colorSequence
            if DConfiguration.FovCircle.innerGradient then
                DConfiguration.FovCircle.innerGradient.Color = colorSequence
            end
        end
    end,
})

secFovCircle:AddSpace({ Height = 6 })

Notify("GoonWares", "loaded successfully", "Success", nil, 4)