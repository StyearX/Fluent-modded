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

Uma versão modificada da biblioteca de UI [Fluent](https://github.com/dawid-scripts/Fluent) para Roblox, com temas extras, suporte a múltiplos pacotes de ícones e melhorias de usabilidade.

---

## Início Rápido

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

Todos os elementos são adicionados via `Tab:AddElementType(id, config)`.

| Método | Descrição |
|---|---|
| `AddToggle` | Chave on/off |
| `AddSlider` | Controle deslizante de intervalo numérico |
| `AddInput` | Caixa de entrada de texto |
| `AddDropdown` | Menu suspenso de seleção simples ou múltipla, com suporte a `Animated` e `DropdownOutsideWindow` |
| `AddColorpicker` | Seletor de cor com transparência |
| `AddKeybind` | Atalho de teclado/mouse |
| `AddButton` | Botão clicável |
| `AddParagraph` | Bloco de texto somente leitura |
| `AddCode` | Botão de copiar |
| `AddSpace` | Espaço |
| `AddGroup` | Agrupa elementos em colunas, chame `:AddElement()` no grupo retornado para obter cada coluna |
| `Addimage` | Imagem na janela, suporta HttpGet e rbxassetid |
| `AddDivider` | Divisor |
| `AddVideo` | Vídeo na janela, suporta rbxassetid |
| `AddAudio` | Áudio na janela, suporta HttpGet / http url e rbxassetid |
| `AddViewport` | Viewport 3D para exibir um modelo, com suporte a `SetAspectRatio`, `Camera` personalizada e modo `Interactive` |
| `AddDiscord` | Widget de convite do Discord com botão de entrar, recebe um `InviteCode` |
| `AddCollapsibleSection` | Seção que pode ser aberta/fechada clicando no cabeçalho, usada como `AddSection` mas com `Open=false` para começar recolhida |

---

## Temas Personalizados

Registre um tema personalizado antes de chamar `CreateWindow`.

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (veja os temas integrados para todos os campos)
    IconColor   = Color3.fromRGB(96, 205, 255), -- colorir todos os ícones
    IconSize    = 18,                            -- tamanho do ícone em px

    ShineEnabled = true, -- necessário para que a opção "Animated Window" afete este tema
    Shine = {             -- necessário se ShineEnabled for true, senão nenhuma animação ocorre
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- opcional, anima a cor do UIStroke separadamente do Shine
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- Alterar tema em tempo de execução
Fluent:SetTheme("MyTheme")
```

Um tema com `ShineEnabled = true` mas sem a tabela `Shine` não vai animar de jeito nenhum, incluindo o stroke shine. Omita `ShineEnabled` completamente para um tema que nunca deve animar, independente da opção "Animated Window".

### Temas Integrados

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## Pacotes de Ícones

Todos os pacotes de ícones são carregados sob demanda. Use o formato `prefixo/nome-icone` em qualquer lugar que aceite a propriedade `Icon`.

| Pacote | Prefixo | Repositório |
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
-- Exemplo de uso
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

Gerencia o **salvamento e carregamento da posição, tamanho, estado de bloqueio e forma** dos botões flutuantes. A UI (Frame, aparência do botão, forma) é totalmente construída e personalizada por você — o `FloatingButtonManager` cuida apenas da persistência. Registre cada botão com `AddButton` após construir sua UI, depois chame `BuildConfigSection` para gerar automaticamente um painel de salvar/carregar dentro da aba de configurações.

```lua
-- Construa sua própria UI primeiro, depois registre
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| Parâmetro | Descrição |
|---|---|
| `id` | Identificador string único para este botão |
| `frameOrButton` | `Frame` arrastável (preferido) ou `TextButton` |
| `locked` | Se a posição começa bloqueada |
| `isCircle` | Estado da forma, restaurado ao carregar via `applyShapeCallback` |
| `applyShapeCallback` | `function(isCircle)` opcional chamada ao carregar para restaurar a forma |
| `frame` | `Frame` explícito se `frameOrButton` for filho de um `TextButton` |
---

## MediaManager

Baixa e armazena em cache imagens, vídeos e áudios referenciados por `AddImage`, `AddVideo` e `AddAudio` em uma pasta local, evitando que sejam buscados novamente a cada carregamento.

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## Favoritos de Aba

Passe o mouse sobre uma aba na barra lateral esquerda e clique no ícone de marcador para fixá-la. O ícone muda para um marcador preenchido com check, e a aba sobe acima de todas as não favoritadas, com a mais recentemente favoritada no topo. Desmarcar retorna a aba à posição original. Os favoritos persistem automaticamente pela pasta do `InterfaceManager`, sem configuração extra.

---

## Histórico de Mudanças

### v1.4.1
- Corrigido enum inválido `Enum.Platform.XBoxOne360` que travava a detecção de dispositivo (isso quebrava totalmente a construção da TitleBar/janela, o que também impedia temas personalizados de renderizar)
- Corrigido temas personalizados com `ShineEnabled = true` mas sem a tabela `Shine`, que não animavam de forma alguma
- `SetTheme` não perde mais a aplicação de `IconColor`/`IconSize` quando o wrapper do modo RGB é executado

### v1.4.0 Revisão Geral
- Adicionar DropdownOutsideWindow
- Corrigir Floating Button manager (porque alterava o canto da UI)
- Refatoração completa do código original dos elementos, simplificado mas mantendo função e interface

### v1.3.0
- Remover sistema de idiomas (com defeito)
- Adicionar novo elemento `AddAudio`
- Corrigir AddImages que não exibia imagens na janela
- Corrigir AddVideo que não exibia vídeos na janela
- Remover suporte a http url para vídeo

### v1.2.9
- Adicionar sistema de idiomas (com defeito)
- Adicionar desativação de BackgroundImages (totalmente funcional, pode ser ativado ou desativado no Interface manager)
- Adicionar novos elementos `AddCode`, `AddImage` (ainda não totalmente funcional), `AddVideo` (não funciona), `AddDivider`, `AddSpace`, `AddGroup` — pode ser desbloqueado com NameSection:AddElementName
- Corrigir Auto load no FBM
- Corrigir Auto Load no Save manager
- Corrigir Outline/UIStroke no polegar do slider
- Corrigir impossibilidade de alterar UserInfoSubtitle e UserInfoTitle no UserInfo

### v1.2.0
- Corrigido tema Orange exibido como Ash Gray (bug de chave incorreta)
- Tema padrão alterado para AMOLED

### v1.1.0
- Remover alguns temas por problemas de lag, mas adicionar Temas Personalizados
- Adicionado sistema de ícones multi-pack (Solar, Gravity, Lucide, Craft, Geist, SF Symbols)
- Adicionado `RegisterCustomTheme` com suporte a `IconColor` e `IconSize`
- Mantidos: AMOLED, RGB, Neon Cyber, Neon Purple, Royal Blue, Deep Ocean, Orange, Charcoal, Pearl White, Midnight Blue, Galaxy Purple, Cosmic Violet, Cotton Candy

---

## Licença

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## Créditos

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — biblioteca original
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — assets de UI e código
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — código de elementos, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — port de blur acrílico em Lua
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — bundler

## Colaboradores

- **StyearX** — Desenvolvedor Principal
- **Era** — Colaborador
- **EvilFishess** — Colaborador
