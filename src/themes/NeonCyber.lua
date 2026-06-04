return {
    Name = "Neon Cyber",
    Accent = Color3.fromRGB(57, 255, 20),

    AcrylicMain = Color3.fromRGB(5, 10, 5),
    AcrylicBorder = Color3.fromRGB(40, 200, 20),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(10, 25, 10), Color3.fromRGB(3, 8, 3)),
    AcrylicNoise = 0.93,

    TitleBarLine = Color3.fromRGB(35, 160, 15),
    Tab = Color3.fromRGB(57, 255, 20),

    Element = Color3.fromRGB(10, 22, 10),
    ElementBorder = Color3.fromRGB(3, 8, 3),
    InElementBorder = Color3.fromRGB(35, 160, 15),
    ElementTransparency = 0.88,

    ToggleSlider = Color3.fromRGB(57, 255, 20),
    ToggleToggled = Color3.fromRGB(0, 0, 0),

    SliderRail = Color3.fromRGB(57, 255, 20),

    DropdownFrame = Color3.fromRGB(35, 160, 15),
    DropdownHolder = Color3.fromRGB(5, 12, 5),
    DropdownBorder = Color3.fromRGB(35, 160, 15),
    DropdownOption = Color3.fromRGB(57, 255, 20),

    Keybind = Color3.fromRGB(40, 200, 18),

    Input = Color3.fromRGB(10, 22, 10),
    InputFocused = Color3.fromRGB(3, 7, 3),
    InputIndicator = Color3.fromRGB(57, 255, 20),
    InputIndicatorFocus = Color3.fromRGB(130, 255, 80),

    Dialog = Color3.fromRGB(5, 12, 5),
    DialogHolder = Color3.fromRGB(3, 8, 3),
    DialogHolderLine = Color3.fromRGB(35, 160, 15),
    DialogButton = Color3.fromRGB(8, 18, 8),
    DialogButtonBorder = Color3.fromRGB(57, 255, 20),
    DialogBorder = Color3.fromRGB(40, 200, 18),
    DialogInput = Color3.fromRGB(10, 22, 10),
    DialogInputLine = Color3.fromRGB(57, 255, 20),

    Text = Color3.fromRGB(200, 255, 190),
    SubText = Color3.fromRGB(80, 200, 60),
    Hover = Color3.fromRGB(15, 40, 15),
    HoverChange = 0.05,

    ShineEnabled = true,
    Shine = {
        Speed = 0.8,
        RotationSpeed = 30,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 30, 5)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 255, 20)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 30, 5)),
        }),
    },
    StrokeShine = true,
    StrokeDark = Color3.fromRGB(35, 160, 15),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 22, 8)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(3, 8, 3)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 160, 15)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 255, 20)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 160, 15)),
        }),
    },

    Background = nil,
    BackgroundTransparency = 0,
    ThemeAccentColors = { Color3.fromRGB(57, 255, 20) },
}
