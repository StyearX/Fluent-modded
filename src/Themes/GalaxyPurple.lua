return {
    Name = "Galaxy Purple",
    Accent = Color3.fromRGB(160, 60, 220),

    AcrylicMain = Color3.fromRGB(12, 5, 25),
    AcrylicBorder = Color3.fromRGB(120, 40, 185),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(110, 35, 175), Color3.fromRGB(8, 3, 20)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(130, 50, 195),
    Tab = Color3.fromRGB(125, 45, 190),

    Element = Color3.fromRGB(112, 40, 170),
    ElementBorder = Color3.fromRGB(75, 25, 115),
    InElementBorder = Color3.fromRGB(130, 50, 195),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(160, 60, 220),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(125, 45, 190),

    DropdownFrame = Color3.fromRGB(100, 35, 152),
    DropdownHolder = Color3.fromRGB(8, 3, 20),
    DropdownBorder = Color3.fromRGB(72, 24, 108),
    DropdownOption = Color3.fromRGB(160, 60, 220),

    Keybind = Color3.fromRGB(112, 40, 170),

    Input = Color3.fromRGB(100, 35, 152),
    InputFocused = Color3.fromRGB(5, 2, 14),
    InputIndicator = Color3.fromRGB(195, 100, 255),

    Dialog = Color3.fromRGB(8, 3, 20),
    DialogHolder = Color3.fromRGB(5, 2, 14),
    DialogHolderLine = Color3.fromRGB(3, 1, 9),
    DialogButton = Color3.fromRGB(8, 3, 20),
    DialogButtonBorder = Color3.fromRGB(125, 45, 190),
    DialogBorder = Color3.fromRGB(75, 25, 115),
    DialogInput = Color3.fromRGB(22, 10, 50),
    DialogInputLine = Color3.fromRGB(195, 100, 255),

    Text = Color3.fromRGB(242, 232, 255),
    SubText = Color3.fromRGB(200, 178, 228),
    Hover = Color3.fromRGB(160, 60, 220),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 18, 85)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(125, 45, 190),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 50, 195)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 45, 190)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 45, 190)),
        }),
    },
}
