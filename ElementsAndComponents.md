# FluentPro 

Documentation of every UI element and components available in FluentPro, including the special properties each one supports.

---

## Window

Created with `Fluent:CreateWindow({...})`.

| Property | Type | Description |
|---|---|---|
| `Title` | string | Main window title |
| `SubTitle` | string | Text shown next to the title |
| `Version` | string | Version label displayed in the window |
| `TabWidth` | number | Width of the left sidebar in pixels |
| `Size` | UDim2 | Window size, e.g. `UDim2.fromOffset(480, 460)` |
| `Acrylic` | boolean | Enables acrylic/blur background style |
| `Theme` | string | Name of the theme applied on load |
| `MinimizeKey` | Enum.KeyCode | Key used to minimize the window |
| `Search` | boolean | Enables a global search bar that filters elements across every tab |
| `Icons` | string | Icon shown in the window title bar |
| `UserInfoTop` | boolean | Shows a user info card at the top of the sidebar |
| `UserInfoTitle` | string | Title line of the user info card |
| `UserInfoSubtitle` | string | Subtitle line of the user info card |
| `UserInfoColor` | Color3 | Accent color of the user info card |

```lua
--- createWindow Example
isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled and not UserInputService.KeyboardEnabled
-- ignore this

-- Create Window 
Window = Fluent:CreateWindow({
    Title = "GoonWares",
    SubTitle = "Made by: StyearX",
    TabWidth = isMobile and 130 or 150,
    Tags = {
        { Text = " Testing Ui ", Color = Color3.fromRGB(211, 15, 40) },
        { Text = "UI base", Color = Color3.fromRGB(180, 10, 20) },
    },
    Version = "Version 1.5",
    Acrylic = true,
    Size = isMobile and UDim2.fromOffset(480, 490) or UDim2.fromOffset(580, 560),
    Theme = "Blood Red",
    Search = true,
    SearchInHeader = true,
    Icons = "rbxassetid://139095000385640",
    TitleIcon = "rbxassetid://139379979502671",
    UserInfoTop = true,
    UserInfoTitle   = "Le Goon",
    UserInfoSubtitle = LocalPlayer.DisplayName,
    MinimizeKey = Enum.KeyCode.RightControl,
})
```

Error handling can be set globally:

```lua
Fluent:SetErrorHandler(function(msg, fullErr) end)
```

Window control methods: `Window:Show()`, `Window:Hide()`, `Window:SelectTab(index)`, `Window:Dialog({...})`.

---

## Tabs

Created with `Window:AddTab({ Title = "Name", Icon = "solar/layers-bold" })`.

Tabs support adding elements directly, without a section wrapper: `Tabs.YourTabName:AddButton({...})`, `Tabs.YourTabName:AddParagraph({...})`, `Tabs.YourTabName:AddDivider()`, and so on. Elements added this way follow the same insertion order as elements inside sections.

## Create Tabs Example 
```lua
Tabs = {
    Main = Window:AddTab({ Title = "|  Main", Icon = "rbxassetid://7733960981" }),
    Misc = Window:AddTab({ Title = "|  Misc", Icon = "rbxassetid://7734068321" }),
    Combat = Window:AddTab({ Title = "|  Combat", Icon = "lucide/swords" }),
    Visual = Window:AddTab({ Title = "|  Visual", Icon = "rbxassetid://10709819149" }),
    Info = Window:AddTab({ Title = "|  Info", Icon = "rbxassetid://10723415903" }),
    Settings = Window:AddTab({ Title = "|  Settings", Icon = "rbxassetid://7734052335" }),
    Extension = Window:AddTab({ Title = "|  Extension", Icon = "rbxassetid://10734930886" }),
}
```
---

## Section

Created with `Tabs.YourTabName:AddSection("Title", "icon")`. Groups related elements under a labeled header. A section object exposes the same `Add...` methods as a Tab.

### Collapsible Section

Created with `Tabs.YourTabName:AddCollapsibleSection("Title", "icon", Open)`.

| Argument | Type | Description |
|---|---|---|
| `Title` | string | Header text |
| `icon` | string | Header icon |
| `Open` | boolean | Third positional argument; `false` starts the section collapsed. Defaults to open |

