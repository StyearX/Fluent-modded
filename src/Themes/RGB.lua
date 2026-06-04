return {
    Name = "RGB",
    Accent = Color3.fromRGB(0, 255, 180),

    AcrylicMain = Color3.fromRGB(8, 8, 14),
    AcrylicBorder = Color3.fromRGB(0, 255, 180),
    AcrylicGradient = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 0, 40)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 20, 50)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 0, 30)),
    }),
    AcrylicNoise = 0.95,

    TitleBarLine = Color3.fromRGB(0, 200, 140),
    Tab = Color3.fromRGB(0, 200, 160),

    Element = Color3.fromRGB(20, 20, 35),
    ElementBorder = Color3.fromRGB(5, 5, 12),
    InElementBorder = Color3.fromRGB(0, 200, 160),
    ElementTransparency = 0.88,

    ToggleSlider = Color3.fromRGB(0, 180, 140),
    ToggleToggled = Color3.fromRGB(0, 0, 0),

    SliderRail = Color3.fromRGB(0, 200, 160),

    DropdownFrame = Color3.fromRGB(0, 200, 160),
    DropdownHolder = Color3.fromRGB(8, 8, 20),
    DropdownBorder = Color3.fromRGB(0, 200, 160),
    DropdownOption = Color3.fromRGB(0, 200, 160),

    Keybind = Color3.fromRGB(0, 200, 160),

    Input = Color3.fromRGB(20, 20, 40),
    InputFocused = Color3.fromRGB(5, 5, 12),
    InputIndicator = Color3.fromRGB(0, 180, 140),
    InputIndicatorFocus = Color3.fromRGB(0, 255, 200),

    Dialog = Color3.fromRGB(8, 8, 20),
    DialogHolder = Color3.fromRGB(5, 5, 15),
    DialogHolderLine = Color3.fromRGB(0, 200, 160),
    DialogButton = Color3.fromRGB(10, 10, 22),
    DialogButtonBorder = Color3.fromRGB(0, 200, 160),
    DialogBorder = Color3.fromRGB(0, 200, 160),
    DialogInput = Color3.fromRGB(15, 15, 30),
    DialogInputLine = Color3.fromRGB(0, 200, 160),

    Text = Color3.fromRGB(220, 255, 245),
    SubText = Color3.fromRGB(100, 220, 190),
    Hover = Color3.fromRGB(0, 50, 40),
    HoverChange = 0.05,

    ShineEnabled = true,
    Shine = {
        Speed = 1.2,
        RotationSpeed = 40,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 180)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(120, 0, 255)),
            ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 0, 150)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 180)),
        }),
    },
    StrokeShine = true,
    StrokeDark = Color3.fromRGB(0, 180, 140),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 40, 30)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 20, 15)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 180)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 180)),
        }),
    },

    Background = nil,
    BackgroundTransparency = 0,
    IsRGB = true,
    ThemeAccentColors = {
        Color3.fromRGB(0, 255, 180),
        Color3.fromRGB(120, 0, 255),
        Color3.fromRGB(255, 0, 150),
    },
}
