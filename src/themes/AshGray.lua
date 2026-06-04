return {
    Name = "Ash Gray",
    Accent = Color3.fromRGB(150, 150, 150),

    AcrylicMain = Color3.fromRGB(60, 60, 60),
    AcrylicBorder = Color3.fromRGB(90, 90, 90),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(75, 75, 75),
    Tab = Color3.fromRGB(120, 120, 120),

    Element = Color3.fromRGB(120, 120, 120),
    ElementBorder = Color3.fromRGB(35, 35, 35),
    InElementBorder = Color3.fromRGB(90, 90, 90),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(120, 120, 120),
    ToggleToggled = Color3.fromRGB(0, 0, 0),

    SliderRail = Color3.fromRGB(120, 120, 120),

    DropdownFrame = Color3.fromRGB(160, 160, 160),
    DropdownHolder = Color3.fromRGB(45, 45, 45),
    DropdownBorder = Color3.fromRGB(35, 35, 35),
    DropdownOption = Color3.fromRGB(120, 120, 120),

    Keybind = Color3.fromRGB(120, 120, 120),

    Input = Color3.fromRGB(160, 160, 160),
    InputFocused = Color3.fromRGB(10, 10, 10),
    InputIndicator = Color3.fromRGB(150, 150, 150),

    Dialog = Color3.fromRGB(45, 45, 45),
    DialogHolder = Color3.fromRGB(35, 35, 35),
    DialogHolderLine = Color3.fromRGB(30, 30, 30),
    DialogButton = Color3.fromRGB(45, 45, 45),
    DialogButtonBorder = Color3.fromRGB(80, 80, 80),
    DialogBorder = Color3.fromRGB(70, 70, 70),
    DialogInput = Color3.fromRGB(55, 55, 55),
    DialogInputLine = Color3.fromRGB(160, 160, 160),

    Text = Color3.fromRGB(240, 240, 240),
    SubText = Color3.fromRGB(170, 170, 170),
    Hover = Color3.fromRGB(120, 120, 120),
    HoverChange = 0.07,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.4,
        RotationSpeed = 20,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(105, 105, 105)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 40, 40)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(90, 90, 90),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 120, 120)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 60, 60)),
        }),
    },
}
