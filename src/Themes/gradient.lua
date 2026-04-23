return {
	Name = "Gradient",
	Accent = Color3.fromRGB(120, 180, 255),

	AcrylicMain = Color3.fromRGB(15, 20, 30),
	AcrylicBorder = Color3.fromRGB(80, 120, 180),
	AcrylicGradient = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 255)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 0, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 200))
	},
	AcrylicNoise = 0.9,

	TitleBarLine = Color3.fromRGB(100, 150, 220),
	Tab = Color3.fromRGB(90, 140, 210),

	Element = Color3.fromRGB(60, 90, 140),
	ElementBorder = Color3.fromRGB(30, 50, 90),
	InElementBorder = Color3.fromRGB(80, 120, 180),
	ElementTransparency = 0.86,

	ToggleSlider = Color3.fromRGB(100, 140, 220),
	ToggleToggled = Color3.fromRGB(0, 0, 0),

	SliderRail = Color3.fromRGB(100, 140, 220),

	DropdownFrame = Color3.fromRGB(80, 120, 200),
	DropdownHolder = Color3.fromRGB(30, 50, 90),
	DropdownBorder = Color3.fromRGB(20, 40, 80),
	DropdownOption = Color3.fromRGB(100, 140, 220),

	Keybind = Color3.fromRGB(100, 140, 220),

	Input = Color3.fromRGB(100, 140, 220),
	InputFocused = Color3.fromRGB(20, 30, 60),
	InputIndicator = Color3.fromRGB(180, 220, 255),

	Dialog = Color3.fromRGB(30, 50, 90),
	DialogHolder = Color3.fromRGB(20, 40, 70),
	DialogHolderLine = Color3.fromRGB(15, 30, 60),
	DialogButton = Color3.fromRGB(40, 60, 100),
	DialogButtonBorder = Color3.fromRGB(100, 150, 220),
	DialogBorder = Color3.fromRGB(80, 120, 180),
	DialogInput = Color3.fromRGB(40, 60, 100),
	DialogInputLine = Color3.fromRGB(200, 240, 255),

	Text = Color3.fromRGB(240, 240, 255),
	SubText = Color3.fromRGB(180, 200, 230),
	Hover = Color3.fromRGB(120, 160, 255),
	HoverChange = 0.04,
}
