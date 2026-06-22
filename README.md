<p align="left">
  <a href="https://github.com/StyearX/Fluent-modded/graphs/contributors">
    <img alt="Contributors" src="https://img.shields.io/github/contributors/StyearX/Fluent-modded" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded/issues">
    <img alt="Issues" src="https://img.shields.io/github/issues/StyearX/Fluent-modded?color=0088ff" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded/pulls">
    <img alt="Pull Requests" src="https://img.shields.io/github/issues-pr/StyearX/Fluent-modded?color=0088ff" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded/stargazers">
    <img alt="Stars" src="https://img.shields.io/github/stars/StyearX/Fluent-modded?style=flat" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded/network/members">
    <img alt="Forks" src="https://img.shields.io/github/forks/StyearX/Fluent-modded?style=flat" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded">
    <img alt="Last Commit" src="https://img.shields.io/github/last-commit/StyearX/Fluent-modded" />
  </a>
  <a href="https://github.com/StyearX/Fluent-modded">
    <img alt="Repo Size" src="https://img.shields.io/github/repo-size/StyearX/Fluent-modded" />
  </a>
</p>

<img src="Assets/asset.png#gh-dark-mode-only" alt="fluent">
<img src="Assets/asset.png#gh-light-mode-only" alt="fluent">
<img src="Assets/Theme 2.png" alt="fluent">
<img src="Assets/Theme1.png" alt="fluent">


# FluentModded

