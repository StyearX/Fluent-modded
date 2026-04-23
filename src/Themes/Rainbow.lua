return {
	Name = "Rainbow",
	Accent = Color3.fromRGB(255, 0, 0),

	AcrylicMain = Color3.fromRGB(20, 20, 20),
	AcrylicBorder = Color3.fromRGB(255, 0, 255),
	AcrylicGradient = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
		ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 165, 0)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 0)),
		ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 0)),
		ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 0, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 255))
	},
	AcrylicNoise = 0.9,

	TitleBarLine = Color3.fromRGB(255, 100, 100),
	Tab = Color3.fromRGB(255, 150, 150),

	Element = Color3.fromRGB(60, 60, 60),
	ElementBorder = Color3.fromRGB(255, 0, 255),
	InElementBorder = Color3.fromRGB(0, 255, 255),
	ElementTransparency = 0.85,

	ToggleSlider = Color3.fromRGB(255, 0, 0),
	ToggleToggled = Color3.fromRGB(0, 255, 0),

	SliderRail = Color3.fromRGB(0, 0, 255),

	DropdownFrame = Color3.fromRGB(255, 100, 200),
	DropdownHolder = Color3.fromRGB(40, 40, 40),
	DropdownBorder = Color3.fromRGB(255, 0, 255),
	DropdownOption = Color3.fromRGB(255, 150, 0),

	Keybind = Color3.fromRGB(0, 255, 255),

	Input = Color3.fromRGB(255, 0, 150),
	InputFocused = Color3.fromRGB(50, 0, 50),
	InputIndicator = Color3.fromRGB(255, 255, 0),

	Dialog = Color3.fromRGB(40, 40, 40),
	DialogHolder = Color3.fromRGB(20, 20, 20),
	DialogHolderLine = Color3.fromRGB(255, 0, 255),
	DialogButton = Color3.fromRGB(60, 60, 60),
	DialogButtonBorder = Color3.fromRGB(0, 255, 255),
	DialogBorder = Color3.fromRGB(255, 0, 0),
	DialogInput = Color3.fromRGB(50, 50, 50),
	DialogInputLine = Color3.fromRGB(0, 255, 0),

	Text = Color3.fromRGB(255, 255, 255),
	SubText = Color3.fromRGB(200, 200, 200),
	Hover = Color3.fromRGB(255, 100, 255),
	HoverChange = 0.05,
}