Behaves like a normal section but can be expanded or collapsed by clicking its header.

---

## Paragraph

`secYourSectionName:AddParagraph({...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Optional heading above the text |
| `Content` | string | Body text, supports `\n` for line breaks |

---

## Button

`secYourSectionName:AddButton({...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Button label |
| `Icon` | string | Icon shown next to the label |
| `IconColor` | Color3 | Overrides the default icon color |
| `Description` | string | Small text shown under the title |
| `Callback` | function | Fired when the button is pressed |

---

## Toggle

`secYourSectionName:AddToggle("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Toggle label |
| `Icon` | string | Icon shown next to the label |
| `Default` | boolean | Initial state |
| `Description` | string | Small text shown under the title |
| `Callback` | function(value) | Fired with the new boolean state |

---

## Slider

`secYourSectionName:AddSlider("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Slider label |
| `Icon` | string | Icon shown next to the label |
| `Min` | number | Minimum value |
| `Max` | number | Maximum value |
| `Default` | number | Initial value |
| `Rounding` | number | Decimal places, `0` for whole numbers |
| `Description` | string | Small text shown under the title |
| `Callback` | function(value) | Fired whenever the value changes |

---

## Input

`secYourSectionName:AddInput("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Field label |
| `Icon` | string | Icon shown next to the label |
| `Placeholder` | string | Placeholder text when empty |
| `Default` | string | Initial value |
| `Description` | string | Small text shown under the title |
| `Callback` | function(value) | Fired when the text is submitted |

---

## Colorpicker

`secYourSectionName:AddColorpicker("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Label |
| `Icon` | string | Icon shown next to the label |
| `Default` | Color3 | Initial color |
| `Transparency` | number | Initial transparency, `0` is opaque |
| `Description` | string | Small text shown under the title |
| `Callback` | function(color) | Fired whenever the color changes |

The picker shows the currently selected color and the previously selected color side by side for comparison.

---

## Keybind

`secYourSectionName:AddKeybind("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Label |
| `Icon` | string | Icon shown next to the label |
| `Default` | string | Default key, e.g. `"RightAlt"` |
| `Mode` | string | `"Toggle"` or `"Always"` |
| `Description` | string | Small text shown under the title |
| `Callback` | function | Behavior depends on `Mode` |

**Mode variants**

- `"Toggle"` — the callback receives a boolean and only fires once per state change (press to turn on, press again to turn off).
- `"Always"` — the callback fires with no state tracking every single time the key is pressed, regardless of any toggle state.

---

## Dropdown

`secYourSectionName:AddDropdown("UniqueFlag", {...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Label |
| `Icon` | string | Icon shown next to the label |
| `Values` | table | List of selectable string options |
| `Default` | string or table | A single string for single-select, or a table of `{ OptionName = true }` for multi-select |
| `Multi` | boolean | Enables multi-select mode |
| `Description` | string | Small text shown under the title |
| `Animated` | boolean | Adds an animated border/gradient to the dropdown panel |
| `DropdownOutsideWindow` | boolean | Opens the dropdown as a side panel outside the main window instead of expanding inline. Useful for long value lists |
| `DropdownBackgroundTransparency` | number | Custom background transparency for the dropdown panel |
| `DropdownBackgroundImages` | string | Asset id or URL used as the dropdown panel background image |
| `Callback` | function(value) | Fired with the selected string, or a table of selected keys when `Multi` is true |

**Special behavior:** when two dropdowns both have `DropdownOutsideWindow = true` and are opened at the same time, they automatically split to opposite sides of the window (left and right) instead of overlapping.

All flags are independent and can be combined freely: `Animated`, `Multi`, `DropdownOutsideWindow`, `DropdownBackgroundTransparency`, and `DropdownBackgroundImages` can all be set on the same dropdown at once.

---

## Code

`secYourSectionName:AddCode({...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Label shown above the code block |
| `Code` | string | The code text displayed and copied |
| `OnCopy` | function | Fired after the copy button is pressed |

---

## Divider

`secYourSectionName:AddDivider()` — draws a thin separator line with no properties.

## Space

`secYourSectionName:AddSpace({...})`

| Property | Type | Description |
|---|---|---|
| `Height` | number | Vertical gap in pixels |

---

## Image

`secYourSectionName:AddImage({...})`

| Property | Type | Description |
|---|---|---|
| `Image` | string | Asset id or URL |
| `AspectRatio` | string | e.g. `"16:9"`, `"1:1"`, `"4:3"` |
| `Radius` | number | Corner radius in pixels |

Returns an element object with `SetAspectRatio(ratio)` to change the ratio at runtime.

---

## Video

`secYourSectionName:AddVideo({...})`

| Property | Type | Description |
|---|---|---|
| `Video` | string | Asset id |
| `AspectRatio` | string | e.g. `"16:9"`, `"4:3"` |
| `Radius` | number | Corner radius in pixels |
| `AutoPlay` | boolean | Starts playing automatically |
| `Looped` | boolean | Repeats when finished |
| `Volume` | number | Playback volume, `0` to `1` |

Returns an element object with `SetAspectRatio(ratio)`. Clicking anywhere on the video reveals play, pause, stop, and a seek bar, which auto-hide after a few seconds of inactivity.

---

## Audio

`secYourSectionName:AddAudio({...})`

| Property | Type | Description |
|---|---|---|
| `Audio` | string | Asset id or URL |
| `Volume` | number | Playback volume, `0` to `1` |
| `Looped` | boolean | Repeats when finished |
| `AutoPlay` | boolean | Starts playing automatically |
| `AudioTitle` | string | Displayed track title |
| `AudioSubtitle` | string | Displayed track subtitle, e.g. artist name |
| `PlayOutsideWindow` | boolean | When true, playback continues even if the audio card scrolls out of view or the window is closed |

---

## Viewport

`secYourSectionName:AddViewport({...})`

| Property | Type | Description |
|---|---|---|
| `Height` | number | Frame height in pixels |
| `AspectRatio` | string | e.g. `"16:9"`, `"1:1"` |
| `Object` | Instance | The model or part to display |
| `Camera` | Camera | Custom camera instance for the viewport |
| `Focused` | boolean | Frames the object in view on creation |
| `Interactive` | boolean | Allows the user to rotate/orbit the object with input |

Returns an element object with:
- `SetAspectRatio(ratio)` — changes the frame ratio
- `SetObject(instance, keepCamera)` — swaps the displayed object
- `Focus()` — re-centers the camera on the current object

---

## Discord

`secYourSectionName:AddDiscord({...})`

| Property | Type | Description |
|---|---|---|
| `InviteCode` | string | Discord invite code, renders a live server preview card |

---

## Social

`secYourSectionName:AddSocial({...})`

| Property | Type | Description |
|---|---|---|
| `Username` | string | Handle shown on the card |
| `DisplayName` | string | Name shown on the card |
| `Platform` | string | Platform label, e.g. `"GitHub"` |
| `ProfileUrl` | string | Link to the profile |

**Special behavior:** `ProfileUrl` can be provided alone. When `Username`, `DisplayName`, and `Platform` are omitted, they are automatically detected from the URL. The avatar image is fetched through Unavatar (or LinkPreview) and cached by the Media Manager. Clicking the display name or username copies it to the clipboard.

---

## Group

`secYourSectionName:AddGroup({...})`

| Property | Type | Description |
|---|---|---|
| `Columns` | number | Number of side-by-side columns |
| `Gap` | number | Spacing between columns in pixels |

Returns a group object. Call `Group:AddElement()` once per column to get a container that supports the same `Add...` methods as a section, letting different elements sit next to each other in a row.

---

## Dialog

`Window:Dialog({...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Dialog title |
| `Content` | string | Dialog body text |
| `Input` | table | Optional `{ Placeholder = "text" }`, adds a text field to the dialog |
| `Buttons` | table | List of `{ Title = string, Callback = function }`. If `Input` is set, the callback receives the entered value. A button with no `Callback` simply closes the dialog |

Supports any number of buttons, commonly two (confirm/cancel) or three (save/discard/cancel).

---

## Notify

`Fluent:Notify({...})`

| Property | Type | Description |
|---|---|---|
| `Title` | string | Notification title |
| `Content` | string | Main message |
| `SubContent` | string | Optional secondary line shown below `Content` |
| `Type` | string | `"Info"`, `"Success"`, `"Warning"`, or `"Error"` |
| `Icon` | string | Icon shown on the notification |
| `Duration` | number | Seconds before auto-dismiss |

---

## Themes

Apply a built-in theme with `Fluent:SetTheme("Name")`.

Register a custom theme with:

```lua
Fluent:RegisterCustomTheme("Name", { ... })
```

Key color slots include `Accent`, `AcrylicMain`, `AcrylicBorder`, `AcrylicGradient`, `AcrylicNoise`, `TitleBarLine`, `Tab`, `Element`, `ElementBorder`, `InElementBorder`, `ElementTransparency`, `ToggleSlider`, `ToggleToggled`, `SliderRail`, `DropdownFrame`, `DropdownHolder`, `DropdownBorder`, `DropdownOption`, `Keybind`, `Input`, `InputFocused`, `InputIndicator`, `Dialog`, `DialogHolder`, `DialogHolderLine`, `DialogButton`, `DialogButtonBorder`, `DialogBorder`.

**Special property — `ShineEnabled`:** if a custom theme sets `ShineEnabled = true`, it follows the window's Animated toggle and animates its accents. If a theme has no `ShineEnabled` key at all, it never animates, regardless of the Animated toggle state. This lets two themes share an identical color palette while one is static and the other is animated.

---

## Custom Font

Applied through the Interface Manager:

```lua
InterfaceManager:ApplyCustomFont(source, weight)
```

| Argument | Type | Description |
|---|---|---|
| `source` | string | A `rbxasset://` path, an `rbxassetid://` id, or a named built-in font string |
| `weight` | Enum.FontWeight | Optional, e.g. `Enum.FontWeight.Medium` |

---
## You can also create almost any font using rich text.
lua example 
```lua
local secRichText = Tabs.Components:AddSection("Rich Text", "solar/text-bold")

secRichText:AddParagraph({
    Title = "Rich Text Is On By Default",
    Content = "Every text label in FluentPro renders <b>Roblox rich text</b> tags automatically no setup needed. That means <i>italics</i>, <u>underline</u>, <s>strikethrough</s>, and even nested combos like <b><i>bold italic</i></b> just work in any Title, Description, or Paragraph Content.",
})

secRichText:AddParagraph({
    Title = "<font color=\"rgb(255,120,120)\">Colored</font> <font color=\"rgb(120,200,255)\">Titles</font>",
    Content = "You can color individual words with <font color=\"rgb(255,200,90)\">&lt;font color=\"rgb(r,g,b)\"&gt;</font> tags, mix sizes with <font size=\"22\">size=\"22\"</font>, or point at a custom font family with <font face=\"rbxasset://fonts/families/GothamSSm.json\">face=\"...\"</font>.",
})

secRichText:AddCode({
    Title = "Example",
    Code = 'sec:AddParagraph({\n    Title = "<b>Loot Drop</b>",\n    Content = "You found a <font color=\\"rgb(255,200,90)\\">Legendary</font> item!",\n})',
})
```
---

## Managers

| Manager | Purpose |
|---|---|
| `MediaManager:SetFolder(path)` | Sets the cache folder used for downloaded avatars and media |
| `InterfaceManager:SetLibrary(Fluent)` / `SetFolder(path)` / `BuildInterfaceSection(tab)` / `LoadSettings()` | Builds the interface customization section (theme, font, etc.) and restores saved UI settings |
| `SaveManager:SetLibrary(Fluent)` / `SetFolder(path)` / `IgnoreThemeSettings()` / `BuildConfigSection(tab)` / `LoadAutoloadConfig()` | Builds the config save/load section and handles config autoloading. `IgnoreThemeSettings()` excludes theme values from saved configs |
| `FloatingButtonManager:SetLibrary(Fluent)` / `SetFolder(path)` / `AddButton(name, frame, ...)` / `BuildConfigSection(tab)` / `LoadAutoloadConfig()` | Registers floating buttons, builds their config section, and restores saved floating button layouts |

---

## custom theme Format 

```lua
Fluent:RegisterCustomTheme("String", {
    Accent = Color3.fromRGB(Value, Value, Value),
    AcrylicMain = Color3.fromRGB(Value, Value, Value),
    AcrylicBorder = Color3.fromRGB(Value, Value, Value),
    AcrylicGradient = ColorSequence.new(Color3.fromRGB(Value, Value, Value), Color3.fromRGB(Value, Value, Value)),
    AcrylicNoise = Value,
    TitleBarLine = Color3.fromRGB(Value, Value, Value),
    Tab = Color3.fromRGB(Value, Value, Value),
    Element = Color3.fromRGB(Value, Value, Value),
    ElementBorder = Color3.fromRGB(Value, Value, Value),
    InElementBorder = Color3.fromRGB(Value, Value, Value),
    ElementTransparency = Value,
    ElementBorderThickness = Value,
    ToggleSlider = Color3.fromRGB(Value, Value, Value),
    ToggleToggled = Color3.fromRGB(Value, Value, Value),
    SliderRail = Color3.fromRGB(Value, Value, Value),
    CheckboxUnchecked = Color3.fromRGB(Value, Value, Value),
    CheckboxChecked = Color3.fromRGB(Value, Value, Value),
    CheckboxCheck = Color3.fromRGB(Value, Value, Value),
    ProgressBarRail = Color3.fromRGB(Value, Value, Value),
    ProgressBarFill = Color3.fromRGB(Value, Value, Value),
    DropdownFrame = Color3.fromRGB(Value, Value, Value),
    DropdownHolder = Color3.fromRGB(Value, Value, Value),
    DropdownBorder = Color3.fromRGB(Value, Value, Value),
    DropdownOption = Color3.fromRGB(Value, Value, Value),
    DropdownBorderThickness = Value,
    Keybind = Color3.fromRGB(Value, Value, Value),
    Input = Color3.fromRGB(Value, Value, Value),
    InputFocused = Color3.fromRGB(Value, Value, Value),
    InputIndicator = Color3.fromRGB(Value, Value, Value),
    Dialog = Color3.fromRGB(Value, Value, Value),
    DialogHolder = Color3.fromRGB(Value, Value, Value),
    DialogHolderLine = Color3.fromRGB(Value, Value, Value),
    DialogButton = Color3.fromRGB(Value, Value, Value),
    DialogButtonBorder = Color3.fromRGB(Value, Value, Value),
    DialogBorder = Color3.fromRGB(Value, Value, Value),
    DialogInput = Color3.fromRGB(Value, Value, Value),
    DialogInputLine = Color3.fromRGB(Value, Value, Value),
    Text = Color3.fromRGB(Value, Value, Value),
    SubText = Color3.fromRGB(Value, Value, Value),
    Hover = Color3.fromRGB(Value, Value, Value),
    HoverChange = Value,
    Background = "String",
    BackgroundTransparency = Value,
    BackgroundImagesRectPosition = nil,
    BackgroundImagesRectSize = nil,
    ViewportBackground = Color3.fromRGB(Value, Value, Value),
    ViewportBackgroundImages = "Boolean",
    DropdownOutsideWindowBackground = Color3.fromRGB(Value, Value, Value),
    DropdownOutsideWindowBackgroundImages = "Boolean",
    ShineEnabled = "Boolean",
    Shine = {
        Speed = Value,
        RotationSpeed = Value,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
        }),
    },
    StrokeShine = "Boolean",
    StrokeDark = Color3.fromRGB(Value, Value, Value),
    ButtonGradient = {
        Background = ColorSequence.new({
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
        }),
        Stroke = ColorSequence.new({
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
            ColorSequenceKeypoint.new(Value, Color3.fromRGB(Value, Value, Value)),
        }),
    },
    DiscordJoinButton = Color3.fromRGB(Value, Value, Value),
    WarningNotifyColor = Color3.fromRGB(Value, Value, Value),
    SuccessNotifyColor = Color3.fromRGB(Value, Value, Value),
    ErrorNotifyColor = Color3.fromRGB(Value, Value, Value),
    InfoNotifyColor = Color3.fromRGB(Value, Value, Value),
})
```
