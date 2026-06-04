return {
    Name = "Royal Blue",
    Accent = Color3.fromRGB(15, 82, 186),

    AcrylicMain = Color3.fromRGB(10, 25, 50),
    AcrylicBorder = Color3.fromRGB(10, 65, 150),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(12, 70, 160), Color3.fromRGB(8, 20, 45)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(13, 75, 170),
    Tab = Color3.fromRGB(10, 65, 150),

    Element = Color3.fromRGB(9, 58, 135),
    ElementBorder = Color3.fromRGB(6, 40, 95),
    InElementBorder = Color3.fromRGB(11, 70, 160),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(15, 82, 186),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(10, 65, 150),

    DropdownFrame = Color3.fromRGB(8, 50, 120),
    DropdownHolder = Color3.fromRGB(8, 20, 45),
    DropdownBorder = Color3.fromRGB(6, 40, 95),
    DropdownOption = Color3.fromRGB(15, 82, 186),

    Keybind = Color3.fromRGB(9, 58, 135),

    Input = Color3.fromRGB(8, 50, 120),
    InputFocused = Color3.fromRGB(5, 15, 35),
    InputIndicator = Color3.fromRGB(50, 120, 230),

    Dialog = Color3.fromRGB(8, 20, 45),
    DialogHolder = Color3.fromRGB(5, 15, 35),
    DialogHolderLine = Color3.fromRGB(3, 10, 25),
    DialogButton = Color3.fromRGB(8, 20, 45),
    DialogButtonBorder = Color3.fromRGB(10, 65, 150),
    DialogBorder = Color3.fromRGB(6, 40, 95),
    DialogInput = Color3.fromRGB(12, 30, 65),
    DialogInputLine = Color3.fromRGB(50, 120, 230),

    Text = Color3.fromRGB(220, 235, 255),
    SubText = Color3.fromRGB(170, 190, 220),
    Hover = Color3.fromRGB(15, 82, 186),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 85)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(10, 65, 150),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 75, 170)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 65, 150)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 65, 150)),
        }),
    },
}
