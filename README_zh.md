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

<img src="Assets/logodark.png#gh-dark-mode-only" alt="fluent">
<img src="Assets/logolight.png#gh-light-mode-only" alt="fluent">
<img src="Assets/Theme 2.png" alt="fluent">
<img src="Assets/Theme1.png" alt="fluent">


# FluentModded

[Fluent](https://github.com/dawid-scripts/Fluent) UI 库的 Roblox 修改版本，新增额外主题、多图标包支持以及多项体验改进。

---

## 快速开始

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

## 元素

所有元素均通过 `Tab:AddElementType(id, config)` 添加。

| 方法 | 描述 |
|---|---|
| `AddToggle` | 开/关切换 |
| `AddSlider` | 数值范围滑块 |
| `AddInput` | 文本输入框 |
| `AddDropdown` | 单选或多选下拉框，支持 `Animated` 和 `DropdownOutsideWindow` |
| `AddColorpicker` | 带透明度的颜色选择器 |
| `AddKeybind` | 键盘/鼠标快捷键 |
| `AddButton` | 可点击按钮 |
| `AddParagraph` | 只读文本块 |
| `AddCode` | 复制按钮 |
| `AddSpace` | 空白间距 |
| `AddGroup` | 将元素分组为多列，对返回的分组调用 `:AddElement()` 获取每一列 |
| `Addimage` | 窗口内图片，支持 HttpGet 和 rbxassetid |
| `AddDivider` | 分隔线 |
| `AddVideo` | 窗口内视频，支持 rbxassetid |
| `AddAudio` | 窗口内音频，支持 HttpGet / http url 和 rbxassetid |
| `AddViewport` | 用于显示模型的 3D 视口，支持 `SetAspectRatio`、自定义 `Camera` 和 `Interactive` 模式 |
| `AddDiscord` | 带加入按钮的 Discord 邀请组件，传入 `InviteCode` |
| `AddCollapsibleSection` | 可通过点击标题展开/折叠的分组，用法与 `AddSection` 相同，传入 `Open=false` 可默认折叠 |

---

## 自定义主题

在调用 `CreateWindow` 之前注册自定义主题。

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (所有字段请参考内置主题)
    IconColor   = Color3.fromRGB(96, 205, 255), -- 为所有图标着色
    IconSize    = 18,                            -- 图标大小（px）

    ShineEnabled = true, -- 主题要响应"动态窗口"开关，必须设置此项
    Shine = {             -- 若 ShineEnabled 为 true，则必须提供此表，否则不会播放任何动画
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- 可选，单独为 UIStroke 颜色播放动画
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- 运行时切换主题
Fluent:SetTheme("MyTheme")
```

若主题设置了 `ShineEnabled = true` 但没有提供 `Shine` 表，将完全不会播放动画，包括描边动画。若希望某个主题永远不动画（无论"动态窗口"开关状态），请直接不设置 `ShineEnabled`。

### 内置主题

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## 图标包

所有图标包均按需加载。在任何接受 `Icon` 属性的地方使用 `前缀/图标名称` 格式。

| 图标包 | 前缀 | 仓库 |
|---|---|---|
| Solar | `solar/` | https://github.com/StyearX/Icons/tree/main/solar |
| Gravity | `gravity/` | https://github.com/StyearX/Icons/tree/main/gravity |
| Lucide | `lucide/` | https://github.com/StyearX/Icons/tree/main/lucide |
| Craft | `craft/` | https://github.com/StyearX/Icons/tree/main/craft |
| Geist | `geist/` | https://github.com/StyearX/Icons/tree/main/geist |
| SF Symbols | `sfsymbols/` | https://github.com/StyearX/Icons/tree/main/sfsymbols |
| Heroicons | `hero/` | https://github.com/StyearX/Icons/blob/main/hero |
| Google Material Icons | `gmi/` | https://github.com/StyearX/Icons/blob/main/GoogleMaterialIcons |

```lua
-- 使用示例
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

管理浮动按钮的**位置、大小、锁定状态和形状的保存与加载**。UI（Frame、按钮外观、形状）由您完全自主构建和自定义 — `FloatingButtonManager` 仅负责持久化。在构建 UI 后通过 `AddButton` 注册每个按钮，再调用 `BuildConfigSection` 在 Settings 标签页内自动生成保存/加载面板。

```lua
-- 先构建自己的UI，再注册
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| 参数 | 说明 |
|---|---|
| `id` | 此按钮的唯一字符串标识符 |
| `frameOrButton` | 可拖拽的 `Frame`（推荐）或 `TextButton` |
| `locked` | 启动时是否锁定位置 |
| `isCircle` | 形状状态，加载时通过 `applyShapeCallback` 恢复 |
| `applyShapeCallback` | 可选的 `function(isCircle)`，加载时调用以恢复形状 |
| `frame` | 若 `frameOrButton` 为 `TextButton` 的子级，则传入显式的 `Frame` |
---

## MediaManager

下载并缓存 `AddImage`、`AddVideo`、`AddAudio` 所引用的图片、视频和音频到本地文件夹，避免每次加载都重新获取。

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## 标签收藏

将鼠标悬停在左侧边栏的标签上，点击书签图标即可置顶。书签图标会变为实心的勾选书签，该标签会跳到所有未收藏标签的上方，最近收藏的排在最前。取消收藏会将标签恢复到原始位置。收藏会通过 `InterfaceManager` 的文件夹自动持久化，无需额外设置。

---

## 更新日志

### v1.4.1
- 修复设备检测中无效枚举 `Enum.Platform.XBoxOne360` 导致的崩溃（此前会导致 TitleBar/窗口完全构建失败，连带使自定义主题无法渲染）
- 修复设置了 `ShineEnabled = true` 但未提供 `Shine` 表的自定义主题完全不播放动画的问题
- `SetTheme` 在 RGB 模式包装函数运行时不再丢失 `IconColor`/`IconSize` 的应用

### v1.4.0 大改版
- 新增 DropdownOutsideWindow
- 修复 Floating Button manager（因其会改变 UI 圆角）
- 全面重构元素代码，简化代码的同时保持功能与界面不变

### v1.3.0
- 移除语言系统（存在问题）
- 新增元素 `AddAudio`
- 修复 AddImages 在窗口中不显示图片的问题
- 修复 AddVideo 在窗口中不显示视频的问题
- 移除视频的 http url 支持

### v1.2.9
- 新增语言系统（存在问题）
- 新增禁用背景图片功能（完全可用，可在 Interface manager 中开关）
- 新增元素 `AddCode`、`AddImage`（尚未完整）、`AddVideo`（暂不可用）、`AddDivider`、`AddSpace`、`AddGroup` — 可通过 NameSection:AddElementName 解锁
- 修复 FBM 自动加载
- 修复 Save manager 自动加载
- 修复滑块滑块上的 Outline/UIStroke 问题
- 修复 UserInfo 中无法修改 UserInfoSubtitle 和 UserInfoTitle 的问题

### v1.2.0
- 修复 Orange 主题显示为 Ash Gray 的问题（键名不匹配 bug）
- 将默认主题更改为 AMOLED

### v1.1.0
- 因卡顿问题移除部分主题，同时新增自定义主题
- 新增多包图标系统（Solar、Gravity、Lucide、Craft、Geist、SF Symbols）
- 新增支持 `IconColor` 和 `IconSize` 的 `RegisterCustomTheme`
- 保留：AMOLED、RGB、Neon Cyber、Neon Purple、Royal Blue、Deep Ocean、Orange、Charcoal、Pearl White、Midnight Blue、Galaxy Purple、Cosmic Violet、Cotton Candy

---

## 许可证

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## 致谢

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — 原始库
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — UI 资产与代码
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — 元素代码、存档管理器
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — Lua 亚克力模糊移植
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — 打包工具

## 贡献者

- **StyearX** — 主要开发者
- **Era** — 贡献者
- **EvilFishess** — 贡献者
