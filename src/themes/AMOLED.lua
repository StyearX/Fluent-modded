return {
    Name = "AMOLED",
    Accent = Color3.fromRGB(255, 255, 255),

    AcrylicMain = Color3.fromRGB(0, 0, 0),
    AcrylicBorder = Color3.fromRGB(20, 20, 20),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0)),
    AcrylicNoise = 1,

    TitleBarLine = Color3.fromRGB(22, 22, 22),
    Tab = Color3.fromRGB(28, 28, 28),

    Element = Color3.fromRGB(10, 10, 10),
    ElementBorder = Color3.fromRGB(0, 0, 0),
    InElementBorder = Color3.fromRGB(30, 30, 30),
    ElementTransparency = 0.96,

    ToggleSlider = Color3.fromRGB(30, 30, 30),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(30, 30, 30),

    DropdownFrame = Color3.fromRGB(18, 18, 18),
    DropdownHolder = Color3.fromRGB(0, 0, 0),
    DropdownBorder = Color3.fromRGB(0, 0, 0),
    DropdownOption = Color3.fromRGB(22, 22, 22),

    Keybind = Color3.fromRGB(22, 22, 22),

    Input = Color3.fromRGB(12, 12, 12),
    InputFocused = Color3.fromRGB(0, 0, 0),
    InputIndicator = Color3.fromRGB(45, 45, 45),
    InputIndicatorFocus = Color3.fromRGB(255, 255, 255),

    Dialog = Color3.fromRGB(0, 0, 0),
    DialogHolder = Color3.fromRGB(0, 0, 0),
    DialogHolderLine = Color3.fromRGB(18, 18, 18),
    DialogButton = Color3.fromRGB(10, 10, 10),
    DialogButtonBorder = Color3.fromRGB(28, 28, 28),
    DialogBorder = Color3.fromRGB(22, 22, 22),
    DialogInput = Color3.fromRGB(10, 10, 10),
    DialogInputLine = Color3.fromRGB(45, 45, 45),

    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(150, 150, 150),
    Hover = Color3.fromRGB(22, 22, 22),
    HoverChange = 0.03,

    ShineEnabled = false,
    Shine = {
        Speed = 0,
        RotationSpeed = 0,
        ColorSequence = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0)),
    },
    StrokeShine = false,
    StrokeDark = Color3.fromRGB(18, 18, 18),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 10)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 60, 60)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30)),
        }),
    },

    Background = "rbxassetid://134736124666311",
    BackgroundTransparency = 0,
    ThemeAccentColors = { Color3.fromRGB(255, 255, 255) },
}
