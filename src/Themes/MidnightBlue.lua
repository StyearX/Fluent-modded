return {
    Name = "Midnight Blue",
    Accent = Color3.fromRGB(100, 80, 200),

    AcrylicMain = Color3.fromRGB(10, 8, 25),
    AcrylicBorder = Color3.fromRGB(60, 45, 140),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 35, 120), Color3.fromRGB(8, 5, 20)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(80, 60, 170),
    Tab = Color3.fromRGB(60, 45, 140),

    Element = Color3.fromRGB(55, 40, 125),
    ElementBorder = Color3.fromRGB(40, 30, 90),
    InElementBorder = Color3.fromRGB(70, 55, 155),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(100, 80, 200),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(60, 45, 140),

    DropdownFrame = Color3.fromRGB(45, 30, 110),
    DropdownHolder = Color3.fromRGB(8, 5, 20),
    DropdownBorder = Color3.fromRGB(35, 25, 85),
    DropdownOption = Color3.fromRGB(100, 80, 200),

    Keybind = Color3.fromRGB(55, 40, 125),

    Input = Color3.fromRGB(45, 30, 110),
    InputFocused = Color3.fromRGB(5, 3, 15),
    InputIndicator = Color3.fromRGB(140, 120, 240),

    Dialog = Color3.fromRGB(8, 5, 20),
    DialogHolder = Color3.fromRGB(5, 3, 15),
    DialogHolderLine = Color3.fromRGB(3, 2, 10),
    DialogButton = Color3.fromRGB(8, 5, 20),
    DialogButtonBorder = Color3.fromRGB(60, 45, 140),
    DialogBorder = Color3.fromRGB(40, 30, 90),
    DialogInput = Color3.fromRGB(15, 10, 35),
    DialogInputLine = Color3.fromRGB(140, 120, 240),

    Text = Color3.fromRGB(220, 220, 255),
    SubText = Color3.fromRGB(170, 170, 210),
    Hover = Color3.fromRGB(100, 80, 200),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 15, 60)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(60, 45, 140),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 60, 170)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 45, 140)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 45, 140)),
        }),
    },
}
