return {
    Name = "Charcoal",
    Accent = Color3.fromRGB(102, 102, 102),

    AcrylicMain = Color3.fromRGB(20, 20, 20),
    AcrylicBorder = Color3.fromRGB(60, 60, 60),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(30, 30, 30), Color3.fromRGB(10, 10, 10)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(70, 70, 70),
    Tab = Color3.fromRGB(40, 40, 40),

    Element = Color3.fromRGB(35, 35, 35),
    ElementBorder = Color3.fromRGB(60, 60, 60),
    InElementBorder = Color3.fromRGB(45, 45, 45),
    ElementTransparency = 0.9,

    ToggleSlider = Color3.fromRGB(90, 160, 255),
    ToggleToggled = Color3.fromRGB(0, 0, 0),

    SliderRail = Color3.fromRGB(60, 60, 60),

    DropdownFrame = Color3.fromRGB(30, 30, 30),
    DropdownHolder = Color3.fromRGB(20, 20, 20),
    DropdownBorder = Color3.fromRGB(60, 60, 60),
    DropdownOption = Color3.fromRGB(90, 160, 255),

    Keybind = Color3.fromRGB(35, 35, 35),

    Input = Color3.fromRGB(25, 25, 25),
    InputFocused = Color3.fromRGB(15, 15, 15),
    InputIndicator = Color3.fromRGB(120, 180, 255),

    Dialog = Color3.fromRGB(25, 25, 25),
    DialogHolder = Color3.fromRGB(20, 20, 20),
    DialogHolderLine = Color3.fromRGB(15, 15, 15),
    DialogButton = Color3.fromRGB(25, 25, 25),
    DialogButtonBorder = Color3.fromRGB(60, 60, 60),
    DialogBorder = Color3.fromRGB(60, 60, 60),
    DialogInput = Color3.fromRGB(30, 30, 30),
    DialogInputLine = Color3.fromRGB(120, 180, 255),

    Text = Color3.fromRGB(240, 240, 240),
    SubText = Color3.fromRGB(170, 170, 170),
    Hover = Color3.fromRGB(90, 160, 255),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.45,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 150, 150)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(60, 60, 60),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(175, 175, 175)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 180, 180)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20)),
        }),
    },
}
