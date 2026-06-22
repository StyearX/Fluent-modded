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

Модифицированная версия UI-библиотеки [Fluent](https://github.com/dawid-scripts/Fluent) для Roblox с дополнительными темами, поддержкой нескольких наборов иконок и улучшениями удобства использования.

---

## Быстрый Старт

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

## Элементы

Все элементы добавляются через `Tab:AddElementType(id, config)`.

| Метод | Описание |
|---|---|
| `AddToggle` | Переключатель вкл/выкл |
| `AddSlider` | Ползунок числового диапазона |
| `AddInput` | Поле ввода текста |
| `AddDropdown` | Выпадающий список одиночного или множественного выбора, поддерживает `Animated` и `DropdownOutsideWindow` |
| `AddColorpicker` | Выбор цвета с прозрачностью |
| `AddKeybind` | Горячая клавиша клавиатуры/мыши |
| `AddButton` | Кликабельная кнопка |
| `AddParagraph` | Блок текста только для чтения |
| `AddCode` | Кнопка копирования |
| `AddSpace` | Пространство |
| `AddGroup` | Группирует элементы по столбцам, вызовите `:AddElement()` у возвращённой группы, чтобы получить каждый столбец |
| `Addimage` | Изображение в окне, поддерживает HttpGet и rbxassetid |
| `AddDivider` | Разделитель |
| `AddVideo` | Видео в окне, поддерживает rbxassetid |
| `AddAudio` | Аудио в окне, поддерживает HttpGet / http url и rbxassetid |
| `AddViewport` | 3D-вьюпорт для отображения модели, поддерживает `SetAspectRatio`, пользовательскую `Camera` и режим `Interactive` |
| `AddDiscord` | Виджет приглашения в Discord с кнопкой присоединения, принимает `InviteCode` |
| `AddCollapsibleSection` | Секция, которую можно открыть/закрыть кликом по заголовку, используется как `AddSection`, но с `Open=false` для старта в свёрнутом виде |

---

## Пользовательские Темы

Зарегистрируйте пользовательскую тему перед вызовом `CreateWindow`.

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (см. встроенные темы для всех полей)
    IconColor   = Color3.fromRGB(96, 205, 255), -- окраска всех иконок
    IconSize    = 18,                            -- размер иконки в px

    ShineEnabled = true, -- обязательно, чтобы переключатель "Animated Window" влиял на эту тему
    Shine = {             -- обязательно, если ShineEnabled = true, иначе анимация не запустится вообще
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- опционально, анимирует цвет UIStroke отдельно от Shine
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- Переключение темы во время выполнения
Fluent:SetTheme("MyTheme")
```

Тема с `ShineEnabled = true`, но без таблицы `Shine`, вообще не будет анимироваться, включая stroke shine. Не указывайте `ShineEnabled` совсем, если тема никогда не должна анимироваться, независимо от переключателя "Animated Window".

### Встроенные Темы

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## Наборы Иконок

Все наборы иконок загружаются по требованию. Используйте формат `prefix/имя-иконки` везде, где принимается свойство `Icon`.

| Набор | Префикс | Репозиторий |
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
-- Пример использования
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

Управляет **сохранением и загрузкой позиции, размера, состояния блокировки и формы** плавающих кнопок. UI (Frame, внешний вид кнопки, форма) полностью создаётся и настраивается вами — `FloatingButtonManager` отвечает только за персистентность. Зарегистрируйте каждую кнопку через `AddButton` после создания UI, затем вызовите `BuildConfigSection` для автоматической генерации панели сохранения/загрузки в вкладке настроек.

```lua
-- Сначала создайте свой UI, затем зарегистрируйте
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| Параметр | Описание |
|---|---|
| `id` | Уникальный строковый идентификатор кнопки |
| `frameOrButton` | Перетаскиваемый `Frame` (предпочтительно) или `TextButton` |
| `locked` | Заблокирована ли позиция при старте |
| `isCircle` | Состояние формы, восстанавливается при загрузке через `applyShapeCallback` |
| `applyShapeCallback` | Опциональная `function(isCircle)`, вызываемая при загрузке для восстановления формы |
| `frame` | Явный `Frame`, если `frameOrButton` является дочерним `TextButton` |
---

## MediaManager

Загружает и кеширует изображения, видео и аудио, на которые ссылаются `AddImage`, `AddVideo` и `AddAudio`, в локальную папку, чтобы не загружать их заново при каждом запуске.

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## Избранные Вкладки

Наведите курсор на вкладку в боковой панели слева и нажмите на значок закладки, чтобы закрепить её. Значок закладки сменится на заполненный с галочкой, и вкладка переместится выше всех незакреплённых, причём последняя добавленная в избранное окажется сверху. Снятие с избранного возвращает вкладку на исходную позицию. Избранное сохраняется автоматически через папку `InterfaceManager`, без дополнительной настройки.

---

## История Изменений

### v1.4.1
- Исправлен недопустимый перечислимый тип `Enum.Platform.XBoxOne360`, вызывавший сбой при определении устройства (это полностью ломало построение TitleBar/окна, из-за чего пользовательские темы тоже переставали отображаться)
- Исправлены пользовательские темы с `ShineEnabled = true`, но без таблицы `Shine` — анимация в них вообще не запускалась
- `SetTheme` больше не теряет применение `IconColor`/`IconSize` при работе обёртки RGB-режима

### v1.4.0 Полная Переработка
- Добавлен DropdownOutsideWindow
- Исправлен Floating Button manager (менял угол интерфейса)
- Полная переработка оригинального кода элементов: упрощён, но сохраняет функциональность и внешний вид

### v1.3.0
- Удалена система языков (нерабочая)
- Добавлен новый элемент `AddAudio`
- Исправлено: AddImages не отображал изображения в окне
- Исправлено: AddVideo не отображал видео в окне
- Удалена поддержка http url для видео

### v1.2.9
- Добавлена система языков (нерабочая)
- Добавлено отключение BackgroundImages (полностью работает, включается/выключается в Interface manager)
- Добавлены новые элементы `AddCode`, `AddImage` (ещё не полностью работает), `AddVideo` (не работает), `AddDivider`, `AddSpace`, `AddGroup` — разблокируются через NameSection:AddElementName
- Исправлена автозагрузка в FBM
- Исправлена автозагрузка в Save manager
- Исправлен Outline/UIStroke на ползунке слайдера
- Исправлена невозможность изменить UserInfoSubtitle и UserInfoTitle в UserInfo

### v1.2.0
- Исправлено: тема Orange отображалась как Ash Gray (несоответствие ключей)
- Тема по умолчанию изменена на AMOLED

### v1.1.0
- Удалены некоторые темы из-за проблем с производительностью, добавлены пользовательские темы
- Добавлена система иконок с несколькими наборами (Solar, Gravity, Lucide, Craft, Geist, SF Symbols)
- Добавлен `RegisterCustomTheme` с поддержкой `IconColor` и `IconSize`
- Сохранены: AMOLED, RGB, Neon Cyber, Neon Purple, Royal Blue, Deep Ocean, Orange, Charcoal, Pearl White, Midnight Blue, Galaxy Purple, Cosmic Violet, Cotton Candy

---

## Лицензия

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## Благодарности

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — оригинальная библиотека
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — UI-ресурсы и код
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — код элементов, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — порт акрилового размытия на Lua
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — сборщик

## Участники

- **StyearX** — Главный Разработчик
- **Era** — Участник
- **EvilFishess** — Участник
