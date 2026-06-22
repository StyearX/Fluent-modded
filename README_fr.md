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

Une version modifiée de la bibliothèque UI [Fluent](https://github.com/dawid-scripts/Fluent) pour Roblox, enrichie de thèmes supplémentaires, d'un support multi-pack d'icônes et d'améliorations pratiques.

---

## Démarrage Rapide

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

## Éléments

Tous les éléments sont ajoutés via `Tab:AddElementType(id, config)`.

| Méthode | Description |
|---|---|
| `AddToggle` | Interrupteur on/off |
| `AddSlider` | Curseur de plage numérique |
| `AddInput` | Zone de saisie de texte |
| `AddDropdown` | Liste déroulante à sélection simple ou multiple, prend en charge `Animated` et `DropdownOutsideWindow` |
| `AddColorpicker` | Sélecteur de couleur avec transparence |
| `AddKeybind` | Raccourci clavier/souris |
| `AddButton` | Bouton cliquable |
| `AddParagraph` | Bloc de texte en lecture seule |
| `AddCode` | Bouton de copie |
| `AddSpace` | Espace |
| `AddGroup` | Regroupe les éléments en colonnes, appelez `:AddElement()` sur le groupe retourné pour obtenir chaque colonne |
| `Addimage` | Image dans la fenêtre, supporte HttpGet et rbxassetid |
| `AddDivider` | Séparateur |
| `AddVideo` | Vidéo dans la fenêtre, supporte rbxassetid |
| `AddAudio` | Audio dans la fenêtre, supporte HttpGet / http url et rbxassetid |
| `AddViewport` | Viewport 3D pour afficher un modèle, prend en charge `SetAspectRatio`, une `Camera` personnalisée et le mode `Interactive` |
| `AddDiscord` | Widget d'invitation Discord avec bouton de rejoindre, prend un `InviteCode` |
| `AddCollapsibleSection` | Section pouvant être ouverte/fermée en cliquant sur son en-tête, utilisée comme `AddSection` mais avec `Open=false` pour démarrer réduite |

---

## Thèmes Personnalisés

Enregistrez un thème personnalisé avant d'appeler `CreateWindow`.

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (voir les thèmes intégrés pour tous les champs)
    IconColor   = Color3.fromRGB(96, 205, 255), -- teinte toutes les icônes
    IconSize    = 18,                            -- taille des icônes en px

    ShineEnabled = true, -- requis pour que le bouton "Animated Window" affecte ce thème
    Shine = {             -- requis si ShineEnabled est true, sinon aucune animation ne sera jouée
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- optionnel, anime la couleur du UIStroke séparément de Shine
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- Changer de thème à l'exécution
Fluent:SetTheme("MyTheme")
```

Un thème avec `ShineEnabled = true` mais sans table `Shine` ne sera pas du tout animé, y compris le stroke shine. Omettez entièrement `ShineEnabled` pour un thème qui ne doit jamais s'animer, quel que soit l'état du bouton "Animated Window".

### Thèmes Intégrés

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## Packs d'Icônes

Tous les packs d'icônes sont chargés à la demande. Utilisez le format `préfixe/nom-icône` partout où une propriété `Icon` est acceptée.

| Pack | Préfixe | Dépôt |
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
-- Exemple d'utilisation
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

Gère la **sauvegarde et le chargement de la position, la taille, l'état de verrouillage et la forme** des boutons flottants. L'UI (Frame, apparence du bouton, forme) est entièrement construite et personnalisée par vous — `FloatingButtonManager` ne gère que la persistance. Enregistrez chaque bouton avec `AddButton` après avoir construit votre UI, puis appelez `BuildConfigSection` pour générer automatiquement un panneau save/load dans votre onglet Settings.

```lua
-- Construisez d'abord votre propre UI, puis enregistrez
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| Paramètre | Description |
|---|---|
| `id` | Identifiant string unique pour ce bouton |
| `frameOrButton` | `Frame` déplaçable (préféré) ou `TextButton` |
| `locked` | Si la position est verrouillée au démarrage |
| `isCircle` | État de la forme, restauré au chargement via `applyShapeCallback` |
| `applyShapeCallback` | `function(isCircle)` optionnelle appelée au chargement pour restaurer la forme |
| `frame` | `Frame` explicite si `frameOrButton` est un enfant de `TextButton` |
---

## MediaManager

Télécharge et met en cache les images, vidéos et sons référencés par `AddImage`, `AddVideo` et `AddAudio` dans un dossier local, pour éviter de les récupérer à nouveau à chaque chargement.

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## Onglets Favoris

Survolez un onglet dans la barre latérale gauche et cliquez sur l'icône de signet pour l'épingler. L'icône devient un signet rempli avec une coche, et l'onglet remonte au-dessus de tous les onglets non favoris, le plus récemment favori en tête. Retirer le favori remet l'onglet à sa position d'origine. Les favoris sont automatiquement persistés via le dossier de `InterfaceManager`, sans configuration supplémentaire.

---

## Journal des Modifications

### v1.4.1
- Correction de l'énumération invalide `Enum.Platform.XBoxOne360` qui provoquait un plantage lors de la détection de l'appareil (cela cassait entièrement la construction de la TitleBar/fenêtre, empêchant aussi l'affichage des thèmes personnalisés)
- Correction des thèmes personnalisés avec `ShineEnabled = true` mais sans table `Shine`, qui n'animaient pas du tout silencieusement
- `SetTheme` ne perd plus l'application de `IconColor`/`IconSize` quand le wrapper du mode RGB s'exécute

### v1.4.0 Refonte
- Ajout de DropdownOutsideWindow
- Correction du Floating Button manager (modifiait le coin de l'UI)
- Refactorisation complète du code original des éléments, simplifié tout en conservant la fonction et l'interface

### v1.3.0
- Suppression du système de langue (défaillant)
- Ajout du nouvel élément `AddAudio`
- Correction de AddImages qui n'affichait pas les images dans la fenêtre
- Correction de AddVideo qui n'affichait pas les vidéos dans la fenêtre
- Suppression du support des url http pour la vidéo

### v1.2.9
- Ajout du système de langue (défaillant)
- Ajout de la désactivation des BackgroundImages (pleinement fonctionnel, activable/désactivable dans l'Interface manager)
- Ajout des nouveaux éléments `AddCode`, `AddImage` (pas encore entièrement fonctionnel), `AddVideo` (ne fonctionne pas), `AddDivider`, `AddSpace`, `AddGroup` — débloquable avec NameSection:AddElementName
- Correction du chargement automatique dans FBM
- Correction du chargement automatique dans Save manager
- Correction du Outline/UIStroke sur le curseur du slider
- Correction de l'impossibilité de modifier UserInfoSubtitle et UserInfoTitle dans UserInfo

### v1.2.0
- Correction du thème Orange affiché comme Ash Gray (bug de clé incorrecte)
- Thème par défaut changé en AMOLED

### v1.1.0
- Suppression de certains thèmes en raison de problèmes de lag, mais ajout des thèmes personnalisés
- Ajout du système d'icônes multi-pack (Solar, Gravity, Lucide, Craft, Geist, SF Symbols)
- Ajout de `RegisterCustomTheme` avec support `IconColor` et `IconSize`
- Conservés : AMOLED, RGB, Neon Cyber, Neon Purple, Royal Blue, Deep Ocean, Orange, Charcoal, Pearl White, Midnight Blue, Galaxy Purple, Cosmic Violet, Cotton Candy

---

## Licence

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## Crédits

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — bibliothèque originale
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — assets UI et code
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — code des éléments, save manager
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — port du flou acrylique en Lua
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — bundler

## Contributeurs

- **StyearX** — Développeur Principal
- **Era** — Contributeur
- **EvilFishess** — Contributeur
