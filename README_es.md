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

Una versión modificada de la librería UI [Fluent](https://github.com/dawid-scripts/Fluent) para Roblox, extendida con temas adicionales, soporte de multi-pack de iconos y mejoras de calidad de uso.

---

## Inicio Rápido

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

## Elementos

Todos los elementos se agregan mediante `Tab:AddElementType(id, config)`.

| Método | Descripción |
|---|---|
| `AddToggle` | Interruptor on/off |
| `AddSlider` | Deslizador de rango numérico |
| `AddInput` | Caja de texto |
| `AddDropdown` | Desplegable de selección simple o múltiple, admite `Animated` y `DropdownOutsideWindow` |
| `AddColorpicker` | Selector de color con transparencia |
| `AddKeybind` | Atajo de teclado/ratón |
| `AddButton` | Botón clicable |
| `AddParagraph` | Bloque de texto solo lectura |
| `AddCode` | Botón de copiar |
| `AddSpace` | Espacio |
| `AddGroup` | Agrupa elementos en columnas, llama a `:AddElement()` sobre el grupo devuelto para obtener cada columna |
| `Addimage` | Imagen en la ventana, soporta HttpGet y rbxassetid |
| `AddDivider` | Divisor |
| `AddVideo` | Video en la ventana, soporta rbxassetid |
| `AddAudio` | Audio en la ventana, soporta HttpGet / http url y rbxassetid |
| `AddViewport` | Viewport 3D para mostrar un modelo, admite `SetAspectRatio`, `Camera` personalizada y modo `Interactive` |
| `AddDiscord` | Widget de invitación de Discord con botón de unirse, recibe un `InviteCode` |
| `AddCollapsibleSection` | Sección que se puede abrir/cerrar al hacer clic en su encabezado, se usa como `AddSection` pero con `Open=false` para empezar contraída |

---

## Temas Personalizados

Registra un tema personalizado antes de llamar a `CreateWindow`.

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (ver temas integrados para todos los campos)
    IconColor   = Color3.fromRGB(96, 205, 255), -- tinte para todos los iconos
    IconSize    = 18,                            -- tamaño del icono en px

    ShineEnabled = true, -- necesario para que el interruptor "Animated Window" afecte a este tema
    Shine = {             -- necesario si ShineEnabled es true, o no se reproducirá ninguna animación
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- opcional, anima el color del UIStroke por separado de Shine
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- Cambiar tema en tiempo de ejecución
Fluent:SetTheme("MyTheme")
```

Un tema con `ShineEnabled = true` pero sin la tabla `Shine` no se animará en absoluto, incluyendo el stroke shine. Omite `ShineEnabled` por completo para un tema que nunca deba animarse, sin importar el estado del interruptor "Animated Window".

### Temas Integrados

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## Packs de Iconos

Todos los packs de iconos se cargan bajo demanda. Usa el formato `prefix/nombre-icono` donde sea que se acepte la propiedad `Icon`.

| Pack | Prefijo | Repositorio |
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
-- Ejemplo de uso
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

Gestiona el **guardado y carga de la posición, tamaño, estado de bloqueo y forma** de los botones flotantes. La UI (Frame, apariencia del botón, forma) es construida y personalizada completamente por ti — `FloatingButtonManager` solo gestiona la persistencia. Registra cada botón con `AddButton` después de construir tu UI, luego llama a `BuildConfigSection` para generar automáticamente un panel de guardar/cargar dentro de la pestaña de ajustes.

```lua
-- Construye tu propia UI primero, luego regístrala
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| Parámetro | Descripción |
|---|---|
| `id` | Identificador string único para este botón |
| `frameOrButton` | `Frame` arrastable (preferido) o `TextButton` |
| `locked` | Si la posición empieza bloqueada |
| `isCircle` | Estado de forma, restaurado al cargar mediante `applyShapeCallback` |
| `applyShapeCallback` | `function(isCircle)` opcional llamada al cargar para restaurar la forma |
| `frame` | `Frame` explícito si `frameOrButton` es hijo de un `TextButton` |
---

## MediaManager

Descarga y almacena en caché imágenes, videos y audios referenciados por `AddImage`, `AddVideo` y `AddAudio` en una carpeta local, para que no se vuelvan a descargar en cada carga.

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## Favoritos de Pestañas

Pasa el cursor sobre una pestaña en la barra lateral izquierda y haz clic en el icono de marcador para fijarla. El icono cambia a un marcador relleno con check, y la pestaña se mueve por encima de todas las no favoritas, con la más recientemente marcada arriba del todo. Quitar el favorito devuelve la pestaña a su posición original. Los favoritos persisten automáticamente a través de la carpeta de `InterfaceManager`, sin configuración adicional.

---

## Registro de Cambios

### v1.4.1
- Corregido el enum inválido `Enum.Platform.XBoxOne360` que provocaba un fallo en la detección de dispositivo (esto rompía por completo la construcción de la TitleBar/ventana, lo que también impedía que los temas personalizados se renderizaran)
- Corregidos los temas personalizados con `ShineEnabled = true` pero sin la tabla `Shine`, que no animaban en absoluto
- `SetTheme` ya no pierde la aplicación de `IconColor`/`IconSize` cuando se ejecuta el wrapper del modo RGB

### v1.4.0 Revisión General
- Añadir DropdownOutsideWindow
- Corregir Floating Button manager (porque cambiaba la esquina de la UI)
- Refactorización completa del código original de los elementos, simplificado pero manteniendo la función y la UI

### v1.3.0
- Eliminar sistema de idiomas (roto)
- Añadir nuevo elemento `AddAudio`
- Corregir AddImages que no mostraba imágenes en la ventana
- Corregir AddVideo que no mostraba videos en la ventana
- Eliminar soporte de http url para video

### v1.2.9
- Añadir sistema de idiomas (roto)
- Añadir opción para deshabilitar BackgroundImages (funcional, activable/desactivable en el Interface manager)
- Añadir nuevos elementos `AddCode`, `AddImage` (aún no completamente funcional), `AddVideo` (no funciona), `AddDivider`, `AddSpace`, `AddGroup` — se pueden desbloquear con NameSection:AddElementName
- Corregir Auto load en FBM
- Corregir Auto Load en Save manager
- Corregir Outline/UIStroke en el pulgar del slider
- Corregir imposibilidad de cambiar UserInfoSubtitle y UserInfoTitle en UserInfo

### v1.2.0
- Corregido el tema Orange que se mostraba como Ash Gray (bug de clave incorrecta)
- Cambiado el tema predeterminado a AMOLED

### v1.1.0
- Eliminar algunos temas por problemas de lag, pero añadir Temas Personalizados
- Añadido sistema de iconos multi-pack (Solar, Gravity, Lucide, Craft, Geist, SF Symbols)
- Añadido `RegisterCustomTheme` con soporte de `IconColor` e `IconSize`
- Conservados: AMOLED, RGB, Neon Cyber, Neon Purple, Royal Blue, Deep Ocean, Orange, Charcoal, Pearl White, Midnight Blue, Galaxy Purple, Cosmic Violet, Cotton Candy

---

## Licencia

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## Créditos

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — librería original
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — activos de UI y código
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — código de elementos, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — puerto de blur acrílico en Lua
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — bundler

## Colaboradores

- **StyearX** — Desarrollador Principal
- **Era** — Colaborador
- **EvilFishess** — Colaborador
