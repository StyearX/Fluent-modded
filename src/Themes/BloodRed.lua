return {
    Name = "Blood Red",
    Accent = Color3.fromRGB(180, 10, 20),

    AcrylicMain = Color3.fromRGB(35, 8, 10),
    AcrylicBorder = Color3.fromRGB(140, 15, 25),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(130, 12, 20), Color3.fromRGB(28, 5, 8)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(155, 18, 28),
    Tab = Color3.fromRGB(145, 15, 25),

    Element = Color3.fromRGB(130, 12, 22),
    ElementBorder = Color3.fromRGB(85, 8, 14),
    InElementBorder = Color3.fromRGB(150, 18, 28),
    ElementTransparency = 0.9,

    ToggleSlider = Color3.fromRGB(180, 10, 20),
    ToggleToggled = Color3.fromRGB(255, 230, 230),

    SliderRail = Color3.fromRGB(145, 15, 25),

    DropdownFrame = Color3.fromRGB(115, 10, 18),
    DropdownHolder = Color3.fromRGB(28, 5, 8),
    DropdownBorder = Color3.fromRGB(80, 7, 13),
    DropdownOption = Color3.fromRGB(180, 10, 20),

    Keybind = Color3.fromRGB(130, 12, 22),

    Input = Color3.fromRGB(115, 10, 18),
    InputFocused = Color3.fromRGB(18, 3, 5),
    InputIndicator = Color3.fromRGB(220, 50, 70),

    Dialog = Color3.fromRGB(28, 5, 8),
    DialogHolder = Color3.fromRGB(18, 3, 5),
    DialogHolderLine = Color3.fromRGB(12, 2, 3),
    DialogButton = Color3.fromRGB(28, 5, 8),
    DialogButtonBorder = Color3.fromRGB(145, 15, 25),
    DialogBorder = Color3.fromRGB(85, 8, 14),
    DialogInput = Color3.fromRGB(50, 10, 14),
    DialogInputLine = Color3.fromRGB(220, 50, 70),

    Text = Color3.fromRGB(255, 230, 230),
    SubText = Color3.fromRGB(210, 175, 178),
    Hover = Color3.fromRGB(180, 10, 20),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(71, 0, 0)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(159, 0, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(145, 15, 25),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(141, 0, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(71, 0, 0)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(159, 0, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0)),
        }),
    },

    Background = "rbxassetid://121343473918667",
    BackgroundTransparency = 0.15,
    ThemeAccentColors = { Color3.fromRGB(180, 10, 20) },
}
