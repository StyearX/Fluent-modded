<img src="Assets/logodark.png#gh-dark-mode-only" alt="fluent">
<img src="Assets/logolight.png#gh-light-mode-only" alt="fluent">

# Fluent Modded

**Fluent Modded** is a modified version of the [Fluent UI Library](https://github.com/dawid-scripts/Fluent), rebuilt and extended with modern features, more themes, icon support, manager systems, and mobile compatibility.

> This script is just a Lua example — you can use this UI library for your own scripts.

**GitHub:** https://github.com/StyearX/Fluent-modded

---

## Features

- Modern, polished design
- Many customization options
- Almost every UI element you would ever need
- 30+ cool built-in themes
- Works on any executor *(probably)*
- Better than RayField
- Animated window transitions
- Search system for tabs and dropdowns *(can be disabled)*
- SaveManager, InterfaceManager, and FloatingButtonManager are built into Fluent — just add the setup code
- Open source
- Mobile support with open UI / minimizer button
- Multi icon pack support — Solar, Gravity, Lucide, Craft, Geist, SF Symbols
  - Icon repository: https://github.com/StyearX/Icons
- **FloatingButtonManager** — saves the position of draggable and lockable GUIs. Very useful if your script has draggable elements.
- **InterfaceManager** — lets users change and decorate the Fluent interface: animated shine system, transparency, fonts, and themes.

---

## Load via GitHub Release

```lua
local Fluent = loadstring(game:HttpGet(
    "https://github.com/StyearX/Fluent-Modded/releases/download/Fluent Beta/Fluent.lua"
))()
```

---

## Developers

| Name | Role |
|---|---|
| StyearX | Lead Developer |
| EvilFishess | Contributor |

---

## Window Components

| Property | Description |
|---|---|
| `Title` | Main title displayed on the window |
| `SubTitle` | Subtitle shown below the title |
| `TabWidth` | Width of the tab sidebar in pixels |
| `Size` | Window size as `UDim2` |
| `Acrylic` | Enables acrylic/blur background effect |
| `Theme` | Name of the color theme to use |
| `MinimizeKey` | `Enum.KeyCode` to toggle the window |
| `UserInfoTop` | Shows user info panel at the top of the sidebar |
| `UserInfo` | Shows user info panel at the bottom of the sidebar |
| `UserInfoTitle` | Display name shown in the user info panel |
| `UserInfoSubtitle` | Subtitle shown in the user info panel |
| `UserInfoColor` | Accent color for the user info panel |
| `Search` | Enables the tab/element search bar |

---

## UI Elements

| Element | Description |
|---|---|
| `Button` | Clickable button with optional icon |
| `Toggle` | On/off switch |
| `Dropdown` | Single or multi-select list, with optional search |
| `Input` | Text input field |
| `Keybind` | Key or mouse button binding with mouse icon indicator |
| `Colorpicker` | Full HSV color picker with transparency |
| `Paragraph` | Read-only title + content block |
| `Slider` | Draggable value slider with visible fill and thumb |
| `Notify` | Floating toast notification |
| `Dialog` | Modal dialog with custom buttons |

---

## What is a UI Library?

A **UI Library** (User Interface Library) is a set of pre-built components and tools that helps developers create graphical interfaces quickly and easily.

### Main Functions

**1. Provides Ready-to-Use Components**
Instead of coding buttons, sliders, toggles, dropdowns, color pickers, and dialogs from scratch, you just call a function and the element is instantly created.

**2. Handles Styling & Theming**
The library manages colors, fonts, transparency, animations, and layouts consistently. Many libraries offer multiple built-in themes (light, dark, custom colors).

**3. Manages User Input**
Events like clicks, drags, key presses, and value changes are automatically handled. You only provide a callback function that runs when something happens.

**4. Saves Development Time**
You don't need to write hundreds of lines of Roblox UI code or deal with positioning, resizing, and scrolling manually.

**5. Includes Advanced Features**
- Config saving and loading (save user settings between sessions)
- Floating and draggable buttons with position memory
- Search bars in dropdowns and tabs
- Modal dialog windows
- Acrylic/blur background effects

---

### Comparison

**Without a UI library — verbose and messy:**

```lua
local btn = Instance.new("TextButton")
btn.Size = UDim2.fromOffset(100, 30)
btn.Text = "Click"
btn.MouseButton1Click:Connect(function()
    print("clicked")
end)
```

**With Fluent Modded — clean and fast:**

```lua
Section:AddButton({
    Title    = "Click",
    Icon     = "solar/cursor-bold",
    Callback = function()
        print("clicked")
    end,
})
```

In short: a UI library lets you build professional, interactive interfaces with minimal code and maximum consistency.

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

---

## License

MIT — see the original [Fluent repository](https://github.com/dawid-scripts/Fluent) for license details.


## Credits
- [vraigos](https://github.com/Vraigos/Fluent-Modded) - original modded fluent owner
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) - Assets for the UI, some of the code
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) - Code for most of the elements, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) - Porting richie0866's acrylic module to lua
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) - Bundler
