return {
    Name = "Pearl White",
    Accent = Color3.fromRGB(214, 214, 214),

    AcrylicMain = Color3.fromRGB(240, 240, 240),
    AcrylicBorder = Color3.fromRGB(200, 200, 200),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(220, 220, 220)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(200, 200, 200),
    Tab = Color3.fromRGB(230, 230, 230),

    Element = Color3.fromRGB(220, 220, 220),
    ElementBorder = Color3.fromRGB(200, 200, 200),
    InElementBorder = Color3.fromRGB(210, 210, 210),
    ElementTransparency = 0.9,

    ToggleSlider = Color3.fromRGB(60, 160, 255),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(200, 200, 200),

    DropdownFrame = Color3.fromRGB(230, 230, 230),
    DropdownHolder = Color3.fromRGB(220, 220, 220),
    DropdownBorder = Color3.fromRGB(200, 200, 200),
    DropdownOption = Color3.fromRGB(60, 160, 255),

    Keybind = Color3.fromRGB(220, 220, 220),

    Input = Color3.fromRGB(230, 230, 230),
    InputFocused = Color3.fromRGB(210, 210, 210),
    InputIndicator = Color3.fromRGB(60, 160, 255),

    Dialog = Color3.fromRGB(230, 230, 230),
    DialogHolder = Color3.fromRGB(220, 220, 220),
    DialogHolderLine = Color3.fromRGB(210, 210, 210),
    DialogButton = Color3.fromRGB(230, 230, 230),
    DialogButtonBorder = Color3.fromRGB(200, 200, 200),
    DialogBorder = Color3.fromRGB(200, 200, 200),
    DialogInput = Color3.fromRGB(240, 240, 240),
    DialogInputLine = Color3.fromRGB(60, 160, 255),

    Text = Color3.fromRGB(20, 20, 20),
    SubText = Color3.fromRGB(90, 90, 90),
    Hover = Color3.fromRGB(60, 160, 255),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.4,
        RotationSpeed = 20,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(200, 200, 200),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 180, 180)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 160, 160)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 160, 160)),
        }),
    },
}