A modified version of the [Fluent](https://github.com/dawid-scripts/Fluent) UI library for Roblox, extended with extra themes,multi-pack icon support, and quality-of-life improvements.

---

## Quick Start

```lua
local Fluent = loadstring(game:HttpGet(
    "https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentPro"
))()

local Window = Fluent:CreateWindow({
    Title       = "My Hub",
    SubTitle    = "by me",
    TabWidth    = 160,
    Size        = UDim2.fromOffset(500, 480),
    Acrylic     = true,
    Theme       = "AMOLED",
    MinimizeKey = Enum.KeyCode.LeftControl,
    Search      = true,
})

local Tab = Window:AddTab({ Title = "Main", Icon = "solar/home-bold" })
```

---

## Elements

All elements are added via `Tab:AddElementType(id, config)`.

| Method | Description |
|---|---|
| `AddToggle` | On/off switch |
| `AddSlider` | Numeric range slider |
| `AddInput` | Text input box |
| `AddDropdown` | Single or multi-select dropdown, supports `Animated` and `DropdownOutsideWindow` |
| `AddColorpicker` | Color picker with transparency |
| `AddKeybind` | Keyboard/mouse keybind |
| `AddButton` | Clickable button |
| `AddParagraph` | Read-only text block |
| `AddCode` | Copy Button |
| `AddSpace` | Space|
| `AddGroup` | Group elements into columns, call `:AddElement()` on the returned group to get each column |
| `Addimage` | image in Window support httpGet and rbxassetid |
| `AddDivider` | divider|
| `AddVideo` | Video In window Supported rbxassetid|
| `AddAudio` | Audio In window Supported httpGet /http url and rbxassetid|
| `AddViewport` | 3D viewport for displaying a model, supports `SetAspectRatio`, custom `Camera`, and `Interactive` mode |
| `AddDiscord` | Discord invite widget with join button, takes an `InviteCode` |
| `AddCollapsibleSection` | Section that can be opened/closed by clicking its header, used like `AddSection` but pass `Open=false` to start collapsed |




## Custom Themes

Register a custom theme before calling `CreateWindow`.

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (see built-in themes for all fields)
    IconColor   = Color3.fromRGB(96, 205, 255), -- tint all icons
    IconSize    = 18,                            -- icon size in px

    ShineEnabled = true, -- required for the "Animated Window" toggle to affect this theme
    Shine = {             -- required if ShineEnabled is true, or no animation will play at all
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- optional, animates UIStroke color separately from Shine
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- Switch theme at runtime
Fluent:SetTheme("MyTheme")
```

A theme with `ShineEnabled = true` but no `Shine` table will not animate at all, including stroke shine. Omit `ShineEnabled` entirely for a theme that should never animate, regardless of the "Animated Window" toggle.

### Built-in Themes

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## Icon Packs

All icon packs are loaded on demand. Use the `prefix/icon-name` format anywhere an `Icon` property is accepted.

| Pack | Prefix | Repository |
|---|---|---|
| Solar | `solar/` | https://github.com/StyearX/Icons/tree/main/solar |
| Gravity | `gravity/` | https://github.com/StyearX/Icons/tree/main/gravity |
| Lucide | `lucide/` | https://github.com/StyearX/Icons/tree/main/lucide |
| Craft | `craft/` | https://github.com/StyearX/Icons/tree/main/craft |
| Geist | `geist/` | https://github.com/StyearX/Icons/tree/main/geist |
| SF Symbols | `sfsymbols/` | https://github.com/StyearX/Icons/tree/main/sfsymbols |
| Heroicons | `hero/` | https://github.com/StyearX/Icons/blob/main/hero |
| Google Material Icons| `gmi/` | https://github.com/StyearX/Icons/blob/main/GoogleMaterialIcons |


```lua
-- Usage example
Tab:AddButton({ Title = "Home", Icon = "solar/home-bold", Callback = function() end })
Tab:AddButton({ Title = "Archive", Icon = "gravity/archive", Callback = function() end })
```

---

## SaveManager & InterfaceManager

```lua
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("MyHub")
SaveManager:SetFolder("MyHub/Config")

InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)

SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
```

---

## FloatingButtonManager

Handles **saving and loading the position, size, lock state, and shape** of floating buttons. The UI (Frame, button appearance, shape) is fully built and customized by you — `FloatingButtonManager` only manages persistence. Register each button with `AddButton` after building your UI, then call `BuildConfigSection` to auto-generate a save/load layout panel inside your Settings tab.

```lua
-- Build your own UI first, then register it
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| Parameter | Description |
|---|---|
| `id` | Unique string identifier for this button |
| `frameOrButton` | The draggable `Frame` (preferred) or `TextButton` |
| `locked` | Whether position is locked on start |
| `isCircle` | Shape state, restored on load via `applyShapeCallback` |
| `applyShapeCallback` | Optional `function(isCircle)` called on load to restore shape |
| `frame` | Explicit `Frame` if `frameOrButton` is a `TextButton` child |

---

## MediaManager

Downloads and caches images, video, and audio referenced by `AddImage`, `AddVideo`, and `AddAudio` to a local folder so they don't re-fetch every load.

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## Tab Favorites

Hover a tab on the left sidebar and click the bookmark icon to pin it. The bookmark icon turns into a filled bookmark-check, and the tab jumps above all non-favorited tabs, most recently favorited on top. Unbookmarking returns the tab to its original position. Favorites persist automatically via the `InterfaceManager` folder, no extra setup required.

---

## Changelog

### v1.4.1
- Fix `Enum.Platform.XBoxOne360` invalid enum crash in device detection (was breaking TitleBar/Window build entirely, which also stopped custom themes from rendering)
- Fix custom themes with `ShineEnabled = true` but no `Shine` table silently not animating at all
- `SetTheme` no longer drops `IconColor`/`IconSize` application when RGB mode wrapper runs

## v1.4.0 Overhaul 
- Add DropdownOutisideWindow
- Fix Floating Button manager ( Because Floating Button manager changes Ui corner)
- Completely change the original code like Element whose code is refined and simplified but still maintains function and ui


### v1.3.0
- Remove language system (broken)
- Add New Element `AddAudio`
- Fix AddImages does not show Images in Window
- Fix AddVideo does not show Video in Window
- Remove http url support to video

### v1.2.9
- Add language system (broken)
- Add Disable BackgroundImages (fully working can be enabled or disabled in the Interface manager
- Add New Element `AddCode`, `AddImage`(not fully functional yet) , `AddVideo` (does not work ), `AddDivider`, `AddSpace`, `AddGroup` you can unlock it with NameSection:AddElementName

- Fix Auto load on FBM
- Fix Auto Load on Save manager
- fix there Outline/uistroke on the slider thumb
- fix Can't change UserInfoSubtitle and Userinfotitle in Userinfo Fixed

### v1.2.0
- Fixed Orange theme rendering as Ash Gray (key mismatch bug)
- Changed default theme to AMOLED

### v1.1.0
- Remove some themes due to lag issues but add Custom Themes
- Added multi-pack icon system (Solar, Gravity, Lucide, Craft, Geist, SF Symbols)
- Added `RegisterCustomTheme` with `IconColor` and `IconSize` support
- keep : AMOLED, RGB, Neon Cyber, Neon Purple, Royal Blue, Deep Ocean,
  Orange, Charcoal, Pearl White, Midnight Blue, Galaxy Purple, Cosmic Violet, Cotton Candy

---

## License

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## Credits

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — original library
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — UI assets and code
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — element code, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — Lua acrylic blur port
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — bundler

## Contributors

- **StyearX** — Main Developer
- **Era** — Contributor
- **EvilFishess** — Contributor
