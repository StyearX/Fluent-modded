return {
    Name = "Neon Purple",
    Accent = Color3.fromRGB(180, 0, 255),

    AcrylicMain = Color3.fromRGB(5, 0, 15),
    AcrylicBorder = Color3.fromRGB(140, 0, 255),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(5, 0, 15), Color3.fromRGB(45, 0, 160)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(160, 0, 255),
    Tab = Color3.fromRGB(130, 0, 230),

    Element = Color3.fromRGB(120, 0, 210),
    ElementBorder = Color3.fromRGB(50, 0, 100),
    InElementBorder = Color3.fromRGB(155, 0, 245),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(180, 0, 255),
    ToggleToggled = Color3.fromRGB(15, 0, 40),

    SliderRail = Color3.fromRGB(130, 0, 230),

    DropdownFrame = Color3.fromRGB(255, 255, 255),
    DropdownHolder = Color3.fromRGB(10, 0, 30),
    DropdownBorder = Color3.fromRGB(50, 0, 140),
    DropdownOption = Color3.fromRGB(180, 0, 255),

    Keybind = Color3.fromRGB(120, 0, 210),

    Input = Color3.fromRGB(255, 255, 255),
    InputFocused = Color3.fromRGB(20, 0, 50),
    InputIndicator = Color3.fromRGB(200, 0, 255),

    Dialog = Color3.fromRGB(10, 0, 30),
    DialogHolder = Color3.fromRGB(5, 0, 20),
    DialogHolderLine = Color3.fromRGB(3, 0, 12),
    DialogButton = Color3.fromRGB(10, 0, 30),
    DialogButtonBorder = Color3.fromRGB(140, 0, 255),
    DialogBorder = Color3.fromRGB(50, 0, 120),
    DialogInput = Color3.fromRGB(25, 0, 60),
    DialogInputLine = Color3.fromRGB(200, 0, 255),

    Text = Color3.fromRGB(252, 245, 255),
    SubText = Color3.fromRGB(210, 185, 255),
    Hover = Color3.fromRGB(150, 0, 255),
    HoverChange = 0.07,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.4,
        RotationSpeed = 20,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 5, 137)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(171, 32, 253)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 5, 137)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(60, 0, 150),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 18, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 5, 137)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 18, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(171, 32, 253)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 18, 255)),
        }),
    },
}
