return {
    Name = "Deep Ocean",
    Accent = Color3.fromRGB(0, 150, 200),

    AcrylicMain = Color3.fromRGB(15, 30, 45),
    AcrylicBorder = Color3.fromRGB(0, 100, 150),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 80, 120), Color3.fromRGB(10, 25, 40)),
    AcrylicNoise = 0.9,

    TitleBarLine = Color3.fromRGB(0, 120, 180),
    Tab = Color3.fromRGB(0, 100, 150),

    Element = Color3.fromRGB(0, 90, 135),
    ElementBorder = Color3.fromRGB(0, 70, 105),
    InElementBorder = Color3.fromRGB(0, 110, 165),
    ElementTransparency = 0.87,

    ToggleSlider = Color3.fromRGB(0, 150, 200),
    ToggleToggled = Color3.fromRGB(255, 255, 255),

    SliderRail = Color3.fromRGB(0, 100, 150),

    DropdownFrame = Color3.fromRGB(0, 80, 120),
    DropdownHolder = Color3.fromRGB(10, 25, 40),
    DropdownBorder = Color3.fromRGB(0, 70, 105),
    DropdownOption = Color3.fromRGB(0, 150, 200),

    Keybind = Color3.fromRGB(0, 90, 135),

    Input = Color3.fromRGB(0, 80, 120),
    InputFocused = Color3.fromRGB(5, 20, 35),
    InputIndicator = Color3.fromRGB(0, 200, 255),

    Dialog = Color3.fromRGB(10, 25, 40),
    DialogHolder = Color3.fromRGB(5, 15, 25),
    DialogHolderLine = Color3.fromRGB(0, 10, 20),
    DialogButton = Color3.fromRGB(10, 25, 40),
    DialogButtonBorder = Color3.fromRGB(0, 100, 150),
    DialogBorder = Color3.fromRGB(0, 70, 105),
    DialogInput = Color3.fromRGB(15, 35, 55),
    DialogInputLine = Color3.fromRGB(0, 200, 255),

    Text = Color3.fromRGB(240, 248, 255),
    SubText = Color3.fromRGB(180, 210, 230),
    Hover = Color3.fromRGB(0, 150, 200),
    HoverChange = 0.05,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 90)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(0, 100, 150),

    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 180)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 150)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 150)),
        }),
    },
}
