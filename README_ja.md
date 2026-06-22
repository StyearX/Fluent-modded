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

Roblox向けUIライブラリ [Fluent](https://github.com/dawid-scripts/Fluent) の改造版。追加テーマ、マルチアイコンパック対応、使い勝手の向上などを実装しています。

---

## クイックスタート

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

## 要素

すべての要素は `Tab:AddElementType(id, config)` で追加します。

| メソッド | 説明 |
|---|---|
| `AddToggle` | オン/オフスイッチ |
| `AddSlider` | 数値範囲スライダー |
| `AddInput` | テキスト入力ボックス |
| `AddDropdown` | 単一または複数選択ドロップダウン、`Animated` と `DropdownOutsideWindow` に対応 |
| `AddColorpicker` | 透明度付きカラーピッカー |
| `AddKeybind` | キーボード/マウスキーバインド |
| `AddButton` | クリック可能なボタン |
| `AddParagraph` | 読み取り専用テキストブロック |
| `AddCode` | コピーボタン |
| `AddSpace` | スペース |
| `AddGroup` | 要素を列にグループ化。返されたグループの `:AddElement()` を呼び出して各列を取得する |
| `Addimage` | ウィンドウ内画像、HttpGetおよびrbxassetid対応 |
| `AddDivider` | 区切り線 |
| `AddVideo` | ウィンドウ内動画、rbxassetid対応 |
| `AddAudio` | ウィンドウ内音声、HttpGet / http url および rbxassetid 対応 |
| `AddViewport` | モデルを表示する3Dビューポート。`SetAspectRatio`、カスタム `Camera`、`Interactive` モードに対応 |
| `AddDiscord` | 参加ボタン付きのDiscord招待ウィジェット。`InviteCode` を渡す |
| `AddCollapsibleSection` | ヘッダーをクリックして開閉できるセクション。`AddSection` と同様に使用し、`Open=false` で折りたたんだ状態で開始 |

---

## カスタムテーマ

`CreateWindow` を呼び出す前にカスタムテーマを登録してください。

```lua
Fluent:RegisterCustomTheme("MyTheme", {
    Accent      = Color3.fromRGB(96, 205, 255),
    AcrylicMain = Color3.fromRGB(20, 20, 30),
    Text        = Color3.fromRGB(240, 240, 255),
    -- ... (全フィールドは組み込みテーマを参照)
    IconColor   = Color3.fromRGB(96, 205, 255), -- 全アイコンの色を変更
    IconSize    = 18,                            -- アイコンサイズ（px）

    ShineEnabled = true, -- "Animated Window" トグルをこのテーマに反映させるために必須
    Shine = {             -- ShineEnabled が true の場合は必須。指定しないとアニメーションが一切再生されない
        Speed         = 0.5,
        RotationSpeed = 25,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 130)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 180, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 130)),
        }),
    },
    StrokeShine = true, -- オプション。UIStroke の色を Shine とは別にアニメーション
    StrokeDark  = Color3.fromRGB(0, 60, 130),
})

-- 実行中にテーマを切り替える
Fluent:SetTheme("MyTheme")
```

`ShineEnabled = true` を設定しているのに `Shine` テーブルがないテーマは、ストロークシャインも含め一切アニメーションしません。"Animated Window" トグルの状態に関わらず絶対にアニメーションさせたくないテーマには、`ShineEnabled` 自体を省略してください。

### 組み込みテーマ

`AMOLED` · `Ash Gray` · `Blood Red` · `Cyanic` · `Amber Glow` · `Deep Violet` · `Neon Cyber` · `Neon Purple` · `Royal Blue` · `Deep Ocean` · `RGB` · `Orange` · `Charcoal` · `Pearl White` · `Midnight Blue` · `Galaxy Purple` · `Cosmic Violet` · `Cotton Candy`

---

## アイコンパック

すべてのアイコンパックはオンデマンドで読み込まれます。`Icon` プロパティが使用できる場所では `prefix/アイコン名` の形式を使用してください。

| パック | プレフィックス | リポジトリ |
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
-- 使用例
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

浮動ボタンの**位置・サイズ・ロック状態・形状の保存と読み込み**を管理します。UI（Frame、ボタンの外観、形状）はあなたが完全に自由に構築・カスタマイズします。`FloatingButtonManager` は永続化のみを担当します。UI を構築した後に `AddButton` で各ボタンを登録し、`BuildConfigSection` で Settings タブ内に保存/読み込みパネルを自動生成します。

```lua
-- まず自分でUIを構築してから登録する
FloatingButtonManager:SetLibrary(Fluent)
FloatingButtonManager:SetFolder("MyHub/Floating")
FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
FloatingButtonManager:BuildConfigSection(SettingsTab)
FloatingButtonManager:LoadAutoloadConfig()
```

| パラメータ | 説明 |
|---|---|
| `id` | このボタンの一意な文字列ID |
| `frameOrButton` | ドラッグ可能な `Frame`（推奨）または `TextButton` |
| `locked` | 起動時に位置をロックするか |
| `isCircle` | 形状の状態。読み込み時に `applyShapeCallback` で復元される |
| `applyShapeCallback` | 読み込み時に形状を復元するオプションの `function(isCircle)` |
| `frame` | `frameOrButton` が `TextButton` の子の場合の明示的な `Frame` |
---

## MediaManager

`AddImage`・`AddVideo`・`AddAudio` で参照される画像・動画・音声をローカルフォルダにダウンロードしてキャッシュすることで、毎回の再取得を防ぎます。

```lua
MediaManager:SetFolder("MyHub/MediaCache")
```

---

## タブのお気に入り

左サイドバーのタブにカーソルを合わせ、ブックマークアイコンをクリックするとピン留めできます。アイコンがチェック付きのブックマークに変わり、そのタブはお気に入り以外のすべてのタブより上に移動します（最後にお気に入りしたものが最上位）。お気に入りを解除するとタブは元の位置に戻ります。お気に入りは `InterfaceManager` のフォルダを通じて自動的に保存されるため、追加設定は不要です。

---

## 変更履歴

### v1.4.1
- デバイス検出で無効な列挙値 `Enum.Platform.XBoxOne360` によるクラッシュを修正（TitleBar/ウィンドウのビルドが完全に失敗し、カスタムテーマも描画されない原因になっていた）
- `ShineEnabled = true` を設定しているが `Shine` テーブルのないカスタムテーマがアニメーションされない問題を修正
- RGBモードラッパー実行時に `SetTheme` が `IconColor`/`IconSize` の適用を失う問題を修正

### v1.4.0 オーバーホール
- DropdownOutsideWindow を追加
- Floating Button manager を修正（UIコーナーを変更する問題）
- コードを全面的に刷新。機能とUIを維持しながら簡略化

### v1.3.0
- 言語システムを削除（不具合あり）
- 新要素 `AddAudio` を追加
- AddImages がウィンドウ内で画像を表示しない問題を修正
- AddVideo がウィンドウ内で動画を表示しない問題を修正
- 動画のhttp url対応を削除

### v1.2.9
- 言語システムを追加（不具合あり）
- BackgroundImages の無効化を追加（Interface managerで有効/無効切り替え可能）
- 新要素 `AddCode`、`AddImage`（未完全）、`AddVideo`（動作しない）、`AddDivider`、`AddSpace`、`AddGroup` を追加 — NameSection:AddElementName で解放可能
- FBM の自動読み込みを修正
- Save manager の自動読み込みを修正
- スライダーサムのOutline/UIStrokeを修正
- UserInfo で UserInfoSubtitle と UserInfoTitle が変更できない問題を修正

### v1.2.0
- Orangeテーマが Ash Gray として表示されるバグを修正（キーの不一致）
- デフォルトテーマを AMOLED に変更

### v1.1.0
- ラグ問題のためいくつかのテーマを削除、カスタムテーマを追加
- マルチパックアイコンシステムを追加（Solar、Gravity、Lucide、Craft、Geist、SF Symbols）
- `IconColor` および `IconSize` 対応の `RegisterCustomTheme` を追加
- 維持: AMOLED、RGB、Neon Cyber、Neon Purple、Royal Blue、Deep Ocean、Orange、Charcoal、Pearl White、Midnight Blue、Galaxy Purple、Cosmic Violet、Cotton Candy

---

## ライセンス

MIT — [LICENSE](https://github.com/StyearX/Fluent-modded/blob/main/LICENSE)

---

## クレジット

- [dawid-scripts/Fluent](https://github.com/dawid-scripts/Fluent) — オリジナルライブラリ
- [richie0866/remote-spy](https://github.com/richie0866/remote-spy) — UIアセットとコード
- [violin-suzutsuki/LinoriaLib](https://github.com/violin-suzutsuki/LinoriaLib) — 要素コード、セーブマネージャー
- [7kayoh/Acrylic](https://github.com/7kayoh/Acrylic) — Lua アクリルブラーポート
- [Latte Softworks & Kotera](https://discord.gg/rMMByr4qas) — バンドラー

## コントリビューター

- **StyearX** — メイン開発者
- **Era** — コントリビューター
- **EvilFishess** — コントリビューター
