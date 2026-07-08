local a, b = {
    {
        1,
        "ModuleScript",
        {"MainModule"},
        {
            {18, "ModuleScript", {"Creator"}},
            {28, "ModuleScript", {"Icons"}},
            {
                47,
                "ModuleScript",
                {"Themes"},
                {
                    {49, "ModuleScript", {"Dark"}},
                    {51, "ModuleScript", {"Light"}},
                    {50, "ModuleScript", {"Darker"}},
                    {52, "ModuleScript", {"Blood Red"}},
                    {53, "ModuleScript", {"Neon"}},
                    {48, "ModuleScript", {"Amethyst"}},
                    {54, "ModuleScript", {"Ocean"}},
                    {55, "ModuleScript", {"Midnight"}},
                    {56, "ModuleScript", {"Sapphire"}},
                    {57, "ModuleScript", {"Galaxy"}},
                    {58, "ModuleScript", {"Cosmic"}},
                }
            },
            {
                19,
                "ModuleScript",
                {"Elements"},
                {
                    {21, "ModuleScript", {"Colorpicker"}},
                    {27, "ModuleScript", {"Toggle"}},
                    {23, "ModuleScript", {"Input"}},
                    {20, "ModuleScript", {"Button"}},
                    {25, "ModuleScript", {"Paragraph"}},
                    {61, "ModuleScript", {"Code"}},
                    {22, "ModuleScript", {"Dropdown"}},
                    {26, "ModuleScript", {"Slider"}},
                    {24, "ModuleScript", {"Keybind"}},
                    {62, "ModuleScript", {"Group"}},
                    {63, "ModuleScript", {"Space"}},
                    {64, "ModuleScript", {"Divider"}},
                    {59, "ModuleScript", {"Image"}},
                    {60, "ModuleScript", {"Video"}},
                    {65, "ModuleScript", {"Audio"}}
                }
            },
            {
                29,
                "Folder",
                {"Packages"},
                {
                    {
                        30,
                        "ModuleScript",
                        {"Flipper"},
                        {
                            {33, "ModuleScript", {"GroupMotor"}},
                            {46, "ModuleScript", {"isMotor.spec"}},
                            {39, "ModuleScript", {"Signal"}},
                            {40, "ModuleScript", {"Signal.spec"}},
                            {45, "ModuleScript", {"isMotor"}},
                            {36, "ModuleScript", {"Instant.spec"}},
                            {44, "ModuleScript", {"Spring.spec"}},
                            {42, "ModuleScript", {"SingleMotor.spec"}},
                            {38, "ModuleScript", {"Linear.spec"}},
                            {31, "ModuleScript", {"BaseMotor"}},
                            {43, "ModuleScript", {"Spring"}},
                            {35, "ModuleScript", {"Instant"}},
                            {37, "ModuleScript", {"Linear"}},
                            {41, "ModuleScript", {"SingleMotor"}},
                            {34, "ModuleScript", {"GroupMotor.spec"}},
                            {32, "ModuleScript", {"BaseMotor.spec"}}
                        }
                    }
                }
            },
            {
                2,
                "ModuleScript",
                {"Acrylic"},
                {
                    {3, "ModuleScript", {"AcrylicBlur"}},
                    {5, "ModuleScript", {"CreateAcrylic"}},
                    {6, "ModuleScript", {"Utils"}},
                    {4, "ModuleScript", {"AcrylicPaint"}}
                }
            },
            {
                7,
                "Folder",
                {"Components"},
                {
                    {9, "ModuleScript", {"Button"}},
                    {12, "ModuleScript", {"Notification"}},
                    {13, "ModuleScript", {"Section"}},
                    {17, "ModuleScript", {"Window"}},
                    {14, "ModuleScript", {"Tab"}},
                    {10, "ModuleScript", {"Dialog"}},
                    {8, "ModuleScript", {"Assets"}},
                    {16, "ModuleScript", {"TitleBar"}},
                    {15, "ModuleScript", {"Textbox"}},
                    {11, "ModuleScript", {"Element"}}
                }
            }
        }
    }
}

local Animation
do
    local _RunService = game:GetService("RunService")
    local _state = setmetatable({}, {__mode = "k"})
    Animation = {}
    function Animation.Apply(theme, root, shineEnabled)
        if not root then return end
        local st = _state[root]
        if st and st.conn then pcall(function() st.conn:Disconnect() end) end
        st = {conn = nil, gradients = {}, strokes = {}}
        _state[root] = st
        if not theme or not shineEnabled or not theme.ShineEnabled or not theme.Shine then return end
        local ShineConfig   = theme.Shine
        local Speed         = ShineConfig.Speed         or 0.5
        local RotationSpeed = ShineConfig.RotationSpeed or 25
        local ColorSeq      = ShineConfig.ColorSequence
        local StrokeShineOn = theme.StrokeShine
        local StrokeFrom    = theme.StrokeDark or theme.AcrylicBorder
        local StrokeTo      = theme.Accent
        local _gradients, _strokes = st.gradients, st.strokes
        for _, obj in ipairs(root:GetDescendants()) do
            if obj:IsA("UIGradient") then
                table.insert(_gradients, obj)
            elseif obj:IsA("UIStroke") and StrokeShineOn then
                table.insert(_strokes, obj)
            end
        end
        if #_gradients == 0 and #_strokes == 0 then return end
        st.conn = _RunService.RenderStepped:Connect(function(dt)
            for i = #_gradients, 1, -1 do
                local obj = _gradients[i]
                if obj.Parent then
                    local t = (obj:GetAttribute("_t") or 0) + dt * Speed
                    obj:SetAttribute("_t", t)
                    obj.Rotation = (t * RotationSpeed) % 360
                    obj.Offset = Vector2.new(math.sin(t * 0.6) * 0.18, obj.Offset.Y)
                    if ColorSeq then obj.Color = ColorSeq end
                else
                    table.remove(_gradients, i)
                end
            end
            if StrokeFrom and StrokeTo then
                for i = #_strokes, 1, -1 do
                    local obj = _strokes[i]
                    if obj.Parent then
                        local t = (obj:GetAttribute("_t") or 0) + dt * Speed
                        obj:SetAttribute("_t", t)
                        local pulse = (math.sin(t) + 1) / 2
                        obj.Thickness = 1.25 + pulse * 1.25
                        obj.Color = StrokeFrom:Lerp(StrokeTo, pulse)
                    else
                        table.remove(_strokes, i)
                    end
                end
            end
        end)
    end
end
if not Animation then Animation = {Apply = function() end} end

local aa = {
    function()
        local c, d, e, f, g = b(1)
        local h, i, j, k, l, m =
            game:GetService "Lighting",
            game:GetService "RunService",
            game:GetService "Players".LocalPlayer,
            game:GetService "UserInputService",
            game:GetService "TweenService",
            game:GetService "Workspace".CurrentCamera
        local n, o = j:GetMouse(), d
        local p, q, r, s = e(o.Creator), e(o.Elements), e(o.Acrylic), o.Components
        local t, u, v = e(s.Notification), p.New, protectgui or (syn and syn.protect_gui) or function()
                end
        local w = u("ScreenGui", {Parent = i:IsStudio() and j.PlayerGui or game:GetService "CoreGui"})
        v(w)
        local sw = u("ScreenGui", {Parent = i:IsStudio() and j.PlayerGui or game:GetService "CoreGui", DisplayOrder = 1, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
        v(sw)
        local nw = u("ScreenGui", {Parent = i:IsStudio() and j.PlayerGui or game:GetService "CoreGui", DisplayOrder = 999999, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
        v(nw)
        t:Init(nw)
        local x = {
            Version = "1.5.1",
            Name = "FluentPro",
            OpenFrames = {},
            Options = {},
            Themes = e(o.Themes).Names,
            Window = nil,
            WindowFrame = nil,
            Unloaded = false,
            Theme = "Blood Red",
            FischBypass = (game and game.GameId == 5750914919) or false,
            DialogOpen = false,
            UseAcrylic = false,
            Acrylic = false,
            Transparency = true,
            MinimizeKeybind = nil,
            MinimizeKey = Enum.KeyCode.LeftControl,
            GUI = w,
            ScrollGUI = sw,
            PopupGUI = nw,
            ErrorHandler = nil,
            ShineEnabled = true,
            WindowTransparent = false,
            ButtonGradients = {
                Background = ColorSequence.new {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(7, 42, 82)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 76, 142)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(21, 97, 181))
                },
                Stroke = ColorSequence.new {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 120, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 40, 80))
                }
            },
        }
        function x.SetErrorHandler(y, z)
            x.ErrorHandler = z
        end
        local function fallbackError(_ftitle, _fmsg)
            pcall(function()
                local lp = game:GetService("Players").LocalPlayer
                local sg = Instance.new("ScreenGui")
                sg.Name = "BFErrorNotify"
                sg.ResetOnSpawn = false
                sg.DisplayOrder = 99999
                sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                sg.Parent = (lp and lp:FindFirstChildOfClass("PlayerGui")) or game:GetService("CoreGui")
                local fr = Instance.new("Frame")
                fr.Size = UDim2.fromOffset(310, 76)
                fr.Position = UDim2.new(1, -320, 0, 24)
                fr.BackgroundColor3 = Color3.fromRGB(18, 6, 6)
                fr.BorderSizePixel = 0
                fr.Parent = sg
                Instance.new("UICorner", fr).CornerRadius = UDim.new(0, 8)
                local stroke = Instance.new("UIStroke", fr)
                stroke.Color = Color3.fromRGB(220, 55, 55)
                stroke.Thickness = 1.5
                local stripe = Instance.new("Frame", fr)
                stripe.Size = UDim2.new(0, 3, 1, -14)
                stripe.Position = UDim2.new(0, 7, 0, 7)
                stripe.BackgroundColor3 = Color3.fromRGB(220, 55, 55)
                stripe.BorderSizePixel = 0
                Instance.new("UICorner", stripe).CornerRadius = UDim.new(1, 0)
                local t1 = Instance.new("TextLabel", fr)
                t1.Size = UDim2.new(1, -20, 0, 18)
                t1.Position = UDim2.new(0, 18, 0, 8)
                t1.BackgroundTransparency = 1
                t1.Text = "[BetterFluent] " .. tostring(_ftitle)
                t1.TextColor3 = Color3.fromRGB(255, 80, 80)
                t1.TextSize = 12
                t1.Font = Enum.Font.GothamBold
                t1.TextXAlignment = Enum.TextXAlignment.Left
                local t2 = Instance.new("TextLabel", fr)
                t2.Size = UDim2.new(1, -20, 0, 38)
                t2.Position = UDim2.new(0, 18, 0, 28)
                t2.BackgroundTransparency = 1
                t2.Text = tostring(_fmsg)
                t2.TextColor3 = Color3.fromRGB(220, 185, 185)
                t2.TextSize = 11
                t2.Font = Enum.Font.Gotham
                t2.TextWrapped = true
                t2.TextXAlignment = Enum.TextXAlignment.Left
                game:GetService("Debris"):AddItem(sg, 10)
            end)
        end
        function x.SafeCallback(y, z, ...)
            if not z then return end
            local A, B = pcall(z, ...)
            if not A then
                local C, D = B:find ":%d+: "
                local msg = D and B:sub(D + 1) or B
                if x.ErrorHandler then pcall(x.ErrorHandler, msg, B) end
                local notifyOk = pcall(function()
                    x:Notify {Title = "Callback error", Content = msg, Type = "Error", Duration = 5}
                end)
                if not notifyOk then
                    fallbackError("Callback error", msg)
                end
            end
        end
        function x.Round(y, z, A)
            if A == 0 then
                return math.floor(z)
            end
            z = tostring(z)
            return z:find "%." and tonumber(z:sub(1, z:find "%." + A)) or z
        end
        local IconCache = {}
        local IconURLs = {
            lucide    = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/lucide/dist/Icons.lua",
            gravity   = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/gravity/dist/Icons.lua",
            solar     = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/solar/dist/Icons.lua",
            sfsymbols = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/sfsymbols/dist/Icons.lua",
            craft     = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/craft/dist/Icons.lua",
            geist     = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/geist/dist/Icons.lua",
            hero      = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/hero/dist/Icons.lua",
            gmi       = "https://raw.githubusercontent.com/StyearX/Icons/refs/heads/main/GoogleMaterialIcons/dist/Icons.lua",
        }
        local function LoadIconSource(prefix)
            if IconCache[prefix] then return IconCache[prefix] end
            local url = IconURLs[prefix]
            if not url then return nil end
            local ok, result = pcall(function()
                return loadstring(game:HttpGet(url, true))()
            end)
            if not ok then
                warn("[Icons] Failed to load '" .. prefix .. "': " .. tostring(result))
                return nil
            end
            if result and result.Icons then
                IconCache[prefix] = { _sprites = result.Spritesheets, _icons = result.Icons }
            else
                IconCache[prefix] = result
            end
            return IconCache[prefix]
        end
        function x.GetIcon(z, A)
            if A == nil or A == "" then return nil end
            local prefix, name = A:match("^(.-)%/(.+)$")
            if prefix then
                local src = LoadIconSource(prefix)
                if not src then return nil end
                if src._icons then
                    local entry = src._icons[name]
                    if not entry then return nil end
                    local sheetId = src._sprites[tostring(entry.Image)]
                    return { Image = sheetId, ImageRectOffset = entry.ImageRectPosition, ImageRectSize = entry.ImageRectSize }
                else
                    return src[name]
                end
            else
                local lucide = LoadIconSource("lucide")
                if lucide and lucide[A] then return lucide[A] end
                if lucide and lucide["lucide-" .. A] then return lucide["lucide-" .. A] end
                local legacy = e(o.Icons).assets
                if legacy and legacy["lucide-" .. A] then return legacy["lucide-" .. A] end
                return nil
            end
        end
        local z = {}
        z.__index = z
        z.__namecall = function(A, B, ...)
            local fn = z[B]
            if not fn and type(B) == "string" and not B:match("^Add") then
                fn = z["Add" .. B]
            end
            if fn then return fn(A, ...) end
        end

        local _marqueeConns = {}
        local _TS_svc = game:GetService("TextService")
        local function _measureText(label)
            local w = 0
            pcall(function() w = label.TextBounds.X end)
            if w <= 0 then
                pcall(function()
                    local params = Instance.new("GetTextBoundsParams")
                    params.Text = label.Text
                    params.Size = label.TextSize
                    params.Font = label.FontFace
                    params.Width = math.huge
                    w = _TS_svc:GetTextBoundsAsync(params).X
                end)
            end
            if w <= 0 then
                pcall(function()
                    local p2 = _TS_svc:GetTextSize(
                        label.Text, label.TextSize, label.Font, Vector2.new(9999, 9999))
                    w = p2.X
                end)
            end
            return w
        end
        local function StartMarquee(label, containerWidth)
            if not label then return end
            local animKey = tostring(label) .. "_mq"
            if _marqueeConns[animKey] then
                pcall(function() _marqueeConns[animKey]:Disconnect() end)
                _marqueeConns[animKey] = nil
            end
            local function tryStart(attempt)
                attempt = attempt or 0
                if not label or not label.Parent then
                    if attempt < 30 then
                        task.delay(0.2, function() tryStart(attempt + 1) end)
                    end
                    return
                end
                local parent = label.Parent
                local avail = containerWidth
                if not avail or avail <= 0 then
                    avail = label.AbsoluteSize.X
                    if avail <= 0 then avail = parent and parent.AbsoluteSize.X or 0 end
                end
                if avail <= 2 and attempt < 30 then
                    task.delay(0.2, function() tryStart(attempt + 1) end); return
                end
                local fullW = _measureText(label)
                if fullW <= 0 and attempt < 30 then
                    task.delay(0.2, function() tryStart(attempt + 1) end); return
                end
                if fullW <= avail + 2 then
                    label.TextTruncate = Enum.TextTruncate.AtEnd
                    local baseY = label.Position.Y
                    label.Position = UDim2.new(label.Position.X.Scale, 0, baseY.Scale, baseY.Offset)
                    return
                end
                pcall(function() parent.ClipsDescendants = true end)
                label.TextTruncate = Enum.TextTruncate.None
                local scrollDist = fullW - avail + 12
                local speed, pause = 44, 1.8
                local baseY  = label.Position.Y
                local baseXS = label.Position.X.Scale
                label.Position = UDim2.new(baseXS, 0, baseY.Scale, baseY.Offset)
                local phase, timer = 0, 0
                local conn
                conn = game:GetService("RunService").Heartbeat:Connect(function(dt)
                    if not label or not label.Parent then
                        conn:Disconnect(); _marqueeConns[animKey] = nil; return
                    end
                    if phase == 0 then
                        timer += dt; if timer >= pause then timer = 0; phase = 1 end
                    elseif phase == 1 then
                        local nxt = math.max(label.Position.X.Offset - speed * dt, -scrollDist)
                        label.Position = UDim2.new(baseXS, nxt, baseY.Scale, baseY.Offset)
                        if nxt <= -scrollDist then phase = 2; timer = 0 end
                    elseif phase == 2 then
                        timer += dt; if timer >= pause then timer = 0; phase = 3 end
                    else
                        local nxt = math.min(label.Position.X.Offset + speed * dt, 0)
                        label.Position = UDim2.new(baseXS, nxt, baseY.Scale, baseY.Offset)
                        if nxt >= 0 then phase = 0; timer = 0 end
                    end
                end)
                _marqueeConns[animKey] = conn
            end
            task.delay(0.5, function() tryStart(0) end)
            local _resizeConn
            pcall(function()
                _resizeConn = label:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                    if not _marqueeConns[animKey] then
                        tryStart(0)
                    end
                end)
            end)
        end
        x.StartMarquee = StartMarquee
        for A, B in ipairs(q) do
            z["Add" .. B.__type] = function(C, D, E)
                local _container   = C.Container
                local _type        = C.Type
                local _scrollFrame = C.ScrollFrame
                B.Container   = _container
                B.Type        = _type
                B.ScrollFrame = _scrollFrame
                B.Library     = x
                local result = B:New(D, E)
                B.Container   = nil
                B.Type        = nil
                B.ScrollFrame = nil
                if result and result.Frame then
                    C._elementCount = (C._elementCount or 0) + 1
                    result.Frame.LayoutOrder = C._elementCount
                end
                if result and result.SetSection then
                    result:SetSection(C)
                end
                if result and E and type(E) == "table" and E.Icon and x.GetIcon then
                    local ic = x:GetIcon(E.Icon)
                    if ic and result.Frame then
                        local icImg = ic
                        local ico = Instance.new("ImageLabel")
                        ico.Name = "_ElemIcon"
                        ico.BackgroundTransparency = 1
                        ico.Size = UDim2.fromOffset(15, 15)
                        ico.Position = UDim2.new(0, -3, 0.5, 0)
                        ico.AnchorPoint = Vector2.new(1, 0.5)
                        ico.ZIndex = 2
                        if type(icImg) == "table" then
                            ico.Image = icImg.Image or ""
                            ico.ImageRectOffset = icImg.ImageRectOffset or Vector2.new(0,0)
                            ico.ImageRectSize  = icImg.ImageRectSize  or Vector2.new(0,0)
                        else
                            ico.Image = tostring(icImg)
                        end
                        if E.IconColor then
                            ico.ImageColor3 = E.IconColor
                        else
                            local Creator = x.Creator or p
                            pcall(function()
                                Creator.AddTag(ico, {ImageColor3 = "Text"})
                            end)
                        end
                        if result.LabelHolder then
                            ico.Parent = result.Frame
                            result.LabelHolder.Position = UDim2.fromOffset(26, 0)
                        end
                    end
                end
                local win = x.Window
                if win and win.AllElements and result then
                    local frame = result.Frame or result
                    local label = (type(D) == "string" and D) or (type(E) == "table" and (E.Title or "")) or (type(D) == "table" and (D.Title or "")) or ""
                    if frame and label ~= "" then
                        win.AllElements[frame] = tostring(label):lower()
                    end
                end
                return result
            end
            z[B.__type] = z["Add" .. B.__type]
        end

        local function _addElementToSection(C, result)
            if result and result.Frame then
                C._elementCount = (C._elementCount or 0) + 1
                result.Frame.LayoutOrder = C._elementCount
                local win = x.Window
                if win and win.AllElements then
                    win.AllElements[result.Frame] = ""
                end
            end
            return result
        end

        z["AddDiscord"] = function(C, cfg)
            cfg = (type(cfg) == "table") and cfg or {}
            local parent = C.Container
            if not parent then return end
            local u = p.New
            local inviteCode = tostring(cfg.InviteCode or cfg.Invite or ""):match("[%w%-]+$") or ""
            local wrap = u("Frame",{
                Size=UDim2.new(1,0,0,78),
                BackgroundTransparency=0.82,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            u("UICorner",{CornerRadius=UDim.new(0,12),Parent=wrap})
            u("UIStroke",{Transparency=0.45,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            local _discordAccent = p.GetThemeProperty("DiscordJoinButton") or Color3.fromRGB(88,101,242)
            local iconBg = u("Frame",{
                Size=UDim2.fromOffset(50,50),
                Position=UDim2.new(0,12,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundColor3=_discordAccent,
                Parent=wrap,
                ClipsDescendants=true,
            })
            local iconBgCorner = u("UICorner",{CornerRadius=UDim.new(0.2,0),Parent=iconBg})
            local iconImg = u("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Parent=iconBg})
            local iconImgCorner = u("UICorner",{CornerRadius=UDim.new(0.2,0),Parent=iconImg})
            local defaultIco = x.GetIcon and x:GetIcon("solar/chat-round-bold")
            if defaultIco and type(defaultIco)=="table" then
                iconImg.Image=defaultIco.Image or ""
                iconImg.ImageRectOffset=defaultIco.ImageRectOffset or Vector2.new()
                iconImg.ImageRectSize=defaultIco.ImageRectSize or Vector2.new()
                iconImg.ImageColor3=Color3.fromRGB(255,255,255)
            end
            local nameLabel = u("TextLabel",{
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                Text="Loading...",
                TextSize=13,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                Size=UDim2.new(1,-140,0,16),
                Position=UDim2.new(0,70,0,13),
                ThemeTag={TextColor3="Text"},
                Parent=wrap,
            })
            local memberLabel = u("TextLabel",{
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                Text="Fetching info...",
                TextSize=11,
                TextXAlignment=Enum.TextXAlignment.Left,
                BackgroundTransparency=1,
                Size=UDim2.new(1,-140,0,13),
                Position=UDim2.new(0,70,0,31),
                ThemeTag={TextColor3="SubText"},
                Parent=wrap,
            })
            local joinBtn = u("TextButton",{
                Text="Join",
                Size=UDim2.fromOffset(52,28),
                Position=UDim2.new(1,-12,0.5,0),
                AnchorPoint=Vector2.new(1,0.5),
                BackgroundColor3=_discordAccent,
                TextColor3=Color3.fromRGB(255,255,255),
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                TextSize=12,
                Parent=wrap,
            })
            u("UICorner",{CornerRadius=UDim.new(0,8),Parent=joinBtn})
            local dot = u("Frame",{
                Size=UDim2.fromOffset(7,7),
                Position=UDim2.new(0,70,0,51),
                BackgroundColor3=Color3.fromRGB(80,80,90),
                BorderSizePixel=0,
                Parent=wrap,
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=dot})
            local onlineLabel = u("TextLabel",{
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                Text="",
                TextSize=10,
                TextXAlignment=Enum.TextXAlignment.Left,
                BackgroundTransparency=1,
                Size=UDim2.new(1,-100,0,12),
                Position=UDim2.new(0,82,0,47),
                ThemeTag={TextColor3="SubText"},
                Parent=wrap,
            })
            local function applyFallbackLetter(guildName)
                iconImg.Image = ""
                iconBg.BackgroundTransparency = 0
                iconBgCorner.CornerRadius = UDim.new(0.2, 0)
                iconImgCorner.CornerRadius = UDim.new(0.2, 0)
                local existing = iconBg:FindFirstChild("_FbLbl")
                if existing then existing:Destroy() end
                u("TextLabel",{
                    Name="_FbLbl",
                    Size=UDim2.fromScale(1,1),
                    BackgroundTransparency=1,
                    Text=(guildName or "?"):sub(1,1):upper(),
                    TextColor3=Color3.fromRGB(255,255,255),
                    TextSize=22,
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Bold),
                    Parent=iconBg,
                })
            end
            local function fetchData(code)
                if code == "" then
                    nameLabel.Text = "Invalid Invite"
                    memberLabel.Text = "Check your invite code"
                    return
                end
                nameLabel.Text = "Loading..."
                memberLabel.Text = "Fetching info..."
                dot.BackgroundColor3 = Color3.fromRGB(80,80,90)
                onlineLabel.Text = ""
                task.spawn(function()
                    local DiscordAPI = "https://discord.com/api/v10/invites/" .. code .. "?with_counts=true&with_expiration=true"
                    local ok, data = pcall(function()
                        local RS = game:GetService("ReplicatedStorage")
                        local remote = RS:FindFirstChild("GetDiscordInviteData")
                        if remote then return remote:InvokeServer(code) end
                        local req = (syn and syn.request) or (http and http.request) or http_request or request
                        if req then
                            local res = req({Url=DiscordAPI, Method="GET", Headers={["User-Agent"]="RobloxBot/1.0",["Accept"]="application/json"}})
                            if res and res.Body and #res.Body > 2 then
                                return game:GetService("HttpService"):JSONDecode(res.Body)
                            end
                        end
                        local body = game:GetService("HttpService"):GetAsync(DiscordAPI, true)
                        if body then return game:GetService("HttpService"):JSONDecode(body) end
                    end)
                    if ok and data and data.guild then
                        local guild = data.guild
                        nameLabel.Text = guild.name or "Unknown Server"
                        memberLabel.Text = data.approximate_member_count and (tostring(data.approximate_member_count).." members") or "Members unavailable"
                        onlineLabel.Text = data.approximate_presence_count and (tostring(data.approximate_presence_count).." online") or ""
                        dot.BackgroundColor3 = Color3.fromRGB(67,181,129)
                        local ih = guild.icon
                        if ih and ih ~= "" then
                            local iconUrl = "https://cdn.discordapp.com/icons/"..tostring(guild.id).."/"..ih..".png?size=128"
                            local loadOk, asset = pcall(function()
                                return x.MediaManager:Image(iconUrl)
                            end)
                            if loadOk and asset and asset ~= "" then
                                iconImg.Image = asset
                                iconImg.ImageColor3 = Color3.fromRGB(255,255,255)
                                iconBg.BackgroundTransparency = 1
                                iconBgCorner.CornerRadius = UDim.new(1, 0)
                                iconImgCorner.CornerRadius = UDim.new(1, 0)
                                local existing = iconBg:FindFirstChild("_FbLbl")
                                if existing then existing:Destroy() end
                            else
                                applyFallbackLetter(guild.name)
                            end
                        else
                            applyFallbackLetter(guild.name)
                        end
                    else
                        nameLabel.Text = "Failed to Load"
                        memberLabel.Text = "Check invite code or connection"
                        dot.BackgroundColor3 = Color3.fromRGB(240,71,71)
                        onlineLabel.Text = ""
                    end
                end)
            end
            joinBtn.MouseButton1Click:Connect(function()
                if inviteCode ~= "" then
                    local full = "https://discord.gg/" .. inviteCode
                    pcall(function() setclipboard(full) end)
                    x:Notify({Title="Discord",Content="Copied: "..full,Type="Info",Duration=3})
                end
            end)
            fetchData(inviteCode)
            local mod = {Frame=wrap, Type="Discord"}
            function mod:SetInvite(code)
                inviteCode = code:match("[%w%-]+$") or ""
                fetchData(inviteCode)
            end
            function mod:Destroy() wrap:Destroy() end
            return _addElementToSection(C, mod)
        end

        z.AddSection = function(self, Title, IconKey)
            self._elementCount = (self._elementCount or 0) + 1
            local _order = self._elementCount
            local built = e(s.Section)(Title, IconKey, self.Container)
            local sectionObj = {
                Type = "Section",
                Container = built.Container,
                ScrollFrame = self.ScrollFrame or self.Container,
            }
            built.Root.LayoutOrder = _order
            setmetatable(sectionObj, z)
            return sectionObj
        end

        z.AddCollapsibleSection = function(self, A, iconKey, openState)
            local cfg = {}
            if type(A) == "table" then
                cfg = A
            else
                cfg.Title = A
                if type(iconKey) == "boolean" then
                    cfg.Open = iconKey
                else
                    cfg.Icon = iconKey
                    if openState ~= nil then cfg.Open = openState end
                end
            end
            local saveIdx = cfg.Idx
            self._elementCount = (self._elementCount or 0) + 1
            local _order = self._elementCount
            local title2     = tostring(cfg.Title or "Section")
            local iconKey2   = cfg.Icon
            local startOpen2 = cfg.Open ~= false
            local pad2 = 5
            local ts2 = game:GetService("TweenService")

            local outerWrap2 = u("Frame", {
                Size = UDim2.new(1, 0, 0, 26),
                BackgroundTransparency = 1,
                LayoutOrder = _order,
                Parent = self.Container,
            })
            local header2 = u("TextButton", {
                Size = UDim2.new(1, 0, 0, 26),
                BackgroundTransparency = 1,
                Text = "",
                AutoButtonColor = false,
                Parent = outerWrap2,
            })
            local titleOffX2 = iconKey2 and 22 or 0
            if iconKey2 then
                local hIco2 = u("ImageLabel", {
                    Name = "_SecIcon",
                    Size = UDim2.fromOffset(14, 14),
                    Position = UDim2.fromOffset(0, 3),
                    BackgroundTransparency = 1,
                    ImageColor3 = Color3.fromRGB(255, 255, 255),
                    ImageTransparency = 0.25,
                    Parent = header2,
                })
                task.defer(function()
                    local ic2 = x.GetIcon and x:GetIcon(iconKey2)
                    if ic2 then
                        if type(ic2) == "table" then
                            hIco2.Image = ic2.Image or ""
                            hIco2.ImageRectOffset = ic2.ImageRectOffset or Vector2.new()
                            hIco2.ImageRectSize = ic2.ImageRectSize or Vector2.new()
                        else
                            hIco2.Image = tostring(ic2)
                        end
                    end
                end)
            end
            local titleLbl2 = u("TextLabel", {
                RichText = true,
                Text = title2,
                TextTransparency = 0,
                FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                TextSize = 18,
                TextXAlignment = "Left",
                TextYAlignment = "Center",
                Size = UDim2.new(1, -36, 0, 18),
                Position = UDim2.fromOffset(titleOffX2, 2),
                BackgroundTransparency = 1,
                ThemeTag = {TextColor3 = "Text"},
                Parent = header2,
            })
            local arrowIco2 = u("ImageLabel", {
                Name = "_SecChevron",
                Size = UDim2.fromOffset(16, 16),
                AnchorPoint = Vector2.new(1, 0.5),
                Position = UDim2.new(1, 0, 0, 11),
                BackgroundTransparency = 1,
                ImageColor3 = Color3.fromRGB(255, 255, 255),
                ImageTransparency = 0.25,
                ThemeTag = {ImageColor3 = "Text"},
                Parent = header2,
            })
            do
                local arIc = x.GetIcon and x:GetIcon("chevron-right")
                if type(arIc) == "table" then
                    arrowIco2.Image = arIc.Image or ""
                    arrowIco2.ImageRectOffset = arIc.ImageRectOffset or Vector2.new()
                    arrowIco2.ImageRectSize = arIc.ImageRectSize or Vector2.new()
                elseif arIc then
                    arrowIco2.Image = tostring(arIc)
                else
                    arrowIco2.Image = "rbxassetid://10709791437"
                end
            end
            local contentBg2 = u("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                Position = UDim2.fromOffset(0, 26),
                BackgroundTransparency = 1,
                ClipsDescendants = true,
                LayoutOrder = 2,
                Parent = outerWrap2,
            })
            local innerLayout2 = u("UIListLayout", {
                Padding = UDim.new(0, pad2),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = contentBg2,
            })
            u("UIPadding", {
                PaddingTop = UDim.new(0, pad2),
                PaddingBottom = UDim.new(0, pad2),
                PaddingLeft = UDim.new(0, 4),
                PaddingRight = UDim.new(0, 4),
                Parent = contentBg2,
            })
            local isOpen2 = false
            local innerH2 = 0
            local dur2 = 0.22
            local ti2 = TweenInfo.new(dur2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
            local colMod2 = {
                Type = "Section",
                SaveType = "CollapsibleSection",
                Container = contentBg2,
                ScrollFrame = self.ScrollFrame or self.Container,
                _elementCount = 0,
                Value = startOpen2,
            }
            local function applyArrow2(open, anim)
                local rot = open and 90 or 0
                if anim then
                    ts2:Create(arrowIco2, TweenInfo.new(dur2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = rot}):Play()
                else
                    arrowIco2.Rotation = rot
                end
            end
            local function setOpen2(open, anim)
                isOpen2 = open
                colMod2.Value = open
                applyArrow2(open, anim)
                local ch = open and (innerH2 + pad2 * 2) or 0
                local oh = 26 + ch
                if anim then
                    ts2:Create(contentBg2, ti2, {Size = UDim2.new(1, 0, 0, ch)}):Play()
                    ts2:Create(outerWrap2, ti2, {Size = UDim2.new(1, 0, 0, oh)}):Play()
                else
                    contentBg2.Size = UDim2.new(1, 0, 0, ch)
                    outerWrap2.Size = UDim2.new(1, 0, 0, oh)
                end
            end
            innerLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                local newH = innerLayout2.AbsoluteContentSize.Y
                innerH2 = newH
                if isOpen2 then
                    local ch = newH + pad2 * 2
                    contentBg2.Size = UDim2.new(1, 0, 0, ch)
                    outerWrap2.Size = UDim2.new(1, 0, 0, 26 + ch)
                end
            end)
            header2.MouseButton1Click:Connect(function()
                setOpen2(not isOpen2, true)
            end)
            task.defer(function()
                innerH2 = innerLayout2.AbsoluteContentSize.Y
                setOpen2(startOpen2, false)
            end)
            function colMod2:Open(anim)   setOpen2(true,  anim ~= false) end
            function colMod2:Close(anim)  setOpen2(false, anim ~= false) end
            function colMod2:Toggle(anim) setOpen2(not isOpen2, anim ~= false) end
            function colMod2:IsOpen()     return isOpen2 end
            function colMod2:SetValue(v)  setOpen2(v and true or false, true) end
            function colMod2:SetTitle(s2) titleLbl2.Text = tostring(s2 or "") end
            setmetatable(colMod2, z)
            if saveIdx and x.Options then x.Options[saveIdx] = colMod2 end
            return colMod2
        end

                x.Elements = z

        z["AddCheckbox"] = function(C, D, E)
            local idx = (type(D) == "string") and D or nil
            local f = (idx and E) or (type(D) == "table" and D) or {}
            assert(f.Title, "Checkbox - Missing Title")
            local parent = C.Container
            if not parent then return end
            local u = p.New
            local h = {
                Value = f.Default and true or false,
                Callback = f.Callback or function() end,
                Type = "Checkbox",
            }
            local wrap = u("Frame",{
                Size=UDim2.new(1,0,0,38),
                BackgroundTransparency=0.9,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            u("UICorner",{CornerRadius=UDim.new(0,8),Parent=wrap})
            u("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            h.Frame = wrap

            local titleLbl = u("TextLabel",{
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Medium),
                Text=tostring(f.Title or ""),
                TextSize=14,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                Size=UDim2.new(1,-56,1,0),
                Position=UDim2.new(0,12,0,0),
                ThemeTag={TextColor3="Text"},
                Parent=wrap,
            })
            local box = u("Frame",{
                Size=UDim2.fromOffset(20,20),
                AnchorPoint=Vector2.new(1,0.5),
                Position=UDim2.new(1,-12,0.5,0),
                BackgroundTransparency=0,
                Parent=wrap,
                ThemeTag={BackgroundColor3="CheckboxUnchecked"},
            })
            u("UICorner",{CornerRadius=UDim.new(0,5),Parent=box})
            local boxStroke = u("UIStroke",{Transparency=0.4,Thickness=1.4,ThemeTag={Color="CheckboxChecked"},Parent=box})
            local check = u("ImageLabel",{
                Size=UDim2.fromOffset(14,14),
                AnchorPoint=Vector2.new(0.5,0.5),
                Position=UDim2.new(0.5,0,0.5,0),
                BackgroundTransparency=1,
                Image="rbxassetid://10709790644",
                ImageTransparency=1,
                ThemeTag={ImageColor3="CheckboxCheck"},
                Parent=box,
            })

            function h:SetTitle(s) titleLbl.Text = tostring(s or "") end
            function h.OnChanged(_, cb) h.Changed = cb; cb(h.Value) end
            function h:SetValue(val)
                val = not (not val)
                h.Value = val
                local tw = game:GetService("TweenService")
                tw:Create(box, TweenInfo.new(0.18,Enum.EasingStyle.Quint,Enum.EasingDirection.Out), {BackgroundTransparency = val and 0 or 0}):Play()
                p.OverrideTag(box, {BackgroundColor3 = val and "CheckboxChecked" or "CheckboxUnchecked"})
                p.OverrideTag(boxStroke, {Color = val and "CheckboxChecked" or "CheckboxUnchecked"})
                check.ImageTransparency = val and 0 or 1
                x:SafeCallback(h.Callback, val)
                x:SafeCallback(h.Changed, val)
            end
            function h:Destroy()
                wrap:Destroy()
                if idx then x.Options[idx] = nil end
            end
            wrap.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    h:SetValue(not h.Value)
                end
            end)
            h:SetValue(h.Value)
            if idx then x.Options[idx] = h end
            return _addElementToSection(C, h)
        end

        z["AddProgressBar"] = function(C, D, E)
            local idx = (type(D) == "string") and D or nil
            local f = (idx and E) or (type(D) == "table" and D) or {}
            local parent = C.Container
            if not parent then return end
            local u = p.New
            local minV, maxV = f.Min or 0, f.Max or 100
            local h = {
                Value = math.clamp(f.Default or minV, minV, maxV),
                Min = minV, Max = maxV,
                Type = "ProgressBar",
            }
            local wrap = u("Frame",{
                Size=UDim2.new(1,0,0,f.Title and 46 or 26),
                BackgroundTransparency=1,
                Parent=parent,
            })
            h.Frame = wrap
            local titleLbl
            if f.Title then
                titleLbl = u("TextLabel",{
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.Medium),
                    Text=tostring(f.Title or ""),
                    TextSize=14,
                    TextXAlignment=Enum.TextXAlignment.Left,
                    BackgroundTransparency=1,
                    Size=UDim2.new(1,-50,0,16),
                    Position=UDim2.new(0,0,0,0),
                    ThemeTag={TextColor3="Text"},
                    Parent=wrap,
                })
            end
            local pctLbl
            if f.ShowPercent ~= false then
                pctLbl = u("TextLabel",{
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    Text="0%",
                    TextSize=13,
                    TextXAlignment=Enum.TextXAlignment.Right,
                    BackgroundTransparency=1,
                    Size=UDim2.new(0,50,0,16),
                    Position=UDim2.new(1,-50,0,0),
                    ThemeTag={TextColor3="SubText"},
                    Parent=wrap,
                })
            end
            local rail = u("Frame",{
                Size=UDim2.new(1,0,0,8),
                Position=UDim2.new(0,0,1,-8),
                BackgroundTransparency=0.4,
                Parent=wrap,
                ThemeTag={BackgroundColor3="ProgressBarRail"},
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=rail})
            local fill = u("Frame",{
                Size=UDim2.fromScale(0,1),
                BackgroundTransparency=0,
                Parent=rail,
                ThemeTag={BackgroundColor3="ProgressBarFill"},
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=fill})

            function h:SetTitle(s) if titleLbl then titleLbl.Text = tostring(s or "") end end
            function h:SetValue(val)
                val = math.clamp(tonumber(val) or h.Min, h.Min, h.Max)
                h.Value = val
                local alpha = (h.Max > h.Min) and (val - h.Min) / (h.Max - h.Min) or 0
                local tw = game:GetService("TweenService")
                tw:Create(fill, TweenInfo.new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out), {Size = UDim2.fromScale(alpha,1)}):Play()
                if pctLbl then pctLbl.Text = math.floor(alpha*100).."%" end
            end
            function h:Destroy()
                wrap:Destroy()
                if idx then x.Options[idx] = nil end
            end
            h:SetValue(h.Value)
            if idx then x.Options[idx] = h end
            return _addElementToSection(C, h)
        end

        z["AddSocial"] = function(C, cfg)
            cfg = (type(cfg) == "table") and cfg or {}
            local parent = C.Container
            if not parent then return end
            local u = p.New
            local username = tostring(cfg.Username or "")
            local platform = tostring(cfg.Platform or "")
            local profileUrl = cfg.ProfileUrl or cfg.Url
            if username == "" and type(profileUrl) == "string" then
                local host, path = profileUrl:match("^https?://([^/]+)/?(.-)[/?#]?$")
                if not host then host, path = profileUrl:match("^https?://([^/]+)/?(.*)$") end
                if host then
                    host = host:gsub("^www%.", ""):lower()
                    local _hostMap = {
                        ["github.com"]="github", ["twitter.com"]="twitter", ["x.com"]="twitter",
                        ["instagram.com"]="instagram", ["youtube.com"]="youtube", ["tiktok.com"]="tiktok",
                        ["twitch.tv"]="twitch", ["reddit.com"]="reddit", ["telegram.me"]="telegram",
                        ["t.me"]="telegram", ["soundcloud.com"]="soundcloud", ["steamcommunity.com"]="steam",
                    }
                    local user = path and path:match("^([^/?#]+)")
                    if user and user ~= "" then
                        if user:sub(1,1) == "@" then user = user:sub(2) end
                        username = user
                        if platform == "" and _hostMap[host] then
                            platform = _hostMap[host]:sub(1,1):upper().._hostMap[host]:sub(2)
                        end
                    end
                end
            end
            local displayName = tostring(cfg.DisplayName or (username ~= "" and username or ""))

            local wrap = u("Frame",{
                Size=UDim2.new(1,0,0,64),
                BackgroundTransparency=0.82,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            u("UICorner",{CornerRadius=UDim.new(0,12),Parent=wrap})
            u("UIStroke",{Transparency=0.45,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})

            local avatarBg = u("Frame",{
                Name="AvatarBg",
                Size=UDim2.fromOffset(42,42),
                Position=UDim2.new(0,11,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundColor3=Color3.fromRGB(90,90,90),
                Parent=wrap,
                ClipsDescendants=true,
            })
            local avatarCorner = u("UICorner",{CornerRadius=UDim.new(0,8),Parent=avatarBg})
            local avatarImg = u("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Parent=avatarBg})
            local avatarImgCorner = u("UICorner",{CornerRadius=UDim.new(0,8),Parent=avatarImg})
            local hasAvatarSource = (username ~= "") or (type(profileUrl) == "string" and profileUrl ~= "") or (type(cfg.Avatar) == "string" and cfg.Avatar ~= "")
            if hasAvatarSource then
                avatarCorner.CornerRadius = UDim.new(1, 0)
                avatarImgCorner.CornerRadius = UDim.new(1, 0)
            end

            local nameBtn = u("TextButton",{
                Name="DisplayNameButton",
                Text=displayName,
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                TextSize=13,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                AutoButtonColor=false,
                Size=UDim2.new(1,-140,0,16),
                Position=UDim2.new(0,62,0,9),
                ThemeTag={TextColor3="Text"},
                Parent=wrap,
            })
            local userBtn = u("TextButton",{
                Name="UsernameButton",
                Text=(username ~= "" and ("@"..username) or ""),
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                TextSize=11,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                AutoButtonColor=false,
                Size=UDim2.new(1,-140,0,13),
                Position=UDim2.new(0,62,0,27),
                ThemeTag={TextColor3="SubText"},
                Parent=wrap,
            })
            if platform ~= "" then
                u("TextLabel",{
                    Name="PlatformLabel",
                    Text=platform,
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextSize=10,
                    TextTransparency=0.3,
                    TextXAlignment=Enum.TextXAlignment.Left,
                    BackgroundTransparency=1,
                    Size=UDim2.new(1,-140,0,12),
                    Position=UDim2.new(0,62,0,42),
                    ThemeTag={TextColor3="SubText"},
                    Parent=wrap,
                })
            end

            local copyBtn
            if profileUrl then
                copyBtn = u("TextButton",{
                    Name="CopyLinkButton",
                    Text="Copy",
                    Size=UDim2.fromOffset(52,26),
                    Position=UDim2.new(1,-11,0.5,0),
                    AnchorPoint=Vector2.new(1,0.5),
                    TextColor3=Color3.fromRGB(255,255,255),
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                    TextSize=12,
                    ThemeTag={BackgroundColor3="Element"},
                    Parent=wrap,
                })
                u("UICorner",{CornerRadius=UDim.new(0,8),Parent=copyBtn})
                u("UIStroke",{Transparency=0.4,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=copyBtn})
            end

            local function _copy(text, label)
                if not text or text == "" then return end
                pcall(function() setclipboard(text) end)
                x:Notify({Title="Copied", Content=(label or "Text").." copied to clipboard", Type="Success", Duration=2})
            end
            nameBtn.MouseButton1Click:Connect(function() _copy(displayName, "Display name") end)
            userBtn.MouseButton1Click:Connect(function() _copy(username, "Username") end)
            if copyBtn then
                copyBtn.MouseButton1Click:Connect(function() _copy(profileUrl, "Profile link") end)
            end

            task.spawn(function()
                local avatarSrc = cfg.Avatar
                local imgUrl
                local function _slugFromHost(hostUrl)
                    local host, path = hostUrl:match("^https?://([^/]+)/?(.*)$")
                    if not host then return nil, nil end
                    host = host:gsub("^www%.", ""):lower()
                    local user = path:match("^([^/?#]+)")
                    if not user or user == "" then return nil, nil end
                    local hostMap = {
                        ["github.com"] = "github",
                        ["twitter.com"] = "twitter",
                        ["x.com"] = "twitter",
                        ["instagram.com"] = "instagram",
                        ["youtube.com"] = "youtube",
                        ["tiktok.com"] = "tiktok",
                        ["twitch.tv"] = "twitch",
                        ["reddit.com"] = "reddit",
                        ["telegram.me"] = "telegram",
                        ["t.me"] = "telegram",
                        ["soundcloud.com"] = "soundcloud",
                        ["steamcommunity.com"] = "steam",
                    }
                    local slug = hostMap[host]
                    if user:sub(1,1) == "@" then user = user:sub(2) end
                    return slug, user
                end
                if type(avatarSrc) == "string" and avatarSrc:match("^https?://") then
                    if avatarSrc:match("unavatar%.io") or avatarSrc:match("linkspreview") then
                        imgUrl = avatarSrc
                    else
                        local slug2, user2 = _slugFromHost(avatarSrc)
                        if slug2 and user2 then
                            imgUrl = "https://unavatar.io/"..slug2.."/"..user2
                        else
                            imgUrl = avatarSrc
                        end
                    end
                elseif type(profileUrl) == "string" and profileUrl:match("^https?://") and username == "" then
                    if cfg.AvatarService == "linkpreview" then
                        imgUrl = "https://linkspreview.netlify.app/url?url="..profileUrl
                    else
                        local slug3, user3 = _slugFromHost(profileUrl)
                        if slug3 and user3 then
                            imgUrl = "https://unavatar.io/"..slug3.."/"..user3
                        end
                    end
                elseif username ~= "" then
                    if cfg.AvatarService == "linkpreview" and profileUrl then
                        imgUrl = "https://linkspreview.netlify.app/url?url="..tostring(profileUrl)
                    else
                        local slug = platform ~= "" and (platform:lower().."/") or ""
                        imgUrl = "https://unavatar.io/"..slug..username
                    end
                end
                if imgUrl then
                    local ok, asset = pcall(function()
                        return x.MediaManager and x.MediaManager:Image(imgUrl)
                    end)
                    if ok and asset and asset ~= "" then
                        avatarImg.Image = asset
                        avatarCorner.CornerRadius = UDim.new(1, 0)
                        avatarImgCorner.CornerRadius = UDim.new(1, 0)
                    end
                end
            end)

            local mod = {Frame=wrap, Type="Social"}
            function mod:SetUsername(newUsername)
                username = tostring(newUsername or "")
                userBtn.Text = username ~= "" and ("@"..username) or ""
            end
            function mod:SetDisplayName(newDisplayName)
                displayName = tostring(newDisplayName or "")
                nameBtn.Text = displayName
            end
            function mod:Destroy() wrap:Destroy() end
            return _addElementToSection(C, mod)
        end

        z.__type_Viewport = "Viewport"
        z.AddViewport = function(C, IdxOrConfig, MaybeConfig)
            local saveIdx, Config
            if type(IdxOrConfig) == "string" then
                saveIdx, Config = IdxOrConfig, MaybeConfig
            else
                Config = IdxOrConfig
            end
            Config = Config or {}
            local lib = x
            local _UIS = game:GetService("UserInputService")
            local _Creator = p

            local height     = Config.Height      or 200
            local focused    = Config.Focused     ~= false
            local interactive= Config.Interactive or false
            local camera     = Config.Camera      or Instance.new("Camera")
            local obj        = Config.Object
            local aspectRatio= Config.AspectRatio

            assert(obj, "Viewport - Missing Object")

            local vp = {
                __type      = "Viewport",
                Type        = "Viewport",
                Object      = obj,
                Camera      = camera,
                Interactive = interactive,
                Height      = height,
                Focused     = focused,
                Value       = nil,
            }

            local cornerR = (x.Window and x.Window.ElementConfig and x.Window.ElementConfig.UICorner) or 8

            local _Dragging, _Pinching = false, false
            local _LastMousePos, _LastPinchDist = nil, 0

            local function _parseAspect(r)
                if type(r) == "number" then return r end
                if type(r) == "string" then
                    local rw, rh = r:match("(%d+):(%d+)")
                    if rw and rh and tonumber(rh) ~= 0 then return tonumber(rw) / tonumber(rh) end
                end
                return nil
            end

            local vpFrame = Instance.new("Frame")
            vpFrame.Name = "ViewportHolder"
            vpFrame.Size = UDim2.new(1, 0, 0, height)
            vpFrame.BackgroundTransparency = 1
            vpFrame.BorderSizePixel = 0
            vpFrame.Parent = C.Container

            local _ratioNum = _parseAspect(aspectRatio)
            local function _recalcAspectVp()
                if not _ratioNum or _ratioNum <= 0 then return end
                local w = vpFrame.AbsoluteSize.X
                if w > 0 then
                    vpFrame.Size = UDim2.new(1, 0, 0, math.floor(w / _ratioNum))
                end
            end
            vpFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(_recalcAspectVp)
            if _ratioNum then
                task.defer(_recalcAspectVp)
            end

            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, cornerR)
            corner.Parent = vpFrame

            local bg = Instance.new("ImageLabel")
            bg.Size = UDim2.fromScale(1, 1)
            bg.BackgroundTransparency = 0.1
            bg.BorderSizePixel = 0
            bg.Image = ""
            bg.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
            bg.Parent = vpFrame
            local bgCorner = Instance.new("UICorner")
            bgCorner.CornerRadius = UDim.new(0, cornerR)
            bgCorner.Parent = bg
            _Creator.AddThemeObject(bg, {BackgroundColor3 = "ViewportBackground"})

            local bgNoise = Instance.new("ImageLabel")
            bgNoise.Name = "_ViewportNoise"
            bgNoise.Image = "rbxassetid://9968344227"
            bgNoise.ScaleType = Enum.ScaleType.Tile
            bgNoise.TileSize = UDim2.new(0, 128, 0, 128)
            bgNoise.Size = UDim2.fromScale(1, 1)
            bgNoise.BackgroundTransparency = 1
            bgNoise.ImageTransparency = 0.92
            bgNoise.Visible = _Creator.GetThemeProperty("ViewportBackgroundImages") ~= false
            bgNoise.Parent = bg
            local bgNoiseCorner = Instance.new("UICorner")
            bgNoiseCorner.CornerRadius = UDim.new(0, cornerR)
            bgNoiseCorner.Parent = bgNoise
            _Creator.AddThemeObject(bgNoise, {Visible = "ViewportBackgroundImages"})

            local canvas = Instance.new("CanvasGroup")
            canvas.Size = UDim2.fromScale(1, 1)
            canvas.BackgroundTransparency = 1
            canvas.Parent = vpFrame
            local canvasCorner = Instance.new("UICorner")
            canvasCorner.CornerRadius = UDim.new(0, cornerR)
            canvasCorner.Parent = canvas

            local vpInner = Instance.new("ViewportFrame")
            vpInner.Name = "Viewport"
            vpInner.Size = UDim2.fromScale(1, 1)
            vpInner.BackgroundTransparency = 1
            vpInner.CurrentCamera = vp.Camera
            vpInner.Active = vp.Interactive
            vpInner.Parent = canvas
            vp.Object.Parent = vpInner

            local stroke = Instance.new("UIStroke")
            stroke.Transparency = 0.6
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Parent = vpFrame
            _Creator.AddThemeObject(stroke, {Color = "InElementBorder"})

            local function _posInViewport(pos)
                local fp, fs = vpInner.AbsolutePosition, vpInner.AbsoluteSize
                return pos.X >= fp.X and pos.X <= fp.X + fs.X and pos.Y >= fp.Y and pos.Y <= fp.Y + fs.Y
            end

            local function _updateZoomValue()
                local ok, mpos = pcall(function() return vp.Object:GetPivot().Position end)
                if ok then
                    vp.Value = (vp.Camera.CFrame.Position - mpos).Magnitude
                end
            end

            _Creator.AddSignal(vpInner.MouseEnter, function()
                if vp.Interactive then
                    local sf = C.ScrollFrame
                    if sf then sf.ScrollingEnabled = false end
                end
            end)
            _Creator.AddSignal(vpInner.InputEnded, function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseMovement
                    or inp.UserInputType == Enum.UserInputType.Touch then
                    local sf = C.ScrollFrame
                    if sf then sf.ScrollingEnabled = true end
                end
            end)
            _Creator.AddSignal(vpInner.InputBegan, function(inp)
                if vp.Interactive then
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or (inp.UserInputType == Enum.UserInputType.Touch and not _Pinching) then
                        _Dragging = true
                        _LastMousePos = inp.Position
                    end
                end
            end)
            _Creator.AddSignal(_UIS.InputEnded, function(inp)
                if vp.Interactive then
                    if inp.UserInputType == Enum.UserInputType.MouseButton1
                        or inp.UserInputType == Enum.UserInputType.Touch then
                        _Dragging = false
                    end
                end
            end)
            _Creator.AddSignal(_UIS.InputChanged, function(inp)
                if vp.Interactive and _Dragging and not _Pinching then
                    if inp.UserInputType == Enum.UserInputType.MouseMovement
                        or inp.UserInputType == Enum.UserInputType.Touch then
                        local delta = inp.Position - _LastMousePos
                        _LastMousePos = inp.Position
                        local pos = vp.Object:GetPivot().Position
                        local cam = vp.Camera
                        local ry = CFrame.fromAxisAngle(Vector3.new(0,1,0), -delta.X * 0.02)
                        cam.CFrame = CFrame.new(pos) * ry * CFrame.new(-pos) * cam.CFrame
                        local rx = CFrame.fromAxisAngle(cam.CFrame.RightVector, -delta.Y * 0.02)
                        local pitched = CFrame.new(pos) * rx * CFrame.new(-pos) * cam.CFrame
                        if pitched.UpVector.Y > 0.1 then cam.CFrame = pitched end
                    end
                end
            end)
            _Creator.AddSignal(vpInner.InputChanged, function(inp)
                if vp.Interactive then
                    if inp.UserInputType == Enum.UserInputType.MouseWheel then
                        if not _posInViewport(_UIS:GetMouseLocation()) then return end
                        local zoom = inp.Position.Z * 2
                        vp.Camera.CFrame += vp.Camera.CFrame.LookVector * zoom
                        _updateZoomValue()
                    end
                end
            end)
            _Creator.AddSignal(_UIS.TouchPinch, function(touches, scale, vel, state)
                if vp.Interactive then
                    if state == Enum.UserInputState.Begin then
                        local mid = (touches[1] + touches[2]) / 2
                        if not _posInViewport(mid) then return end
                        _Pinching = true; _Dragging = false
                        _LastPinchDist = (touches[1]-touches[2]).Magnitude
                    elseif state == Enum.UserInputState.Change then
                        if not _Pinching then return end
                        local cur = (touches[1]-touches[2]).Magnitude
                        local d = (cur - _LastPinchDist)*0.03
                        _LastPinchDist = cur
                        vp.Camera.CFrame += vp.Camera.CFrame.LookVector * d
                        _updateZoomValue()
                    elseif state == Enum.UserInputState.End or state == Enum.UserInputState.Cancel then
                        _Pinching = false
                    end
                end
            end)

            local function focusCamera()
                local sz = vp.Object:IsA("BasePart") and vp.Object.Size
                    or select(2, vp.Object:GetBoundingBox(0))
                local ext = math.max(sz.X, sz.Y, sz.Z)
                local mpos = vp.Object:GetPivot().Position
                vp.Camera.CFrame = CFrame.new(mpos + Vector3.new(0, ext/2, ext*2), mpos)
                _updateZoomValue()
            end
            if vp.Focused then focusCamera() end

            function vp:SetObject(obj, clone)
                if clone then obj = obj:Clone() end
                if vp.Object then vp.Object:Destroy() end
                vp.Object = obj
                vp.Object.Parent = vpInner
            end
            function vp:SetHeight(h)
                vp.Height = h
                vpFrame.Size = UDim2.new(1, 0, 0, h)
            end
            function vp:SetAspectRatio(ratio)
                local rNum = _parseAspect(ratio)
                _ratioNum = rNum
                if rNum then
                    _recalcAspectVp()
                else
                    vpFrame.Size = UDim2.new(1, 0, 0, vp.Height)
                end
            end
            function vp:Focus()
                if vp.Object then focusCamera() end
            end
            function vp:SetCamera(cam)
                vp.Camera = cam
                vpInner.CurrentCamera = cam
            end
            function vp:SetInteractive(val)
                vp.Interactive = val
                vpInner.Active = val
            end
            function vp:SetValue(distance)
                if type(distance) ~= "number" then return end
                local ok, mpos = pcall(function() return vp.Object:GetPivot().Position end)
                if not ok then return end
                local dir = (vp.Camera.CFrame.Position - mpos)
                if dir.Magnitude < 1e-4 then dir = Vector3.new(0, 0, 1) end
                dir = dir.Unit
                vp.Camera.CFrame = CFrame.new(mpos + dir * distance, mpos)
                vp.Value = distance
            end
            vp.Frame = vpFrame
            if saveIdx and x.Options then x.Options[saveIdx] = vp end
            return vp
        end
        z.Section = z.AddSection
        z.CollapsibleSection = z.AddCollapsibleSection
        z.Viewport = z.AddViewport
        z.Discord = z["AddDiscord"]
        z.Social = z["AddSocial"]
        z.Checkbox = z["AddCheckbox"]
        z.ProgressBar = z["AddProgressBar"]
        function x.CreateWindow(C, D)
            assert(D.Title, "Window - Missing Title")
            if x.Window then
                print "You cannot create more than one window."
                return
            end
            p.Library = x
            do
                local guiName = D.ScreenGuiName or "FluentPro"
                if x.GUI then x.GUI.Name = guiName end
                if x.ScrollGUI then x.ScrollGUI.Name = guiName .. "Scroll" end
                if x.PopupGUI then x.PopupGUI.Name = guiName .. "Popup" end
                if D.FolderName then
                    local parent = (x.GUI and x.GUI.Parent) or game:GetService("CoreGui")
                    local folder = parent:FindFirstChild(D.FolderName)
                    if not folder or not folder:IsA("Folder") then
                        folder = Instance.new("Folder")
                        folder.Name = D.FolderName
                        folder.Parent = parent
                    end
                    for _, gui in ipairs({x.GUI, x.ScrollGUI, x.PopupGUI}) do
                        if gui then gui.Parent = folder end
                    end
                    x.Folder = folder
                end
            end
            x.MinimizeKey = D.MinimizeKey
            x.UseAcrylic = D.Acrylic
            if D.Acrylic then
                r.init()
            end
            local E =
                e(s.Window) {
                    Parent = w, Size = D.Size, Title = D.Title, SubTitle = D.SubTitle, TabWidth = D.TabWidth,
                    UserInfo = D.UserInfo, UserInfoTop = D.UserInfoTop,
                    UserInfoTitle = D.UserInfoTitle, UserInfoSubtitle = D.UserInfoSubtitle,
                    UserInfoColor = D.UserInfoColor,
                    Search = D.Search,
                    TabLogo = D.Icons or D.TabLogo,
                    TitleIcon = D.TitleIcon,
                    Version = D.Version,
                }
            x.Window = E
            if D.Version then x.WindowVersion = D.Version end
            function x:SetVersion(newVersion)
                x.WindowVersion = newVersion
                if x.Window and x.Window.TitleBar then
                    local badge = x.Window.TitleBar.Frame:FindFirstChild("VersionBadge", true)
                    if badge then
                        local txt = badge:FindFirstChild("VersionText")
                        if txt then txt.Text = tostring(newVersion or "") end
                        badge.Visible = newVersion ~= nil and newVersion ~= ""
                    end
                end
            end
            x.NamedTexts = x.NamedTexts or {}
            x.NamedFonts = x.NamedFonts or {}
            local function _enableRichText(inst)
                if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
                    pcall(function() inst.RichText = true end)
                end
            end
            if x.GUI then
                for _, d in ipairs(x.GUI:GetDescendants()) do _enableRichText(d) end
                x.GUI.DescendantAdded:Connect(_enableRichText)
            end
            function x:SetTextName(instance, name)
                if not instance or not name then return end
                instance:SetAttribute("FluentTextName", name)
                x.NamedTexts[name] = instance
                local fontCfg = x.NamedFonts[name]
                if fontCfg then
                    pcall(function() instance.FontFace = fontCfg end)
                end
                return instance
            end
            function x:GetTextByName(name)
                return x.NamedTexts[name]
            end
            function x:SetNamedFont(name, source, weight, style)
                if not name then return end
                local fw = weight or Enum.FontWeight.Regular
                local fs = style or Enum.FontStyle.Normal
                local newFont
                pcall(function()
                    local src = tostring(source or "")
                    if src:match("^rbxasset://") then
                        newFont = Font.new(src, fw, fs)
                    elseif src:match("^rbxassetid://") then
                        newFont = Font.fromId(tonumber(src:match("%d+")), fw, fs)
                    elseif tonumber(src) then
                        newFont = Font.fromId(tonumber(src), fw, fs)
                    elseif x.InterfaceManager and x.InterfaceManager.FontPaths[src] then
                        newFont = Font.new(x.InterfaceManager.FontPaths[src], fw, fs)
                    else
                        newFont = Font.new("rbxasset://fonts/families/" .. src .. ".json", fw, fs)
                    end
                end)
                if not newFont then return end
                x.NamedFonts[name] = newFont
                local inst = x.NamedTexts[name]
                if inst then
                    pcall(function() inst.FontFace = newFont end)
                end
            end
            x:SetTheme(D.Theme)
            if D.Font then
                task.defer(function()
                    x.InterfaceManager:ApplyFont(D.Font)
                end)
            end
            return E
        end
        function x.SetTheme(C, D)
            if x.Window and (table.find(x.Themes, D) or (type(D)=="string" and type(e(o.Themes)[D])=="table")) then
                x.Theme = D
                p.UpdateTheme()
                local thm = e(o.Themes)[D]
                if thm then
                    if thm.IconColor then
                        pcall(function()
                            for _, img in pairs(x.GUI:GetDescendants()) do
                                if img:IsA("ImageLabel") and img:GetAttribute("IsThemeIcon") then
                                    img.ImageColor3 = thm.IconColor
                                end
                            end
                        end)
                    end
                    if thm.IconSize then
                        pcall(function()
                            for _, img in pairs(x.GUI:GetDescendants()) do
                                if img:IsA("ImageLabel") and img:GetAttribute("IsThemeIcon") then
                                    img.Size = UDim2.fromOffset(thm.IconSize, thm.IconSize)
                                end
                            end
                        end)
                    end
                end
            end
        end
        function x.Destroy(C)
            if x.Window then
                x.Unloaded = true
                if x.UseAcrylic then
                    x.Window.AcrylicPaint.Model:Destroy()
                end
                p.Disconnect()
                if x._SBOverlayTeardowns then
                    for _, fn in ipairs(x._SBOverlayTeardowns) do
                        pcall(fn)
                    end
                    table.clear(x._SBOverlayTeardowns)
                end
                if x._SBOverlays then
                    for _, ov in ipairs(x._SBOverlays) do
                        pcall(function() ov:Destroy() end)
                    end
                    table.clear(x._SBOverlays)
                end
                if x.ScrollGUI then
                    pcall(function() x.ScrollGUI:Destroy() end)
                    x.ScrollGUI = nil
                end
                x.GUI:Destroy()
                x.GUI = nil
            end
        end
        function x.ToggleAcrylic(C, D)
            if x.Window then
                if x.UseAcrylic then
                    x.Acrylic = D
                    x.Window.AcrylicPaint.Model.Transparency = D and 0.98 or 1
                    if D then
                        r.Enable()
                    else
                        r.Disable()
                    end
                end
            end
        end
        function x.ToggleTransparency(C, D)
            if x.Window then
                x.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = D and 0.35 or 0
            end
            x.WindowTransparent = D and true or false
        end
        local errorHints = {
            {"attempt to index nil",             "Did you forget to define a variable?"},
            {"attempt to index a nil",            "Did you forget to define a variable?"},
            {"attempt to call nil",               "Did you forget to define or return a function?"},
            {"attempt to call a nil",             "Did you forget to define or return a function?"},
            {"attempt to call a ",                "Did you forget to define or return this?"},
            {"'end' expected",                    "Did you forget to close a block with 'end'?"},
            {"expected 'end'",                    "Did you forget to close a block with 'end'?"},
            {"<eof>",                             "Unexpected end — did you forget 'end' or ')'?"},
            {"unexpected symbol",                 "Syntax error — check for typos near this symbol"},
            {"attempt to perform arithmetic",     "Did you use a non-number value here?"},
            {"attempt to concatenate",            "Did you forget to convert a value to string?"},
            {"stack overflow",                    "Possible infinite recursion detected"},
            {"attempt to get length",             "Did you use # on a nil or non-table value?"},
            {"attempt to compare",                "Did you compare two incompatible types?"},
            {"bad argument",                      "Wrong argument type passed to a function"},
            {"attempt to yield",                  "Cannot yield in this callback context"},
            {"no value",                          "Did you forget to return a value?"},
            {"attempt to index",                  "Tried to index a non-table value"},
        }
        local function parseNotifyError(D)
            if not D or (D.Type ~= "Error" and D.Type ~= "Warning") then return D end
            local msg = tostring(D.Content or "") .. " " .. tostring(D.SubContent or "")
            local line = tonumber(msg:match(":(%d+):")) or tonumber(msg:match("[Ll]ine%s+(%d+)"))
            local hint
            local ml = msg:lower()
            for _, pair in ipairs(errorHints) do
                if ml:find(pair[1], 1, true) then hint = pair[2]; break end
            end
            if not hint and not line then return D end
            local smart
            if hint and line then
                smart = hint .. " (Line " .. line .. ")"
            elseif hint then
                smart = hint
            else
                smart = "Check your code (Line " .. line .. ")"
            end
            local nd = {}
            for k, v in next, D do nd[k] = v end
            local existing = (type(nd.SubContent) == "string" and nd.SubContent ~= "") and nd.SubContent or nil
            nd.SubContent = existing and (smart .. "\n" .. existing) or smart
            return nd
        end
        function x.Notify(C, D)
            return t:New(parseNotifyError(D))
        end


        local rgbConn = nil
        function x.StartRGBMode()
            if rgbConn then rgbConn:Disconnect(); rgbConn = nil end
            local hue = 0
            rgbConn = game:GetService("RunService").RenderStepped:Connect(function(dt)
                if x.Theme ~= "RGB" then rgbConn:Disconnect(); rgbConn = nil; return end
                hue = (hue + dt * 0.10) % 1
                local col = Color3.fromHSV(hue, 1, 1)
                local thm = e(o.Themes)["RGB"]
                if thm then
                    thm.Accent=col; thm.AcrylicBorder=col; thm.InElementBorder=col
                    thm.DropdownBorder=col; thm.DropdownFrame=col; thm.DropdownOption=col
                    thm.Tab=col; thm.TitleBarLine=col
                    p.UpdateTheme()
                end
            end)
        end
        function x.StopRGBMode()
            if rgbConn then rgbConn:Disconnect(); rgbConn = nil end
        end
        local baseST = x.SetTheme
        function x.SetTheme(C, D)
            x.StopRGBMode()
            baseST(C, D)
            if D == "RGB" and x.Window and table.find(x.Themes, D) then
                x:StartRGBMode()
            end
        end


        local httpService = game:GetService("HttpService")
        local SaveManager = {}
        SaveManager.Folder = "FluentSettings"
        SaveManager.Ignore = {}
        SaveManager.Parser = {
            Toggle    = { Save=function(idx,o) return{type="Toggle",idx=idx,value=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
            Checkbox  = { Save=function(idx,o) return{type="Checkbox",idx=idx,value=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
            Slider    = { Save=function(idx,o) return{type="Slider",idx=idx,value=tostring(o.Value)} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
            Dropdown  = { Save=function(idx,o) return{type="Dropdown",idx=idx,value=o.Value,mutli=o.Multi} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
            Colorpicker={ Save=function(idx,o) return{type="Colorpicker",idx=idx,value=o.Value:ToHex(),transparency=o.Transparency} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValueRGB(Color3.fromHex(d.value),d.transparency) end end },
            Keybind   = { Save=function(idx,o) return{type="Keybind",idx=idx,mode=o.Mode,key=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.key,d.mode) end end },
            Input     = { Save=function(idx,o) return{type="Input",idx=idx,text=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] and type(d.text)=="string" then SaveManager.Options[idx]:SetValue(d.text) end end },
            CollapsibleSection = { Save=function(idx,o) return{type="CollapsibleSection",idx=idx,value=o.Value and true or false} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
            Viewport = { Save=function(idx,o) return{type="Viewport",idx=idx,zoom=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] and type(d.zoom)=="number" then SaveManager.Options[idx]:SetValue(d.zoom) end end },
        }
        function SaveManager:SetIgnoreIndexes(list) for _,k in next,list do self.Ignore[k]=true end end
        function SaveManager:IgnoreIndexes(list) self:SetIgnoreIndexes(list) end
        function SaveManager:SetFolder(folder) self.Folder=folder; self:BuildFolderTree() end
        function SaveManager:BuildFolderTree()
            local paths={self.Folder, self.Folder.."/settings"}
            for _,p2 in ipairs(paths) do if not isfolder(p2) then makefolder(p2) end end
        end
        function SaveManager:SetLibrary(lib) self.Library=lib; self.Options=lib.Options end
        function SaveManager:IgnoreThemeSettings() self:SetIgnoreIndexes({"InterfaceTheme","AcrylicToggle","TransparentToggle","MenuKeybind","AnimationToggle"}) end
        function SaveManager:Save(name)
            if not name then return false,"no config selected" end
            local data={objects={}}
            for idx,opt in next,SaveManager.Options do
                local ptype = opt.SaveType or opt.Type
                if self.Parser[ptype] and not self.Ignore[idx] then
                    table.insert(data.objects, self.Parser[ptype].Save(idx,opt))
                end
            end
            local ok,enc=pcall(httpService.JSONEncode,httpService,data)
            if not ok then return false,"encode failed" end
            writefile(self.Folder.."/settings/"..name..".json",enc)
            return true
        end
        function SaveManager:Load(name)
            if not name then return false,"no config selected" end
            local f=self.Folder.."/settings/"..name..".json"
            if not isfile(f) then return false,"invalid file" end
            local ok,dec=pcall(httpService.JSONDecode,httpService,readfile(f))
            if not ok then return false,"decode error" end
            for _,opt in next,dec.objects do
                if self.Parser[opt.type] then task.spawn(function() self.Parser[opt.type].Load(opt.idx,opt) end) end
            end
            return true
        end
        function SaveManager:RefreshConfigList()
            local list=listfiles(self.Folder.."/settings"); local out={}
            for _,file in ipairs(list) do
                if file:sub(-5)==".json" then
                    local pos=file:find(".json",1,true); local start=pos
                    local char=file:sub(pos,pos)
                    while char~="/" and char~="\\" and char~="" do pos=pos-1; char=file:sub(pos,pos) end
                    if char=="/" or char=="\\" then
                        local name=file:sub(pos+1,start-1)
                        if name~="options" then table.insert(out,name) end
                    end
                end
            end
            return out
        end
        function SaveManager:LoadAutoloadConfig()
            local ap=self.Folder.."/settings/autoload.txt"
            if isfile(ap) then
                local name=readfile(ap)
                local ok,err=self:Load(name)
                if not ok then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Failed to load: "..err,Duration=7}) end
                self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Auto loaded %q",name),Duration=7})
            end
        end
        function SaveManager:BuildConfigSection(tab)
            assert(self.Library,"Must set SaveManager.Library")
            local sec=tab:AddSection("Configuration","lucide/file-text")
            sec:AddInput("SaveManager_ConfigName",{Title="Config name", Icon="solar/pen-new-round-bold"})
            sec:AddDropdown("SaveManager_ConfigList",{Title="Config list",Values=self:RefreshConfigList(),AllowNull=true,NoSearch=true,Icon="solar/list-bold",DropdownOutsideWindow=true,IsManagerDropdown=true})
            sec:AddButton({Title="Load config", Icon="solar/upload-minimalistic-bold", Callback=function()
                local name=SaveManager.Options.SaveManager_ConfigList.Value
                local ok,err=self:Load(name)
                if not ok then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Failed: "..err,Duration=7}) end
                self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Loaded %q",name),Duration=7})
            end})
            local function _doCreate(name)
                local ok,err=self:Save(name)
                if not ok then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Failed: "..err,Duration=7}) end
                self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Created %q",name),Duration=7})
                SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
            end
            sec:AddButton({Title="Create config", Icon="solar/diskette-bold", Callback=function()
                local name=SaveManager.Options.SaveManager_ConfigName.Value
                if name:gsub(" ","")=="" then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Invalid name",Duration=7}) end
                local path=self.Folder.."/settings/"..name..".json"
                if isfile(path) then
                    local win=self.Library.Window
                    if win then
                        win:Dialog({
                            Title="Overwrite config?",
                            Content=string.format("A config named %q already exists. Overwrite it?",name),
                            Buttons={
                                {Title="Overwrite", Callback=function() _doCreate(name) end},
                                {Title="Cancel"},
                            },
                        })
                        return
                    end
                end
                _doCreate(name)
            end})
            sec:AddButton({Title="Overwrite config", Icon="solar/refresh-bold", Callback=function()
                local name=SaveManager.Options.SaveManager_ConfigList.Value
                local ok,err=self:Save(name)
                if not ok then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Failed: "..err,Duration=7}) end
                self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Overwrote %q",name),Duration=7})
            end})
            sec:AddButton({Title="Delete config", Icon="solar/trash-bin-trash-bold", Callback=function()
                local name=SaveManager.Options.SaveManager_ConfigList.Value
                if not name or name=="" then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="No config selected",Duration=7}) end
                local win=self.Library.Window
                local function _doDelete()
                    local path=self.Folder.."/settings/"..name..".json"
                    if isfile(path) then delfile(path) end
                    self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Deleted %q",name),Duration=7})
                    SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                    SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
                end
                if win then
                    win:Dialog({
                        Title="Delete config?",
                        Content=string.format("Are you sure you want to permanently delete %q?",name),
                        Buttons={
                            {Title="Delete", Callback=_doDelete},
                            {Title="Cancel"},
                        },
                    })
                else
                    _doDelete()
                end
            end})
            sec:AddButton({Title="Refresh list", Icon="solar/restart-bold", Callback=function()
                SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
                SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
            end})
            local autoBtn,_autoPath=nil,self.Folder.."/settings/autoload.txt"
            autoBtn=sec:AddButton({Title="Set as autoload", Icon="solar/star-bold", Description="Current autoload: none",Callback=function()
                local name=SaveManager.Options.SaveManager_ConfigList.Value
                if isfile(_autoPath) and readfile(_autoPath)==name then
                    delfile(_autoPath)
                    autoBtn:SetDesc("Current autoload: none")
                    self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Autoload disabled",Duration=7})
                else
                    if not name or name=="" then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="No config selected",Duration=7}) end
                    writefile(_autoPath,name)
                    autoBtn:SetDesc("Current autoload: "..name)
                    self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Set %q to autoload",name),Duration=7})
                end
            end})
            if isfile(_autoPath) then
                autoBtn:SetDesc("Current autoload: "..readfile(_autoPath))
            end
            SaveManager:SetIgnoreIndexes({"SaveManager_ConfigList","SaveManager_ConfigName"})
        end
        SaveManager:BuildFolderTree()
        x.SaveManager = SaveManager


        local InterfaceManager = {}
        InterfaceManager.Folder = "FluentSettings"
        InterfaceManager.Settings = { Theme="Blood Red", Acrylic=true, Transparency=true, Animated=true, MenuKeybind="LeftControl", Font="GothamSSm", DisableBG=false, Favorites={} }
        function InterfaceManager:SetFolder(folder) self.Folder=folder; self:BuildFolderTree() end
        function InterfaceManager:SetLibrary(lib) self.Library=lib end
        function InterfaceManager:BuildFolderTree()
            local parts=self.Folder:split("/"); local paths={}
            for idx=1,#parts do paths[#paths+1]=table.concat(parts,"/",1,idx) end
            table.insert(paths,self.Folder); table.insert(paths,self.Folder.."/settings")
            for _,str in ipairs(paths) do if not isfolder(str) then makefolder(str) end end
        end
        function InterfaceManager:GetFavorites()
            if type(self.Settings.Favorites) ~= "table" then self.Settings.Favorites = {} end
            return self.Settings.Favorites
        end
        function InterfaceManager:IsFavorite(name)
            for _, v in ipairs(self:GetFavorites()) do
                if v == name then return true end
            end
            return false
        end
        function InterfaceManager:SetFavorite(name, isFav)
            local favs = self:GetFavorites()
            if isFav then
                if not self:IsFavorite(name) then table.insert(favs, 1, name) end
            else
                for i, v in ipairs(favs) do if v == name then table.remove(favs, i); break end end
            end
            pcall(function() self:SaveSettings() end)
        end
        function InterfaceManager:SaveSettings() writefile(self.Folder.."/options.json",httpService:JSONEncode(InterfaceManager.Settings)) end
        function InterfaceManager:LoadSettings()
            local path=self.Folder.."/options.json"
            if isfile(path) then
                local ok,dec=pcall(httpService.JSONDecode,httpService,readfile(path))
                if ok and type(dec)=="table" then
                    for i,v in next,dec do
                        if i=="Favorites" then
                            InterfaceManager.Settings.Favorites = type(v)=="table" and v or {}
                        else
                            InterfaceManager.Settings[i]=v
                        end
                    end
                end
            end
            local lib = self.Library
            if lib and lib.Window and lib.Window.TabsAPI then
                pcall(function() lib.Window.TabsAPI:ReapplyFavoriteOrder() end)
            end
        end
        InterfaceManager.Fonts = {
            "GothamSSm","Gotham","Arial","ArialBold","Roboto","RobotoMono",
            "SourceSans","SourceSansBold","SourceSansItalic","SourceSansSemibold",
            "SourceSansLight","Silkscreen","Nunito","Ubuntu","LuckiestGuy",
            "IndieFlower","TitilliumWeb","Oswald","Balthazar","Jura",
        }
        InterfaceManager.FontPaths = {
            GothamSSm  = "rbxasset://fonts/families/GothamSSm.json",
            Gotham     = "rbxasset://fonts/families/Gotham.json",
            Arial      = "rbxasset://fonts/families/Arial.json",
            ArialBold  = "rbxasset://fonts/families/Arial.json",
            Roboto     = "rbxasset://fonts/families/Roboto.json",
            RobotoMono = "rbxasset://fonts/families/RobotoMono.json",
            SourceSans      = "rbxasset://fonts/families/SourceSansPro.json",
            SourceSansBold  = "rbxasset://fonts/families/SourceSansPro.json",
            SourceSansItalic= "rbxasset://fonts/families/SourceSansPro.json",
            SourceSansSemibold="rbxasset://fonts/families/SourceSansPro.json",
            SourceSansLight = "rbxasset://fonts/families/SourceSansPro.json",
            Silkscreen = "rbxasset://fonts/families/Silkscreen.json",
            Nunito     = "rbxasset://fonts/families/Nunito.json",
            Ubuntu     = "rbxasset://fonts/families/Ubuntu.json",
            LuckiestGuy= "rbxasset://fonts/families/LuckiestGuy.json",
            IndieFlower= "rbxasset://fonts/families/IndieFlower.json",
            TitilliumWeb="rbxasset://fonts/families/TitilliumWeb.json",
            Oswald     = "rbxasset://fonts/families/Oswald.json",
            Balthazar  = "rbxasset://fonts/families/Balthazar.json",
            Jura       = "rbxasset://fonts/families/Jura.json",
        }
        InterfaceManager.FontWeights = {
            ArialBold       = Enum.FontWeight.Bold,
            SourceSansBold  = Enum.FontWeight.Bold,
            SourceSansItalic= Enum.FontWeight.Regular,
            SourceSansSemibold=Enum.FontWeight.SemiBold,
            SourceSansLight = Enum.FontWeight.Light,
        }
        InterfaceManager.FontStyles = {
            SourceSansItalic = Enum.FontStyle.Italic,
        }
        InterfaceManager.FontSizeScale = {
            GothamSSm = 1.0, Gotham = 1.0, Arial = 1.05, ArialBold = 1.05,
            Roboto = 1.0, RobotoMono = 1.05,
            SourceSans = 1.05, SourceSansBold = 1.05, SourceSansItalic = 1.05,
            SourceSansSemibold = 1.05, SourceSansLight = 1.05,
            Silkscreen = 1.35, Nunito = 1.05, Ubuntu = 1.05,
            LuckiestGuy = 1.2, IndieFlower = 1.3, TitilliumWeb = 1.05,
            Oswald = 1.05, Balthazar = 1.25, Jura = 1.1,
        }
        function InterfaceManager:ApplyFont(name)
            local path = self.FontPaths[name]
            if not path then return end
            local weight = self.FontWeights[name] or Enum.FontWeight.Regular
            local style  = self.FontStyles[name]  or Enum.FontStyle.Normal
            local newFont = Font.new(path, weight, style)
            local scale = self.FontSizeScale[name] or 1.0
            if not self.Library then return end
            local function apply(inst, depth)
                if depth > 12 then return end
                for _, ch in ipairs(inst:GetChildren()) do
                    if ch:IsA("TextLabel") or ch:IsA("TextButton") or ch:IsA("TextBox") then
                        pcall(function()
                            local baseSize = ch:GetAttribute("_baseTextSize")
                            if not baseSize then
                                baseSize = ch.TextSize
                                ch:SetAttribute("_baseTextSize", baseSize)
                            end
                            ch.FontFace = newFont
                            ch.TextSize = baseSize * scale
                        end)
                    end
                    apply(ch, depth + 1)
                end
            end
            for _, gui in ipairs({self.Library.GUI, self.Library.ScrollGUI, self.Library.PopupGUI}) do
                if gui then apply(gui, 0) end
            end
            self.Settings.Font = name
            self:SaveSettings()
        end
        function InterfaceManager:ApplyCustomFont(source, weight, style)
            local newFont
            local ok = pcall(function()
                local src = tostring(source or "")
                local fw  = weight or Enum.FontWeight.Regular
                local fs  = style  or Enum.FontStyle.Normal
                if src:match("^rbxasset://") then
                    newFont = Font.new(src, fw, fs)
                elseif src:match("^rbxassetid://") then
                    local id = tonumber(src:match("%d+"))
                    newFont = Font.fromId(id, fw, fs)
                elseif tonumber(src) then
                    newFont = Font.fromId(tonumber(src), fw, fs)
                elseif self.FontPaths[src] then
                    newFont = Font.new(self.FontPaths[src], fw, fs)
                else
                    newFont = Font.new(
                        "rbxasset://fonts/families/" .. src .. ".json", fw, fs)
                end
            end)
            if not ok or not newFont then return end
            local gui = self.Library and self.Library.GUI
            if not gui then return end
            local function apply(inst, depth)
                if depth > 12 then return end
                for _, ch in ipairs(inst:GetChildren()) do
                    if ch:IsA("TextLabel") or ch:IsA("TextButton") or ch:IsA("TextBox") then
                        pcall(function() ch.FontFace = newFont end)
                    end
                    apply(ch, depth + 1)
                end
            end
            apply(gui, 0)
            self.Settings.CustomFont = tostring(source)
            self:SaveSettings()
        end
        function InterfaceManager:BuildInterfaceSection(tab)
            assert(self.Library,"Must set InterfaceManager.Library")
            local Library=self.Library
            local Settings=InterfaceManager.Settings
            InterfaceManager:LoadSettings()
            local section=tab:AddSection("Interface","lucide/tv-minimal")
            section:AddSpace({Height=6})
            local InterfaceTheme=section:AddDropdown("InterfaceTheme",{
                Title="Theme", Description="Changes the interface theme.",
                Icon="solar/palette-bold",
                Values=Library.Themes, Default=Settings.Theme,
                IsThemeSelector=true,
                DropdownOutsideWindow=true,
                IsManagerDropdown=true,
                Callback=function(Value)
                    Library:SetTheme(Value); Settings.Theme=Value; InterfaceManager:SaveSettings()
                end
            })
            InterfaceTheme:SetValue(Settings.Theme)
            section:AddToggle("AnimationToggle",{Title="Animated Window",Description="Enables shine/stroke animation on theme.",Icon="solar/stars-bold",Default=Settings.Animated,Callback=function(Value)
                Library.ShineEnabled=Value; Settings.Animated=Value; InterfaceManager:SaveSettings()
                Library:SetTheme(Library.Theme)
                if Library._RefreshOpenDropdownShine then Library._RefreshOpenDropdownShine() end
            end})
            section:AddToggle("TransparentToggle",{Title="Transparency",Description="Makes the interface transparent.",Icon="solar/eye-bold",Default=Settings.Transparency,Callback=function(Value)
                Library:ToggleTransparency(Value); Settings.Transparency=Value; InterfaceManager:SaveSettings()
                if Library._ManagerDropdownSyncs then
                    for _, fn in ipairs(Library._ManagerDropdownSyncs) do pcall(fn) end
                end
            end})
            section:AddToggle("DisableBGToggle",{Title="Disable Background Images",Description="Hides theme background images.",Icon="solar/eye-closed-bold",Default=Settings.DisableBG or false,Callback=function(Value)
                Settings.DisableBG=Value; InterfaceManager:SaveSettings()
                local gui=Library and Library.Window and Library.Window.AcrylicPaint
                if gui then local bg=gui.Frame:FindFirstChild("__ThemeBG"); if bg then bg.Visible=not Value end end
            end})
            if Library.UseAcrylic then
                section:AddToggle("AcrylicToggle",{Title="Acrylic",Description="Requires graphic quality 8+.",Icon="solar/layers-bold",Default=Settings.Acrylic,Callback=function(Value)
                    Library:ToggleAcrylic(Value); Settings.Acrylic=Value; InterfaceManager:SaveSettings()
                end})
            end
            local FontDropdown=section:AddDropdown("InterfaceFont",{
                Title="Font Manager", Description="Changes the UI font.",
                Icon="solar/text-bold",
                Values=InterfaceManager.Fonts, Default=Settings.Font or "GothamSSm",
                DropdownOutsideWindow=true,
                IsManagerDropdown=true,
                Callback=function(Value) InterfaceManager:ApplyFont(Value) end
            })
            FontDropdown:SetValue(Settings.Font or "GothamSSm")
            section:AddSpace({Height=6})
            local MenuKeybind=section:AddKeybind("MenuKeybind",{Title="Minimize Bind",Icon="solar/keyboard-bold",Default=Settings.MenuKeybind})
            MenuKeybind:OnChanged(function() Settings.MenuKeybind=MenuKeybind.Value; InterfaceManager:SaveSettings() end)
            Library.MinimizeKeybind=MenuKeybind
        end
        InterfaceManager:BuildFolderTree()
        x.InterfaceManager = InterfaceManager


        local FloatingButtonManager = {}
        FloatingButtonManager.Folder = "FloatingButtons"
        FloatingButtonManager.Buttons = {}  -- {frame=, button=, applyShape=}
        FloatingButtonManager.Library = nil
        local function serUDim2(u) return{ScaleX=u.X.Scale,OffsetX=u.X.Offset,ScaleY=u.Y.Scale,OffsetY=u.Y.Offset} end
        local function desUDim2(t2) return UDim2.new(t2.ScaleX or 0,t2.OffsetX or 0,t2.ScaleY or 0,t2.OffsetY or 0) end
        function FloatingButtonManager:SetLibrary(lib) self.Library=lib end
        function FloatingButtonManager:SetFolder(folder) self.Folder=folder; self:BuildFolderTree() end
        function FloatingButtonManager:SetIgnoreIndexes(list) end
        function FloatingButtonManager:BuildFolderTree()
            local paths={self.Folder,self.Folder.."/settings"}
            for _,p2 in ipairs(paths) do if not isfolder(p2) then makefolder(p2) end end
        end
        FloatingButtonManager:BuildFolderTree()
        -- AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
        -- frameOrButton: the draggable Frame (preferred) or TextButton
        -- applyShapeCallback: optional function(isCircle) to restore shape on load
        -- frame: optional explicit Frame if frameOrButton is a TextButton child
        function FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
            local targetFrame = frame or frameOrButton
            -- auto-detect: if frameOrButton is TextButton, use its Parent as frame
            if frameOrButton:IsA("TextButton") and not frame then
                local p = frameOrButton.Parent
                if p and p:IsA("Frame") then targetFrame = p end
            end
            self.Buttons[id] = {
                frame        = targetFrame,
                button       = frameOrButton,
                applyShape   = applyShapeCallback,
            }
            targetFrame:SetAttribute("Locked",   locked   or false)
            targetFrame:SetAttribute("IsCircle",  isCircle or false)
        end
        function FloatingButtonManager:Save(name)
            local path=self.Folder.."/settings/"..name..".json"
            local data={}
            for id,entry in pairs(self.Buttons) do
                local f = entry.frame or entry  -- backwards compat: entry may be a Frame directly
                data[id]={
                    size     = serUDim2(f.Size),
                    position = serUDim2(f.Position),
                    locked   = f:GetAttribute("Locked")   or false,
                    isCircle = f:GetAttribute("IsCircle") or false,
                }
            end
            local ok,enc=pcall(httpService.JSONEncode,httpService,data)
            if not ok then return false,"encode failed" end
            writefile(path,enc)
            return true
        end
        function FloatingButtonManager:Load(name)
            local path=self.Folder.."/settings/"..name..".json"
            if not isfile(path) then return false,"no such file" end
            local ok,dec=pcall(httpService.JSONDecode,httpService,readfile(path))
            if not ok then return false,"decode failed" end
            for id,saved in pairs(dec) do
                local entry=self.Buttons[id]
                if entry then
                    local f = entry.frame or entry  -- backwards compat
                    if saved.position then f.Position = desUDim2(saved.position) end
                    if saved.size     then f.Size     = desUDim2(saved.size)     end
                    f:SetAttribute("Locked",   saved.locked   or false)
                    f:SetAttribute("IsCircle", saved.isCircle or false)
                    -- call applyShape callback if provided so shape is restored correctly
                    if entry.applyShape then
                        task.defer(function()
                            pcall(entry.applyShape, saved.isCircle or false)
                        end)
                    end
                end
            end
            return true
        end
        function FloatingButtonManager:RefreshConfigList()
            local list=listfiles(self.Folder.."/settings")
            local out={}
            for _,file in ipairs(list) do
                if file:sub(-5)==".json" then
                    local nm=file:match("([^/\\]+)%.json$")
                    if nm then table.insert(out,nm) end
                end
            end
            return out
        end
        function FloatingButtonManager:LoadAutoloadConfig()
            local autoPath=self.Folder.."/settings/autoload.txt"
            if isfile(autoPath) then
                local name=readfile(autoPath)
                local ok,err=self:Load(name)
                if not ok then
                    return self.Library:Notify({Title="Floating Buttons",Content="Failed to load autoload layout: "..tostring(err),Duration=5})
                end
                self.Library:Notify({Title="Floating Buttons",Content=string.format("Auto loaded layout %q",name),Duration=5})
            end
        end
        function FloatingButtonManager:BuildConfigSection(tab)
            assert(self.Library,"Must set FloatingButtonManager.Library")
            local section=tab:AddSection("Floating Buttons Config","lucide/file-type-corner")
            section:AddInput("FB_ConfigName",{Title="Layout name",Icon="solar/widget-bold",Placeholder="Enter name..."})
            section:AddDropdown("FB_ConfigList",{Title="Layouts list",Values=self:RefreshConfigList(),AllowNull=true,NoSearch=true,Icon="solar/list-bold",DropdownOutsideWindow=true,IsManagerDropdown=true})
            section:AddButton({Title="Load layout",Icon="solar/upload-minimalistic-bold",Callback=function()
                local name=self.Library.Options.FB_ConfigList.Value
                if not name or name=="" then return self.Library:Notify({Title="Floating Buttons",Content="No layout selected",Duration=5}) end
                local ok,err=self:Load(name)
                if not ok then return self.Library:Notify({Title="Floating Buttons",Content="Failed to load: "..tostring(err),Duration=5}) end
                self.Library:Notify({Title="Floating Buttons",Content=string.format("Loaded layout %q",name),Duration=5})
            end})
            local function _doCreateFB(name)
                local ok,err=self:Save(name)
                if not ok then return self.Library:Notify({Title="Floating Buttons",Content="Failed to save: "..tostring(err),Duration=5}) end
                self.Library:Notify({Title="Floating Buttons",Content=string.format("Saved layout %q",name),Duration=5})
                self.Library.Options.FB_ConfigList:SetValues(self:RefreshConfigList())
                self.Library.Options.FB_ConfigList:SetValue(nil)
            end
            section:AddButton({Title="Create layout",Icon="solar/diskette-bold",Callback=function()
                local name=self.Library.Options.FB_ConfigName.Value
                if not name or name:gsub(" ","")=="" then
                    return self.Library:Notify({Title="Floating Buttons",Content="Invalid layout name",Duration=5})
                end
                local path=self.Folder.."/settings/"..name..".json"
                local win=self.Library.Window
                if isfile(path) and win then
                    win:Dialog({
                        Title="Overwrite layout?",
                        Content=string.format("A layout named %q already exists. Overwrite it?",name),
                        Buttons={
                            {Title="Overwrite", Callback=function() _doCreateFB(name) end},
                            {Title="Cancel"},
                        },
                    })
                    return
                end
                _doCreateFB(name)
            end})
            section:AddButton({Title="Overwrite layout",Icon="solar/refresh-bold",Callback=function()
                local name=self.Library.Options.FB_ConfigList.Value
                if not name or name=="" then return self.Library:Notify({Title="Floating Buttons",Content="No layout selected",Duration=5}) end
                local ok,err=self:Save(name)
                if not ok then return self.Library:Notify({Title="Floating Buttons",Content="Failed to overwrite: "..tostring(err),Duration=5}) end
                self.Library:Notify({Title="Floating Buttons",Content=string.format("Overwrote layout %q",name),Duration=5})
            end})
            section:AddButton({Title="Delete layout",Icon="solar/close-circle-bold",Callback=function()
                local name=self.Library.Options.FB_ConfigList.Value
                if not name or name=="" then return self.Library:Notify({Title="Floating Buttons",Content="No layout selected",Duration=5}) end
                local win=self.Library.Window
                local function _doDeleteFB()
                    local path=self.Folder.."/settings/"..name..".json"
                    if isfile(path) then delfile(path) end
                    self.Library:Notify({Title="Floating Buttons",Content=string.format("Deleted layout %q",name),Duration=5})
                    self.Library.Options.FB_ConfigList:SetValues(self:RefreshConfigList())
                    self.Library.Options.FB_ConfigList:SetValue(nil)
                end
                if win then
                    win:Dialog({
                        Title="Delete layout?",
                        Content=string.format("Are you sure you want to permanently delete %q?",name),
                        Buttons={
                            {Title="Delete", Callback=_doDeleteFB},
                            {Title="Cancel"},
                        },
                    })
                else
                    _doDeleteFB()
                end
            end})
            section:AddButton({Title="Refresh list",Icon="solar/restart-bold",Callback=function()
                self.Library.Options.FB_ConfigList:SetValues(self:RefreshConfigList())
                self.Library.Options.FB_ConfigList:SetValue(nil)
            end})
            local autoPath=self.Folder.."/settings/autoload.txt"
            local AutoloadButton
            AutoloadButton=section:AddButton({Title="Set as autoload",Icon="solar/star-bold",Description="Current autoload layout: none",Callback=function()
                local name=self.Library.Options.FB_ConfigList.Value
                if isfile(autoPath) then
                    delfile(autoPath)
                    AutoloadButton:SetDesc("Current autoload layout: none")
                    self.Library:Notify({Title="Floating Buttons",Content="Autoload disabled",Duration=5})
                else
                    if not name or name=="" then return self.Library:Notify({Title="Floating Buttons",Content="No layout selected",Duration=5}) end
                    writefile(autoPath,name)
                    AutoloadButton:SetDesc("Current autoload layout: "..name)
                    self.Library:Notify({Title="Floating Buttons",Content=string.format("Set %q to autoload",name),Duration=5})
                end
            end})
            if isfile(autoPath) then
                local nm=readfile(autoPath)
                if nm and nm~="" then AutoloadButton:SetDesc("Current autoload layout: "..nm) end
            end
            self:SetIgnoreIndexes({"FB_ConfigList","FB_ConfigName"})
        end
        x.FloatingButtonManager = FloatingButtonManager

        local _MM = {}
        _MM.Folder = "BetterFluentCache"

        function _MM:SetFolder(f)
            self.Folder = f
        end

        function _MM:_init(sub)
            pcall(function()
                if not isfolder(self.Folder) then makefolder(self.Folder) end
                local p = self.Folder.."/"..sub
                if not isfolder(p) then makefolder(p) end
            end)
        end

        function _MM:_rname(ext)
            local s = "abcdefghijklmnopqrstuvwxyz0123456789"
            local n = ""
            for _=1,12 do local i=math.random(1,#s); n=n..s:sub(i,i) end
            return n.."."..ext
        end

        function _MM:_fetch(src, sub, exts, defExt, noDownload)
            if type(src)~="string" or src=="" then return "" end
            if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
            if src:match("^%d+$") then return "rbxassetid://"..src end
            if not src:match("^https?://") then return "" end
            self:_init(sub)
            local dir = self.Folder.."/"..sub
            local cleanPath = src:match("^[^?#]+") or src
            local ext = (cleanPath:match("%.([^%.%/]+)$") or defExt):lower()
            if not exts[ext] then ext = defExt end
            local hs = game:GetService("HttpService")
            local mapPath = dir.."/_map.json"
            local map = {}
            pcall(function()
                if isfile(mapPath) then
                    local ok,d = pcall(hs.JSONDecode, hs, readfile(mapPath))
                    if ok and type(d)=="table" then map=d end
                end
            end)
            local key = tostring(#src).."_"..src:sub(1,40):gsub("[^%w]","")
            if map[key] then
                local cp = dir.."/"..map[key]
                if isfile(cp) then
                    local ok,a = pcall(getcustomasset, cp)
                    if ok and a and a~="" then return a end
                end
                map[key] = nil
            end
            if noDownload then return nil end
            local body = nil
            local dlOk = pcall(function()
                local req = (syn and syn.request) or http_request or request
                local r = req({Url=src,Method="GET",Headers={["User-Agent"]="Roblox/WinInet"}})
                if r and r.Body and #r.Body > 128 then body = r.Body end
            end)
            if not (dlOk and body) then return "" end
            local isFtyp = #body >= 8 and body:sub(5,8) == "ftyp"
            local fname = self:_rname(isFtyp and "ogg" or ext)
            local path = dir.."/"..fname
            writefile(path, body)
            if isfile(path) then
                local ok2,a = pcall(getcustomasset, path)
                if ok2 and a and a~="" then
                    map[key] = fname
                    pcall(function()
                        local ok3,enc = pcall(hs.JSONEncode, hs, map)
                        if ok3 then writefile(mapPath, enc) end
                    end)
                    return a
                end
            end
            return ""
        end

        function _MM:Video(src)
            if type(src)~="string" or src=="" then return "" end
            if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
            if src:match("^%d+$") then return "rbxassetid://"..src end
            if not src:match("^https?://") then return "" end
            local ext = (src:match("%.(%a+)%??[^/]*$") or "webm"):lower()
            if not ({webm=1,mp4=1,ogg=1,mov=1})[ext] then ext="webm" end
            if ext == "mp4" or ext == "mov" then ext = "webm" end
            self:_init("videos")
            local dir = self.Folder.."/videos"
            local mapPath = dir.."/_map.json"
            local hs = game:GetService("HttpService")
            local map = {}
            pcall(function()
                if isfile(mapPath) then
                    local ok,d = pcall(hs.JSONDecode, hs, readfile(mapPath))
                    if ok and type(d)=="table" then map=d end
                end
            end)
            local key = tostring(#src).."_"..src:sub(1,40):gsub("[^%w]","")
            if map[key] then
                local cp = dir.."/"..map[key]
                if isfile(cp) then
                    local ok,a = pcall(getcustomasset, cp)
                    if ok and a and a~="" then return a end
                end
                map[key] = nil
            end
            local fname = self:_rname(ext)
            local path  = dir.."/"..fname
            local body  = nil
            local reqOk = pcall(function()
                local req = (syn and syn.request) or http_request or request
                local r = req({Url=src,Method="GET",Headers={["User-Agent"]="Roblox/WinInet"}})
                if r and r.Body and #r.Body > 512 then
                    local peek = r.Body:sub(1,15):lower()
                    if peek:find("<!doctype") or peek:find("<html") then return end
                    body = r.Body
                    writefile(path, body)
                end
            end)
            if reqOk and body and isfile(path) then
                local ok2,a = pcall(getcustomasset, path)
                if ok2 and a and a~="" then
                    map[key] = fname
                    pcall(function()
                        local ok3,enc = pcall(hs.JSONEncode, hs, map)
                        if ok3 then writefile(mapPath, enc) end
                    end)
                    return a
                end
            end
            return ""
        end
        function _MM:Image(src) return self:_fetch(src,"images",{png=1,jpg=1,jpeg=1,webp=1,gif=1},"png") end
        function _MM:Audio(src, noDownload) return self:_fetch(src,"audio", {mp3=1,ogg=1,wav=1,flac=1},"mp3", noDownload) end

        x.MediaManager = _MM


        function x.RegisterCustomTheme(C, D, E)
            if type(D) ~= "string" or type(E) ~= "table" then return false end
            E.Name = D
            if not E.ThemeAccentColors and E.Accent then E.ThemeAccentColors = {E.Accent} end
            if E.Background == nil then E.Background = nil end
            if E.BackgroundTransparency == nil then E.BackgroundTransparency = 0 end
            if type(E.ElementBorderThickness) ~= "number" then E.ElementBorderThickness = 1 end
            if type(E.DropdownBorderThickness) ~= "number" then E.DropdownBorderThickness = 1 end
            e(o.Themes)[D] = E
            local found = false
            for _, v in ipairs(x.Themes) do if v == D then found = true; break end end
            if not found then table.insert(x.Themes, D) end
            return true
        end
        x.AddCustomTheme = x.RegisterCustomTheme


        if getgenv then
            pcall(function() getgenv().Fluent_Themes = e(o.Themes) end)
            getgenv().Fluent = x
            pcall(function()
                getgenv().SaveManager           = x.SaveManager
                getgenv().InterfaceManager      = x.InterfaceManager
                getgenv().FloatingButtonManager = x.FloatingButtonManager
                getgenv().FBM                   = x.FloatingButtonManager
                getgenv().MediaManager          = x.MediaManager
            end)
        end
        return x
    end,
    function()
        local c, d, e, f, g = b(2)
        local h = {AcrylicBlur = e(d.AcrylicBlur), CreateAcrylic = e(d.CreateAcrylic), AcrylicPaint = e(d.AcrylicPaint)}
        function h.init()
            local i = Instance.new "DepthOfFieldEffect"
            i.FarIntensity = 0
            i.InFocusRadius = 0.1
            i.NearIntensity = 1
            local j = {}
            function h.Enable()
                for k, l in pairs(j) do
                    l.Enabled = false
                end
                i.Parent = game:GetService "Lighting"
            end
            function h.Disable()
                for k, l in pairs(j) do
                    l.Enabled = l.enabled
                end
                i.Parent = nil
            end
            local k = function()
                local k = function(k)
                    if k:IsA "DepthOfFieldEffect" then
                        j[k] = {enabled = k.Enabled}
                    end
                end
                for l, m in pairs(game:GetService "Lighting":GetChildren()) do
                    k(m)
                end
                if game:GetService "Workspace".CurrentCamera then
                    for n, o in pairs(game:GetService "Workspace".CurrentCamera:GetChildren()) do
                        k(o)
                    end
                end
            end
            k()
            h.Enable()
        end
        return h
    end,
    function()
        local c, d, e, f, g = b(3)
        local h, i, j, k = e(d.Parent.Parent.Creator), e(d.Parent.CreateAcrylic), unpack(e(d.Parent.Utils))
        local l = function(l)
            local m = {}
            l = l or 0.001
            local n, o = {topLeft = Vector2.new(), topRight = Vector2.new(), bottomRight = Vector2.new()}, i()
            o.Parent = workspace
            local p, q = function(p, q)
                    n.topLeft = q
                    n.topRight = q + Vector2.new(p.X, 0)
                    n.bottomRight = q + p
                end, function()
                    local p = game:GetService "Workspace".CurrentCamera
                    if p then
                        p = p.CFrame
                    end
                    local q = p
                    if not q then
                        q = CFrame.new()
                    end
                    local r, s, t, u = q, n.topLeft, n.topRight, n.bottomRight
                    local v, w, x = j(s, l), j(t, l), j(u, l)
                    local y, z = (w - v).Magnitude, (w - x).Magnitude
                    o.CFrame = CFrame.fromMatrix((v + x) / 2, r.XVector, r.YVector, r.ZVector)
                    o.Mesh.Scale = Vector3.new(y, z, 0)
                end
            local r, s = function(r)
                    local s = k()
                    local t, u = r.AbsoluteSize - Vector2.new(s, s), r.AbsolutePosition + Vector2.new(s / 2, s / 2)
                    p(t, u)
                    task.spawn(q)
                end, function()
                    local r = game:GetService "Workspace".CurrentCamera
                    if not r then
                        return
                    end
                    table.insert(m, r:GetPropertyChangedSignal "CFrame":Connect(q))
                    table.insert(m, r:GetPropertyChangedSignal "ViewportSize":Connect(q))
                    table.insert(m, r:GetPropertyChangedSignal "FieldOfView":Connect(q))
                    task.spawn(q)
                end
            o.Destroying:Connect(
                function()
                    for t, u in m do
                        pcall(
                            function()
                                u:Disconnect()
                            end
                        )
                    end
                end
            )
            s()
            return r, o
        end
        return function(m)
            local n, o, p = {}, l(m)
            local q = h.New("Frame", {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1)})
            h.AddSignal(
                q:GetPropertyChangedSignal "AbsolutePosition",
                function()
                    o(q)
                end
            )
            h.AddSignal(
                q:GetPropertyChangedSignal "AbsoluteSize",
                function()
                    o(q)
                end
            )
            n.AddParent = function(r)
                h.AddSignal(
                    r:GetPropertyChangedSignal "Visible",
                    function()
                        n.SetVisibility(r.Visible)
                    end
                )
            end
            n.SetVisibility = function(r)
                p.Transparency = r and 0.98 or 1
            end
            local _hbConn = game:GetService("RunService").Heartbeat:Connect(function()
                if q and q.Parent then
                    o(q)
                end
            end)
            q.AncestryChanged:Connect(function()
                if not q.Parent and _hbConn then
                    _hbConn:Disconnect()
                end
            end)
            n.Frame = q
            n.Model = p
            return n
        end
    end,
    function()
        local c, d, e, f, g = b(4)
        local h, i = e(d.Parent.Parent.Creator), e(d.Parent.AcrylicBlur)
        local j = h.New
        return function(k)
            local l = {}
            l.Frame =
                j(
                "Frame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 0.9,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BorderSizePixel = 0
                },
                {
                    j(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://8992230677",
                            ScaleType = "Slice",
                            SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Size = UDim2.new(1, 120, 1, 116),
                            Position = UDim2.new(0.5, 0, 0.5, 0),
                            BackgroundTransparency = 1,
                            ImageColor3 = Color3.fromRGB(0, 0, 0),
                            ImageTransparency = 0.7
                        }
                    ),
                    j("UICorner", {CornerRadius = UDim.new(0, 10)}),
                    j(
                        "Frame",
                        {
                            BackgroundTransparency = 0.45,
                            Size = UDim2.fromScale(1, 1),
                            Name = "Background",
                            ThemeTag = {BackgroundColor3 = "AcrylicMain"}
                        },
                        {j("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    j(
                        "Frame",
                        {
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                            BackgroundTransparency = 0.4,
                            Size = UDim2.fromScale(1, 1)
                        },
                        {
                            j("UICorner", {CornerRadius = UDim.new(0, 10)}),
                            j("UIGradient", {Rotation = 90, ThemeTag = {Color = "AcrylicGradient"}})
                        }
                    ),
                    j(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://9968344105",
                            ImageTransparency = 0.98,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 128, 0, 128),
                            Size = UDim2.fromScale(1, 1),
                            BackgroundTransparency = 1
                        },
                        {j("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    j(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://9968344227",
                            ImageTransparency = 0.9,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 128, 0, 128),
                            Size = UDim2.fromScale(1, 1),
                            BackgroundTransparency = 1,
                            ThemeTag = {ImageTransparency = "AcrylicNoise"}
                        },
                        {j("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    j(
                        "Frame",
                        {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2},
                        {
                            j("UICorner", {CornerRadius = UDim.new(0, 10)}),
                            j("UIStroke", {Transparency = 0.5, Thickness = 1, ThemeTag = {Color = "AcrylicBorder"}})
                        }
                    )
                }
            )
            local m
            if e(d.Parent.Parent).UseAcrylic and not (k and k.NoBlur) then
                m = i()
                m.Frame.Parent = l.Frame
                l.Model = m.Model
                l.AddParent = m.AddParent
                l.SetVisibility = m.SetVisibility
            end
            return l
        end
    end,
    function()
        local c, d, e, f, g = b(5)
        local h = d.Parent.Parent
        local i = e(h.Creator)
        local j = function()
            local j =
                i.New(
                "Part",
                {
                    Name = "Body",
                    Color = Color3.new(0, 0, 0),
                    Material = Enum.Material.Glass,
                    Size = Vector3.new(1, 1, 0),
                    Anchored = true,
                    CanCollide = false,
                    CanQuery = false,
                    CanTouch = false,
                    Locked = true,
                    CastShadow = false,
                    Transparency = 0.98
                },
                {i.New("SpecialMesh", {MeshType = Enum.MeshType.Brick, Offset = Vector3.new(0, 0, -1E-6)})}
            )
            return j
        end
        return j
    end,
    function()
        local c, d, e, f, g = b(6)
        local h, i = function(h, i, j, k, l)
                return (h - i) * (l - k) / (j - i) + k
            end, function(h, i)
                local j = game:GetService "Workspace".CurrentCamera:ScreenPointToRay(h.X, h.Y)
                return j.Origin + j.Direction * i
            end
        local j = function()
            return 0
        end
        return {i, j}
    end,
    [8] = function() --[[ Assets ]]
        local c, d, e, f, g = b(8)
        return {
            Close = "rbxassetid://9886659671",
            Min = "rbxassetid://9886659276",
            Max = "rbxassetid://9886659406",
            Restore = "rbxassetid://9886659001"
        }
    end,
    [9] = function() --[[ Button_Comp ]]
        local c, d, e, f, g = b(9)
        local h = d.Parent.Parent
        local i, j = e(h.Packages.Flipper), e(h.Creator)
        local k, l = j.New, i.Spring.new
        return function(m, n, o)
            o = o or false
            local p = {}
            p.Title =
                k(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 14,
                    TextWrapped = true,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1),
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            p.HoverFrame =
                k(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ThemeTag = {BackgroundColor3 = "Hover"}},
                {k("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            p.Frame =
                k(
                "TextButton",
                {Size = UDim2.new(0, 0, 0, 32), Parent = n, ThemeTag = {BackgroundColor3 = "DialogButton"}},
                {
                    k("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    k(
                        "UIStroke",
                        {
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            Transparency = 0.65,
                            ThemeTag = {Color = "DialogButtonBorder"}
                        }
                    ),
                    p.HoverFrame,
                    p.Title
                }
            )
            local q, r = j.SpringMotor(1, p.HoverFrame, "BackgroundTransparency", o)
            j.AddSignal(
                p.Frame.MouseEnter,
                function()
                    r(0.97)
                end
            )
            j.AddSignal(
                p.Frame.MouseLeave,
                function()
                    r(1)
                end
            )
            j.AddSignal(
                p.Frame.MouseButton1Down,
                function()
                    r(1)
                end
            )
            j.AddSignal(
                p.Frame.MouseButton1Up,
                function()
                    r(0.97)
                end
            )
            return p
        end
    end,
    [10] = function() --[[ Dialog_Comp ]]
        local c, d, e, f, g = b(10)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            d.Parent.Parent
        local l, m = e(k.Packages.Flipper), e(k.Creator)
        local n, o, p, q = l.Spring.new, l.Instant.new, m.New, {Window = nil}
        function q.Init(r, s)
            q.Window = s
            return q
        end
        function q.Create(r)
            local s = {Buttons = 0}
            s.TintFrame =
                p(
                "TextButton",
                {
                    Text = "",
                    Size = UDim2.fromScale(1, 1),
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
                    BackgroundTransparency = 1,
                    Parent = q.Window.Root
                },
                {p("UICorner", {CornerRadius = UDim.new(0, 8)})}
            )
            local t, u = m.SpringMotor(1, s.TintFrame, "BackgroundTransparency", true)
            s.ButtonHolder =
                p(
                "Frame",
                {
                    Size = UDim2.new(1, -40, 1, -40),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    BackgroundTransparency = 1
                },
                {
                    p(
                        "UIListLayout",
                        {
                            Padding = UDim.new(0, 10),
                            FillDirection = Enum.FillDirection.Horizontal,
                            HorizontalAlignment = Enum.HorizontalAlignment.Center,
                            SortOrder = Enum.SortOrder.LayoutOrder
                        }
                    )
                }
            )
            s.ButtonHolderFrame =
                p(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 70),
                    Position = UDim2.new(0, 0, 1, -70),
                    ThemeTag = {BackgroundColor3 = "DialogHolder"}
                },
                {
                    p("Frame", {Size = UDim2.new(1, 0, 0, 1), ThemeTag = {BackgroundColor3 = "DialogHolderLine"}}),
                    s.ButtonHolder
                }
            )
            s.Title =
                p(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.SemiBold,
                        Enum.FontStyle.Normal
                    ),
                    Text = "Dialog",
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 22,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0, 22),
                    Position = UDim2.fromOffset(20, 25),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            s.Scale = p("UIScale", {Scale = 1})
            local v, w = m.SpringMotor(1.1, s.Scale, "Scale")
            s.Root =
                p(
                "CanvasGroup",
                {
                    Size = UDim2.fromOffset(300, 165),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    GroupTransparency = 1,
                    Parent = s.TintFrame,
                    ThemeTag = {BackgroundColor3 = "Dialog"}
                },
                {
                    p("UICorner", {CornerRadius = UDim.new(0, 8)}),
                    p("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "DialogBorder"}}),
                    s.Scale,
                    s.Title,
                    s.ButtonHolderFrame
                }
            )
            local x, y = m.SpringMotor(1, s.Root, "GroupTransparency")
            function s.Open(z)
                e(k).DialogOpen = true
                s.Scale.Scale = 1.1
                u(0.75)
                y(0)
                w(1)
            end
            function s.Close(z)
                e(k).DialogOpen = false
                u(1)
                y(1)
                w(1.1)
                s.Root.UIStroke:Destroy()
                task.wait(0.15)
                s.TintFrame:Destroy()
            end
            function s.Button(z, A, B)
                s.Buttons = s.Buttons + 1
                A = A or "Button"
                B = B or function()
                    end
                local C = e(k.Components.Button)("", s.ButtonHolder, true)
                C.Title.Text = A
                for D, E in next, s.ButtonHolder:GetChildren() do
                    if E:IsA "TextButton" then
                        E.Size = UDim2.new(1 / s.Buttons, -(((s.Buttons - 1) * 10) / s.Buttons), 0, 32)
                    end
                end
                m.AddSignal(
                    C.Frame.MouseButton1Click,
                    function()
                        e(k):SafeCallback(B, s.InputBox and s.InputBox.Text or nil)
                        pcall(
                            function()
                                s:Close()
                            end
                        )
                    end
                )
                return C
            end
            function s.AddInput(z, placeholder, default)
                s.InputHolder = p(
                    "Frame",
                    {
                        Size = UDim2.new(1, -40, 0, 36),
                        Position = UDim2.fromOffset(20, 0),
                        BackgroundTransparency = 0,
                        Parent = s.Root,
                        ThemeTag = {BackgroundColor3 = "DialogInput"},
                    },
                    {
                        p("UICorner", {CornerRadius = UDim.new(0, 6)}),
                        p("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "DialogInputLine"}}),
                    }
                )
                s.InputBox = p("TextBox", {
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    Text = default or "",
                    PlaceholderText = placeholder or "Enter text...",
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    ClearTextOnFocus = false,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -20, 1, 0),
                    Position = UDim2.fromOffset(10, 0),
                    ThemeTag = {TextColor3 = "Text", PlaceholderColor3 = "SubText"},
                    Parent = s.InputHolder,
                })
                return s.InputBox
            end
            function s.GetInputText(z)
                return s.InputBox and s.InputBox.Text or nil
            end
            return s
        end
        return q
    end,
    [11] = function() --[[ Element_Base ]]
        local c, d, e, f, g = b(11)
        local h = d.Parent.Parent
        local i, j = e(h.Packages.Flipper), e(h.Creator)
        local k, l = j.New, i.Spring.new
        local _TS_svc = game:GetService("TextService")
        local _RS_svc = game:GetService("RunService")
        local _marqueeConns = setmetatable({}, {__mode = "k"})
        local _marqueeResizeConns = setmetatable({}, {__mode = "k"})
        local function _measureText(label)
            local w = 0
            pcall(function()
                local params = Instance.new("GetTextBoundsParams")
                params.Text = label.Text
                params.Size = label.TextSize
                params.Font = label.FontFace
                params.Width = math.huge
                w = _TS_svc:GetTextBoundsAsync(params).X
            end)
            if w <= 0 then
                pcall(function() w = label.TextBounds.X end)
            end
            return w
        end
        local function _startMarquee(label)
            if not label then return end
            if _marqueeConns[label] then
                pcall(function() _marqueeConns[label]:Disconnect() end)
                _marqueeConns[label] = nil
            end
            local function tryStart(attempt)
                attempt = attempt or 0
                if not label or not label.Parent then return end
                local avail = label.AbsoluteSize.X
                if avail <= 2 then
                    if attempt < 30 then
                        task.delay(0.2, function() tryStart(attempt + 1) end)
                    end
                    return
                end
                local fullW = _measureText(label)
                if fullW <= 0 then
                    if attempt < 30 then
                        task.delay(0.2, function() tryStart(attempt + 1) end)
                    end
                    return
                end
                local baseY = label.Position.Y
                local baseXS = label.Position.X.Scale
                if fullW <= avail + 2 then
                    label.TextTruncate = Enum.TextTruncate.AtEnd
                    label.Position = UDim2.new(baseXS, 0, baseY.Scale, baseY.Offset)
                    return
                end
                label.TextTruncate = Enum.TextTruncate.None
                local scrollDist = fullW - avail + 12
                local speed, pause = 44, 1.8
                label.Position = UDim2.new(baseXS, 0, baseY.Scale, baseY.Offset)
                local phase, timer = 0, 0
                local conn
                conn = _RS_svc.Heartbeat:Connect(function(dt)
                    if not label or not label.Parent then
                        conn:Disconnect()
                        if _marqueeConns[label] == conn then _marqueeConns[label] = nil end
                        return
                    end
                    if phase == 0 then
                        timer += dt
                        if timer >= pause then timer = 0; phase = 1 end
                    elseif phase == 1 then
                        local nxt = math.max(label.Position.X.Offset - speed * dt, -scrollDist)
                        label.Position = UDim2.new(baseXS, nxt, baseY.Scale, baseY.Offset)
                        if nxt <= -scrollDist then phase = 2; timer = 0 end
                    elseif phase == 2 then
                        timer += dt
                        if timer >= pause then timer = 0; phase = 3 end
                    else
                        local nxt = math.min(label.Position.X.Offset + speed * dt, 0)
                        label.Position = UDim2.new(baseXS, nxt, baseY.Scale, baseY.Offset)
                        if nxt >= 0 then phase = 0; timer = 0 end
                    end
                end)
                if _marqueeConns[label] then
                    pcall(function() _marqueeConns[label]:Disconnect() end)
                end
                _marqueeConns[label] = conn
            end
            task.delay(0.3, function() tryStart(0) end)
            if not _marqueeResizeConns[label] then
                local rconn
                rconn = label:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                    if not label or not label.Parent then
                        rconn:Disconnect()
                        _marqueeResizeConns[label] = nil
                        return
                    end
                    _startMarquee(label)
                end)
                _marqueeResizeConns[label] = rconn
            end
        end
        return function(m, n, o, p, q)
            local q_icon = (type(q) == "table") and q or nil
            local q = {}
            local iconOffset = 0
            q.TitleLabel =
                k(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.Medium,
                        Enum.FontStyle.Normal
                    ),
                    Text = m,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 13,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            q.DescLabel =
                k(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = n,
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 12,
                    TextWrapped = true,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 14),
                    ThemeTag = {TextColor3 = "SubText"}
                }
            )
            q.LabelHolder =
                k(
                "Frame",
                {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Position = UDim2.fromOffset(10, 0),
                    Size = UDim2.new(1, -28, 0, 0)
                },
                {
                    k(
                        "UIListLayout",
                        {SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Center}
                    ),
                    k("UIPadding", {PaddingBottom = UDim.new(0, 13), PaddingTop = UDim.new(0, 13)}),
                    q.TitleLabel,
                    q.DescLabel
                }
            )
            q.Border =
                k(
                "UIStroke",
                {
                    Transparency = 0.5,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(0, 0, 0),
                    ThemeTag = {Color = "ElementBorder"}
                }
            )
            q.Frame =
                k(
                "TextButton",
                {
                    Size = UDim2.new(1, 0, 0, 0),
                    BackgroundTransparency = 0.89,
                    BackgroundColor3 = Color3.fromRGB(130, 130, 130),
                    Parent = o,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Text = "",
                    LayoutOrder = 7,
                    ThemeTag = {BackgroundColor3 = "Element", BackgroundTransparency = "ElementTransparency"}
                },
                {k("UICorner", {CornerRadius = UDim.new(0, 4)}), q.Border, q.LabelHolder}
            )
            function q.SetTitle(r, s)
                q.TitleLabel.Text = s
                _startMarquee(q.TitleLabel)
            end
            function q.SetDesc(r, s)
                if s == nil then
                    s = ""
                end
                if s == "" then
                    q.DescLabel.Visible = false
                else
                    q.DescLabel.Visible = true
                end
                q.DescLabel.Text = s
            end
            function q.Destroy(r)
                q.Frame:Destroy()
            end
            q:SetTitle(m)
            q:SetDesc(n)
            -- IconColor is applied in _addElementToSection via E.IconColor check
            if p then
                local r, s, t =
                    h.Themes,
                    j.SpringMotor(
                        j.GetThemeProperty "ElementTransparency",
                        q.Frame,
                        "BackgroundTransparency",
                        false,
                        true
                    )
                j.AddSignal(
                    q.Frame.MouseEnter,
                    function()
                        t(j.GetThemeProperty "ElementTransparency" - j.GetThemeProperty "HoverChange")
                    end
                )
                j.AddSignal(
                    q.Frame.MouseLeave,
                    function()
                        t(j.GetThemeProperty "ElementTransparency")
                    end
                )
                j.AddSignal(
                    q.Frame.MouseButton1Down,
                    function()
                        t(j.GetThemeProperty "ElementTransparency" + j.GetThemeProperty "HoverChange")
                    end
                )
                j.AddSignal(
                    q.Frame.MouseButton1Up,
                    function()
                        t(j.GetThemeProperty "ElementTransparency" - j.GetThemeProperty "HoverChange")
                    end
                )
            end
            return q
        end
    end,
    [12] = function() --[[ Notification ]]
        local c, d, e, f, g = b(12)
        local h = d.Parent.Parent
        local i, j, k = e(h.Packages.Flipper), e(h.Creator), e(h.Acrylic)
        local l, m, n, o = i.Spring.new, i.Instant.new, j.New, {}
        function o.Init(p, q)
            o.Holder =
                n(
                "Frame",
                {
                    Position = UDim2.new(1, -30, 1, -30),
                    Size = UDim2.new(0, 310, 1, -30),
                    AnchorPoint = Vector2.new(1, 1),
                    BackgroundTransparency = 1,
                    Parent = q
                },
                {
                    n(
                        "UIListLayout",
                        {
                            HorizontalAlignment = Enum.HorizontalAlignment.Center,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalAlignment = Enum.VerticalAlignment.Bottom,
                            Padding = UDim.new(0, 20)
                        }
                    )
                }
            )
        end
        function o.New(p, q)
            q.Title = q.Title or "Title"
            q.Content = q.Content or "Content"
            q.SubContent = q.SubContent or ""
            q.Duration = q.Duration or nil
            q.Buttons = q.Buttons or {}
            local r = {Closed = false}
            r.AcrylicPaint = k.AcrylicPaint({NoBlur = true})
            r.Title =
                n(
                "TextLabel",
                {
                    Position = UDim2.new(0, 14, 0, 17),
                    Text = q.Title,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    TextTransparency = 0,
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextSize = 13,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -12, 0, 12),
                    TextWrapped = true,
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            r.ContentLabel =
                n(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = q.Content,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    TextWrapped = true,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            r.SubContentLabel =
                n(
                "TextLabel",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    Text = q.SubContent,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    AutomaticSize = Enum.AutomaticSize.Y,
                    Size = UDim2.new(1, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    TextWrapped = true,
                    ThemeTag = {TextColor3 = "SubText"}
                }
            )
            r.LabelHolder =
                n(
                "Frame",
                {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(14, 40),
                    Size = UDim2.new(1, -28, 0, 0)
                },
                {
                    n(
                        "UIListLayout",
                        {
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalAlignment = Enum.VerticalAlignment.Center,
                            Padding = UDim.new(0, 3)
                        }
                    ),
                    r.ContentLabel,
                    r.SubContentLabel
                }
            )
            r.CloseButton =
                n(
                "TextButton",
                {
                    Text = "",
                    Position = UDim2.new(1, -14, 0, 13),
                    Size = UDim2.fromOffset(20, 20),
                    AnchorPoint = Vector2.new(1, 0),
                    BackgroundTransparency = 1
                },
                {
                    n(
                        "ImageLabel",
                        {
                            Image = e(d.Parent.Assets).Close,
                            Size = UDim2.fromOffset(16, 16),
                            Position = UDim2.fromScale(0.5, 0.5),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            BackgroundTransparency = 1,
                            ThemeTag = {ImageColor3 = "Text"}
                        }
                    )
                }
            )
            local notifCopyBtn = n("TextButton",{
                Text="",
                Position=UDim2.new(1,-38,0,13),
                Size=UDim2.fromOffset(20,20),
                AnchorPoint=Vector2.new(1,0),
                BackgroundTransparency=1,
            },{
                n("ImageLabel",{
                    Image="rbxassetid://10709798574",
                    Size=UDim2.fromOffset(14,14),
                    Position=UDim2.fromScale(0.5,0.5),
                    AnchorPoint=Vector2.new(0.5,0.5),
                    BackgroundTransparency=1,
                    ThemeTag={ImageColor3="SubText"},
                })
            })
            j.AddSignal(notifCopyBtn.MouseButton1Click,function()
                pcall(function()
                    local txt = tostring(q.Content or "")
                    if tostring(q.SubContent or "")~="" then txt = txt.."\n"..q.SubContent end
                    toclipboard(txt)
                end)
            end)
            local _notifyType = q.Type or "Info"
            local _defaultStripe = ({Warning=Color3.fromRGB(255,185,30),Success=Color3.fromRGB(50,205,80),Error=Color3.fromRGB(220,55,55),Info=Color3.fromRGB(76,194,255)})[_notifyType] or Color3.fromRGB(76,194,255)
            local stripeCol = j.GetThemeProperty(_notifyType.."NotifyColor") or _defaultStripe
            local notifyBg = j.GetThemeProperty(_notifyType.."NotifyBackground")
            local stripe = n("Frame",{Size=UDim2.new(0,3,1,-16),Position=UDim2.new(0,6,0,8),BackgroundColor3=stripeCol,BorderSizePixel=0,ZIndex=10})
            n("UICorner",{CornerRadius=UDim.new(1,0),Parent=stripe})
            local notifRootChildren = {r.AcrylicPaint.Frame, r.Title, r.CloseButton, notifCopyBtn, r.LabelHolder, stripe}
            if notifyBg then
                local bgTint = n("Frame",{
                    Size = UDim2.new(1, 0, 1, 0),
                    BackgroundColor3 = notifyBg,
                    BackgroundTransparency = 0.85,
                    BorderSizePixel = 0,
                    ZIndex = 1,
                })
                n("UICorner",{CornerRadius=UDim.new(0,6),Parent=bgTint})
                table.insert(notifRootChildren, 1, bgTint)
            end
            if q.Icon then
                local lib = e(h)
                local ic = lib and lib.GetIcon and lib:GetIcon(q.Icon)
                if ic then
                    local nicoImg = n("ImageLabel",{Size=UDim2.fromOffset(18,18),Position=UDim2.fromOffset(14,14),BackgroundTransparency=1,ZIndex=10,ThemeTag={ImageColor3="SubText"}})
                    if type(ic)=="table" then nicoImg.Image=ic.Image or ""; nicoImg.ImageRectOffset=ic.ImageRectOffset or Vector2.new(); nicoImg.ImageRectSize=ic.ImageRectSize or Vector2.new() else nicoImg.Image=tostring(ic) end
                    table.insert(notifRootChildren, nicoImg)
                    r.Title.Position = UDim2.new(0,38,0,17)
                    r.Title.Size = UDim2.new(1,-50,0,12)
                end
            end
            r.Root =
                n(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Position = UDim2.fromScale(1, 0)},
                notifRootChildren
            )
            if Animation and Animation.Apply and j.Library then
                pcall(function()
                    local thm = e(h.Themes)[j.Library.Theme]
                    Animation.Apply(thm, r.AcrylicPaint.Frame, j.Library.ShineEnabled)
                end)
            end
            if q.Content == "" then
                r.ContentLabel.Visible = false
            end
            if q.SubContent == "" then
                r.SubContentLabel.Visible = false
            end
            r.Holder =
                n("Frame", {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 200), Parent = o.Holder}, {r.Root})
            local s = i.GroupMotor.new {Scale = 1, Offset = 60}
            s:onStep(
                function(t)
                    r.Root.Position = UDim2.new(t.Scale, t.Offset, 0, 0)
                end
            )
            j.AddSignal(
                r.CloseButton.MouseButton1Click,
                function()
                    r:Close()
                end
            )
            function r.Open(t)
                local u = r.LabelHolder.AbsoluteSize.Y
                r.Holder.Size = UDim2.new(1, 0, 0, 58 + u)
                s:setGoal {Scale = l(0, {frequency = 5}), Offset = l(0, {frequency = 5})}
            end
            function r.Close(t)
                if not r.Closed then
                    r.Closed = true
                    task.spawn(
                        function()
                            s:setGoal {Scale = l(1, {frequency = 5}), Offset = l(60, {frequency = 5})}
                            task.wait(0.4)
                            if e(h).UseAcrylic and r.AcrylicPaint.Model then
                                r.AcrylicPaint.Model:Destroy()
                            end
                            r.Holder:Destroy()
                        end
                    )
                end
            end
            r:Open()
            if q.Duration then
                task.delay(
                    q.Duration,
                    function()
                        r:Close()
                    end
                )
            end
            return r
        end
        return o
    end,
    [13] = function() --[[ Section ]]
        local c, d, e, f, g = b(13)
        local h = d.Parent.Parent
        local i = e(h.Creator)
        local j = i.New
        return function(k, iconKey, l)
            if type(iconKey) ~= "string" then l = iconKey; iconKey = nil end
            local m = {}
            m.Layout = j("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            m.Container =
                j(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 26), Position = UDim2.fromOffset(0, 24), BackgroundTransparency = 1},
                {m.Layout}
            )
            local secHeaderChildren = {}
            if iconKey then
                local secIco = j("ImageLabel", {
                    Name = "_SecIcon",
                    Size = UDim2.fromOffset(14, 14),
                    Position = UDim2.fromOffset(0, 3),
                    BackgroundTransparency = 1,
                    ImageColor3 = Color3.fromRGB(255, 255, 255),
                    ImageTransparency = 0.25,
                })
                table.insert(secHeaderChildren, secIco)
                task.defer(function()
                    local lib = e(h)
                    local ic = lib and lib.GetIcon and lib:GetIcon(iconKey)
                    if ic then
                        if type(ic) == "table" then
                            secIco.Image = ic.Image or ""
                            secIco.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            secIco.ImageRectSize   = ic.ImageRectSize   or Vector2.new()
                        else
                            secIco.Image = tostring(ic)
                        end
                    end
                end)
            end
            local titleOffX = iconKey and 22 or 0
            table.insert(secHeaderChildren, j("TextLabel", {RichText=true,Text=k,TextTransparency=0,FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),TextSize=18,TextXAlignment="Left",TextYAlignment="Center",Size=UDim2.new(1,-16,0,18),Position=UDim2.fromOffset(titleOffX,2),ThemeTag={TextColor3="Text"}}))
            table.insert(secHeaderChildren, m.Container)
            m.Root =
                j(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 26), LayoutOrder = 7, Parent = l},
                secHeaderChildren
            )
            i.AddSignal(
                m.Layout:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    m.Container.Size = UDim2.new(1, 0, 0, m.Layout.AbsoluteContentSize.Y)
                    m.Root.Size = UDim2.new(1, 0, 0, m.Layout.AbsoluteContentSize.Y + 25)
                end
            )
            return m
        end
    end,
    [14] = function() --[[ Tab ]]
        local c, d, e, f, g = b(14)
        local h = d.Parent.Parent
        local i, j = e(h.Packages.Flipper), e(h.Creator)
        local k, l, m, n, o =
            j.New,
            i.Spring.new,
            i.Instant.new,
            h.Components,
            {Window = nil, Tabs = {}, Containers = {}, SelectedTab = 0, TabCount = 0}
        function o.Init(p, q)
            o.Window = q
            return o
        end
        function o.GetCurrentTabPos(p)
            local sel = o.Tabs[o.SelectedTab]
            if not sel or not sel.Frame then return nil end
            local q, r = o.Window.TabHolder.AbsolutePosition.Y, sel.Frame.AbsolutePosition.Y
            return r - q
        end
        function o.ReapplyFavoriteOrder(p)
            local im = e(h).InterfaceManager
            local favs = (im and im.GetFavorites and im:GetFavorites()) or {}
            local favIndex = {}
            for idx, nm in ipairs(favs) do favIndex[nm] = idx end
            for _, tab in ipairs(o.Tabs) do
                if tab.Frame then
                    local fi = favIndex[tab.Name]
                    if fi then
                        tab.Frame.LayoutOrder = -1000000 + (fi - 1)
                    else
                        tab.Frame.LayoutOrder = tab._origOrder or 0
                    end
                    if tab._refreshFavIcon then tab._refreshFavIcon() end
                end
            end
            task.defer(function()
                local win = o.Window
                if win and win.SelectorPosMotor then
                    local pos = o.GetCurrentTabPos(o)
                    if pos then
                        pcall(function() win.SelectorPosMotor:setGoal(l(pos, {frequency = 8})) end)
                    end
                end
            end)
        end
        function o.New(p, q, r, s)
            local t, u = e(h), o.Window
            local v = t.Elements
            o.TabCount = o.TabCount + 1
            local w, x = o.TabCount, {Selected = false, Name = q, Type = "Tab", _origOrder = o.TabCount}
            if t:GetIcon(r) then
                r = t:GetIcon(r)
            end
            if r == "" or nil then
                r = nil
            end
            x.Frame =
                k(
                "TextButton",
                {
                    Size = UDim2.new(1, 0, 0, 34),
                    BackgroundTransparency = 1,
                    Parent = s,
                    ThemeTag = {BackgroundColor3 = "Tab"}
                },
                {
                    k("UICorner", {CornerRadius = UDim.new(0, 6)}),
                    k(
                        "TextLabel",
                        {
                            AnchorPoint = Vector2.new(0, 0.5),
                            Position = (r ~= nil) and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
                            Text = q,
                            RichText = true,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            TextTransparency = 0,
                            FontFace = Font.new(
                                "rbxasset://fonts/families/GothamSSm.json",
                                Enum.FontWeight.Regular,
                                Enum.FontStyle.Normal
                            ),
                            TextSize = 13,
                            TextXAlignment = "Left",
                            TextYAlignment = "Center",
                            Size = UDim2.new(1, -30, 1, 0),
                            TextTruncate = Enum.TextTruncate.AtEnd,
                            BackgroundTransparency = 1,
                            ThemeTag = {TextColor3 = "Text"}
                        }
                    ),
                    k(
                        "ImageLabel",
                        {
                            AnchorPoint = Vector2.new(0, 0.5),
                            Size = UDim2.fromOffset(16, 16),
                            Position = UDim2.new(0, 8, 0.5, 0),
                            BackgroundTransparency = 1,
                            Image = r and (type(r) == "table" and r.Image or r) or nil,
                            ImageRectOffset = (r and type(r) == "table") and r.ImageRectOffset or Vector2.new(0,0),
                            ImageRectSize = (r and type(r) == "table") and r.ImageRectSize or Vector2.new(0,0),
                            ThemeTag = {ImageColor3 = "Text"}
                        }
                    )
                }
            )
            local y = k("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            x.ContainerFrame =
                k(
                "ScrollingFrame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    Parent = u.ContainerClip,
                    Visible = false,
                    BottomImage = "rbxassetid://6889812791",
                    MidImage = "rbxassetid://6889812721",
                    TopImage = "rbxassetid://6276641225",
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ScrollBarImageTransparency = 1,
                    ScrollBarThickness = 0,
                    ElasticBehavior = Enum.ElasticBehavior.Never,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y
                },
                {
                    y,
                    k(
                        "UIPadding",
                        {
                            PaddingRight = UDim.new(0, 8),
                            PaddingLeft = UDim.new(0, 4),
                            PaddingTop = UDim.new(0, 4),
                            PaddingBottom = UDim.new(0, 4)
                        }
                    )
                }
            )
            do
                local sf = x.ContainerFrame
                local scrollGui = (e(h).ScrollGUI) or (e(h).PopupGUI)
                local sbHolder = Instance.new("Frame")
                sbHolder.Name = "_SBOverlay"
                sbHolder.BackgroundTransparency = 1
                sbHolder.Size = UDim2.fromOffset(6, 0)
                sbHolder.ClipsDescendants = true
                sbHolder.ZIndex = 5
                sbHolder.Parent = scrollGui
                local sbBar = Instance.new("Frame")
                sbBar.Name = "_SBBar"
                sbBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                sbBar.BackgroundTransparency = 0.75
                sbBar.BorderSizePixel = 0
                sbBar.Size = UDim2.fromOffset(3, 50)
                sbBar.Parent = sbHolder
                local sbCorner = Instance.new("UICorner")
                sbCorner.CornerRadius = UDim.new(1, 0)
                sbCorner.Parent = sbBar
                local _alive = true
                local _conns = {}
                local function updateScrollbar()
                    if not _alive then return end
                    pcall(function()
                        local _libCheck = e(h)
                        if not _libCheck or _libCheck.Unloaded then
                            sbHolder.Visible = false
                            task.defer(_teardown)
                            return
                        end
                        -- Hide if window is minimized/hidden or if frame left DataModel
                        local win = _libCheck.Window
                        if win and win.Minimized then sbHolder.Visible = false; return end
                        if not sf or not sf.Parent or not sf:IsDescendantOf(game) then
                            sbHolder.Visible = false
                            task.defer(_teardown)
                            return
                        end
                        if not sf.Visible then sbHolder.Visible = false; return end
                        if _libCheck.DialogOpen then sbHolder.Visible = false; return end
                        local canvasH = sf.CanvasSize.Y.Offset
                        local frameH = sf.AbsoluteSize.Y
                        if canvasH <= frameH or frameH <= 0 then
                            sbHolder.Visible = false
                            return
                        end
                        sbHolder.Visible = true
                        local sfAP = sf.AbsolutePosition
                        local sfAS = sf.AbsoluteSize
                        sbHolder.Position = UDim2.fromOffset(sfAP.X + sfAS.X - 6, sfAP.Y + 4)
                        sbHolder.Size = UDim2.fromOffset(6, sfAS.Y - 8)
                        local ratio = frameH / canvasH
                        local barH = math.max(math.floor((sfAS.Y - 8) * ratio), 24)
                        local scrollRatio = sf.CanvasPosition.Y / (canvasH - frameH)
                        local maxY = (sfAS.Y - 8) - barH
                        local barY = math.floor(scrollRatio * maxY)
                        sbBar.Size = UDim2.fromOffset(3, barH)
                        sbBar.Position = UDim2.fromOffset(1.5, barY)
                    end)
                end
                local function _teardown()
                    if not _alive then return end
                    _alive = false
                    -- Immediately hide first (synchronous) so it never appears after close
                    pcall(function() sbHolder.Visible = false end)
                    for _, conn in ipairs(_conns) do
                        pcall(function() conn:Disconnect() end)
                    end
                    table.clear(_conns)
                    -- Deferred destroy to avoid issues with batch-destroy ordering
                    task.defer(function()
                        pcall(function() sbHolder:Destroy() end)
                    end)
                end
                local _rsName = "FluentProSB_" .. tostring(sf):gsub("[^%w]", "")
                game:GetService("RunService"):BindToRenderStep(_rsName, Enum.RenderPriority.Last.Value, updateScrollbar)
                table.insert(_conns, {Disconnect = function()
                    pcall(function() game:GetService("RunService"):UnbindFromRenderStep(_rsName) end)
                end})
                table.insert(_conns, sf:GetPropertyChangedSignal("CanvasPosition"):Connect(updateScrollbar))
                table.insert(_conns, sf:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateScrollbar))
                table.insert(_conns, sf:GetPropertyChangedSignal("Visible"):Connect(updateScrollbar))
                table.insert(_conns, sf.Changed:Connect(function(p)
                    if p == "CanvasSize" then updateScrollbar() end
                end))
                -- Listen on the TOP-LEVEL GUI ScreenGui.Destroying for reliable teardown.
                -- sf.Destroying doesn't fire for descendants (only the directly-destroyed instance).
                -- AncestryChanged can have timing race conditions on batch-destroy.
                -- GUI.Destroying is the authoritative event: when x.GUI:Destroy() is called,
                -- this fires synchronously before any child is actually removed.
                local _lib = e(h)
                if _lib and _lib.GUI then
                    table.insert(_conns, _lib.GUI.Destroying:Connect(_teardown))
                end
                if _lib and _lib.ScrollGUI then
                    table.insert(_conns, _lib.ScrollGUI.Destroying:Connect(_teardown))
                end
                table.insert(_conns, sf.AncestryChanged:Connect(function(_, newParent)
                    if not newParent then task.defer(_teardown) end
                end))
                task.defer(updateScrollbar)
                local uis = game:GetService("UserInputService")
                local dragging = false
                local dragStartY, dragStartCanvasY
                table.insert(_conns, sbBar.InputBegan:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                        dragStartY = inp.Position.Y
                        dragStartCanvasY = sf.CanvasPosition.Y
                    end
                end))
                table.insert(_conns, uis.InputChanged:Connect(function(inp)
                    if dragging and inp.UserInputType == Enum.UserInputType.MouseMovement then
                        local dy = inp.Position.Y - dragStartY
                        local canvasH = sf.CanvasSize.Y.Offset
                        local frameH = sf.AbsoluteSize.Y
                        local maxY = (sf.AbsoluteSize.Y - 8) - sbBar.AbsoluteSize.Y
                        if maxY > 0 then
                            local scrollDelta = dy / maxY * (canvasH - frameH)
                            sf.CanvasPosition = Vector2.new(0, math.clamp(dragStartCanvasY + scrollDelta, 0, canvasH - frameH))
                        end
                    end
                end))
                table.insert(_conns, uis.InputEnded:Connect(function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = false
                    end
                end))
                x._SBOverlay = sbHolder
                x._SBOverlayTeardown = _teardown
                pcall(function()
                    local lib = e(h)
                    lib._SBOverlays = lib._SBOverlays or {}
                    table.insert(lib._SBOverlays, sbHolder)
                    lib._SBOverlayTeardowns = lib._SBOverlayTeardowns or {}
                    table.insert(lib._SBOverlayTeardowns, _teardown)
                end)
            end
            j.AddSignal(
                y:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    x.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, y.AbsoluteContentSize.Y + 2)
                end
            )
            x.Motor, x.SetTransparency = j.SpringMotor(1, x.Frame, "BackgroundTransparency")
            j.AddSignal(
                x.Frame.MouseEnter,
                function()
                    x.SetTransparency(x.Selected and 0.85 or 0.89)
                end
            )
            j.AddSignal(
                x.Frame.MouseLeave,
                function()
                    x.SetTransparency(x.Selected and 0.89 or 1)
                end
            )
            j.AddSignal(
                x.Frame.MouseButton1Down,
                function()
                    x.SetTransparency(0.92)
                end
            )
            j.AddSignal(
                x.Frame.MouseButton1Up,
                function()
                    x.SetTransparency(x.Selected and 0.85 or 0.89)
                end
            )
            j.AddSignal(
                x.Frame.MouseButton1Click,
                function()
                    o:SelectTab(w)
                end
            )
            local _lib = t
            local _favStar = k("TextButton", {
                Size = UDim2.fromOffset(20, 20),
                Position = UDim2.new(1, -6, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 1,
                Text = "",
                ZIndex = 3,
                Parent = x.Frame,
            })
            local _favIco = k("ImageLabel", {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                ZIndex = 4,
                Parent = _favStar,
            })
            local function _setFavImage(active)
                local iconName = active and "lucide/bookmark-check" or "lucide/bookmark"
                local lib2 = _lib
                local ic = lib2 and lib2.GetIcon and lib2:GetIcon(iconName)
                if ic and type(ic) == "table" then
                    _favIco.Image = ic.Image or ""
                    _favIco.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                    _favIco.ImageRectSize = ic.ImageRectSize or Vector2.new()
                elseif ic then
                    _favIco.Image = tostring(ic)
                else
                    _favIco.Image = active and "rbxassetid://10747363809" or "rbxassetid://10747364139"
                end
                if active then
                    _favIco.ImageColor3 = Color3.fromRGB(255, 210, 0)
                    _favIco.ImageTransparency = 0
                else
                    _favIco.ImageColor3 = Color3.fromRGB(255, 255, 255)
                    _favIco.ImageTransparency = 0.35
                end
            end
            local function _updateFavIcon(active)
                _setFavImage(active)
            end
            local _im = _lib and _lib.InterfaceManager
            if _im then _updateFavIcon(_im:IsFavorite(q)) end
            x._refreshFavIcon = function()
                local im2 = _lib and _lib.InterfaceManager
                if im2 then _updateFavIcon(im2:IsFavorite(q)) end
            end
            j.AddSignal(_favStar.MouseButton1Click, function()
                local im = _lib and _lib.InterfaceManager
                if not im then return end
                local nowFav = im:IsFavorite(q)
                im:SetFavorite(q, not nowFav)
                _updateFavIcon(not nowFav)
                o:ReapplyFavoriteOrder()
            end)
            o.Containers[w] = x.ContainerFrame
            o.Tabs[w] = x
            x.Container = x.ContainerFrame
            x.ScrollFrame = x.Container
            function x.AddSection(z, A, iconKey)
                x._elementCount = (x._elementCount or 0) + 1
                local _order = x._elementCount
                local B, C = {Type = "Section"}, e(n.Section)(A, iconKey, x.Container)
                B.Container = C.Container
                B.ScrollFrame = x.Container
                C.Root.LayoutOrder = _order
                setmetatable(B, v)
                return B
            end
            function x.AddCollapsibleSection(z, A, iconKey, openState)
                -- Accept the same calling convention as AddSection: (Title, Icon).
                -- Also accept a config table for backward compatibility: { Title=, Icon=, Open= }.
                local cfg = {}
                if type(A) == "table" then
                    cfg = A
                else
                    cfg.Title = A
                    if type(iconKey) == "boolean" then
                        cfg.Open = iconKey
                    else
                        cfg.Icon = iconKey
                        if openState ~= nil then cfg.Open = openState end
                    end
                end
                local saveIdx = cfg.Idx
                x._elementCount = (x._elementCount or 0) + 1
                local _order = x._elementCount
                local tabLib = t
                local title2     = tostring(cfg.Title or "Section")
                local iconKey2   = cfg.Icon
                local startOpen2 = cfg.Open ~= false
                local pad2 = 5
                local ts2 = game:GetService("TweenService")

                local outerWrap2 = k("Frame", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    LayoutOrder = _order,
                    Parent = x.Container,
                })

                -- Header row: matches AddSection's heading style exactly (font, size, icon placement)
                local header2 = k("TextButton", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    Text = "",
                    AutoButtonColor = false,
                    Parent = outerWrap2,
                })

                local titleOffX2 = iconKey2 and 22 or 0
                if iconKey2 then
                    local hIco2 = k("ImageLabel", {
                        Name = "_SecIcon",
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.fromOffset(0, 3),
                        BackgroundTransparency = 1,
                        ImageColor3 = Color3.fromRGB(255, 255, 255),
                        ImageTransparency = 0.25,
                        Parent = header2,
                    })
                    task.defer(function()
                        local ic2 = tabLib.GetIcon and tabLib:GetIcon(iconKey2)
                        if ic2 then
                            if type(ic2) == "table" then
                                hIco2.Image = ic2.Image or ""
                                hIco2.ImageRectOffset = ic2.ImageRectOffset or Vector2.new()
                                hIco2.ImageRectSize = ic2.ImageRectSize or Vector2.new()
                            else
                                hIco2.Image = tostring(ic2)
                            end
                        end
                    end)
                end

                local titleLbl2 = k("TextLabel", {
                    RichText = true,
                    Text = title2,
                    TextTransparency = 0,
                    FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextSize = 18,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -36, 0, 18),
                    Position = UDim2.fromOffset(titleOffX2, 2),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"},
                    Parent = header2,
                })

                -- Chevron on the right, rotates to indicate open/closed state
                local arrowIco2 = k("ImageLabel", {
                    Name = "_SecChevron",
                    Size = UDim2.fromOffset(16, 16),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, 0, 0, 11),
                    BackgroundTransparency = 1,
                    ImageColor3 = Color3.fromRGB(255, 255, 255),
                    ImageTransparency = 0.25,
                    ThemeTag = {ImageColor3 = "Text"},
                    Parent = header2,
                })
                do
                    local arIc = tabLib.GetIcon and tabLib:GetIcon("chevron-right")
                    if type(arIc) == "table" then
                        arrowIco2.Image = arIc.Image or ""
                        arrowIco2.ImageRectOffset = arIc.ImageRectOffset or Vector2.new()
                        arrowIco2.ImageRectSize = arIc.ImageRectSize or Vector2.new()
                    elseif arIc then
                        arrowIco2.Image = tostring(arIc)
                    else
                        arrowIco2.Image = "rbxassetid://10709791437"
                    end
                end

                -- Content area for nested elements, collapsible
                local contentBg2 = k("Frame", {
                    Size = UDim2.new(1, 0, 0, 0),
                    Position = UDim2.fromOffset(0, 26),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    LayoutOrder = 2,
                    Parent = outerWrap2,
                })
                local innerLayout2 = k("UIListLayout", {
                    Padding = UDim.new(0, pad2),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = contentBg2,
                })
                k("UIPadding", {
                    PaddingTop = UDim.new(0, pad2),
                    PaddingBottom = UDim.new(0, pad2),
                    PaddingLeft = UDim.new(0, 4),
                    PaddingRight = UDim.new(0, 4),
                    Parent = contentBg2,
                })

                local isOpen2 = false
                local innerH2 = 0
                local dur2 = 0.22
                local ti2 = TweenInfo.new(dur2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
                local colMod2 = {
                    Type = "Section",
                    SaveType = "CollapsibleSection",
                    Container = contentBg2,
                    ScrollFrame = x.Container,
                    _elementCount = 0,
                    Value = startOpen2,
                }
                local function applyArrow2(open, anim)
                    local rot = open and 90 or 0
                    if anim then
                        ts2:Create(arrowIco2, TweenInfo.new(dur2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = rot}):Play()
                    else
                        arrowIco2.Rotation = rot
                    end
                end
                local function setOpen2(open, anim)
                    isOpen2 = open
                    colMod2.Value = open
                    applyArrow2(open, anim)
                    local ch = open and (innerH2 + pad2 * 2) or 0
                    local oh = 26 + ch
                    if anim then
                        ts2:Create(contentBg2, ti2, {Size = UDim2.new(1, 0, 0, ch)}):Play()
                        ts2:Create(outerWrap2, ti2, {Size = UDim2.new(1, 0, 0, oh)}):Play()
                    else
                        contentBg2.Size = UDim2.new(1, 0, 0, ch)
                        outerWrap2.Size = UDim2.new(1, 0, 0, oh)
                    end
                end
                innerLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    local newH = innerLayout2.AbsoluteContentSize.Y
                    innerH2 = newH
                    if isOpen2 then
                        local ch = newH + pad2 * 2
                        contentBg2.Size = UDim2.new(1, 0, 0, ch)
                        outerWrap2.Size = UDim2.new(1, 0, 0, 26 + ch)
                    end
                end)
                header2.MouseButton1Click:Connect(function()
                    setOpen2(not isOpen2, true)
                end)
                task.defer(function()
                    innerH2 = innerLayout2.AbsoluteContentSize.Y
                    setOpen2(startOpen2, false)
                end)
                function colMod2:Open(anim)   setOpen2(true,  anim ~= false) end
                function colMod2:Close(anim)  setOpen2(false, anim ~= false) end
                function colMod2:Toggle(anim) setOpen2(not isOpen2, anim ~= false) end
                function colMod2:IsOpen()     return isOpen2 end
                function colMod2:SetValue(val) setOpen2(val and true or false, true) end
                function colMod2:SetTitle(s)  titleLbl2.Text = tostring(s or "") end
                setmetatable(colMod2, v)
                if saveIdx and tabLib.Options then tabLib.Options[saveIdx] = colMod2 end
                return colMod2
            end
            x.Section = x.AddSection
            x.CollapsibleSection = x.AddCollapsibleSection
            setmetatable(x, v)
            return x
        end
        function o.SelectTab(p, q)
            local r = o.Window
            if not r then return end
            if not o.Tabs[q] then return end
            o.SelectedTab = q
            for s, t in next, o.Tabs do
                t.SetTransparency(1)
                t.Selected = false
            end
            o.Tabs[q].SetTransparency(0.89)
            o.Tabs[q].Selected = true
            r.TabDisplay.Text = o.Tabs[q].Name or ""
            local tabPos = o:GetCurrentTabPos()
            if tabPos then
                if r.SelectorFrame then r.SelectorFrame.Visible = true end
                r.SelectorPosMotor:setGoal(l(tabPos, {frequency = 6}))
            end
            task.spawn(
                function()
                    r.ContainerBackMotor:setGoal(l(1, {frequency = 12}))
                    r.ContainerPosMotor:setGoal(l(104, {frequency = 12}))
                    task.wait(0.12)
                    for u, v in next, o.Containers do
                        v.Visible = false
                    end
                    for _, _con in next, o.Containers do
                        for _, _vf in ipairs(_con:GetDescendants()) do
                            if _vf:IsA("VideoFrame") then
                                pcall(function() _vf.Volume = 0 end)
                            end
                        end
                    end
                    o.Containers[q].Visible = true
                    for _, _vf in ipairs(o.Containers[q]:GetDescendants()) do
                        if _vf:IsA("VideoFrame") then
                            pcall(function() _vf.Volume = _vf:GetAttribute("BFVolume") or 0 end)
                        end
                    end
                    r.ContainerPosMotor:setGoal(l(90, {frequency = 7}))
                    r.ContainerBackMotor:setGoal(l(0, {frequency = 9}))
                end
            )
        end
        return o
    end,
    [15] = function() --[[ Textbox ]]
        local c, d, e, f, g = b(15)
        local h, i = game:GetService "TextService", d.Parent.Parent
        local j, k = e(i.Packages.Flipper), e(i.Creator)
        local l = k.New
        return function(m, n)
            n = n or false
            local o = {}
            o.Input =
                l(
                "TextBox",
                {
                    FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    TextSize = 14,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    TextYAlignment = Enum.TextYAlignment.Center,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromScale(1, 1),
                    Position = UDim2.fromOffset(10, 0),
                    ThemeTag = {TextColor3 = "Text", PlaceholderColor3 = "SubText"}
                }
            )
            o.Container =
                l(
                "Frame",
                {
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Position = UDim2.new(0, 6, 0, 0),
                    Size = UDim2.new(1, -12, 1, 0)
                },
                {o.Input}
            )
            o.Indicator =
                l(
                "Frame",
                {
                    Size = UDim2.new(1, -4, 0, 1),
                    Position = UDim2.new(0, 2, 1, 0),
                    AnchorPoint = Vector2.new(0, 1),
                    BackgroundTransparency = n and 0.5 or 0,
                    ThemeTag = {BackgroundColor3 = n and "InputIndicator" or "DialogInputLine"}
                }
            )
            o.Frame =
                l(
                "Frame",
                {
                    Size = UDim2.new(0, 0, 0, 30),
                    BackgroundTransparency = n and 0.9 or 0,
                    Parent = m,
                    ThemeTag = {BackgroundColor3 = n and "Input" or "DialogInput"}
                },
                {
                    l("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    l(
                        "UIStroke",
                        {
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            Transparency = n and 0.5 or 0.65,
                            ThemeTag = {Color = n and "InElementBorder" or "DialogButtonBorder"}
                        }
                    ),
                    o.Indicator,
                    o.Container
                }
            )
            local p = function()
                local p, q = 2, o.Container.AbsoluteSize.X
                if not o.Input:IsFocused() or o.Input.TextBounds.X <= q - 2 * p then
                    o.Input.Position = UDim2.new(0, p, 0, 0)
                else
                    local r = o.Input.CursorPosition
                    if r ~= -1 then
                        local s = string.sub(o.Input.Text, 1, r - 1)
                        local t = h:GetTextSize(s, o.Input.TextSize, o.Input.Font, Vector2.new(math.huge, math.huge)).X
                        local u = o.Input.Position.X.Offset + t
                        if u < p then
                            o.Input.Position = UDim2.fromOffset(p - t, 0)
                        elseif u > q - p - 1 then
                            o.Input.Position = UDim2.fromOffset(q - t - p - 1, 0)
                        end
                    end
                end
            end
            task.spawn(p)
            k.AddSignal(o.Input:GetPropertyChangedSignal "Text", p)
            k.AddSignal(o.Input:GetPropertyChangedSignal "CursorPosition", p)
            k.AddSignal(
                o.Input.Focused,
                function()
                    p()
                    o.Indicator.Size = UDim2.new(1, -2, 0, 2)
                    o.Indicator.Position = UDim2.new(0, 1, 1, 0)
                    o.Indicator.BackgroundTransparency = 0
                    k.OverrideTag(o.Frame, {BackgroundColor3 = n and "InputFocused" or "DialogHolder"})
                    k.OverrideTag(o.Indicator, {BackgroundColor3 = "Accent"})
                end
            )
            k.AddSignal(
                o.Input.FocusLost,
                function()
                    p()
                    o.Indicator.Size = UDim2.new(1, -4, 0, 1)
                    o.Indicator.Position = UDim2.new(0, 2, 1, 0)
                    o.Indicator.BackgroundTransparency = 0.5
                    k.OverrideTag(o.Frame, {BackgroundColor3 = n and "Input" or "DialogInput"})
                    k.OverrideTag(o.Indicator, {BackgroundColor3 = n and "InputIndicator" or "DialogInputLine"})
                end
            )
            return o
        end
    end,
    [16] = function() --[[ TitleBar ]]
        local c, d, e, f, g = b(16)
        local h, i = d.Parent.Parent, e(d.Parent.Assets)
        local j, k = e(h.Creator), e(h.Packages.Flipper)
        local l, m = j.New, j.AddSignal
        return function(n)
            local o, p, q =
                {},
                e(h),
                function(o, p, q, r)
                    local s = {
                        Callback = r or function()
                            end
                    }
                    s.Frame =
                        l(
                        "TextButton",
                        {
                            Size = UDim2.new(0, 34, 1, -8),
                            AnchorPoint = Vector2.new(1, 0),
                            BackgroundTransparency = 1,
                            Parent = q,
                            Position = p,
                            Text = "",
                            ThemeTag = {BackgroundColor3 = "Text"}
                        },
                        {
                            l("UICorner", {CornerRadius = UDim.new(0, 7)}),
                            l(
                                "ImageLabel",
                                {
                                    Image = o,
                                    Size = UDim2.fromOffset(16, 16),
                                    Position = UDim2.fromScale(0.5, 0.5),
                                    AnchorPoint = Vector2.new(0.5, 0.5),
                                    BackgroundTransparency = 1,
                                    Name = "Icon",
                                    ThemeTag = {ImageColor3 = "Text"}
                                }
                            )
                        }
                    )
                    local t, u = j.SpringMotor(1, s.Frame, "BackgroundTransparency")
                    m(
                        s.Frame.MouseEnter,
                        function()
                            u(0.94)
                        end
                    )
                    m(
                        s.Frame.MouseLeave,
                        function()
                            u(1, true)
                        end
                    )
                    m(
                        s.Frame.MouseButton1Down,
                        function()
                            u(0.96)
                        end
                    )
                    m(
                        s.Frame.MouseButton1Up,
                        function()
                            u(0.94)
                        end
                    )
                    m(s.Frame.MouseButton1Click, s.Callback)
                    s.SetCallback = function(v)
                        s.Callback = v
                    end
                    return s
                end
            o.Frame =
                l(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1, Parent = n.Parent},
                {
                    l(
                        "Frame",
                        {Size = UDim2.new(1, -16, 1, 0), Position = UDim2.new(0, 16, 0, 0), BackgroundTransparency = 1},
                        {
                            l(
                                "UIListLayout",
                                {
                                    Padding = UDim.new(0, 5),
                                    FillDirection = Enum.FillDirection.Horizontal,
                                    VerticalAlignment = Enum.VerticalAlignment.Center,
                                    SortOrder = Enum.SortOrder.LayoutOrder
                                }
                            ),
                            l(
                                "ImageLabel",
                                {
                                    Name = "TitleIcon",
                                    Image = "",
                                    Size = UDim2.fromOffset(16, 16),
                                    BackgroundTransparency = 1,
                                    Visible = n.Icon ~= nil,
                                    LayoutOrder = 0,
                                    ThemeTag = {ImageColor3 = "Text"}
                                }
                            ),
                            l(
                                "TextLabel",
                                {
                                    RichText = true,
                                    Text = n.Title,
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Regular,
                                        Enum.FontStyle.Normal
                                    ),
                                    TextSize = 12,
                                    TextXAlignment = "Left",
                                    TextYAlignment = "Center",
                                    Size = UDim2.fromScale(0, 1),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    BackgroundTransparency = 1,
                                    LayoutOrder = 1,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            ),
                            l(
                                "TextLabel",
                                {
                                    RichText = true,
                                    Text = n.SubTitle,
                                    TextTransparency = 0.4,
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Regular,
                                        Enum.FontStyle.Normal
                                    ),
                                    TextSize = 12,
                                    TextXAlignment = "Left",
                                    TextYAlignment = "Center",
                                    Size = UDim2.fromScale(0, 1),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    BackgroundTransparency = 1,
                                    LayoutOrder = 2,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            ),
                            l(
                                "Frame",
                                {
                                    Name = "VersionBadge",
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    Size = UDim2.new(0, 0, 0, 16),
                                    BackgroundColor3 = Color3.fromRGB(45, 165, 90),
                                    BackgroundTransparency = 0,
                                    LayoutOrder = 3,
                                    Visible = (n.Version ~= nil and n.Version ~= "") or (p.Version ~= nil and p.Version ~= ""),
                                },
                                {
                                    l("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                    l("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 7)}),
                                    l(
                                        "TextLabel",
                                        {
                                            Name = "VersionText",
                                            RichText = true,
                                            Text = tostring(n.Version or p.Version or ""),
                                            TextColor3 = Color3.fromRGB(255, 255, 255),
                                            FontFace = Font.new(
                                                "rbxasset://fonts/families/GothamSSm.json",
                                                Enum.FontWeight.SemiBold,
                                                Enum.FontStyle.Normal
                                            ),
                                            TextSize = 10,
                                            TextXAlignment = "Center",
                                            TextYAlignment = "Center",
                                            Size = UDim2.new(0, 0, 1, 0),
                                            AutomaticSize = Enum.AutomaticSize.X,
                                            BackgroundTransparency = 1,
                                        }
                                    )
                                }
                            )
                        }
                    ),
                    l(
                        "Frame",
                        {
                            BackgroundTransparency = 0.5,
                            Size = UDim2.new(1, 0, 0, 1),
                            Position = UDim2.new(0, 0, 1, 0),
                            ThemeTag = {BackgroundColor3 = "TitleBarLine"}
                        }
                    )
                }
            )
            if n.Icon then
                local titleIco = o.Frame:FindFirstChild("TitleIcon", true)
                if titleIco then
                    task.defer(function()
                        local lib = p
                        local ic = lib and lib.GetIcon and lib:GetIcon(n.Icon)
                        if ic and type(ic) == "table" then
                            titleIco.Image = ic.Image or ""
                            titleIco.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            titleIco.ImageRectSize = ic.ImageRectSize or Vector2.new()
                        elseif ic then
                            titleIco.Image = tostring(ic)
                            titleIco.ImageColor3 = Color3.fromRGB(255, 255, 255)
                        else
                            titleIco.Image = tostring(n.Icon)
                            titleIco.ImageColor3 = Color3.fromRGB(255, 255, 255)
                        end
                    end)
                end
            end
            o.CloseButton =
                q(
                i.Close,
                UDim2.new(1, -4, 0, 4),
                o.Frame,
                function()
                    p.Window:Dialog {
                        Title = "Close",
                        Content = "Are you sure you want to unload the interface?",
                        Buttons = {
                            {
                                Title = "Yes",
                                Callback = function()
                                    p:Destroy()
                                end
                            },
                            {Title = "No"}
                        }
                    }
                end
            )
            o.MaxButton =
                q(
                i.Max,
                UDim2.new(1, -40, 0, 4),
                o.Frame,
                function()
                    n.Window.Maximize(not n.Window.Maximized)
                end
            )
            o.MinButton =
                q(
                i.Min,
                UDim2.new(1, -80, 0, 4),
                o.Frame,
                function()
                    p.Window:Minimize()
                end
            )
            if getgenv().FluentDeviceBadgeEnabled then
                local UIS = game:GetService("UserInputService")
                local RS  = game:GetService("RunService")
                local function _detectDevice()
                    local platform = UIS:GetPlatform()
                    if table.find({Enum.Platform.IOS, Enum.Platform.Android}, platform) then
                        return "smartphone", "lucide/smartphone"
                    end
                    if table.find({Enum.Platform.XBoxOne, Enum.Platform.PS4,
                                   Enum.Platform.XBox360, Enum.Platform.WiiU,
                                   Enum.Platform.NX}, platform) then
                        return "console", "lucide/gamepad-2"
                    end
                    if not RS:IsStudio() then
                        local kbd = UIS.KeyboardEnabled
                        local touch = UIS.TouchEnabled
                        local gamepad = UIS.GamepadEnabled
                        if touch and not kbd and not gamepad then
                            return "tablet", "lucide/tablet"
                        end
                        if gamepad and not kbd then
                            return "console", "lucide/gamepad-2"
                        end
                        if kbd then
                            local vp = game:GetService("Workspace").CurrentCamera.ViewportSize
                            if vp.X > 0 and vp.X <= 1366 then
                                return "laptop", "lucide/laptop"
                            end
                            return "pc", "lucide/monitor"
                        end
                    end
                    return "pc", "lucide/monitor"
                end
                local _devType, _devIcon = _detectDevice()
                local _tooltipNames = {
                    pc = "Desktop PC", laptop = "Laptop", smartphone = "Mobile",
                    tablet = "Tablet", console = "Console",
                }
                local _devBadge = j.New("Frame", {
                    Name             = "_DeviceBadge",
                    Size             = UDim2.fromOffset(80, 22),
                    Position         = UDim2.new(1, -168, 0, 9),
                    BackgroundTransparency = 1,
                    BorderSizePixel  = 0,
                    ZIndex           = 4,
                    Parent           = o.Frame,
                })
                local _devIco = j.New("ImageLabel", {
                    Name             = "_DevIco",
                    Size             = UDim2.fromOffset(14, 14),
                    Position         = UDim2.fromOffset(0, 4),
                    AnchorPoint      = Vector2.new(0, 0),
                    BackgroundTransparency = 1,
                    ZIndex           = 5,
                    ThemeTag         = {ImageColor3 = "SubText"},
                    Parent           = _devBadge,
                })
                local _devText = j.New("TextLabel", {
                    Name             = "_DevText",
                    Size             = UDim2.new(1, -20, 1, 0),
                    Position         = UDim2.fromOffset(18, 0),
                    BackgroundTransparency = 1,
                    Text             = _tooltipNames[_devType] or _devType,
                    TextSize         = 10,
                    FontFace         = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextXAlignment   = Enum.TextXAlignment.Left,
                    TextYAlignment   = Enum.TextYAlignment.Center,
                    TextTruncate     = Enum.TextTruncate.AtEnd,
                    ZIndex           = 5,
                    ThemeTag         = {TextColor3 = "SubText"},
                    Parent           = _devBadge,
                })
                task.defer(function()
                    local lib = e(h)
                    if lib and lib.GetIcon then
                        local ic = lib:GetIcon(_devIcon)
                        if ic and type(ic) == "table" then
                            _devIco.Image           = ic.Image or ""
                            _devIco.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            _devIco.ImageRectSize   = ic.ImageRectSize   or Vector2.new()
                        elseif ic then
                            _devIco.Image = tostring(ic)
                        end
                    end
                end)
            end
            return o
        end
    end,
    [17] = function() --[[ Window ]]
        local c, d, e, f, g = b(17)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            d.Parent.Parent
        local l, m, n, o, p = e(k.Packages.Flipper), e(k.Creator), e(k.Acrylic), e(d.Parent.Assets), d.Parent
        local q, r, s = l.Spring.new, l.Instant.new, m.New
        return function(t)
            local u, v, w, x, y, z =
                e(k),
                {
                    Minimized = false,
                    Maximized = false,
                    Size = t.Size,
                    CurrentPos = 0,
                    Position = UDim2.fromOffset(
                        j.ViewportSize.X / 2 - t.Size.X.Offset / 2,
                        j.ViewportSize.Y / 2 - t.Size.Y.Offset / 2
                    )
                },
                false
            local A, B = false
            local C = false
            v.AcrylicPaint = n.AcrylicPaint()
            local D, E =
                s(
                    "Frame",
                    {
                        Size = UDim2.fromOffset(4, 0),
                        BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                        Position = UDim2.fromOffset(0, 17),
                        AnchorPoint = Vector2.new(0, 0.5),
                        ZIndex = 1,
                        ThemeTag = {BackgroundColor3 = "Accent"}
                    },
                    {s("UICorner", {CornerRadius = UDim.new(0, 2)})}
                ),
                s(
                    "Frame",
                    {Size = UDim2.fromOffset(22, 22), BackgroundTransparency = 1, Position = UDim2.new(1, -22, 1, -22)},
                    {s("ImageLabel",{Size=UDim2.fromOffset(18,18),Position=UDim2.new(1,-3,1,-3),AnchorPoint=Vector2.new(1,1),BackgroundTransparency=1,Image="rbxassetid://10709767750",ImageTransparency=0,ThemeTag={ImageColor3="Accent"}})}
                )
            local uiTopH = 54
            local topOffset = 0
            local botOffset = 0
            local sidebarChildren = {}

            local function mkCorner(r) return s("UICorner",{CornerRadius=UDim.new(0,r)}) end
            local function mkStroke(t2,thk) return s("UIStroke",{Transparency=t2,Thickness=thk or tonumber(m.GetThemeProperty("ElementBorderThickness")) or 1,ThemeTag={Color="InElementBorder"}}) end


            if t.TabLogo then
                local logoH = 110
                local logoFrame = s("Frame",{
                    Name="TabLogoFrame",
                    Size=UDim2.new(1,0,0,logoH),
                    Position=UDim2.fromOffset(0,topOffset),
                    BackgroundTransparency=0.85,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(10), mkStroke(0.5),
                })
                local logoImg = s("ImageLabel",{
                    Size=UDim2.fromOffset(86,86),
                    Position=UDim2.new(0.5,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5),
                    BackgroundTransparency=1,
                    Image="",
                    ImageColor3=Color3.fromRGB(255,255,255),
                    ScaleType=Enum.ScaleType.Fit,
                    Parent=logoFrame,
                })
                local ic = u:GetIcon(t.TabLogo)
                if ic then
                    if type(ic) == "table" then
                        logoImg.Image = ic.Image or ""
                        logoImg.ImageRectOffset = ic.ImageRectOffset or Vector2.new(0,0)
                        logoImg.ImageRectSize   = ic.ImageRectSize   or Vector2.new(0,0)
                    else
                        logoImg.Image = tostring(ic)
                    end
                else
                    logoImg.Image = tostring(t.TabLogo)
                    logoImg.ImageColor3 = Color3.fromRGB(255,255,255)
                end
                topOffset = topOffset + logoH + 4
                table.insert(sidebarChildren, logoFrame)
            end


            if t.UserInfoTop then
                local lp = game:GetService("Players").LocalPlayer
                local av = ""
                pcall(function()
                    av = game:GetService("Players"):GetUserThumbnailAsync(
                        lp.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
                end)
                local h = 58
                local realDisplayName = t.UserInfoTitle or lp.DisplayName
                local realUsername    = t.UserInfoSubtitle or ("@"..lp.Name)
                local anonActive = false

                local panel = s("Frame",{
                    Name="UserInfoTop",
                    Size=UDim2.new(1,0,0,h),
                    Position=UDim2.fromOffset(0,topOffset),
                    BackgroundTransparency=0.78,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(8), mkStroke(0.55),
                    s("ImageLabel",{
                        Size=UDim2.fromOffset(36,36),
                        Position=UDim2.new(0,7,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                        BackgroundTransparency=0.5, Image=av,
                        ThemeTag={BackgroundColor3="Tab"},
                    },{mkCorner(18)}),
                    s("TextLabel",{
                        Name="DisplayName",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                        Text=realDisplayName,
                        TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,14), Position=UDim2.new(0,49,0,12),
                        ThemeTag={TextColor3="Text"},
                    }),
                    s("TextLabel",{
                        Name="Username",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Text=realUsername,
                        TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,13), Position=UDim2.new(0,49,0,30),
                        ThemeTag={TextColor3="SubText"},
                    }),
                    s("Frame",{Size=UDim2.new(1,-10,0,1),Position=UDim2.new(0,5,1,-1),
                        BackgroundTransparency=0.7,ThemeTag={BackgroundColor3="TitleBarLine"}}),
                })

                local eyeBtn = s("TextButton",{
                    Name="AnonToggle",
                    Size=UDim2.fromOffset(22,22),
                    Position=UDim2.new(1,-4,0,4), AnchorPoint=Vector2.new(1,0),
                    BackgroundTransparency=0.7, Text="",
                    Parent=panel,
                    ThemeTag={BackgroundColor3="Tab"},
                },{
                    s("UICorner",{CornerRadius=UDim.new(0,5)}),
                    s("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="InElementBorder"}}),
                    s("ImageLabel",{
                        Name="EyeIcon",
                        Size=UDim2.fromOffset(13,13),
                        Position=UDim2.fromScale(0.5,0.5), AnchorPoint=Vector2.new(0.5,0.5),
                        BackgroundTransparency=1,
                        ScaleType=Enum.ScaleType.Fit,
                        ThemeTag={ImageColor3="SubText"},
                    }),
                })
                do
                    local eyeImg = eyeBtn:FindFirstChild("EyeIcon")
                    if eyeImg then
                        local icOpen = u.GetIcon(u, "solar/eye-bold")
                        local icClosed = u.GetIcon(u, "solar/eye-closed-bold")
                        local function setEyeIcon(active)
                            local ic = active and icClosed or icOpen
                            if ic and type(ic) == "table" then
                                eyeImg.Image = ic.Image or ""
                                eyeImg.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                                eyeImg.ImageRectSize   = ic.ImageRectSize   or Vector2.new()
                            elseif ic then
                                eyeImg.Image = tostring(ic)
                            end
                        end
                        setEyeIcon(false)
                        local dnLbl = panel:FindFirstChild("DisplayName")
                        local unLbl = panel:FindFirstChild("Username")
                        m.AddSignal(eyeBtn.MouseButton1Click, function()
                            anonActive = not anonActive
                            if dnLbl then dnLbl.Text = anonActive and "Anonymous" or realDisplayName end
                            if unLbl then unLbl.Text = anonActive and "@•••••••" or realUsername end
                            setEyeIcon(anonActive)
                        end)
                    end
                end

                if t.UserInfoColor then
                    local _uic = t.UserInfoColor
                    local dnLbl2 = panel:FindFirstChild("DisplayName")
                    local unLbl2 = panel:FindFirstChild("Username")
                    if dnLbl2 then
                        m.Registry[dnLbl2] = nil
                        dnLbl2.TextColor3 = _uic
                    end
                    if unLbl2 then
                        m.Registry[unLbl2] = nil
                        unLbl2.TextColor3 = _uic
                    end
                end
                topOffset = topOffset + h + 4
                table.insert(sidebarChildren, panel)
            end


            local showSearch = not (t.Search == false)
            local searchH = 30
            local searchBox = nil
            if showSearch then
                local sb = s("Frame",{
                    Name="SearchBar",
                    Size=UDim2.new(1,-2,0,searchH),
                    Position=UDim2.fromOffset(1,topOffset),
                    BackgroundTransparency=0.72,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(6), mkStroke(0.6),
                    s("ImageLabel",{
                        Size=UDim2.fromOffset(13,13),
                        Position=UDim2.new(0,8,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                        BackgroundTransparency=1, Image="rbxassetid://10734943674",
                        ImageTransparency=0.4, ThemeTag={ImageColor3="SubText"},
                    }),
                })
                searchBox = s("TextBox",{
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
                    BackgroundTransparency=1,
                    Size=UDim2.new(1,-32,1,0), Position=UDim2.new(0,26,0,0),
                    PlaceholderText="Search...",
                    PlaceholderColor3=Color3.fromRGB(85,85,85),
                    ClearTextOnFocus=false, Text="",
                    ThemeTag={TextColor3="Text",PlaceholderColor3="SubText"},
                    Parent=sb,
                })
                topOffset = topOffset + searchH + 4
                table.insert(sidebarChildren, sb)
            end

            v._tabTopOffset = topOffset


            if t.UserInfo then
                local lp2 = game:GetService("Players").LocalPlayer
                local av2 = ""
                pcall(function()
                    av2 = game:GetService("Players"):GetUserThumbnailAsync(
                        lp2.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
                end)
                local h2 = 54
                botOffset = h2 + 4
                local realDN2 = t.UserInfoTitle or t.UserInfoTitleBottom or lp2.DisplayName
                local realUN2 = t.UserInfoSubtitle or t.UserInfoSubtitleBottom or ("@"..lp2.Name)
                local anonActive2 = false
                local bot = s("Frame",{
                    Name="UserInfo",
                    Size=UDim2.new(1,0,0,h2),
                    Position=UDim2.new(0,0,1,-h2),
                    BackgroundTransparency=0.78,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(8), mkStroke(0.55),
                    s("Frame",{Size=UDim2.new(1,-10,0,1),Position=UDim2.new(0,5,0,0),
                        BackgroundTransparency=0.7,ThemeTag={BackgroundColor3="TitleBarLine"}}),
                    s("ImageLabel",{
                        Size=UDim2.fromOffset(34,34),
                        Position=UDim2.new(0,7,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                        BackgroundTransparency=0.5, Image=av2,
                        ThemeTag={BackgroundColor3="Tab"},
                    },{mkCorner(17)}),
                    s("TextLabel",{
                        Name="DisplayName",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                        Text=realDN2,
                        TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,14), Position=UDim2.new(0,47,0,10),
                        ThemeTag={TextColor3="Text"},
                    }),
                    s("TextLabel",{
                        Name="Username",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Text=realUN2,
                        TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,13), Position=UDim2.new(0,47,0,27),
                        ThemeTag={TextColor3="SubText"},
                    }),
                })
                local eyeBtn2 = s("TextButton",{
                    Name="AnonToggle",
                    Size=UDim2.fromOffset(22,22),
                    Position=UDim2.new(1,-4,0,4), AnchorPoint=Vector2.new(1,0),
                    BackgroundTransparency=0.7, Text="",
                    Parent=bot,
                    ThemeTag={BackgroundColor3="Tab"},
                },{
                    s("UICorner",{CornerRadius=UDim.new(0,5)}),
                    s("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="InElementBorder"}}),
                    s("ImageLabel",{
                        Name="EyeIcon",
                        Size=UDim2.fromOffset(13,13),
                        Position=UDim2.fromScale(0.5,0.5), AnchorPoint=Vector2.new(0.5,0.5),
                        BackgroundTransparency=1,
                        ScaleType=Enum.ScaleType.Fit,
                        ThemeTag={ImageColor3="SubText"},
                    }),
                })
                do
                    local eyeImg2 = eyeBtn2:FindFirstChild("EyeIcon")
                    if eyeImg2 then
                        local icOpen2 = u.GetIcon(u, "solar/eye-bold")
                        local icClosed2 = u.GetIcon(u, "solar/eye-closed-bold")
                        local function setEyeIcon2(active)
                            local ic = active and icClosed2 or icOpen2
                            if ic and type(ic) == "table" then
                                eyeImg2.Image = ic.Image or ""
                                eyeImg2.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                                eyeImg2.ImageRectSize   = ic.ImageRectSize   or Vector2.new()
                            elseif ic then
                                eyeImg2.Image = tostring(ic)
                            end
                        end
                        setEyeIcon2(false)
                        local dn2Lbl = bot:FindFirstChild("DisplayName")
                        local un2Lbl = bot:FindFirstChild("Username")
                        m.AddSignal(eyeBtn2.MouseButton1Click, function()
                            anonActive2 = not anonActive2
                            if dn2Lbl then dn2Lbl.Text = anonActive2 and "Anonymous" or realDN2 end
                            if un2Lbl then un2Lbl.Text = anonActive2 and "@•••••••" or realUN2 end
                            setEyeIcon2(anonActive2)
                        end)
                    end
                end
                if t.UserInfoColor then
                    local _uic2 = t.UserInfoColor
                    local dnLbl3 = bot:FindFirstChild("DisplayName")
                    local unLbl3 = bot:FindFirstChild("Username")
                    if dnLbl3 then
                        m.Registry[dnLbl3] = nil
                        dnLbl3.TextColor3 = _uic2
                    end
                    if unLbl3 then
                        m.Registry[unLbl3] = nil
                        unLbl3.TextColor3 = _uic2
                    end
                end
                table.insert(sidebarChildren, bot)
            end


            local _tabListLayout = s("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder})
            v.TabListContainer = s(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                },
                {_tabListLayout}
            )
            v.TabHolder =
                s(
                "ScrollingFrame",
                {
                    Size = UDim2.new(1, 0, 1, -(topOffset + botOffset)),
                    Position = UDim2.fromOffset(0, topOffset),
                    BackgroundTransparency = 1,
                    ScrollBarImageTransparency = 0.7,
                    ScrollBarThickness = 3,
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ElasticBehavior = Enum.ElasticBehavior.Never,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y,
                    ClipsDescendants = true,
                },
                {v.TabListContainer, D}
            )
            table.insert(sidebarChildren, v.TabHolder)


            local listLayout = _tabListLayout
            if listLayout then
                listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    v.TabHolder.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y + 10)
                end)
            end


            if searchBox then
                local allElements = {}
                v.AllElements = allElements
                v.SearchBox = searchBox
                

                local function scrollToFirstVisible()
                    task.wait(0.05)
                    for _, cf in pairs(v.ContainerHolder and v.ContainerHolder:GetChildren() or {}) do
                        if cf:IsA("ScrollingFrame") then
                            for _, sec in pairs(cf:GetChildren()) do
                                if sec:IsA("Frame") and sec.Visible then
                                    local cont = sec:FindFirstChild("Container")
                                    if cont then
                                        for _, ch in pairs(cont:GetChildren()) do
                                            if not ch:IsA("UIListLayout") and not ch:IsA("UIPadding") and ch.Visible then
                                                local yPos = ch.AbsolutePosition.Y - cf.AbsolutePosition.Y
                                                if yPos > 0 then
                                                    cf.CanvasPosition = Vector2.new(0, math.max(0, yPos - 20))
                                                end
                                                return
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                
                searchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    local q = (searchBox.Text or ""):lower():gsub("^%s+",""):gsub("%s+$","")
                    local blank = q == ""
                    
                    for _, tabBtn in pairs(v.TabListContainer:GetChildren()) do
                        if tabBtn:IsA("TextButton") then
                            local txt = ""
                            local txtLbl = tabBtn:FindFirstChildWhichIsA("TextLabel")
                            if txtLbl then txt = txtLbl.Text end
                            tabBtn.Visible = blank or txt:lower():find(q, 1, true) ~= nil
                        end
                    end
                    

                    for el, label in pairs(allElements) do
                        if el and el.Parent then
                            el.Visible = blank or label:lower():find(q, 1, true) ~= nil
                        end
                    end
                    

                    task.delay(0.03, function()
                        for _, cf in pairs(v.ContainerHolder and v.ContainerHolder:GetChildren() or {}) do
                            if cf:IsA("ScrollingFrame") then
                                for _, sec in pairs(cf:GetChildren()) do
                                    if sec:IsA("Frame") then
                                        local cont = sec:FindFirstChild("Container")
                                        if cont then
                                            local any = false
                                            for _, ch in pairs(cont:GetChildren()) do
                                                if not ch:IsA("UIListLayout") and not ch:IsA("UIPadding") and ch.Visible then
                                                    any = true
                                                    break
                                                end
                                            end
                                            sec.Visible = blank or any
                                        end
                                    end
                                end
                                local layout = cf:FindFirstChildWhichIsA("UIListLayout")
                                if layout then
                                    cf.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
                                end
                            end
                        end
                        if not blank then
                            scrollToFirstVisible()
                        end
                    end)
                end)
                

                game:GetService("UserInputService").InputBegan:Connect(function(inp, gp)
                    if gp then return end
                    if inp.KeyCode == Enum.KeyCode.Escape and searchBox:IsFocused() then
                        searchBox.Text = ""
                        searchBox:ReleaseFocus()
                    end
                end)
            end

            local F =
                s(
                "Frame",
                {
                    Size = UDim2.new(0, t.TabWidth, 1, -66),
                    Position = UDim2.new(0, 12, 0, 54),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true
                },
                sidebarChildren
            )
            v.TabDisplay =
                s(
                "TextLabel",
                {
                    RichText = true,
                    Text = "Tab",
                    TextTransparency = 0,
                    FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextSize = 28,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -16, 0, 28),
                    Position = UDim2.fromOffset(t.TabWidth + 26, 56),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            v.ContainerHolder =
                s(
                "CanvasGroup",
                {
                    Size = UDim2.new(1, -t.TabWidth - 32, 1, -102),
                    Position = UDim2.fromOffset(t.TabWidth + 26, 90),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                }
            )
            v.ContainerClip =
                s(
                "Frame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Parent = v.ContainerHolder,
                },
                {s("UICorner", {CornerRadius = UDim.new(0, 10)})}
            )
            v.Root =
                s(
                "Frame",
                {BackgroundTransparency = 1, Size = v.Size, Position = v.Position, Parent = t.Parent},
                {v.AcrylicPaint.Frame, v.TabDisplay, v.ContainerHolder, F, E}
            )
            v.TitleBar = e(d.Parent.TitleBar) {Title = t.Title, SubTitle = t.SubTitle, Parent = v.Root, Window = v, Icon = t.TitleIcon, Version = t.Version}
            if e(k).UseAcrylic then
                v.AcrylicPaint.AddParent(v.Root)
            end
            local G, H =
                l.GroupMotor.new {X = v.Size.X.Offset, Y = v.Size.Y.Offset},
                l.GroupMotor.new {X = v.Position.X.Offset, Y = v.Position.Y.Offset}
            v.SelectorPosMotor = l.SingleMotor.new(17)
            v.SelectorSizeMotor = l.SingleMotor.new(0)
            v.ContainerBackMotor = l.SingleMotor.new(0)
            v.ContainerPosMotor = l.SingleMotor.new(94)
            G:onStep(
                function(I)
                    v.Root.Size = UDim2.new(0, I.X, 0, I.Y)
                end
            )
            H:onStep(
                function(I)
                    v.Root.Position = UDim2.new(0, I.X, 0, I.Y)
                end
            )
            local I, J = 0, 0
            v.SelectorPosMotor:onStep(
                function(K)
                    local canvasY = (v.TabHolder and v.TabHolder.CanvasPosition.Y) or 0
                    D.Position = UDim2.new(0, 0, 0, K + 17 + canvasY)
                    local L = tick()
                    local M = L - J
                    if I ~= nil then
                        v.SelectorSizeMotor:setGoal(q((math.abs(K - I) / (M * 60)) + 16))
                        I = K
                    end
                    J = L
                end
            )
            v.SelectorSizeMotor:onStep(
                function(K)
                    D.Size = UDim2.new(0, 4, 0, K)
                end
            )
            v.ContainerBackMotor:onStep(
                function(K)
                    v.ContainerHolder.GroupTransparency = K
                end
            )
            v.ContainerPosMotor:onStep(
                function(K)
                    v.ContainerHolder.Position = UDim2.fromOffset(t.TabWidth + 26, K)
                end
            )
            local K, L
            v.Maximize = function(M, N, O)
                v.Maximized = M
                v.TitleBar.MaxButton.Frame.Icon.Image = M and o.Restore or o.Max
                if M then
                    K = v.Size.X.Offset
                    L = v.Size.Y.Offset
                end
                local P, Q = M and j.ViewportSize.X or K, M and j.ViewportSize.Y or L
                G:setGoal {
                    X = l[O and "Instant" or "Spring"].new(P, {frequency = 6}),
                    Y = l[O and "Instant" or "Spring"].new(Q, {frequency = 6})
                }
                v.Size = UDim2.fromOffset(P, Q)
                if not N then
                    H:setGoal {
                        X = q(M and 0 or v.Position.X.Offset, {frequency = 6}),
                        Y = q(M and 0 or v.Position.Y.Offset, {frequency = 6})
                    }
                end
            end
            m.AddSignal(
                v.TitleBar.Frame.InputBegan,
                function(M)
                    if M.UserInputType == Enum.UserInputType.MouseButton1 or M.UserInputType == Enum.UserInputType.Touch then
                        w = true
                        y = M.Position
                        z = v.Root.Position
                        if v.Maximized then
                            z =
                                UDim2.fromOffset(
                                i.X - (i.X * ((K - 100) / v.Root.AbsoluteSize.X)),
                                i.Y - (i.Y * (L / v.Root.AbsoluteSize.Y))
                            )
                        end
                        M.Changed:Connect(
                            function()
                                if M.UserInputState == Enum.UserInputState.End then
                                    w = false
                                end
                            end
                        )
                    end
                end
            )
            m.AddSignal(
                v.TitleBar.Frame.InputChanged,
                function(M)
                    if
                        M.UserInputType == Enum.UserInputType.MouseMovement or
                            M.UserInputType == Enum.UserInputType.Touch
                     then
                        x = M
                    end
                end
            )
            m.AddSignal(
                E.InputBegan,
                function(M)
                    if M.UserInputType == Enum.UserInputType.MouseButton1 or M.UserInputType == Enum.UserInputType.Touch then
                        A = true
                        B = M.Position
                    end
                end
            )
            m.AddSignal(
                h.InputChanged,
                function(M)
                    if M == x and w then
                        local N = M.Position - y
                        v.Position = UDim2.fromOffset(z.X.Offset + N.X, z.Y.Offset + N.Y)
                        H:setGoal {X = r(v.Position.X.Offset), Y = r(v.Position.Y.Offset)}
                        if v.Maximized then
                            v.Maximize(false, true, true)
                        end
                    end
                    if
                        (M.UserInputType == Enum.UserInputType.MouseMovement or
                            M.UserInputType == Enum.UserInputType.Touch) and
                            A
                     then
                        local N, O = M.Position - B, v.Size
                        local P = Vector3.new(O.X.Offset, O.Y.Offset, 0) + Vector3.new(1, 1, 0) * N
                        local Q = Vector2.new(math.clamp(P.X, 470, 2048), math.clamp(P.Y, 380, 2048))
                        G:setGoal {X = l.Instant.new(Q.X), Y = l.Instant.new(Q.Y)}
                    end
                end
            )
            m.AddSignal(
                h.InputEnded,
                function(M)
                    if A == true or M.UserInputType == Enum.UserInputType.Touch then
                        A = false
                        v.Size = UDim2.fromOffset(G:getValue().X, G:getValue().Y)
                    end
                end
            )
            m.AddSignal(
                v.TabListContainer.UIListLayout:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    v.TabHolder.CanvasSize = UDim2.new(0, 0, 0, v.TabListContainer.UIListLayout.AbsoluteContentSize.Y + 10)
                end
            )
            m.AddSignal(
                h.InputBegan,
                function(M)
                    if
                        type(u.MinimizeKeybind) == "table" and u.MinimizeKeybind.Type == "Keybind" and
                            not h:GetFocusedTextBox()
                     then
                        if M.KeyCode.Name == u.MinimizeKeybind.Value then
                            v:Minimize()
                        end
                    elseif M.KeyCode == u.MinimizeKey and not h:GetFocusedTextBox() then
                        v:Minimize()
                    end
                end
            )
            function v.Show(M)
                v.Minimized = false
                v.Root.Visible = true
                pcall(function()
                    local ovs = e(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = true end end
                end)
            end
            function v.Hide(M)
                v.Minimized = true
                v.Root.Visible = false
                pcall(function()
                    local ovs = e(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = false end end
                end)
            end
            function v.Minimize(M)
                v.Minimized = not v.Minimized
                v.Root.Visible = not v.Minimized
                pcall(function()
                    local ovs = e(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = not v.Minimized end end
                end)
                if not C then
                    C = true
                    local N = u.MinimizeKeybind and u.MinimizeKeybind.Value or u.MinimizeKey.Name
                    u:Notify {Title = "Interface", Content = "Press " .. N .. " to toggle the interface.", Duration = 6}
                end
            end
            function v.Destroy(M)
                if e(k).UseAcrylic then
                    v.AcrylicPaint.Model:Destroy()
                end
                pcall(function()
                    local ovs = e(k)._SBOverlays
                    if ovs then
                        for _, ov in ipairs(ovs) do pcall(function() ov:Destroy() end) end
                        table.clear(ovs)
                    end
                end)
                v.Root:Destroy()
            end
            local M = e(p.Dialog):Init(v)
            function v.Dialog(N, O)
                local P = M:Create()
                P.Title.Text = O.Title
                local Q =
                    s(
                    "TextLabel",
                    {
                        FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                        Text = O.Content,
                        TextColor3 = Color3.fromRGB(240, 240, 240),
                        TextSize = 14,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        TextYAlignment = Enum.TextYAlignment.Top,
                        Size = UDim2.new(1, -40, 1, 0),
                        Position = UDim2.fromOffset(20, 60),
                        BackgroundTransparency = 1,
                        Parent = P.Root,
                        ClipsDescendants = false,
                        ThemeTag = {TextColor3 = "Text"}
                    }
                )
                s(
                    "UISizeConstraint",
                    {MinSize = Vector2.new(300, 165), MaxSize = Vector2.new(620, math.huge), Parent = P.Root}
                )
                local extraH = 0
                if O.Input then
                    extraH = 46
                end
                P.Root.Size = UDim2.fromOffset(Q.TextBounds.X + 40, 165 + extraH)
                if Q.TextBounds.X + 40 > v.Size.X.Offset - 120 then
                    P.Root.Size = UDim2.fromOffset(v.Size.X.Offset - 120, 165 + extraH)
                    Q.TextWrapped = true
                    P.Root.Size = UDim2.fromOffset(v.Size.X.Offset - 120, Q.TextBounds.Y + 150 + extraH)
                end
                if O.Input then
                    local inputCfg = (type(O.Input) == "table") and O.Input or {}
                    local box = P:AddInput(inputCfg.Placeholder, inputCfg.Default)
                    P.InputHolder.Position = UDim2.new(0, 20, 1, -(70 + extraH - 8))
                    if inputCfg.Numeric then
                        m.AddSignal(box:GetPropertyChangedSignal("Text"), function()
                            local filtered = box.Text:gsub("[^%d%.%-]", "")
                            if filtered ~= box.Text then box.Text = filtered end
                        end)
                    end
                end
                for R, S in next, O.Buttons do
                    P:Button(S.Title, S.Callback)
                end
                P:Open()
                return P
            end
            local N = e(p.Tab):Init(v)
            v.TabsAPI = N
            v.SelectorFrame = D
            D.Visible = false
            do
                local _rs3 = game:GetService("RunService")
                local _selConn
                _selConn = _rs3.Heartbeat:Connect(function()
                    if not v.Root or not v.Root.Parent then
                        _selConn:Disconnect()
                        return
                    end
                    local sel = N.Tabs[N.SelectedTab]
                    if sel and sel.Frame and sel.Frame.Visible and sel.Frame.Parent then
                        D.Visible = true
                    else
                        D.Visible = false
                    end
                end)
            end
            function v.AddTab(O, P)
                local _tab = N:New(P.Title, P.Icon, v.TabListContainer)
                N:ReapplyFavoriteOrder()
                if N.TabCount == 1 then
                    task.defer(function()
                        N:SelectTab(1)
                    end)
                end
                return _tab
            end
            function v.SelectTab(O, P)
                local idx = tonumber(P) or 1
                if N.Tabs[idx] then
                    N:SelectTab(idx)
                else
                    task.defer(function()
                        if N.Tabs[idx] then N:SelectTab(idx) end
                    end)
                end
            end
            m.AddSignal(
                v.TabHolder:GetPropertyChangedSignal "CanvasPosition",
                function()
                    local pos = N:GetCurrentTabPos()
                    if pos then
                        I = pos + 16
                        J = 0
                        v.SelectorPosMotor:setGoal(r(pos))
                    end
                end
            )
            return v
        end
    end,
    [18] = function() --[[ Creator ]]
        local c, d, e, f, g = b(18)
        local h = d.Parent
        local i, j, k =
            e(h.Themes),
            e(h.Packages.Flipper),
            {
                Registry = {},
                Signals = {},
                TransparencyMotors = {},
                DefaultProperties = {
                    ScreenGui = {ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling},
                    Frame = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    },
                    ScrollingFrame = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        ScrollBarImageColor3 = Color3.new(0, 0, 0)
                    },
                    TextLabel = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        BackgroundTransparency = 1,
                        TextSize = 14
                    },
                    TextButton = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        AutoButtonColor = false,
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        TextSize = 14
                    },
                    TextBox = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        ClearTextOnFocus = false,
                        Font = Enum.Font.SourceSans,
                        Text = "",
                        TextColor3 = Color3.new(0, 0, 0),
                        TextSize = 14
                    },
                    ImageLabel = {
                        BackgroundTransparency = 1,
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    },
                    ImageButton = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        AutoButtonColor = false
                    },
                    CanvasGroup = {
                        BackgroundColor3 = Color3.new(1, 1, 1),
                        BorderColor3 = Color3.new(0, 0, 0),
                        BorderSizePixel = 0
                    }
                }
            }
        local l = function(l, m)
            if m.ThemeTag then
                k.AddThemeObject(l, m.ThemeTag)
            end
        end
        function k.AddSignal(m, n)
            table.insert(k.Signals, m:Connect(n))
        end
        function k.Disconnect()
            for m = #k.Signals, 1, -1 do
                local n = table.remove(k.Signals, m)
                n:Disconnect()
            end
        end
        local _noInheritFallbackKeys = {ShineEnabled = true, StrokeShine = true}
        function k.GetThemeProperty(m)
            local t = i[e(h).Theme]
            if t and t[m] ~= nil then
                return t[m]
            end
            if _noInheritFallbackKeys[m] then
                -- Capability flags like ShineEnabled must never silently inherit from the
                -- fallback theme. A theme that doesn't define this key simply doesn't support it.
                return false
            end
            local fallback = i["Ash Gray"]
            if fallback then return fallback[m] end
            return nil
        end
        function k.UpdateTheme()
            for m, n in next, k.Registry do
                for o, p in next, n.Properties do
                    m[o] = k.GetThemeProperty(p)
                end
            end
            for o, p in next, k.TransparencyMotors do
                p:setGoal(j.Instant.new(k.GetThemeProperty "ElementTransparency"))
            end
            local thm = i[e(h).Theme]
            local x = k.Library
            if x and x.Window and x.Window.AcrylicPaint then
                if Animation and Animation.Apply then Animation.Apply(thm, x.Window.AcrylicPaint.Frame, x.ShineEnabled) end
                task.defer(function()
                    if x._RefreshOpenDropdownShine then
                        x._RefreshOpenDropdownShine()
                    end
                end)
                if thm and thm.ButtonGradient then x.ButtonGradients = thm.ButtonGradient end
                local acrylicFrame = x.Window.AcrylicPaint.Frame
                local bgParent = acrylicFrame
                if bgParent then
                    local bgImg = bgParent:FindFirstChild("__ThemeBG")
                    local bgVal = thm and thm.Background
                    if bgVal and tostring(bgVal) ~= "" then
                        if not bgImg then
                            bgImg = Instance.new("ImageLabel")
                            bgImg.Name = "__ThemeBG"
                            bgImg.Size = UDim2.fromScale(1,1)
                            bgImg.BackgroundTransparency = 1
                            bgImg.ScaleType = Enum.ScaleType.Crop
                            bgImg.ZIndex = 0
                            bgImg.Parent = bgParent
                        end
                        bgImg.Image = tostring(bgVal)
                        bgImg.ImageTransparency = thm.BackgroundTransparency or 0
                        local im=x.InterfaceManager
                        bgImg.Visible = not (im and im.Settings and im.Settings.DisableBG)
                    elseif bgImg then
                        bgImg.Visible = false
                    end
                end
            end
        end
        function k.AddThemeObject(m, n)
            local o = #k.Registry + 1
            local p = {Object = m, Properties = n, Idx = o}
            k.Registry[m] = p
            k.UpdateTheme()
            return m
        end
        function k.OverrideTag(m, n)
            k.Registry[m].Properties = n
            k.UpdateTheme()
        end
        function k.New(m, n, o)
            local p = Instance.new(m)
            for q, r in next, k.DefaultProperties[m] or {} do
                p[q] = r
            end
            for s, t in next, n or {} do
                if s ~= "ThemeTag" then
                    p[s] = t
                end
            end
            for u, v in next, o or {} do
                v.Parent = p
            end
            l(p, n)
            return p
        end
        function k.SpringMotor(m, n, o, p, s)
            p = p or false
            s = s or false
            local t = j.SingleMotor.new(m)
            t:onStep(
                function(u)
                    n[o] = u
                end
            )
            if s then
                table.insert(k.TransparencyMotors, t)
            end
            local u = function(u, v)
                v = v or false
                if not p then
                    if not v then
                        if o == "BackgroundTransparency" and e(h).DialogOpen then
                            return
                        end
                    end
                end
                t:setGoal(j.Spring.new(u, {frequency = 8}))
            end
            return t, u
        end
        return k
    end,
    [19] = function() --[[ Module19 ]]
        local c, d, e, f, g = b(19)
        local h = {}
        for i, j in next, d:GetChildren() do
            table.insert(h, e(j))
        end
        return h
    end,
    [20] = function() --[[ Button_El ]]
        local c, d, e, f, g = b(20)
        local h = d.Parent.Parent
        local i = e(h.Creator)
        local j, k, l = i.New, h.Components, {}
        l.__index = l
        l.__type = "Button"
        function l.New(m, n)
            assert(n.Title, "Button - Missing Title")
            n.Callback = n.Callback or function()
                end
            local o = e(k.Element)(n.Title, n.Description, m.Container, true)
            local btnIcon = "rbxassetid://10709791437"
            if n.Icon then
                local ri = m.Library:GetIcon(n.Icon)
                if ri then btnIcon = (type(ri) == "table" and ri.Image or ri) end
            end
            local p =
                j(
                "ImageLabel",
                {
                    Image = btnIcon,
                    ImageRectOffset = (n.Icon and type(m.Library:GetIcon(n.Icon)) == "table") and m.Library:GetIcon(n.Icon).ImageRectOffset or Vector2.new(0,0),
                    ImageRectSize  = (n.Icon and type(m.Library:GetIcon(n.Icon)) == "table") and m.Library:GetIcon(n.Icon).ImageRectSize  or Vector2.new(0,0),
                    Size = UDim2.fromOffset(16, 16),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    BackgroundTransparency = 1,
                    Parent = o.Frame,
                    ThemeTag = {ImageColor3 = "Text"}
                }
            )
            i.AddSignal(
                o.Frame.MouseButton1Click,
                function()
                    m.Library:SafeCallback(n.Callback)
                end
            )
            return o
        end
        return l
    end,
    [21] = function() --[[ Colorpicker_El ]]
        local c, d, e, f, g = b(21)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "TouchInputService",
            game:GetService "RunService",
            game:GetService "Players"
        local l, m = j.RenderStepped, k.LocalPlayer
        local n, o = m:GetMouse(), d.Parent.Parent
        local p = e(o.Creator)
        local s, t, u = p.New, o.Components, {}
        u.__index = u
        u.__type = "Colorpicker"
        function u.New(v, w, x)
            local y = v.Library
            assert(x.Title, "Colorpicker - Missing Title")
            assert(x.Default ~= nil, "AddColorPicker: Missing default value.")
            local z = {
                Value = x.Default,
                Transparency = x.Transparency or 0,
                Type = "Colorpicker",
                Title = type(x.Title) == "string" and x.Title or "Colorpicker",
                Callback = x.Callback or function(z)
                    end
            }
            function z.SetHSVFromRGB(A, B)
                local C, D, E = Color3.toHSV(B)
                z.Hue = C
                z.Sat = D
                z.Vib = E
            end
            z:SetHSVFromRGB(z.Value)
            local A = e(t.Element)(x.Title, x.Description, v.Container, true)
            z.SetTitle = A.SetTitle
            z.SetDesc = A.SetDesc
            z.Frame = A.Frame
            local B =
                s(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundColor3 = z.Value, Parent = A.Frame},
                {s("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            local aa, ab =
                s(
                    "ImageLabel",
                    {
                        Size = UDim2.fromOffset(26, 26),
                        Position = UDim2.new(1, -10, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        Parent = A.Frame,
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = UDim2.fromOffset(40, 40)
                    },
                    {s("UICorner", {CornerRadius = UDim.new(0, 4)}), B}
                ),
                function()
                    local C = e(t.Dialog):Create()
                    C.Title.Text = z.Title
                    C.Root.Size = UDim2.fromOffset(430, 360)
                    local D, E, F, G, H, I =
                        z.Hue,
                        z.Sat,
                        z.Vib,
                        z.Transparency,
                        function()
                            local D = e(t.Textbox)()
                            D.Frame.Parent = C.Root
                            D.Frame.Size = UDim2.new(0, 90, 0, 32)
                            return D
                        end,
                        function(D, E)
                            return s(
                                "TextLabel",
                                {
                                    FontFace = Font.new(
                                        "rbxasset://fonts/families/GothamSSm.json",
                                        Enum.FontWeight.Medium,
                                        Enum.FontStyle.Normal
                                    ),
                                    Text = D,
                                    TextColor3 = Color3.fromRGB(240, 240, 240),
                                    TextSize = 13,
                                    TextXAlignment = Enum.TextXAlignment.Left,
                                    Size = UDim2.new(1, 0, 0, 32),
                                    Position = E,
                                    BackgroundTransparency = 1,
                                    Parent = C.Root,
                                    ThemeTag = {TextColor3 = "Text"}
                                }
                            )
                        end
                    local J, K =
                        function()
                            local J = Color3.fromHSV(D, E, F)
                            return {R = math.floor(J.r * 255), G = math.floor(J.g * 255), B = math.floor(J.b * 255)}
                        end,
                        s(
                            "ImageLabel",
                            {
                                Size = UDim2.new(0, 18, 0, 18),
                                ScaleType = Enum.ScaleType.Fit,
                                AnchorPoint = Vector2.new(0.5, 0.5),
                                BackgroundTransparency = 1,
                                Image = "http://www.roblox.com/asset/?id=4805639000"
                            }
                        )
                    local L, M =
                        s(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(180, 160),
                                Position = UDim2.fromOffset(20, 55),
                                Image = "rbxassetid://4155801252",
                                BackgroundColor3 = z.Value,
                                BackgroundTransparency = 0,
                                Parent = C.Root
                            },
                            {s("UICorner", {CornerRadius = UDim.new(0, 4)}), K}
                        ),
                        s(
                            "Frame",
                            {
                                BackgroundColor3 = z.Value,
                                Size = UDim2.fromScale(1, 1),
                                BackgroundTransparency = z.Transparency
                            },
                            {s("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local N, O =
                        s(
                            "ImageLabel",
                            {
                                Image = "http://www.roblox.com/asset/?id=14204231522",
                                ImageTransparency = 0.45,
                                ScaleType = Enum.ScaleType.Tile,
                                TileSize = UDim2.fromOffset(40, 40),
                                BackgroundTransparency = 1,
                                Position = UDim2.fromOffset(112, 220),
                                Size = UDim2.fromOffset(88, 24),
                                Parent = C.Root
                            },
                            {
                                s("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                s("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                M
                            }
                        ),
                        s(
                            "Frame",
                            {BackgroundColor3 = z.Value, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0},
                            {s("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local P, Q =
                        s(
                            "ImageLabel",
                            {
                                Image = "http://www.roblox.com/asset/?id=14204231522",
                                ImageTransparency = 0.45,
                                ScaleType = Enum.ScaleType.Tile,
                                TileSize = UDim2.fromOffset(40, 40),
                                BackgroundTransparency = 1,
                                Position = UDim2.fromOffset(20, 220),
                                Size = UDim2.fromOffset(88, 24),
                                Parent = C.Root
                            },
                            {
                                s("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                s("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                O
                            }
                        ),
                        {}
                    for R = 0, 1, 0.1 do
                        table.insert(Q, ColorSequenceKeypoint.new(R, Color3.fromHSV(R, 1, 1)))
                    end
                    local R, S =
                        s("UIGradient", {Color = ColorSequence.new(Q), Rotation = 90}),
                        s(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                    local T, U, V =
                        s(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = S,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        ),
                        s(
                            "Frame",
                            {Size = UDim2.fromOffset(12, 190), Position = UDim2.fromOffset(210, 55), Parent = C.Root},
                            {s("UICorner", {CornerRadius = UDim.new(1, 0)}), R, S}
                        ),
                        H()
                    V.Frame.Position = UDim2.fromOffset(x.Transparency and 260 or 240, 55)
                    I("Hex", UDim2.fromOffset(x.Transparency and 360 or 340, 55))
                    local W = H()
                    W.Frame.Position = UDim2.fromOffset(x.Transparency and 260 or 240, 95)
                    I("Red", UDim2.fromOffset(x.Transparency and 360 or 340, 95))
                    local X = H()
                    X.Frame.Position = UDim2.fromOffset(x.Transparency and 260 or 240, 135)
                    I("Green", UDim2.fromOffset(x.Transparency and 360 or 340, 135))
                    local Y = H()
                    Y.Frame.Position = UDim2.fromOffset(x.Transparency and 260 or 240, 175)
                    I("Blue", UDim2.fromOffset(x.Transparency and 360 or 340, 175))
                    local Z
                    if x.Transparency then
                        Z = H()
                        Z.Frame.Position = UDim2.fromOffset(260, 215)
                        I("Alpha", UDim2.fromOffset(360, 215))
                    end
                    local _, aa, ab2
                    if x.Transparency then
                        local ac =
                            s(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                        aa =
                            s(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = ac,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        )
                        ab2 =
                            s(
                            "Frame",
                            {Size = UDim2.fromScale(1, 1)},
                            {
                                s(
                                    "UIGradient",
                                    {
                                        Transparency = NumberSequence.new {
                                            NumberSequenceKeypoint.new(0, 0),
                                            NumberSequenceKeypoint.new(1, 1)
                                        },
                                        Rotation = 270
                                    }
                                ),
                                s("UICorner", {CornerRadius = UDim.new(1, 0)})
                            }
                        )
                        _ =
                            s(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(12, 190),
                                Position = UDim2.fromOffset(230, 55),
                                Parent = C.Root,
                                BackgroundTransparency = 1
                            },
                            {
                                s("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                s(
                                    "ImageLabel",
                                    {
                                        Image = "http://www.roblox.com/asset/?id=14204231522",
                                        ImageTransparency = 0.45,
                                        ScaleType = Enum.ScaleType.Tile,
                                        TileSize = UDim2.fromOffset(40, 40),
                                        BackgroundTransparency = 1,
                                        Size = UDim2.fromScale(1, 1),
                                        Parent = C.Root
                                    },
                                    {s("UICorner", {CornerRadius = UDim.new(1, 0)})}
                                ),
                                ab2,
                                ac
                            }
                        )
                    end
                    local prevColor = Color3.fromHSV(D, E, F)
                    local oldH, oldS, oldV = D, E, F
                    local blendEnabled = false
                    M.BackgroundColor3 = prevColor
                    O.BackgroundColor3 = prevColor
                    local prevLbl = s("TextLabel", {
                        Text = "#" .. prevColor:ToHex(), TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold),
                        Position = UDim2.fromOffset(20, 256),
                        Size = UDim2.fromOffset(80, 14),
                        BackgroundTransparency = 1,
                        Parent = C.Root,
                        ThemeTag = {TextColor3 = "Accent"},
                        TextXAlignment = Enum.TextXAlignment.Left,
                    })
                    local oldLbl = s("TextLabel", {
                        Text = "#" .. prevColor:ToHex(), TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Position = UDim2.fromOffset(112, 256),
                        Size = UDim2.fromOffset(80, 14),
                        BackgroundTransparency = 1,
                        Parent = C.Root,
                        ThemeTag = {TextColor3 = "SubText"},
                        TextXAlignment = Enum.TextXAlignment.Left,
                    })
                    local oldRevertBtn = s("TextButton", {
                        Text = "",
                        Position = UDim2.fromOffset(112, 220),
                        Size = UDim2.fromOffset(88, 24),
                        BackgroundTransparency = 1,
                        Parent = C.Root,
                        ZIndex = 5,
                    })
                    local ac = function()
                        local c1 = Color3.fromHSV(D, E, F)
                        L.BackgroundColor3 = Color3.fromHSV(D, 1, 1)
                        T.Position = UDim2.new(0, -1, D, -6)
                        K.Position = UDim2.new(E, 0, 1 - F, 0)
                        O.BackgroundColor3 = c1
                        prevLbl.Text = "#" .. c1:ToHex()
                        V.Input.Text = "#" .. c1:ToHex()
                        W.Input.Text = math.floor(c1.r * 255)
                        X.Input.Text = math.floor(c1.g * 255)
                        Y.Input.Text = math.floor(c1.b * 255)
                        if x.Transparency then
                            ab2.BackgroundColor3 = c1
                            O.BackgroundTransparency = G
                            aa.Position = UDim2.new(0, -1, 1 - G, -6)
                            Z.Input.Text = e(o):Round((1 - G) * 100, 0) .. "%"
                        end
                    end
                    p.AddSignal(
                        V.Input.FocusLost,
                        function(ad)
                            if ad then
                                local ae, af = pcall(Color3.fromHex, V.Input.Text)
                                if ae and typeof(af) == "Color3" then D, E, F = Color3.toHSV(af) end
                            end
                            ac()
                        end
                    )
                    p.AddSignal(
                        W.Input.FocusLost,
                        function(ad)
                            if ad then
                                local c1=Color3.fromHSV(D,E,F)
                                local af,ag=pcall(Color3.fromRGB,W.Input.Text,math.floor(c1.g*255),math.floor(c1.b*255))
                                if af and typeof(ag)=="Color3" and tonumber(W.Input.Text)<=255 then D,E,F=Color3.toHSV(ag) end
                            end
                            ac()
                        end
                    )
                                        p.AddSignal(
                        X.Input.FocusLost,
                        function(ad)
                            if ad then
                                local c1=Color3.fromHSV(D,E,F)
                                local af,ag=pcall(Color3.fromRGB,math.floor(c1.r*255),X.Input.Text,math.floor(c1.b*255))
                                if af and typeof(ag)=="Color3" and tonumber(X.Input.Text)<=255 then D,E,F=Color3.toHSV(ag) end
                            end
                            ac()
                        end
                    )
                    p.AddSignal(
                        Y.Input.FocusLost,
                        function(ad)
                            if ad then
                                local c1=Color3.fromHSV(D,E,F)
                                local af,ag=pcall(Color3.fromRGB,math.floor(c1.r*255),math.floor(c1.g*255),Y.Input.Text)
                                if af and typeof(ag)=="Color3" and tonumber(Y.Input.Text)<=255 then D,E,F=Color3.toHSV(ag) end
                            end
                            ac()
                        end
                    )
                    if x.Transparency then
                        p.AddSignal(
                            Z.Input.FocusLost,
                            function(ad)
                                if ad then
                                    pcall(
                                        function()
                                            local ae = tonumber(Z.Input.Text)
                                            if ae >= 0 and ae <= 100 then
                                                G = 1 - ae * 0.01
                                            end
                                        end
                                    )
                                end
                                ac()
                            end
                        )
                    end
                    p.AddSignal(
                        L.InputBegan,
                        function(ad)
                            if
                                ad.UserInputType == Enum.UserInputType.MouseButton1 or
                                    ad.UserInputType == Enum.UserInputType.Touch
                             then
                                while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                    local ae = L.AbsolutePosition.X
                                    local af = ae + L.AbsoluteSize.X
                                    local ag, ah = math.clamp(n.X, ae, af), L.AbsolutePosition.Y
                                    local ai = ah + L.AbsoluteSize.Y
                                    local aj = math.clamp(n.Y, ah, ai)
                                    E = (ag - ae) / (af - ae)
                                    F = 1 - ((aj - ah) / (ai - ah))
                                    ac()
                                    l:Wait()
                                end
                            end
                        end
                    )
                    p.AddSignal(
                        U.InputBegan,
                        function(ad)
                            if
                                ad.UserInputType == Enum.UserInputType.MouseButton1 or
                                    ad.UserInputType == Enum.UserInputType.Touch
                             then
                                while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                    local ae = U.AbsolutePosition.Y
                                    local af = ae + U.AbsoluteSize.Y
                                    local ag = math.clamp(n.Y, ae, af)
                                    D = (ag - ae) / (af - ae)
                                    ac()
                                    l:Wait()
                                end
                            end
                        end
                    )
                    if x.Transparency then
                        p.AddSignal(
                            _.InputBegan,
                            function(ad)
                                if ad.UserInputType == Enum.UserInputType.MouseButton1 then
                                    while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                        local ae = _.AbsolutePosition.Y
                                        local af = ae + _.AbsoluteSize.Y
                                        local ag = math.clamp(n.Y, ae, af)
                                        G = 1 - ((ag - ae) / (af - ae))
                                        ac()
                                        l:Wait()
                                    end
                                end
                            end
                        )
                    end
                    ac()
                    p.AddSignal(oldRevertBtn.MouseButton1Click, function()
                        D, E, F = oldH, oldS, oldV
                        ac()
                    end)
                    C:Button(
                        "Done",
                        function()
                            local c1 = Color3.fromHSV(D, E, F)
                            local fH, fS, fV = Color3.toHSV(c1)
                            z:SetValue({fH, fS, fV}, G)
                        end
                    )
                    C:Button "Cancel"
                    C:Open()
                end
            function z.Display(ac)
                z.Value = Color3.fromHSV(z.Hue, z.Sat, z.Vib)
                B.BackgroundColor3 = z.Value
                B.BackgroundTransparency = z.Transparency
                u.Library:SafeCallback(z.Callback, z.Value)
                u.Library:SafeCallback(z.Changed, z.Value)
                if z.Callback2 then
                    pcall(z.Callback2, z.Value2 or z.Value)
                end
            end
            function z.SetValue(ac, ad, ae)
                local af = Color3.fromHSV(ad[1], ad[2], ad[3])
                z.Transparency = ae or 0
                z:SetHSVFromRGB(af)
                z:Display()
            end
            function z.SetValueRGB(ac, ad, ae)
                z.Transparency = ae or 0
                z:SetHSVFromRGB(ad)
                z:Display()
            end
            function z.OnChanged(ac, ad)
                z.Changed = ad
                ad(z.Value)
            end
            function z.Destroy(ac)
                A:Destroy()
                y.Options[w] = nil
            end
            p.AddSignal(
                A.Frame.MouseButton1Click,
                function()
                    ab()
                end
            )
            z:Display()
            y.Options[w] = z
            return z
        end
        return u
    end,
    [22] = function() --[[ Dropdown_El ]]
        local aa, ab, ac, ad, ae = b(22)
        local af, ag, ah, ai, aj =
            game:GetService "TweenService",
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            ab.Parent.Parent
        local c, d = ac(aj.Creator), ac(aj.Packages.Flipper)
        local e, f, g = c.New, aj.Components, {}
        local _RS_dd = game:GetService("RunService")
        local function _clearDropShine(state)
            if state._shineConns then
                for _, conn in ipairs(state._shineConns) do
                    pcall(function() conn:Disconnect() end)
                end
                table.clear(state._shineConns)
            end
        end
        local function _applyDropShine(state, root, elementAnimated)
            _clearDropShine(state)
            state._shineConns = {}
            if not elementAnimated then return end
            local objs = root:GetDescendants()
            for _, obj in ipairs(objs) do
                if obj:IsA("UIGradient") then
                    local conn
                    conn = _RS_dd.RenderStepped:Connect(function(dt)
                        local shineCfg = c.GetThemeProperty("Shine")
                        if not shineCfg then return end
                        local Speed = shineCfg.Speed or 0.5
                        local RotationSpeed = shineCfg.RotationSpeed or 25
                        local ColorSeq = shineCfg.ColorSequence
                        local t = (obj:GetAttribute("_t") or 0) + dt * Speed
                        obj:SetAttribute("_t", t)
                        obj.Rotation = (t * RotationSpeed) % 360
                        obj.Offset = Vector2.new(math.sin(t * 0.6) * 0.18, obj.Offset.Y)
                        if ColorSeq then obj.Color = ColorSeq end
                    end)
                    table.insert(state._shineConns, conn)
                end
                if obj:IsA("UIStroke") then
                    local conn
                    conn = _RS_dd.RenderStepped:Connect(function(dt)
                        local shineCfg = c.GetThemeProperty("Shine")
                        local Speed = (shineCfg and shineCfg.Speed) or 0.5
                        local strokeDark = c.GetThemeProperty("StrokeDark") or c.GetThemeProperty("AcrylicBorder")
                        local accent = c.GetThemeProperty("Accent")
                        local t = (obj:GetAttribute("_t") or 0) + dt * Speed
                        obj:SetAttribute("_t", t)
                        if strokeDark and accent then
                            local pulse = (math.sin(t) + 1) / 2
                            obj.Thickness = 1.25 + pulse * 1.25
                            obj.Color = strokeDark:Lerp(accent, pulse)
                        end
                    end)
                    table.insert(state._shineConns, conn)
                end
            end
        end
        g.__index = g
        g.__type = "Dropdown"
        -- Shared across all dropdown instances: tracks which side (left/right) of the window
        -- is currently occupied by an open OutsideWindow dropdown, so a second one opening
        -- at the same time automatically goes to the other side instead of overlapping.
        local _outsideSideOwner = {left = nil, right = nil, top = nil, bottom = nil}
        -- Shared registry of currently open dropdowns, so the global "Animated Window" toggle
        -- can immediately re-apply or clear shine on dropdowns that are already open, instead
        -- of waiting for the user to close and reopen them.
        local _openDropdowns = setmetatable({}, {__mode = "k"})
        local function _registerShineRefresh(lib)
            if lib and not lib._RefreshOpenDropdownShine then
                lib._RefreshOpenDropdownShine = function()
                    for state in next, _openDropdowns do
                        if state._refreshShine then state._refreshShine() end
                    end
                end
            end
        end
        function g.New(h, i, j)
            local k, l, m =
                h.Library,
                {
                    Values = j.Values,
                    Value = j.Default,
                    Multi = j.Multi,
                    Buttons = {},
                    Opened = false,
                    Type = "Dropdown",
                    Callback = j.Callback or function()
                        end
                },
                ac(f.Element)(j.Title, j.Description, h.Container, false)
            _registerShineRefresh(h.Library)
            m.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            l.SetTitle = m.SetTitle
            l.SetDesc = m.SetDesc
            l.Frame = m.Frame
            local n, o =
                e(
                    "TextLabel",
                    {
                        FontFace = Font.new(
                            "rbxasset://fonts/families/GothamSSm.json",
                            Enum.FontWeight.Regular,
                            Enum.FontStyle.Normal
                        ),
                        Text = "Value",
                        TextColor3 = Color3.fromRGB(240, 240, 240),
                        TextSize = 13,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Size = UDim2.new(1, -30, 0, 14),
                        Position = UDim2.new(0, 8, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                        BackgroundTransparency = 1,
                        TextTruncate = Enum.TextTruncate.AtEnd,
                        ThemeTag = {TextColor3 = "Text"}
                    }
                ),
                e(
                    "ImageLabel",
                    {
                        Image = "rbxassetid://10709790948",
                        Size = UDim2.fromOffset(16, 16),
                        AnchorPoint = Vector2.new(1, 0.5),
                        Position = UDim2.new(1, -8, 0.5, 0),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "SubText"}
                    }
                )
            local p, s =
                e(
                    "TextButton",
                    {
                        Size = UDim2.fromOffset(160, 30),
                        Position = UDim2.new(1, -10, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        BackgroundTransparency = 0.9,
                        Parent = m.Frame,
                        ThemeTag = {BackgroundColor3 = "DropdownFrame"}
                    },
                    {
                        e("UICorner", {CornerRadius = UDim.new(0, 5)}),
                        e(
                            "UIStroke",
                            {
                                Transparency = 0.5,
                                ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                                ThemeTag = {Color = "InElementBorder"}
                            }
                        ),
                        o,
                        n
                    }
                ),
                e("UIListLayout", {Padding = UDim.new(0, 3)})

            local ddShowSearch = not (j.NoSearch == true or j.Search == false)
            local ddSearchBox = ddShowSearch and e("TextBox", {
                FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                TextSize = 11, TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 0.7, BorderSizePixel = 0,
                Size = UDim2.new(1, -10, 0, 24), Position = UDim2.fromOffset(5, 5),
                PlaceholderText = "Search options...", ClearTextOnFocus = false, Text = "",
                ThemeTag = {TextColor3 = "Text", BackgroundColor3 = "Input", PlaceholderColor3 = "SubText"},
            }) or nil
            if ddSearchBox then
                e("UICorner", {CornerRadius = UDim.new(0, 4)}).Parent = ddSearchBox
            end
            local scrollOffY = ddShowSearch and 33 or 5
            local scrollH    = ddShowSearch and -38 or -10
            local t =
                e(
                "ScrollingFrame",
                {
                    Size = UDim2.new(1, -5, 1, scrollH),
                    Position = UDim2.fromOffset(5, scrollOffY),
                    BackgroundTransparency = 1,
                    ScrollBarImageTransparency = 1,
                    ScrollBarThickness = 0,
                    VerticalScrollBarInset = Enum.ScrollBarInset.None,
                    TopImage = "", MidImage = "", BottomImage = "",
                    ElasticBehavior = Enum.ElasticBehavior.Never,
                    BorderSizePixel = 0,
                    ClipsDescendants = true,
                    CanvasSize = UDim2.fromScale(0, 0)
                },
                {s}
            )
            local _ddBgImgRaw = j.DropdownBackgroundImages or j.DropdownBackgroundImage
            local _ddBgImg = ""
            if type(_ddBgImgRaw) == "string" then
                if _ddBgImgRaw:match("^rbxassetid://") or _ddBgImgRaw:match("^rbxasset://") or _ddBgImgRaw:match("^http") then
                    _ddBgImg = _ddBgImgRaw
                elseif _ddBgImgRaw:match("^%d+$") then
                    _ddBgImg = "rbxassetid://" .. _ddBgImgRaw
                end
            end
            local _ddBgTransp= j.DropdownBackgroundTransparency
            if _ddBgTransp == nil then _ddBgTransp = 0.4 end
            local _ddBgChild
            if _ddBgImg ~= "" then
                _ddBgChild = e("ImageLabel",{BackgroundTransparency=1,Image=_ddBgImg,ScaleType=Enum.ScaleType.Stretch,Size=UDim2.fromScale(1,1),ImageTransparency=_ddBgTransp,ZIndex=0})
            else
                _ddBgChild = e("ImageLabel",{BackgroundTransparency=1,Image="http://www.roblox.com/asset/?id=5554236805",ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(23,23,277,277),Size=UDim2.fromScale(1,1)+UDim2.fromOffset(30,30),Position=UDim2.fromOffset(-15,-15),ImageColor3=Color3.fromRGB(0,0,0),ImageTransparency=0.1,Visible=false})
            end
            local _ddBorderThickness = tonumber(c.GetThemeProperty("DropdownBorderThickness")) or 1
            local ddStroke = e("UIStroke", {ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Thickness = _ddBorderThickness, ThemeTag = {Color = "DropdownBorder"}})
            local ddGradient = e("Frame", {
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 0.4,
                Size = UDim2.fromScale(1, 1),
                ZIndex = 0,
                Visible = false,
            }, {
                e("UICorner", {CornerRadius = UDim.new(0, 7)}),
                e("UIGradient", {Rotation = 90, ThemeTag = {Color = "AcrylicGradient"}}),
            })
            -- Same background, color, border and animated treatment regardless of OutsideWindow.
            -- OutsideWindow only changes WHERE the dropdown is placed, never how it looks.
            local uChildren = {t, e("UICorner", {CornerRadius = UDim.new(0, 7)}),
                ddStroke,
                ddGradient,
                _ddBgChild
            }
            if ddSearchBox then table.insert(uChildren, 1, ddSearchBox) end
            local u = e("Frame", {Size = UDim2.fromScale(1, 0.6), ThemeTag = {BackgroundColor3 = "DropdownHolder"}}, uChildren)
            local _isManagerDD = j.IsManagerDropdown == true
            if _isManagerDD then
                -- Manager-built dropdowns (theme list, font list, config list, layouts list) mirror
                -- the window's own Transparency setting live, instead of having independent transparency.
                local function _syncManagerTransparency()
                    local baseTransp = c.GetThemeProperty("DropdownTransparency") or 0
                    u.BackgroundTransparency = h.Library.WindowTransparent and math.max(baseTransp, 0.35) or baseTransp
                end
                _syncManagerTransparency()
                h.Library._ManagerDropdownSyncs = h.Library._ManagerDropdownSyncs or {}
                table.insert(h.Library._ManagerDropdownSyncs, _syncManagerTransparency)
            end
            local _isOutsideDD = (j.OutsideWindow or j.DropdownOutsideWindow) == true
            local _isManagerDDAnim = j.IsManagerDropdown == true
            local _themeSupportsShineInit = c.GetThemeProperty("ShineEnabled") == true
            local _initialAnimated = _themeSupportsShineInit and (
                (_isManagerDDAnim and (h.Library.ShineEnabled == true)) or (j.Animated == true)
            )
            if _initialAnimated then
                ddGradient.Visible = true
                local acrylicBorder = c.GetThemeProperty("AcrylicBorder")
                if acrylicBorder then ddStroke.Color = acrylicBorder end
            end
            local v =
                e(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.fromOffset(170, 300), Parent = h.Library.PopupGUI or h.Library.GUI, Visible = false},
                {u, e("UISizeConstraint", {MinSize = Vector2.new(170, 0)})}
            )
            table.insert(k.OpenFrames, v)
            local function _winFrame()
                local winGui = h.Library.GUI or h.Library.PopupGUI
                return winGui and winGui:FindFirstChildWhichIsA("Frame", true)
            end
            local w, x = function()
                    if j.OutsideWindow or j.DropdownOutsideWindow then
                        -- Side popup: appear around the window (right, left, top or bottom),
                        -- automatically picking a free slot when multiple are open at once.
                        local winFrame = _winFrame()
                        local winLeft   = winFrame and winFrame.AbsolutePosition.X or 0
                        local winTop    = winFrame and winFrame.AbsolutePosition.Y or 0
                        local winRight  = winFrame and (winFrame.AbsolutePosition.X + winFrame.AbsoluteSize.X) or (p.AbsolutePosition.X + p.AbsoluteSize.X + 8)
                        local winBottom = winFrame and (winFrame.AbsolutePosition.Y + winFrame.AbsoluteSize.Y) or (p.AbsolutePosition.Y + p.AbsoluteSize.Y + 8)
                        local winCenterX = winFrame and (winLeft + winFrame.AbsoluteSize.X / 2) or winLeft
                        local popW     = v.AbsoluteSize.X
                        local popH     = v.AbsoluteSize.Y

                        local rightFits  = (winRight + 8 + popW) <= (ai.ViewportSize.X - 8)
                        local leftFits   = (winLeft - 8 - popW) >= 8
                        local topFits    = (winTop - 8 - popH) >= 8
                        local bottomFits = (winBottom + 8 + popH) <= (ai.ViewportSize.Y - 8)

                        local slotOrder = {"right", "left", "bottom", "top"}
                        local fits = {right = rightFits, left = leftFits, top = topFits, bottom = bottomFits}
                        local side = nil
                        -- Prefer a slot that's completely free
                        for _, s2 in ipairs(slotOrder) do
                            if fits[s2] and (_outsideSideOwner[s2] == nil or _outsideSideOwner[s2] == l) then
                                side = s2
                                break
                            end
                        end
                        -- Nothing fully free: fall back to whatever slot fits, preferring "right"
                        if not side then
                            for _, s2 in ipairs(slotOrder) do
                                if fits[s2] then side = s2; break end
                            end
                        end
                        side = side or "right"

                        if _outsideSideOwner[l._outsideSide or ""] == l then
                            _outsideSideOwner[l._outsideSide] = nil
                        end
                        l._outsideSide = side
                        _outsideSideOwner[side] = l

                        local popX, popY
                        if side == "left" then
                            popX = leftFits and (winLeft - 8 - popW) or math.min(winLeft - 8 - popW, ai.ViewportSize.X - popW - 8)
                            popX = math.min(popX, winLeft - popW - 2)
                            if #l.Values > 10 then popY = winTop else
                                popY = math.max(8, math.min(p.AbsolutePosition.Y + p.AbsoluteSize.Y / 2 - popH / 2, ai.ViewportSize.Y - popH - 8))
                            end
                        elseif side == "top" then
                            popY = topFits and (winTop - 8 - popH) or math.min(winTop - 8 - popH, 8)
                            popY = math.min(popY, winTop - popH - 2)
                            popX = math.max(8, math.min(winCenterX - popW / 2, ai.ViewportSize.X - popW - 8))
                        elseif side == "bottom" then
                            popY = bottomFits and (winBottom + 8) or math.max(winBottom + 2, ai.ViewportSize.Y - popH - 8)
                            -- Slight diagonal offset from the window's left edge, distinguishing it from a centred top/bottom popup
                            popX = math.max(8, math.min(winLeft + 24, ai.ViewportSize.X - popW - 8))
                        else -- right
                            popX = rightFits and (winRight + 8) or math.max(winRight + 2, ai.ViewportSize.X - popW - 8)
                            if #l.Values > 10 then popY = winTop else
                                popY = math.max(8, math.min(p.AbsolutePosition.Y + p.AbsoluteSize.Y / 2 - popH / 2, ai.ViewportSize.Y - popH - 8))
                            end
                        end
                        -- Final safety net: if the computed position still spatially overlaps the
                        -- window's own bounds (e.g. on very small screens), nudge it to the nearest
                        -- non-overlapping edge so dropdowns can never sit on top of and block the
                        -- title bar or any other part of the window from receiving input.
                        if winFrame then
                            local popRight, popBottom = popX + popW, popY + popH
                            local overlapsWindow = popX < winRight and popRight > winLeft and popY < winBottom and popBottom > winTop
                            if overlapsWindow then
                                if side == "left" or side == "right" then
                                    popX = (side == "left") and (winLeft - popW - 2) or (winRight + 2)
                                else
                                    popY = (side == "top") and (winTop - popH - 2) or (winBottom + 2)
                                end
                            end
                        end
                        v.Position = UDim2.fromOffset(popX, popY)
                    else
                        -- Normal popup: appear below the button, aligned to button left
                        local popX = p.AbsolutePosition.X
                        local popY = p.AbsolutePosition.Y + p.AbsoluteSize.Y + 4
                        -- Flip above if not enough space below
                        if popY + v.AbsoluteSize.Y > ai.ViewportSize.Y - 8 then
                            popY = p.AbsolutePosition.Y - v.AbsoluteSize.Y - 4
                        end
                        popY = math.max(8, popY)
                        v.Position = UDim2.fromOffset(popX, popY)
                    end
                end, 0
            local y, z = function()
                    local minH = 42
                    local maxH = 392
                    if j.OutsideWindow or j.DropdownOutsideWindow then
                        local winFrame = _winFrame()
                        local winH = winFrame and winFrame.AbsoluteSize.Y or ai.ViewportSize.Y
                        local isSideSlot = (l._outsideSide == "left" or l._outsideSide == "right" or l._outsideSide == nil)
                        if #l.Values > 10 and isSideSlot then
                            -- Side-panel mode: dropdown is the same size as the window
                            v.Size = UDim2.fromOffset(x, winH)
                        else
                            maxH = math.max(minH, winH - 16)
                            local h2 = s.AbsoluteContentSize.Y + 10
                            v.Size = UDim2.fromOffset(x, math.max(math.min(h2, maxH), minH))
                        end
                    else
                        if #l.Values > 10 then
                            v.Size = UDim2.fromOffset(x, math.min(maxH, 392))
                        else
                            local h2 = s.AbsoluteContentSize.Y + 10
                            v.Size = UDim2.fromOffset(x, math.max(math.min(h2, maxH), minH))
                        end
                    end
                end, function()
                    t.CanvasSize = UDim2.fromOffset(0, s.AbsoluteContentSize.Y)
                end
            y()
            w()
            c.AddSignal(p:GetPropertyChangedSignal "AbsolutePosition", w)
            c.AddSignal(p:GetPropertyChangedSignal "AbsoluteSize", function() y() w() end)
            c.AddSignal(
                p.MouseButton1Click,
                function()
                    l:Open()
                end
            )
            c.AddSignal(
                ag.InputBegan,
                function(A)
                    if not l.Opened then return end
                    if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
                        local B, C = u.AbsolutePosition, u.AbsoluteSize
                        local insideDropdown = ah.X >= B.X and ah.X <= B.X + C.X and ah.Y >= (B.Y - 20 - 1) and ah.Y <= B.Y + C.Y
                        if insideDropdown then return end
                        if j.OutsideWindow or j.DropdownOutsideWindow then
                            local winGui = h.Library.GUI or h.Library.PopupGUI
                            local winFrame = winGui and winGui:FindFirstChildWhichIsA("Frame", true)
                            if winFrame then
                                local wp, ws = winFrame.AbsolutePosition, winFrame.AbsoluteSize
                                local insideWindow = ah.X >= wp.X and ah.X <= wp.X + ws.X and ah.Y >= wp.Y and ah.Y <= wp.Y + ws.Y
                                if insideWindow then return end
                            end
                        end
                        l:Close()
                    end
                end
            )
            local A = h.ScrollFrame
            l._refreshShine = function()
                local themeSupportsShine = c.GetThemeProperty("ShineEnabled") == true
                local shouldAnimate
                if j.IsManagerDropdown then
                    shouldAnimate = themeSupportsShine and h.Library.ShineEnabled == true
                else
                    shouldAnimate = themeSupportsShine and j.Animated == true
                end
                ddGradient.Visible = shouldAnimate
                -- Directly set color without calling AddThemeObject (avoids UpdateTheme recursion)
                if shouldAnimate then
                    local acrylicBorder = c.GetThemeProperty("AcrylicBorder")
                    if acrylicBorder then ddStroke.Color = acrylicBorder end
                else
                    local dropBorder = c.GetThemeProperty("DropdownBorder")
                    if dropBorder then ddStroke.Color = dropBorder end
                end
                _applyDropShine(l, u, shouldAnimate)
            end
            function l.Open(B)
                l.Opened = true
                A.ScrollingEnabled = false
                y()
                w()
                y()
                v.Visible = true
                _openDropdowns[l] = true
                l._refreshShine()
                af:Create(
                    u,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.fromScale(1, 1)}
                ):Play()
                af:Create(
                    o,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Rotation = 180}
                ):Play()
            end
            function l.Close(B)
                l.Opened = false
                A.ScrollingEnabled = true
                u.Size = UDim2.fromScale(1, 0.6)
                _openDropdowns[l] = nil
                v.Visible = false
                _clearDropShine(l)
                af:Create(
                    o,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                if l._outsideSide and _outsideSideOwner[l._outsideSide] == l then
                    _outsideSideOwner[l._outsideSide] = nil
                end
            end
            function l.Display(B)
                local C, D = l.Values, ""
                if j.Multi then
                    for E, F in next, C do
                        if l.Value[F] then
                            D = D .. F .. ", "
                        end
                    end
                    D = D:sub(1, #D - 2)
                else
                    D = l.Value or ""
                end
                n.Text = (D == "" and "--" or D)
            end
            function l.GetActiveValues(B)
                if j.Multi then
                    local C = {}
                    for D, E in next, l.Value do
                        table.insert(C, D)
                    end
                    return C
                else
                    return l.Value and 1 or 0
                end
            end
            

            local filterTimer = nil
            local function updateDropdownFilter()
                if not ddSearchBox then return end
                local query = (ddSearchBox.Text or ""):lower():gsub("^%s+",""):gsub("%s+$","")
                local blank = query == ""
                for btn, btnObj in pairs(l.Buttons) do
                    local lbl = btn:FindFirstChild("ButtonLabel")
                    if lbl then
                        btn.Visible = blank or lbl.Text:lower():find(query, 1, true) ~= nil
                    end
                end
                z()
                y()
            end

            if ddSearchBox then
                ddSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    if filterTimer then filterTimer:Disconnect() end
                    filterTimer = game:GetService("RunService").Stepped:Connect(function()
                        updateDropdownFilter()
                        if filterTimer then filterTimer:Disconnect() end
                        filterTimer = nil
                    end)
                end)
            end
            
            function l.BuildDropdownList(B)
                local C, D = l.Values, {}
                l.Buttons = {}
                for E, F in next, t:GetChildren() do
                    if not F:IsA "UIListLayout" then
                        F:Destroy()
                    end
                end
                local G = 0
                for H, I in next, C do
                    local J = {}
                    G = G + 1
                    local K, L =
                        e(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(4, 14),
                                BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                                Position = UDim2.fromOffset(-1, 16),
                                AnchorPoint = Vector2.new(0, 0.5),
                                ThemeTag = {BackgroundColor3 = "Accent"}
                            },
                            {e("UICorner", {CornerRadius = UDim.new(0, 2)})}
                        ),
                        e(
                            "TextLabel",
                            {
                                FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                                Text = I,
                                TextColor3 = Color3.fromRGB(200, 200, 200),
                                TextSize = 13,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                BackgroundTransparency = 1,
                                Size = UDim2.fromScale(1, 1),
                                Position = UDim2.fromOffset(10, 0),
                                Name = "ButtonLabel",
                                ThemeTag = {TextColor3 = "Text"}
                            }
                        )
                    local isTSel = j.IsThemeSelector == true
                    local rowH = isTSel and 38 or 32
                    local swatches = {}
                    if isTSel then
                        local td = nil
                        pcall(function()
                            local tm = e(aa.Themes)
                            if tm and tm[I] then td = tm[I] end
                        end)
                        if td then
                            local bgC = td.AcrylicMain or Color3.fromRGB(30,30,30)
                            local elC = td.Element    or Color3.fromRGB(60,60,60)
                            local acC = td.ThemeAccentColors or {td.Accent or Color3.fromRGB(100,100,100)}
                            local sw = e("Frame",{
                                Size=UDim2.fromOffset(66,22),
                                Position=UDim2.new(1,-70,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                                BackgroundTransparency=1, ZIndex=25,
                            })
                            e("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(0,1),
                                BackgroundColor3=bgC,ZIndex=25,Parent=sw},
                                {e("UICorner",{CornerRadius=UDim.new(0,4)})})
                            e("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(22,1),
                                BackgroundColor3=elC,ZIndex=25,Parent=sw},
                                {e("UICorner",{CornerRadius=UDim.new(0,4)})})
                            if #acC > 1 then
                                local sw2 = math.floor(19/#acC)
                                for _ci,col in ipairs(acC) do
                                    e("Frame",{Size=UDim2.fromOffset(sw2,19),
                                        Position=UDim2.fromOffset(44+(_ci-1)*sw2,1),
                                        BackgroundColor3=col,ZIndex=25,Parent=sw},
                                        {e("UICorner",{CornerRadius=UDim.new(0,(_ci==1 or _ci==#acC) and 4 or 0)})})
                                end
                            else
                                e("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(44,1),
                                    BackgroundColor3=acC[1],ZIndex=25,Parent=sw},
                                    {e("UICorner",{CornerRadius=UDim.new(0,4)})})
                            end
                            table.insert(swatches, sw)
                            L.Size = UDim2.new(1,-82,1,0)
                        end
                    end
                    local btnChildren = {K, L, e("UICorner",{CornerRadius=UDim.new(0,6)})}
                    for _,sw in ipairs(swatches) do table.insert(btnChildren,sw) end
                    local M, N =
                        (e(
                        "TextButton",
                        {
                            Size = UDim2.new(1, -5, 0, rowH),
                            BackgroundTransparency = 1,
                            ZIndex = 23,
                            Text = "",
                            Parent = t,
                            ThemeTag = {BackgroundColor3 = "DropdownOption"}
                        },
                        btnChildren
                    ))
                    if j.Multi then
                        N = l.Value[I]
                    else
                        N = l.Value == I
                    end
                    local O, P = c.SpringMotor(1, M, "BackgroundTransparency")
                    local Q, R = c.SpringMotor(1, K, "BackgroundTransparency")
                    local S = d.SingleMotor.new(6)
                    S:onStep(
                        function(T)
                            K.Size = UDim2.new(0, 4, 0, T)
                        end
                    )
                    c.AddSignal(
                        M.MouseEnter,
                        function()
                            P(N and 0.85 or 0.89)
                        end
                    )
                    c.AddSignal(
                        M.MouseLeave,
                        function()
                            P(N and 0.89 or 1)
                        end
                    )
                    c.AddSignal(
                        M.MouseButton1Down,
                        function()
                            P(0.92)
                        end
                    )
                    c.AddSignal(
                        M.MouseButton1Up,
                        function()
                            P(N and 0.85 or 0.89)
                        end
                    )
                    function J.UpdateButton(T)
                        if j.Multi then
                            N = l.Value[I]
                            if N then
                                P(0.89)
                            end
                        else
                            N = l.Value == I
                            P(N and 0.89 or 1)
                        end
                        S:setGoal(d.Spring.new(N and 14 or 6, {frequency = 6}))
                        R(N and 0 or 1)
                    end
                    L.InputBegan:Connect(
                        function(T)
                            if
                                T.UserInputType == Enum.UserInputType.MouseButton1 or
                                    T.UserInputType == Enum.UserInputType.Touch
                             then
                                local U = not N
                                if l:GetActiveValues() == 1 and not U and not j.AllowNull then
                                else
                                    if j.Multi then
                                        N = U
                                        l.Value[I] = N and true or nil
                                    else
                                        N = U
                                        l.Value = N and I or nil
                                        for V, W in next, D do
                                            W:UpdateButton()
                                        end
                                    end
                                    J:UpdateButton()
                                    l:Display()
                                    k:SafeCallback(l.Callback, l.Value)
                                    k:SafeCallback(l.Changed, l.Value)
                                end
                            end
                        end
                    )
                    J:UpdateButton()
                    l:Display()
                    D[M] = J
                    l.Buttons[M] = J
                end
                x = 0
                for J, K in next, D do
                    local lbl = J:FindFirstChild("ButtonLabel")
                    if lbl and lbl.TextBounds.X > x then
                        x = lbl.TextBounds.X
                    end
                end
                if j.IsThemeSelector then
                    x = math.max(x + 30, 210)
                else
                    x = x + 30
                end
                -- fallback: use button width if TextBounds not ready yet
                if x < 60 then
                    x = p.AbsoluteSize.X > 0 and p.AbsoluteSize.X or 170
                end
                z()
                task.defer(function()
                    -- re-measure after render
                    local mx = 0
                    for J2, K2 in next, D do
                        local lbl2 = J2:FindFirstChild("ButtonLabel")
                        if lbl2 and lbl2.TextBounds.X > mx then
                            mx = lbl2.TextBounds.X
                        end
                    end
                    if mx > 0 then
                        if j.IsThemeSelector then
                            x = math.max(mx + 30, 210)
                        else
                            x = mx + 30
                        end
                    end
                    y()
                end)
            end
            function l.SetValues(B, C)
                if C then
                    l.Values = C
                end
                l:BuildDropdownList()
            end
            function l.OnChanged(B, C)
                l.Changed = C
                C(l.Value)
            end
            function l.SetValue(B, C)
                if l.Multi then
                    local D = {}
                    for E, F in next, C do
                        if table.find(l.Values, E) then
                            D[E] = true
                        end
                    end
                    l.Value = D
                else
                    if not C then
                        l.Value = nil
                    elseif table.find(l.Values, C) then
                        l.Value = C
                    end
                end
                l:BuildDropdownList()
                k:SafeCallback(l.Callback, l.Value)
                k:SafeCallback(l.Changed, l.Value)
            end
            function l.Destroy(B)
                m:Destroy()
                k.Options[i] = nil
            end
            l:BuildDropdownList()
            l:Display()
            local B = {}
            if type(j.Default) == "string" then
                local C = table.find(l.Values, j.Default)
                if C then
                    table.insert(B, C)
                end
            elseif type(j.Default) == "table" then
                for C, D in next, j.Default do
                    local E = table.find(l.Values, D)
                    if E then
                        table.insert(B, E)
                    end
                end
            elseif type(j.Default) == "number" and l.Values[j.Default] ~= nil then
                table.insert(B, j.Default)
            end
            if next(B) then
                for C = 1, #B do
                    local D = B[C]
                    if j.Multi then
                        l.Value[l.Values[D]] = true
                    else
                        l.Value = l.Values[D]
                    end
                    if not j.Multi then
                        break
                    end
                end
                l:BuildDropdownList()
                l:Display()
            end
            k.Options[i] = l
            return l
        end
        return g
    end,
    [23] = function() --[[ Input_El ]]
        local aa, ab, ac, ad, ae = b(23)
        local af = ab.Parent.Parent
        local ag = ac(af.Creator)
        local ah, ai, aj, c = ag.New, ag.AddSignal, af.Components, {}
        c.__index = c
        c.__type = "Input"
        function c.New(d, e, f)
            local g = d.Library
            assert(f.Title, "Input - Missing Title")
            f.Callback = f.Callback or function()
                end
            local h, i =
                {
                    Value = f.Default or "",
                    Numeric = f.Numeric or false,
                    Finished = f.Finished or false,
                    Callback = f.Callback or function(h)
                        end,
                    Type = "Input"
                },
                ac(aj.Element)(f.Title, f.Description, d.Container, false)
            h.SetTitle = i.SetTitle
            h.SetDesc = i.SetDesc
            h.Frame = i.Frame
            local j = ac(aj.Textbox)(i.Frame, true)
            j.Frame.Position = UDim2.new(1, -10, 0.5, 0)
            j.Frame.AnchorPoint = Vector2.new(1, 0.5)
            j.Frame.Size = UDim2.fromOffset(160, 30)
            j.Input.Text = f.Default or ""
            j.Input.PlaceholderText = f.Placeholder or ""
            local k = j.Input
            function h.SetValue(l, m)
                if f.MaxLength and #m > f.MaxLength then
                    m = m:sub(1, f.MaxLength)
                end
                if h.Numeric then
                    if (not tonumber(m)) and m:len() > 0 then
                        m = h.Value
                    end
                end
                h.Value = m
                k.Text = m
                g:SafeCallback(h.Callback, h.Value)
                g:SafeCallback(h.Changed, h.Value)
            end
            if h.Finished then
                ai(
                    k.FocusLost,
                    function(l)
                        if not l then
                            return
                        end
                        h:SetValue(k.Text)
                    end
                )
            else
                ai(
                    k:GetPropertyChangedSignal "Text",
                    function()
                        h:SetValue(k.Text)
                    end
                )
            end
            function h.OnChanged(l, m)
                h.Changed = m
                m(h.Value)
            end
            function h.Destroy(l)
                i:Destroy()
                g.Options[e] = nil
            end
            g.Options[e] = h
            return h
        end
        return c
    end,
    [24] = function() --[[ Keybind_El ]]
        local aa, ab, ac, ad, ae = b(24)
        local af, ag = game:GetService "UserInputService", ab.Parent.Parent
        local ah = ac(ag.Creator)
        local ai, aj, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Keybind"
        function c.New(d, e, f)
            local g = d.Library
            assert(f.Title, "KeyBind - Missing Title")
            assert(f.Default, "KeyBind - Missing default value.")
            local h, i, j =
                {
                    Value = f.Default,
                    Toggled = false,
                    Mode = f.Mode or "Toggle",
                    Type = "Keybind",
                    Callback = f.Callback or function(h)
                        end,
                    ChangedCallback = f.ChangedCallback or function(h)
                        end
                },
                false,
                ac(aj.Element)(f.Title, f.Description, d.Container, true)
            h.SetTitle = j.SetTitle
            h.SetDesc = j.SetDesc
            h.Frame = j.Frame
            local k =
                ai(
                "TextLabel",
                {
                    FontFace = Font.new(
                        "rbxasset://fonts/families/GothamSSm.json",
                        Enum.FontWeight.Regular,
                        Enum.FontStyle.Normal
                    ),
                    Text = f.Default,
                    TextColor3 = Color3.fromRGB(240, 240, 240),
                    TextSize = 13,
                    TextXAlignment = Enum.TextXAlignment.Center,
                    Size = UDim2.new(0, 0, 0, 14),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
            local mouseIco =
                ai(
                "ImageLabel",
                {
                    Size = UDim2.fromOffset(13, 13),
                    BackgroundTransparency = 1,
                    Image = "rbxassetid://10734898592",
                    ImageTransparency = 0.35,
                    LayoutOrder = 1,
                    ThemeTag = {ImageColor3 = "SubText"}
                }
            )
            k.LayoutOrder = 2
            local l =
                ai(
                "TextButton",
                {
                    Size = UDim2.fromOffset(0, 30),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    AnchorPoint = Vector2.new(1, 0.5),
                    BackgroundTransparency = 0.9,
                    Parent = j.Frame,
                    AutomaticSize = Enum.AutomaticSize.X,
                    ThemeTag = {BackgroundColor3 = "Keybind"}
                },
                {
                    ai("UICorner", {CornerRadius = UDim.new(0, 5)}),
                    ai("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 8)}),
                    ai("UIListLayout", {
                        FillDirection = Enum.FillDirection.Horizontal,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        Padding = UDim.new(0, 4),
                        SortOrder = Enum.SortOrder.LayoutOrder,
                    }),
                    ai(
                        "UIStroke",
                        {
                            Transparency = 0.5,
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            ThemeTag = {Color = "InElementBorder"}
                        }
                    ),
                    mouseIco,
                    k
                }
            )
            function h.GetState(m)
                if af:GetFocusedTextBox() and h.Mode ~= "Always" then
                    return false
                end
                if h.Mode == "Always" then
                    return true
                elseif h.Mode == "Hold" then
                    if h.Value == "None" then
                        return false
                    end
                    local n = h.Value
                    if n == "MouseLeft" or n == "MouseRight" then
                        return n == "MouseLeft" and af:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or
                            n == "MouseRight" and af:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
                    else
                        return af:IsKeyDown(Enum.KeyCode[h.Value])
                    end
                else
                    return h.Toggled
                end
            end
            function h.SetValue(m, n, o)
                n = n or h.Key
                o = o or h.Mode
                k.Text = n
                h.Value = n
                h.Mode = o
            end
            function h.OnClick(m, n)
                h.Clicked = n
            end
            function h.OnChanged(m, n)
                h.Changed = n
                n(h.Value)
            end
            function h.DoClick(m)
                g:SafeCallback(h.Callback, h.Toggled)
                g:SafeCallback(h.Clicked, h.Toggled)
            end
            function h.Destroy(m)
                j:Destroy()
                g.Options[e] = nil
            end
            ah.AddSignal(
                l.InputBegan,
                function(m)
                    if m.UserInputType == Enum.UserInputType.MouseButton1 or m.UserInputType == Enum.UserInputType.Touch then
                        i = true
                        k.Text = "..."
                        wait(0.2)
                        local n
                        n =
                            af.InputBegan:Connect(
                            function(o)
                                local p
                                if o.UserInputType == Enum.UserInputType.Keyboard then
                                    p = o.KeyCode.Name
                                elseif o.UserInputType == Enum.UserInputType.MouseButton1 then
                                    p = "MouseLeft"
                                elseif o.UserInputType == Enum.UserInputType.MouseButton2 then
                                    p = "MouseRight"
                                end
                                local s
                                s =
                                    af.InputEnded:Connect(
                                    function(t)
                                        if
                                            t.KeyCode.Name == p or
                                                p == "MouseLeft" and t.UserInputType == Enum.UserInputType.MouseButton1 or
                                                p == "MouseRight" and t.UserInputType == Enum.UserInputType.MouseButton2
                                         then
                                            i = false
                                            k.Text = p
                                            h.Value = p
                                            g:SafeCallback(h.ChangedCallback, t.KeyCode or t.UserInputType)
                                            g:SafeCallback(h.Changed, t.KeyCode or t.UserInputType)
                                            n:Disconnect()
                                            s:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    end
                end
            )
            ah.AddSignal(
                af.InputBegan,
                function(m)
                    if not i and not af:GetFocusedTextBox() then
                        if h.Mode == "Toggle" then
                            local n = h.Value
                            if n == "MouseLeft" or n == "MouseRight" then
                                if
                                    n == "MouseLeft" and m.UserInputType == Enum.UserInputType.MouseButton1 or
                                        n == "MouseRight" and m.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    h.Toggled = not h.Toggled
                                    h:DoClick()
                                end
                            elseif m.UserInputType == Enum.UserInputType.Keyboard then
                                if m.KeyCode.Name == n then
                                    h.Toggled = not h.Toggled
                                    h:DoClick()
                                end
                            end
                        elseif h.Mode == "Hold" then
                            local n = h.Value
                            if n == "MouseLeft" and m.UserInputType == Enum.UserInputType.MouseButton1 then
                                g:SafeCallback(h.Callback, true)
                            elseif n == "MouseRight" and m.UserInputType == Enum.UserInputType.MouseButton2 then
                                g:SafeCallback(h.Callback, true)
                            elseif m.UserInputType == Enum.UserInputType.Keyboard and m.KeyCode.Name == n then
                                g:SafeCallback(h.Callback, true)
                            end
                        end
                    end
                end
            )
            ah.AddSignal(
                af.InputEnded,
                function(m)
                    if not af:GetFocusedTextBox() then
                        if h.Mode == "Hold" then
                            local n = h.Value
                            if n == "MouseLeft" and m.UserInputType == Enum.UserInputType.MouseButton1 then
                                g:SafeCallback(h.Callback, false)
                            elseif n == "MouseRight" and m.UserInputType == Enum.UserInputType.MouseButton2 then
                                g:SafeCallback(h.Callback, false)
                            elseif m.UserInputType == Enum.UserInputType.Keyboard and m.KeyCode.Name == n then
                                g:SafeCallback(h.Callback, false)
                            end
                        end
                    end
                end
            )
            g.Options[e] = h
            return h
        end
        return c
    end,
    [25] = function() --[[ Paragraph_El ]]
        local aa, ab, ac, ad, ae = b(25)
        local af = ab.Parent.Parent
        local ag, ah, ai, aj = af.Components, ac(af.Packages.Flipper), ac(af.Creator), {}
        aj.__index = aj
        aj.__type = "Paragraph"
        function aj.New(c, d)
            d = d or {}
            d.Title = d.Title or ""
            d.Content = d.Content or ""
            local e = ac(ag.Element)(d.Title, d.Content, aj.Container, false)
            e.Frame.BackgroundTransparency = 0.92
            e.Border.Transparency = 0.6
            return e
        end
        return aj
    end,
    [26] = function() --[[ Slider_El ]]
        local aa, ab, ac, ad, ae = b(26)
        local af, ag = game:GetService "UserInputService", ab.Parent.Parent
        local ah = ac(ag.Creator)
        local ai, aj, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Slider"
        function c.New(d, e, f)
            local g = d.Library
            assert(f.Title, "Slider - Missing Title.")
            assert(f.Default ~= nil, "Slider - Missing default value.")
            assert(f.Min ~= nil, "Slider - Missing minimum value.")
            assert(f.Max ~= nil, "Slider - Missing maximum value.")
            assert(f.Rounding ~= nil, "Slider - Missing rounding value.")
            local h, i, j =
                {
                    Value = nil,
                    Min = f.Min,
                    Max = f.Max,
                    Rounding = f.Rounding,
                    Callback = f.Callback or function(h)
                        end,
                    Type = "Slider"
                },
                false,
                ac(aj.Element)(f.Title, f.Description, d.Container, false)
            j.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            h.SetTitle = j.SetTitle
            h.SetDesc = j.SetDesc
            h.Frame = j.Frame
            local k =
                ai(
                "ImageLabel",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(0, -10, 0.5, 0),
                    Size = UDim2.fromOffset(20, 20),
                    Image = "http://www.roblox.com/asset/?id=12266946128",
                    ThemeTag = {ImageColor3 = "Accent"},
                    ZIndex = 3,
                },
                {

                }
            )
            local l, m, n =
                ai(
                    "Frame",
                    {BackgroundTransparency = 1, Position = UDim2.fromOffset(10, 0), Size = UDim2.new(1, -20, 1, 0)},
                    {k}
                ),
                ai(
                    "Frame",
                    {Size = UDim2.new(0, 0, 1, 0), ThemeTag = {BackgroundColor3 = "Accent"}},
                    {ai("UICorner", {CornerRadius = UDim.new(1, 0)})}
                ),
                ai(
                    "TextLabel",
                    {
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
                        Text = "Value",
                        TextSize = 13,
                        TextWrapped = true,
                        TextXAlignment = Enum.TextXAlignment.Right,
                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                        BackgroundTransparency = 1,
                        Size = UDim2.new(0, 100, 0, 14),
                        Position = UDim2.new(0, -4, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        ThemeTag = {TextColor3 = "SubText"}
                    }
                )
            local o =
                ai(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 6),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    BackgroundTransparency = 0.4,
                    Parent = j.Frame,
                    ThemeTag = {BackgroundColor3 = "SliderRail"}
                },
                {
                    ai("UICorner", {CornerRadius = UDim.new(1, 0)}),
                    ai("UISizeConstraint", {MaxSize = Vector2.new(150, math.huge)}),
                    n,
                    m,
                    l
                }
            )
            ah.AddSignal(
                k.InputBegan,
                function(p)
                    if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
                        i = true
                    end
                end
            )
            ah.AddSignal(
                k.InputEnded,
                function(p)
                    if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
                        i = false
                    end
                end
            )
            ah.AddSignal(
                af.InputChanged,
                function(p)
                    if
                        i and
                            (p.UserInputType == Enum.UserInputType.MouseMovement or
                                p.UserInputType == Enum.UserInputType.Touch)
                     then
                        local s = math.clamp((p.Position.X - l.AbsolutePosition.X) / l.AbsoluteSize.X, 0, 1)
                        h:SetValue(h.Min + ((h.Max - h.Min) * s))
                    end
                end
            )
            function h.OnChanged(p, s)
                h.Changed = s
                s(h.Value)
            end
            function h.SetValue(p, s)
                p.Value = g:Round(math.clamp(s, h.Min, h.Max), h.Rounding)
                k.Position = UDim2.new((p.Value - h.Min) / (h.Max - h.Min), -10, 0.5, 0)
                m.Size = UDim2.fromScale((p.Value - h.Min) / (h.Max - h.Min), 1)
                n.Text = tostring(p.Value)
                g:SafeCallback(h.Callback, p.Value)
                g:SafeCallback(h.Changed, p.Value)
            end
            function h.Destroy(p)
                j:Destroy()
                g.Options[e] = nil
            end
            h:SetValue(f.Default)
            g.Options[e] = h
            return h
        end
        return c
    end,
    [27] = function() --[[ Toggle_El ]]
        local aa, ab, ac, ad, ae = b(27)
        local af, ag = game:GetService "TweenService", ab.Parent.Parent
        local ah = ac(ag.Creator)
        local ai, aj, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Toggle"
        function c.New(d, e, f)
            local g = d.Library
            assert(f.Title, "Toggle - Missing Title")
            local h, i =
                {
                    Value = f.Default or false,
                    Callback = f.Callback or function(h)
                        end,
                    Type = "Toggle"
                },
                ac(aj.Element)(f.Title, f.Description, d.Container, true)
            i.DescLabel.Size = UDim2.new(1, -54, 0, 14)
            h.SetTitle = i.SetTitle
            h.SetDesc = i.SetDesc
            h.Frame = i.Frame
            local j, k =
                ai(
                    "ImageLabel",
                    {
                        AnchorPoint = Vector2.new(0, 0.5),
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.new(0, 2, 0.5, 0),
                        Image = "http://www.roblox.com/asset/?id=12266946128",
                        ImageTransparency = 0.5,
                        ThemeTag = {ImageColor3 = "ToggleSlider"}
                    }
                ),
                ai("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "ToggleSlider"}})
            local l =
                ai(
                "Frame",
                {
                    Size = UDim2.fromOffset(36, 18),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    Parent = i.Frame,
                    BackgroundTransparency = 1,
                    ThemeTag = {BackgroundColor3 = "Accent"}
                },
                {ai("UICorner", {CornerRadius = UDim.new(0, 9)}), k, j}
            )
            function h.OnChanged(m, n)
                h.Changed = n
                n(h.Value)
            end
            function h.SetValue(m, n)
                n = not (not n)
                h.Value = n
                ah.OverrideTag(k, {Color = h.Value and "Accent" or "ToggleSlider"})
                ah.OverrideTag(j, {ImageColor3 = h.Value and "ToggleToggled" or "ToggleSlider"})
                af:Create(
                    j,
                    TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    {Position = UDim2.new(0, h.Value and 19 or 2, 0.5, 0)}
                ):Play()
                af:Create(
                    l,
                    TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                    {BackgroundTransparency = h.Value and 0 or 1}
                ):Play()
                j.ImageTransparency = h.Value and 0 or 0.5
                g:SafeCallback(h.Callback, h.Value)
                g:SafeCallback(h.Changed, h.Value)
            end
            function h.Destroy(m)
                i:Destroy()
                g.Options[e] = nil
            end
            ah.AddSignal(
                i.Frame.MouseButton1Click,
                function()
                    h:SetValue(not h.Value)
                end
            )
            h:SetValue(h.Value)
            g.Options[e] = h
            return h
        end
        return c
    end,
    [59] = function() --[[ Image_El ]]
        local aa, ab, ac, ad, ae = b(59)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Image"
        function c.New(d, e, f)
            local opts = (type(e) == "table" and e) or (type(f) == "table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local ratio = opts.AspectRatio or "16:9"
            local radius = opts.Radius or 8
            local src = opts.Image or ""
            local function resolve(src)
                local mm = d.Library and d.Library.MediaManager
                if mm then return mm:Image(src) end
                if type(src)~="string" or src=="" then return "" end
                if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
                if src:match("^%d+$") then return "rbxassetid://"..src end
                return ""
            end
            local function parseRatio(r)
                if type(r) == "number" then return r end
                local w, h = tostring(r):match("(%d+):(%d+)")
                if w and h and tonumber(h) ~= 0 then return tonumber(w) / tonumber(h) end
                return 16 / 9
            end
            local ratioNum = parseRatio(ratio)
            local u = ac(af.Creator).New
            local wrap = u("Frame", {
                Size = UDim2.new(1, -16, 0, 150),
                BackgroundTransparency = 1,
                ClipsDescendants = true,
                Parent = parent,
            })
            local function _recalcAspect()
                local w = wrap.AbsoluteSize.X
                if w > 0 and ratioNum and ratioNum > 0 then
                    wrap.Size = UDim2.new(1, -16, 0, math.floor(w / ratioNum))
                end
            end
            wrap:GetPropertyChangedSignal("AbsoluteSize"):Connect(_recalcAspect)
            task.defer(_recalcAspect)
            local img = u("ImageLabel", {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                Image = resolve(src),
                ScaleType = Enum.ScaleType.Fit,
                Parent = wrap,
            })
            u("UICorner", {CornerRadius = UDim.new(0, radius), Parent = img})
            local mod = {Frame = wrap, Type = "Image"}
            function mod:SetImage(src) img.Image = resolve(src) end
            function mod:SetAspectRatio(r)
                ratioNum = parseRatio(r)
                _recalcAspect()
            end
            function mod:Destroy() wrap:Destroy() end
            return mod
        end
        return c
    end,
    [60] = function() --[[ Video_El ]]
        local aa, ab, ac, ad, ae = b(60)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Video"
        function c.New(d, e, f)
            local opts   = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local radius = opts.Radius or 8
            local src    = opts.Video or ""
            local looped = opts.Looped ~= false
            local vol    = opts.Volume or 0
            local auto   = opts.AutoPlay ~= false
            local rs2    = game:GetService("RunService")
            local uis2   = game:GetService("UserInputService")
            local ts2    = game:GetService("TweenService")
            local function resolveSync(s)
                if type(s)~="string" or s=="" then return "" end
                if s:match("^rbxassetid://") or s:match("^rbxasset://") then return s end
                if s:match("^%d+$") then return "rbxassetid://"..s end
                return ""
            end
            local syncResolved = resolveSync(src)
            local hasVideo = syncResolved ~= ""
            local u = ac(af.Creator).New
            local function applyIcon(imgLabel, iconName)
                local ic = d.Library and d.Library:GetIcon(iconName)
                if ic and type(ic)=="table" then
                    imgLabel.Image=ic.Image or ""; imgLabel.ImageRectOffset=ic.ImageRectOffset or Vector2.new(); imgLabel.ImageRectSize=ic.ImageRectSize or Vector2.new()
                elseif ic then imgLabel.Image=tostring(ic) end
            end
            local function parseRatio2(r)
                if type(r) == "number" then return r end
                if type(r) == "string" then
                    local rw, rh = r:match("(%d+):(%d+)")
                    if rw and rh and tonumber(rh) ~= 0 then return tonumber(rw) / tonumber(rh) end
                end
                return 16 / 9
            end
            local wrap = u("Frame",{
                Size=UDim2.new(1,-16,0,180),
                BackgroundColor3=Color3.fromRGB(8,8,12),
                BorderSizePixel=0, ClipsDescendants=true,
                Parent=parent, ThemeTag={BackgroundColor3="Element"},
            })
            local ratioNum2 = parseRatio2(opts.AspectRatio or "16:9")
            local function _recalcAspect2()
                local w = wrap.AbsoluteSize.X
                if w > 0 and ratioNum2 and ratioNum2 > 0 then
                    wrap.Size = UDim2.new(1, -16, 0, math.floor(w / ratioNum2))
                end
            end
            wrap:GetPropertyChangedSignal("AbsoluteSize"):Connect(_recalcAspect2)
            task.defer(_recalcAspect2)
            u("UICorner",{CornerRadius=UDim.new(0,radius),Parent=wrap})
            u("UIStroke",{Transparency=0.6,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            local vid = nil
            if hasVideo then
                vid = Instance.new("VideoFrame")
                vid.Size=UDim2.fromScale(1,1); vid.BackgroundTransparency=1
                vid.Looped=looped; vid.Volume=vol; vid.ZIndex=1
                vid:SetAttribute("BFVolume",vol); vid:SetAttribute("BFAutoPlay",auto)
                u("UICorner",{CornerRadius=UDim.new(0,radius),Parent=vid})
                vid.Video = syncResolved; vid.Parent=wrap
            end
            local placeholder = u("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=not hasVideo,ZIndex=2,Parent=wrap})
            local phImg = u("ImageLabel",{Size=UDim2.fromOffset(32,32),Position=UDim2.new(0.5,0,0.5,-14),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ImageTransparency=0.4,ZIndex=3,Parent=placeholder,ThemeTag={ImageColor3="SubText"}})
            applyIcon(phImg, "solar/videocamera-record-bold")
            u("TextLabel",{Size=UDim2.new(1,0,0,16),Position=UDim2.new(0,0,0.5,20),AnchorPoint=Vector2.new(0,0),BackgroundTransparency=1,Text="rbxassetid:// required",TextSize=11,Font=Enum.Font.GothamMedium,TextTransparency=0.5,ZIndex=3,Parent=placeholder,ThemeTag={TextColor3="SubText"}})
            if not hasVideo then
                local mod={Frame=wrap,Type="Video",VideoFrame=nil}
                function mod:Destroy() wrap:Destroy() end
                return mod
            end
            -- Overlay controls (hidden by default, shown on video click)
            local overlay = Instance.new("CanvasGroup")
            overlay.Size=UDim2.new(1,0,0,54); overlay.Position=UDim2.new(0,0,1,0); overlay.AnchorPoint=Vector2.new(0,1)
            overlay.BackgroundTransparency=1; overlay.GroupTransparency=1; overlay.ZIndex=5; overlay.Parent=wrap
            -- Gradient background on overlay
            local gradFr = u("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(0,0,0),BackgroundTransparency=0,BorderSizePixel=0,ZIndex=5,Parent=overlay})
            u("UIGradient",{Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(1,1)}),Rotation=90,Parent=gradFr})
            -- Seek row (top part of overlay)
            local seekRow = u("Frame",{Size=UDim2.new(1,-12,0,16),Position=UDim2.new(0,6,0,4),BackgroundTransparency=1,ZIndex=6,Parent=overlay})
            local timeCur = u("TextLabel",{Size=UDim2.fromOffset(36,16),BackgroundTransparency=1,Text="0:00",TextSize=10,Font=Enum.Font.GothamMedium,TextColor3=Color3.fromRGB(220,220,220),ZIndex=7,Parent=seekRow})
            local seekContainer = u("Frame",{Size=UDim2.new(1,-84,0,16),Position=UDim2.fromOffset(40,0),BackgroundTransparency=1,ZIndex=6,Parent=seekRow})
            local seekRail = u("TextButton",{Size=UDim2.new(1,0,0,5),Position=UDim2.new(0,0,0.5,-2),BackgroundColor3=Color3.fromRGB(80,80,90),BorderSizePixel=0,ZIndex=7,Text="",AutoButtonColor=false,Parent=seekContainer})
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekRail})
            local seekFill = u("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=Color3.fromRGB(200,30,30),BorderSizePixel=0,ZIndex=8,Parent=seekRail})
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekFill})
            local seekKnob = u("Frame",{Size=UDim2.fromOffset(12,12),Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=9,Parent=seekRail})
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekKnob})
            local timeDur = u("TextLabel",{Size=UDim2.fromOffset(36,16),Position=UDim2.new(1,-36,0,0),BackgroundTransparency=1,Text="0:00",TextSize=10,Font=Enum.Font.GothamMedium,TextColor3=Color3.fromRGB(160,160,170),ZIndex=7,Parent=seekRow})
            -- Controls row (bottom part of overlay)
            local ctrlRow = u("Frame",{Size=UDim2.new(1,-12,0,26),Position=UDim2.new(0,6,0,24),BackgroundTransparency=1,ZIndex=6,Parent=overlay})
            local function ctrlBtn2(iconName, size, cb)
                local btn=u("TextButton",{Size=UDim2.fromOffset(size or 22,22),BackgroundTransparency=1,Text="",ZIndex=7,AutoButtonColor=false,Parent=ctrlRow})
                local ic=u("ImageLabel",{Size=UDim2.fromOffset(16,16),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ZIndex=8,Parent=btn,ThemeTag={ImageColor3="Text"}})
                applyIcon(ic,iconName); btn.MouseButton1Click:Connect(function() pcall(cb) end)
                return btn,ic
            end
            local playing=auto
            local playBtn,playIco=ctrlBtn2("solar/play-bold",22,function() end)
            local pauseBtn,pauseIco=ctrlBtn2("solar/pause-bold",22,function() end)
            local stopBtn=ctrlBtn2("solar/stop-bold",22,function() end)
            local volIco=u("ImageLabel",{Size=UDim2.fromOffset(14,14),Position=UDim2.fromOffset(68,4),BackgroundTransparency=1,ZIndex=7,Parent=ctrlRow,ThemeTag={ImageColor3="SubText"}})
            applyIcon(volIco,"solar/volume-loud-bold")
            local volLbl=u("TextLabel",{Size=UDim2.fromOffset(32,22),Position=UDim2.fromOffset(84,0),BackgroundTransparency=1,Text=tostring(math.floor(vol*100)).."%",TextSize=10,Font=Enum.Font.Gotham,ZIndex=7,Parent=ctrlRow,ThemeTag={TextColor3="SubText"}})
            u("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,Padding=UDim.new(0,2),Parent=ctrlRow})
            -- show/hide overlay
            local ctrlVisible=false; local fadeTimer=0; local fadingOut=false
            local function showOverlay()
                ctrlVisible=true; fadingOut=false; fadeTimer=3
                ts2:Create(overlay,TweenInfo.new(0.18,Enum.EasingStyle.Sine),{GroupTransparency=0}):Play()
            end
            local function hideOverlay()
                ctrlVisible=false; fadingOut=true
                ts2:Create(overlay,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{GroupTransparency=1}):Play()
            end
            -- Click video OR overlay to toggle/reset
            local vidClickBtn=u("TextButton",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Text="",ZIndex=4,AutoButtonColor=false,Parent=wrap})
            vidClickBtn.MouseButton1Click:Connect(function()
                if ctrlVisible then fadeTimer=3 else showOverlay() end
            end)
            -- Clicking overlay buttons resets timer
            local function resetFade() fadeTimer=3; fadingOut=false end
            playBtn.MouseButton1Click:Connect(function()
                pcall(function() vid:Play() end); playing=true
                playBtn.Visible=false; pauseBtn.Visible=true; resetFade()
            end)
            pauseBtn.MouseButton1Click:Connect(function()
                pcall(function() vid:Pause() end); playing=false
                playBtn.Visible=true; pauseBtn.Visible=false; resetFade()
            end)
            stopBtn.MouseButton1Click:Connect(function()
                pcall(function() vid:Stop() end); playing=false
                playBtn.Visible=true; pauseBtn.Visible=false; resetFade()
            end)
            pauseBtn.Visible=auto
            playBtn.Visible=not auto
            -- Seek
            local seeking=false
            local function vidSeek(posX)
                resetFade()
                local rx=seekRail.AbsolutePosition.X; local rw=seekRail.AbsoluteSize.X
                local pct=math.clamp((posX-rx)/rw,0,1)
                seekFill.Size=UDim2.new(pct,0,1,0); seekKnob.Position=UDim2.new(pct,0,0.5,0)
                if vid and vid.TimeLength and vid.TimeLength>0 then
                    pcall(function() vid.TimePosition=vid.TimeLength*pct end)
                end
            end
            seekRail.InputBegan:Connect(function(i)
                if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
                    seeking=true; vidSeek(i.Position.X); resetFade()
                    i.Changed:Connect(function() if i.UserInputState==Enum.UserInputState.End then seeking=false end end)
                end
            end)
            uis2.InputChanged:Connect(function(i)
                if seeking and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
                    vidSeek(i.Position.X)
                end
            end)
            local function fmtT(s) s=math.max(0,math.floor(s or 0)); return string.format("%d:%02d",math.floor(s/60),s%60) end
            local hbConn=rs2.Heartbeat:Connect(function(dt)
                if not wrap.Parent then return end
                -- Auto-hide timer
                if ctrlVisible then
                    fadeTimer=fadeTimer-dt
                    if fadeTimer<=0 and not seeking then hideOverlay() end
                end
                -- Seek bar update
                if not vid then return end
                local dur=vid.TimeLength or 0
                local pos=0; pcall(function() pos=vid.TimePosition end)
                if dur>0 and not seeking then
                    local pct=math.clamp(pos/dur,0,1)
                    seekFill.Size=UDim2.new(pct,0,1,0)
                    seekKnob.Position=UDim2.new(pct,0,0.5,0)
                end
                timeCur.Text=fmtT(pos); timeDur.Text=fmtT(dur)
            end)
            if auto and syncResolved~="" then
                task.spawn(function()
                    task.wait(0.08)
                    if vid and vid.Parent then pcall(function() vid:Play() end); playing=true end
                end)
            end
            local mod={Frame=wrap,Type="Video",VideoFrame=vid}
            function mod:Play()  if vid then pcall(function() vid:Play()  end); playing=true;  playBtn.Visible=false; pauseBtn.Visible=true  end end
            function mod:Pause() if vid then pcall(function() vid:Pause() end); playing=false; playBtn.Visible=true;  pauseBtn.Visible=false end end
            function mod:Stop()  if vid then pcall(function() vid:Stop()  end); playing=false; playBtn.Visible=true;  pauseBtn.Visible=false end end
            function mod:SetVideo(s)
                if not vid then return end
                local r=resolveSync(s)
                if r~="" then vid.Video=r; placeholder.Visible=false
                else placeholder.Visible=true end
            end
            function mod:SetVolume(v)
                if vid then vid.Volume=math.clamp(v,0,1) end
                volLbl.Text=tostring(math.floor(math.clamp(v,0,1)*100)).."%"
            end
            function mod:SetAspectRatio(r)
                ratioNum2 = parseRatio2(r)
                _recalcAspect2()
            end
            function mod:Destroy()
                pcall(function() hbConn:Disconnect() end); wrap:Destroy()
            end
            return mod
        end
        return c
    end,
    [61] = function() --[[ Code_El ]]
        local aa, ab, ac, ad, ae = b(61)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Code"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local u = ac(af.Creator).New
            local code  = D.Code  or ""
            local title = D.Title or ""
            local cb    = D.OnCopy
            local wrap  = u("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=0.88,AutomaticSize=Enum.AutomaticSize.Y,Parent=parent,ThemeTag={BackgroundColor3="Element"}})
            u("UICorner",{CornerRadius=UDim.new(0,8),Parent=wrap})
            u("UIStroke",{Transparency=0.7,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            u("UIPadding",{PaddingTop=UDim.new(0,8),PaddingBottom=UDim.new(0,8),PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,36),Parent=wrap})
            local lbl
            if title ~= "" then
                lbl = u("TextLabel",{FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),Text=title,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Size=UDim2.new(1,0,0,14),AutomaticSize=Enum.AutomaticSize.None,LayoutOrder=1,Parent=wrap,ThemeTag={TextColor3="SubText"}})
            end
            local codeLabel = u("TextLabel",{FontFace=Font.new("rbxasset://fonts/families/RobotoMono.json"),Text=code,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,RichText=false,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=2,Parent=wrap,ThemeTag={TextColor3="Text"}})
            if title ~= "" then
                u("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder,Parent=wrap})
            end
            local copyBtn = u("TextButton",{Size=UDim2.fromOffset(24,24),Position=UDim2.new(1,4,0,6),AnchorPoint=Vector2.new(0,0),BackgroundTransparency=0.7,Text="",ZIndex=3,Parent=wrap,ThemeTag={BackgroundColor3="Tab"}})
            u("UICorner",{CornerRadius=UDim.new(0,6),Parent=copyBtn})
            local copyIconImg = u("ImageLabel",{Size=UDim2.fromOffset(14,14),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Parent=copyBtn,ThemeTag={ImageColor3="SubText"}})
            local copyIc = d.Library and d.Library:GetIcon("solar/copy-bold")
            if copyIc and type(copyIc)=="table" then
                copyIconImg.Image           = copyIc.Image           or ""
                copyIconImg.ImageRectOffset = copyIc.ImageRectOffset or Vector2.new(0,0)
                copyIconImg.ImageRectSize   = copyIc.ImageRectSize   or Vector2.new(0,0)
            elseif copyIc then
                copyIconImg.Image = tostring(copyIc)
            end
            copyBtn.MouseButton1Click:Connect(function()
                pcall(function() toclipboard(code) end)
                if cb then pcall(cb) end
            end)
            local mod = {Frame=wrap, Type="Code"}
            function mod:SetCode(v) code=v; codeLabel.Text=v end
            function mod:Set(v) code=v; codeLabel.Text=v end
            function mod:Destroy() wrap:Destroy() end
            return mod
        end
        return c
    end,
    [62] = function() --[[ Group_El ]]
        local aa, ab, ac, ad, ae = b(62)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Group"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local u    = ac(af.Creator).New
            local gap  = D.Gap     or 6
            local cols = D.Columns or 2
            local outerWrap = u("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=parent,BorderSizePixel=0})
            u("UIPadding",{PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,2),Parent=outerWrap})
            local wrap = u("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=outerWrap,BorderSizePixel=0})
            local totalGap = gap * (cols - 1)
            local colScale = 1 / cols
            local colOffset = -math.floor(totalGap / cols + 0.5)
            u("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,Padding=UDim.new(0,gap),Parent=wrap})
            local colW = colScale
            local mod  = {Frame=outerWrap, Type="Group", Elements={}, _section=nil}
            function mod:SetSection(sec) self._section = sec end
            function mod:AddElement()
                local el = u("Frame",{Size=UDim2.new(colW,colOffset,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=wrap})
                u("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder,Parent=el})
                local sec = self._section
                local colObj = setmetatable({
                    Container    = el,
                    Type         = sec and sec.Type or nil,
                    ScrollFrame  = sec and sec.ScrollFrame or nil,
                    _elementCount = 0,
                }, getmetatable(sec))
                table.insert(mod.Elements, {Frame=el, ColObj=colObj})
                return colObj
            end
            function mod:Destroy() outerWrap:Destroy() end
            return mod
        end
        return c
    end,
    [63] = function() --[[ Space_El ]]
        local aa, ab, ac, ad, ae = b(63)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Space"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local u  = ac(af.Creator).New
            local h = D.Height or 8
            local sp = u("Frame",{Size=UDim2.new(1,0,0,h),BackgroundTransparency=1,BorderSizePixel=0,Parent=parent})
            local mod = {Frame=sp, Type="Space"}
            function mod:Destroy() sp:Destroy() end
            return mod
        end
        return c
    end,
    [64] = function() --[[ Divider_El ]]
        local aa, ab, ac, ad, ae = b(64)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Divider"
        function c.New(d, e, f)
            local parent = d.Container
            if not parent then return end
            local u   = ac(af.Creator).New
            local dv = u("Frame",{Size=UDim2.new(1,-10,0,1),BackgroundTransparency=0.5,BorderSizePixel=0,Parent=parent,ThemeTag={BackgroundColor3="TitleBarLine"}})
            local mod = {Frame=dv, Type="Divider"}
            function mod:Destroy() dv:Destroy() end
            return mod
        end
        return c
    end,
    [65] = function() --[[ Audio_El ]]
        local aa, ab, ac, ad, ae = b(65)
        local af = ab.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Audio"
        function c.New(d, e, f)
            local opts   = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = d.Container
            if not parent then return end
            local src    = opts.Audio or opts.Sound or ""
            local vol    = (opts.Volume ~= nil) and math.clamp(opts.Volume, 0, 10) or 0.5
            local looped = opts.Looped ~= false
            local auto   = opts.AutoPlay ~= false
            local u = ac(af.Creator).New
            local lib = d.Library
            local function resolve(s, noDownload)
                local mm = lib and lib.MediaManager
                if mm then return mm:Audio(s, noDownload) end
                if type(s)~="string" or s=="" then return "" end
                if s:match("^rbxassetid://") or s:match("^rbxasset://") then return s end
                if s:match("^%d+$") then return "rbxassetid://"..s end
                return ""
            end
            local isHttp = type(src)=="string" and src:match("^https?://")
            local resolved = isHttp and resolve(src, true) or resolve(src, false)
            local pendingDownload = isHttp and (not resolved or resolved == "")
            local hasAudio = (resolved ~= nil and resolved ~= "") or pendingDownload
            local snd = nil
            local playOutside = (opts.PlayOutsideWindow == true)
            local function _initSound(resolvedId)
                local sndSvc = game:GetService("SoundService")
                for _, _ex in ipairs(sndSvc:GetChildren()) do
                    if _ex:IsA("Sound") and _ex.Name == "BFAudio" and _ex.SoundId == resolvedId then
                        pcall(function() _ex:Stop(); _ex:Destroy() end)
                    end
                end
                for _, _ex in ipairs(workspace:GetChildren()) do
                    if _ex:IsA("Sound") and _ex.Name == "BFAudio" and _ex.SoundId == resolvedId then
                        pcall(function() _ex:Stop(); _ex:Destroy() end)
                    end
                end
                local s2 = Instance.new("Sound")
                s2.Name   = "BFAudio"
                pcall(function() s2.SoundId = resolvedId end)
                s2.Volume = vol
                s2.Looped = looped
                if playOutside then
                    s2.RollOffMaxDistance = 10000
                    s2.Parent = game:GetService("SoundService")
                else
                    s2.Parent = workspace
                end
                return s2
            end
            if hasAudio and not pendingDownload then
                snd = _initSound(resolved)
            end
            local rs  = game:GetService("RunService")
            local uis = game:GetService("UserInputService")
            local function fmtTime(s)
                s = math.max(0, math.floor(s or 0))
                return string.format("%d:%02d", math.floor(s / 60), s % 60)
            end
            local function applyAudioIcon(imgLabel, iconName)
                local ic = d.Library and d.Library:GetIcon(iconName)
                if ic and type(ic) == "table" then
                    imgLabel.Image           = ic.Image           or ""
                    imgLabel.ImageRectOffset = ic.ImageRectOffset or Vector2.new(0,0)
                    imgLabel.ImageRectSize   = ic.ImageRectSize   or Vector2.new(0,0)
                elseif ic then
                    imgLabel.Image = tostring(ic)
                end
            end
            local audioTitle    = opts.AudioTitle    or opts.Title    or (hasAudio and "Audio" or nil)
            local audioSubtitle = opts.AudioSubtitle or opts.SubTitle or nil
            local hasLabels = (audioTitle ~= nil and audioTitle ~= "") or (audioSubtitle ~= nil and audioSubtitle ~= "")
            local wrapHeight = hasLabels and 118 or 96
            local wrap = u("Frame",{
                Size=UDim2.new(1,-16,0,wrapHeight),
                BackgroundTransparency=0.9,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            u("UICorner",{CornerRadius=UDim.new(0,8),Parent=wrap})
            u("UIStroke",{Transparency=0.6,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            u("UIPadding",{PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10),PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10),Parent=wrap})
            local topRow = u("Frame",{
                Size=UDim2.new(1,0,0,hasLabels and 38 or 28),
                BackgroundTransparency=1,
                Parent=wrap,
            })
            local audioIconImg = u("ImageLabel",{
                Size=UDim2.fromOffset(20,20),
                Position=UDim2.new(0,0,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundTransparency=1,
                ZIndex=2,
                Parent=topRow,
                ThemeTag={ImageColor3=hasAudio and "Accent" or "SubText"},
            })
            applyAudioIcon(audioIconImg, "solar/volume-loud-bold")
            local titleHolder = u("Frame",{
                Size=UDim2.new(1,-110,1,0),
                Position=UDim2.new(0,28,0,0),
                BackgroundTransparency=1,
                ZIndex=2,
                Parent=topRow,
            })
            local statusLbl = u("TextLabel",{
                Size=UDim2.new(1,0,0,16),
                Position=UDim2.new(0,0,0,hasLabels and 2 or 0),
                AnchorPoint=Vector2.new(0,0),
                BackgroundTransparency=1,
                Text=(audioTitle ~= nil and audioTitle ~= "") and audioTitle or (hasAudio and "Audio" or "No audio source"),
                TextSize=hasLabels and 12 or 11,
                Font=hasLabels and Enum.Font.GothamBold or Enum.Font.Gotham,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                ZIndex=2,
                Parent=titleHolder,
                ThemeTag={TextColor3=hasAudio and "Text" or "SubText"},
            })
            local subtitleLbl = u("TextLabel",{
                Size=UDim2.new(1,0,0,13),
                Position=UDim2.new(0,0,0,20),
                AnchorPoint=Vector2.new(0,0),
                BackgroundTransparency=1,
                Text=(audioSubtitle ~= nil) and audioSubtitle or "",
                TextSize=10,
                Font=Enum.Font.Gotham,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                Visible=(audioSubtitle ~= nil and audioSubtitle ~= ""),
                ZIndex=2,
                Parent=titleHolder,
                ThemeTag={TextColor3="SubText"},
            })
            local controls = u("Frame",{
                Size=UDim2.new(0,116,1,0),
                Position=UDim2.new(1,0,0,0),
                AnchorPoint=Vector2.new(1,0),
                BackgroundTransparency=1,
                Visible=hasAudio,
                Parent=topRow,
            })
            u("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Right,Padding=UDim.new(0,4),Parent=controls})
            local function ctrlBtn(iconName, cb)
                local btn = u("TextButton",{Size=UDim2.fromOffset(24,24),BackgroundTransparency=1,Text="",ZIndex=3,Parent=controls})
                local icImg = u("ImageLabel",{Size=UDim2.fromOffset(16,16),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ZIndex=4,Parent=btn,ThemeTag={ImageColor3="Text"}})
                applyAudioIcon(icImg, iconName)
                btn.MouseButton1Click:Connect(function() pcall(cb) end)
                return btn, icImg
            end
            local playing = false
            local playBtn, _pauseBtn
            local outsideIcImg
            if hasAudio then
                local _downloading = false
                local function _doPlay()
                    if not snd then return end
                    pcall(function() snd:Play() end); playing=true
                    if playBtn  then playBtn.Visible=false end
                    if _pauseBtn then _pauseBtn.Visible=true  end
                end
                local function _triggerPlay()
                    if _downloading then return end
                    if snd then
                        _doPlay()
                        return
                    end
                    if pendingDownload then
                        _downloading = true
                        if lib then lib:Notify({Title="Audio", Content="Downloading audio, please wait...", Type="Info", Duration=4}) end
                        task.spawn(function()
                            local got = resolve(src, false)
                            _downloading = false
                            if got and got ~= "" then
                                pendingDownload = false
                                snd = _initSound(got)
                                _doPlay()
                                if lib then lib:Notify({Title="Audio", Content="Audio ready — playing now", Type="Success", Duration=2}) end
                            else
                                if lib then lib:Notify({Title="Audio", Content="Failed to download audio", Type="Error", Duration=3}) end
                            end
                        end)
                    end
                end
                playBtn  = ctrlBtn("solar/play-bold", _triggerPlay)
                _pauseBtn = ctrlBtn("solar/pause-bold", function()
                    if snd then snd:Pause() end; playing=false
                    if playBtn  then playBtn.Visible=true   end
                    if _pauseBtn then _pauseBtn.Visible=false  end
                end)
                _pauseBtn.Visible = false
                ctrlBtn("solar/stop-bold", function()
                    local win = lib and lib.Window
                    if win then
                        win:Dialog({
                            Title="Restart Audio",
                            Content="Are you sure you want to restart this audio?",
                            Buttons={
                                {Title="Restart", Callback=function()
                                    pcall(function()
                                        if snd then snd:Stop(); snd.TimePosition=0 end
                                        playing=false
                                    end)
                                    if playBtn  then playBtn.Visible=true  end
                                    if _pauseBtn then _pauseBtn.Visible=false end
                                end},
                                {Title="Cancel"},
                            },
                        })
                    else
                        if snd then snd:Stop() end; playing=false
                        if playBtn  then playBtn.Visible=true  end
                        if _pauseBtn then _pauseBtn.Visible=false end
                    end
                end)
                local outsideBtn2, _outsideIc2 = ctrlBtn("solar/export-bold", function()
                    playOutside = not playOutside
                    applyAudioIcon(_outsideIc2, playOutside and "solar/export-bold" or "solar/import-bold")
                    if snd then
                        local wasPlaying = playing
                        pcall(function() if wasPlaying then snd:Stop() end end)
                        if playOutside then
                            snd.RollOffMaxDistance = 10000
                            snd.Parent = game:GetService("SoundService")
                        else
                            snd.Parent = workspace
                        end
                        if wasPlaying then pcall(function() snd:Play() end) end
                    end
                    if lib then lib:Notify({Title="Audio", Content=playOutside and "Play Outside Window: ON" or "Play Outside Window: OFF", Type="Info", Duration=2}) end
                end)
                outsideIcImg = _outsideIc2
                applyAudioIcon(outsideIcImg, playOutside and "solar/export-bold" or "solar/import-bold")
                if auto and snd then
                    _doPlay()
                end
            end
            local seekRowOffset = hasLabels and 56 or 36
            local seekRow = u("Frame",{
                Size=UDim2.new(1,0,0,24),
                Position=UDim2.new(0,0,0,seekRowOffset),
                BackgroundTransparency=1,
                Visible=hasAudio,
                Parent=wrap,
            })
            local curLbl = u("TextLabel",{
                Size=UDim2.fromOffset(34,20),
                Position=UDim2.new(0,0,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundTransparency=1,
                Text="0:00",
                TextSize=10,
                Font=Enum.Font.Gotham,
                TextXAlignment=Enum.TextXAlignment.Left,
                ZIndex=3,
                Parent=seekRow,
                ThemeTag={TextColor3="SubText"},
            })
            local durLbl = u("TextLabel",{
                Size=UDim2.fromOffset(34,20),
                Position=UDim2.new(1,0,0.5,0),
                AnchorPoint=Vector2.new(1,0.5),
                BackgroundTransparency=1,
                Text="0:00",
                TextSize=10,
                Font=Enum.Font.Gotham,
                TextXAlignment=Enum.TextXAlignment.Right,
                ZIndex=3,
                Parent=seekRow,
                ThemeTag={TextColor3="SubText"},
            })
            local rail = u("Frame",{
                Size=UDim2.new(1,-76,0,4),
                Position=UDim2.new(0,38,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundTransparency=0.65,
                ZIndex=2,
                Parent=seekRow,
                ThemeTag={BackgroundColor3="SubText"},
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=rail})
            local fill = u("Frame",{
                Size=UDim2.new(0,0,1,0),
                BackgroundTransparency=0,
                ZIndex=3,
                Parent=rail,
                ThemeTag={BackgroundColor3="Accent"},
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=fill})
            local knob = u("Frame",{
                Size=UDim2.fromOffset(12,12),
                Position=UDim2.new(0,0,0.5,0),
                AnchorPoint=Vector2.new(0.5,0.5),
                ZIndex=4,
                Parent=rail,
                ThemeTag={BackgroundColor3="Accent"},
            })
            u("UICorner",{CornerRadius=UDim.new(1,0),Parent=knob})
            local dragging = false
            local function seekTo(inputX)
                if not snd then return end
                local railX = rail.AbsolutePosition.X
                local railW = rail.AbsoluteSize.X
                if railW <= 0 then return end
                local pct = math.clamp((inputX - railX) / railW, 0, 1)
                local dur = snd.TimeLength or 0
                if dur > 0 then
                    pcall(function() snd.TimePosition = pct * dur end)
                end
            end
            rail.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    seekTo(inp.Position.X)
                end
            end)
            rail.InputEnded:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
            uis.InputChanged:Connect(function(inp)
                if dragging and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
                    seekTo(inp.Position.X)
                end
            end)
            local hbConn = rs.Heartbeat:Connect(function()
                if not wrap.Parent then return end
                if not snd then return end
                local dur = snd.TimeLength or 0
                local pos = snd.TimePosition or 0
                curLbl.Text = fmtTime(pos)
                durLbl.Text = fmtTime(dur)
                local pct = dur > 0 and (pos / dur) or 0
                fill.Size     = UDim2.new(pct, 0, 1, 0)
                knob.Position = UDim2.new(pct, 0, 0.5, 0)
            end)
            if d.Library and d.Library.Window then
                local win = d.Library.Window
                local hideConn
                hideConn = game:GetService("RunService").Heartbeat:Connect(function()
                    if not wrap.Parent then if hideConn then hideConn:Disconnect() end return end
                    if not snd then return end
                    local isHidden = win.Minimized
                    if isHidden and not playOutside and playing then
                        pcall(function() snd:Stop() end)
                        playing = false
                        if playBtn  then playBtn.Visible  = true  end
                        if _pauseBtn then _pauseBtn.Visible = false end
                    end
                end)
            end
            local mod = {Frame=wrap, Type="Audio", Sound=snd}
            function mod:Play()   if snd then pcall(function() pcall(function() snd:Play() end)  end) end end
            function mod:Pause()  if snd then pcall(function() snd:Pause() end) end end
            function mod:Stop()   if snd then pcall(function() snd:Stop()  end) end end
            function mod:SetVolume(v)
                if snd then snd.Volume = math.clamp(v, 0, 10) end
            end
            function mod:SetAudio(src)
                local r = resolve(src)
                if snd then
                    pcall(function() snd:Stop() end)
                    pcall(function() snd.SoundId = r end)
                else
                    snd = Instance.new("Sound")
                    snd.Name    = "BFAudio"
                    snd.SoundId = r
                    snd.Volume  = vol
                    snd.Looped  = looped
                    if playOutside then
                        snd.Parent = game:GetService("SoundService")
                    else
                        snd.Parent = workspace
                    end
                end
                hasAudio = r ~= ""
                controls.Visible = hasAudio
                seekRow.Visible  = hasAudio
                statusLbl.Text   = hasAudio and (audioTitle or "Audio") or "No audio source"
                if playBtn  then playBtn.Visible  = hasAudio end
                if _pauseBtn then _pauseBtn.Visible = false end
            end
            function mod:SetAudioTitle(title, subtitle)
                statusLbl.Text = title or (hasAudio and "Audio" or "No audio source")
                if subtitle ~= nil then
                    subtitleLbl.Text    = subtitle
                    subtitleLbl.Visible = subtitle ~= ""
                end
            end
            function mod:SetPlayOutside(enabled)
                playOutside = enabled
                if snd then
                    local wasPlaying = playing
                    pcall(function() snd:Stop() end)
                    if enabled then
                        snd.Parent = game:GetService("SoundService")
                    else
                        snd.Parent = workspace
                    end
                    if wasPlaying then
                        pcall(function() pcall(function() snd:Play() end) end)
                    end
                end
            end
            function mod:Destroy()
                if hbConn then hbConn:Disconnect() end
                if snd then pcall(function() snd:Stop(); snd:Destroy() end) end
                wrap:Destroy()
            end
            return mod
        end
        return c
    end,

    [28] = function() --[[ Icons ]]
        local aa, ab, ac, ad, ae = b(28)
        return {
            assets = {
                ["lucide-accessibility"] = "rbxassetid://10709751939",
                ["lucide-activity"] = "rbxassetid://10709752035",
                ["lucide-air-vent"] = "rbxassetid://10709752131",
                ["lucide-airplay"] = "rbxassetid://10709752254",
                ["lucide-alarm-check"] = "rbxassetid://10709752405",
                ["lucide-alarm-clock"] = "rbxassetid://10709752630",
                ["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
                ["lucide-alarm-minus"] = "rbxassetid://10709752732",
                ["lucide-alarm-plus"] = "rbxassetid://10709752825",
                ["lucide-album"] = "rbxassetid://10709752906",
                ["lucide-alert-circle"] = "rbxassetid://10709752996",
                ["lucide-alert-octagon"] = "rbxassetid://10709753064",
                ["lucide-alert-triangle"] = "rbxassetid://10709753149",
                ["lucide-align-center"] = "rbxassetid://10709753570",
                ["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
                ["lucide-align-center-vertical"] = "rbxassetid://10709753421",
                ["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
                ["lucide-align-end-vertical"] = "rbxassetid://10709753808",
                ["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
                ["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
                ["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
                ["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
                ["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
                ["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
                ["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
                ["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
                ["lucide-align-justify"] = "rbxassetid://10709759610",
                ["lucide-align-left"] = "rbxassetid://10709759764",
                ["lucide-align-right"] = "rbxassetid://10709759895",
                ["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
                ["lucide-align-start-vertical"] = "rbxassetid://10709760244",
                ["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
                ["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
                ["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
                ["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
                ["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
                ["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
                ["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
                ["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
                ["lucide-anchor"] = "rbxassetid://10709761530",
                ["lucide-angry"] = "rbxassetid://10709761629",
                ["lucide-annoyed"] = "rbxassetid://10709761722",
                ["lucide-aperture"] = "rbxassetid://10709761813",
                ["lucide-apple"] = "rbxassetid://10709761889",
                ["lucide-archive"] = "rbxassetid://10709762233",
                ["lucide-archive-restore"] = "rbxassetid://10709762058",
                ["lucide-armchair"] = "rbxassetid://10709762327",
                ["lucide-arrow-big-down"] = "rbxassetid://10747796644",
                ["lucide-arrow-big-left"] = "rbxassetid://10709762574",
                ["lucide-arrow-big-right"] = "rbxassetid://10709762727",
                ["lucide-arrow-big-up"] = "rbxassetid://10709762879",
                ["lucide-arrow-down"] = "rbxassetid://10709767827",
                ["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
                ["lucide-arrow-down-left"] = "rbxassetid://10709767656",
                ["lucide-arrow-down-right"] = "rbxassetid://10709767750",
                ["lucide-arrow-left"] = "rbxassetid://10709768114",
                ["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
                ["lucide-arrow-left-right"] = "rbxassetid://10709768019",
                ["lucide-arrow-right"] = "rbxassetid://10709768347",
                ["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
                ["lucide-arrow-up"] = "rbxassetid://10709768939",
                ["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
                ["lucide-arrow-up-down"] = "rbxassetid://10709768538",
                ["lucide-arrow-up-left"] = "rbxassetid://10709768661",
                ["lucide-arrow-up-right"] = "rbxassetid://10709768787",
                ["lucide-asterisk"] = "rbxassetid://10709769095",
                ["lucide-at-sign"] = "rbxassetid://10709769286",
                ["lucide-award"] = "rbxassetid://10709769406",
                ["lucide-axe"] = "rbxassetid://10709769508",
                ["lucide-axis-3d"] = "rbxassetid://10709769598",
                ["lucide-baby"] = "rbxassetid://10709769732",
                ["lucide-backpack"] = "rbxassetid://10709769841",
                ["lucide-baggage-claim"] = "rbxassetid://10709769935",
                ["lucide-banana"] = "rbxassetid://10709770005",
                ["lucide-banknote"] = "rbxassetid://10709770178",
                ["lucide-bar-chart"] = "rbxassetid://10709773755",
                ["lucide-bar-chart-2"] = "rbxassetid://10709770317",
                ["lucide-bar-chart-3"] = "rbxassetid://10709770431",
                ["lucide-bar-chart-4"] = "rbxassetid://10709770560",
                ["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
                ["lucide-barcode"] = "rbxassetid://10747360675",
                ["lucide-baseline"] = "rbxassetid://10709773863",
                ["lucide-bath"] = "rbxassetid://10709773963",
                ["lucide-battery"] = "rbxassetid://10709774640",
                ["lucide-battery-charging"] = "rbxassetid://10709774068",
                ["lucide-battery-full"] = "rbxassetid://10709774206",
                ["lucide-battery-low"] = "rbxassetid://10709774370",
                ["lucide-battery-medium"] = "rbxassetid://10709774513",
                ["lucide-beaker"] = "rbxassetid://10709774756",
                ["lucide-bed"] = "rbxassetid://10709775036",
                ["lucide-bed-double"] = "rbxassetid://10709774864",
                ["lucide-bed-single"] = "rbxassetid://10709774968",
                ["lucide-beer"] = "rbxassetid://10709775167",
                ["lucide-bell"] = "rbxassetid://10709775704",
                ["lucide-bell-minus"] = "rbxassetid://10709775241",
                ["lucide-bell-off"] = "rbxassetid://10709775320",
                ["lucide-bell-plus"] = "rbxassetid://10709775448",
                ["lucide-bell-ring"] = "rbxassetid://10709775560",
                ["lucide-bike"] = "rbxassetid://10709775894",
                ["lucide-binary"] = "rbxassetid://10709776050",
                ["lucide-bitcoin"] = "rbxassetid://10709776126",
                ["lucide-bluetooth"] = "rbxassetid://10709776655",
                ["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
                ["lucide-bluetooth-off"] = "rbxassetid://10709776344",
                ["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
                ["lucide-bold"] = "rbxassetid://10747813908",
                ["lucide-bomb"] = "rbxassetid://10709781460",
                ["lucide-bone"] = "rbxassetid://10709781605",
                ["lucide-book"] = "rbxassetid://10709781824",
                ["lucide-book-open"] = "rbxassetid://10709781717",
                ["lucide-bookmark"] = "rbxassetid://10709782154",
                ["lucide-bookmark-minus"] = "rbxassetid://10709781919",
                ["lucide-bookmark-plus"] = "rbxassetid://10709782044",
                ["lucide-bot"] = "rbxassetid://10709782230",
                ["lucide-box"] = "rbxassetid://10709782497",
                ["lucide-box-select"] = "rbxassetid://10709782342",
                ["lucide-boxes"] = "rbxassetid://10709782582",
                ["lucide-briefcase"] = "rbxassetid://10709782662",
                ["lucide-brush"] = "rbxassetid://10709782758",
                ["lucide-bug"] = "rbxassetid://10709782845",
                ["lucide-building"] = "rbxassetid://10709783051",
                ["lucide-building-2"] = "rbxassetid://10709782939",
                ["lucide-bus"] = "rbxassetid://10709783137",
                ["lucide-cake"] = "rbxassetid://10709783217",
                ["lucide-calculator"] = "rbxassetid://10709783311",
                ["lucide-calendar"] = "rbxassetid://10709789505",
                ["lucide-calendar-check"] = "rbxassetid://10709783474",
                ["lucide-calendar-check-2"] = "rbxassetid://10709783392",
                ["lucide-calendar-clock"] = "rbxassetid://10709783577",
                ["lucide-calendar-days"] = "rbxassetid://10709783673",
                ["lucide-calendar-heart"] = "rbxassetid://10709783835",
                ["lucide-calendar-minus"] = "rbxassetid://10709783959",
                ["lucide-calendar-off"] = "rbxassetid://10709788784",
                ["lucide-calendar-plus"] = "rbxassetid://10709788937",
                ["lucide-calendar-range"] = "rbxassetid://10709789053",
                ["lucide-calendar-search"] = "rbxassetid://10709789200",
                ["lucide-calendar-x"] = "rbxassetid://10709789407",
                ["lucide-calendar-x-2"] = "rbxassetid://10709789329",
                ["lucide-camera"] = "rbxassetid://10709789686",
                ["lucide-camera-off"] = "rbxassetid://10747822677",
                ["lucide-car"] = "rbxassetid://10709789810",
                ["lucide-carrot"] = "rbxassetid://10709789960",
                ["lucide-cast"] = "rbxassetid://10709790097",
                ["lucide-charge"] = "rbxassetid://10709790202",
                ["lucide-check"] = "rbxassetid://10709790644",
                ["lucide-check-circle"] = "rbxassetid://10709790387",
                ["lucide-check-circle-2"] = "rbxassetid://10709790298",
                ["lucide-check-square"] = "rbxassetid://10709790537",
                ["lucide-chef-hat"] = "rbxassetid://10709790757",
                ["lucide-cherry"] = "rbxassetid://10709790875",
                ["lucide-chevron-down"] = "rbxassetid://10709790948",
                ["lucide-chevron-first"] = "rbxassetid://10709791015",
                ["lucide-chevron-last"] = "rbxassetid://10709791130",
                ["lucide-chevron-left"] = "rbxassetid://10709791281",
                ["lucide-chevron-right"] = "rbxassetid://10709791437",
                ["lucide-chevron-up"] = "rbxassetid://10709791523",
                ["lucide-chevrons-down"] = "rbxassetid://10709796864",
                ["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
                ["lucide-chevrons-left"] = "rbxassetid://10709797151",
                ["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
                ["lucide-chevrons-right"] = "rbxassetid://10709797382",
                ["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
                ["lucide-chevrons-up"] = "rbxassetid://10709797622",
                ["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
                ["lucide-chrome"] = "rbxassetid://10709797725",
                ["lucide-circle"] = "rbxassetid://10709798174",
                ["lucide-circle-dot"] = "rbxassetid://10709797837",
                ["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
                ["lucide-circle-slashed"] = "rbxassetid://10709798100",
                ["lucide-citrus"] = "rbxassetid://10709798276",
                ["lucide-clapperboard"] = "rbxassetid://10709798350",
                ["lucide-clipboard"] = "rbxassetid://10709799288",
                ["lucide-clipboard-check"] = "rbxassetid://10709798443",
                ["lucide-clipboard-copy"] = "rbxassetid://10709798574",
                ["lucide-clipboard-edit"] = "rbxassetid://10709798682",
                ["lucide-clipboard-list"] = "rbxassetid://10709798792",
                ["lucide-clipboard-signature"] = "rbxassetid://10709798890",
                ["lucide-clipboard-type"] = "rbxassetid://10709798999",
                ["lucide-clipboard-x"] = "rbxassetid://10709799124",
                ["lucide-clock"] = "rbxassetid://10709805144",
                ["lucide-clock-1"] = "rbxassetid://10709799535",
                ["lucide-clock-10"] = "rbxassetid://10709799718",
                ["lucide-clock-11"] = "rbxassetid://10709799818",
                ["lucide-clock-12"] = "rbxassetid://10709799962",
                ["lucide-clock-2"] = "rbxassetid://10709803876",
                ["lucide-clock-3"] = "rbxassetid://10709803989",
                ["lucide-clock-4"] = "rbxassetid://10709804164",
                ["lucide-clock-5"] = "rbxassetid://10709804291",
                ["lucide-clock-6"] = "rbxassetid://10709804435",
                ["lucide-clock-7"] = "rbxassetid://10709804599",
                ["lucide-clock-8"] = "rbxassetid://10709804784",
                ["lucide-clock-9"] = "rbxassetid://10709804996",
                ["lucide-cloud"] = "rbxassetid://10709806740",
                ["lucide-cloud-cog"] = "rbxassetid://10709805262",
                ["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
                ["lucide-cloud-fog"] = "rbxassetid://10709805477",
                ["lucide-cloud-hail"] = "rbxassetid://10709805596",
                ["lucide-cloud-lightning"] = "rbxassetid://10709805727",
                ["lucide-cloud-moon"] = "rbxassetid://10709805942",
                ["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
                ["lucide-cloud-off"] = "rbxassetid://10709806060",
                ["lucide-cloud-rain"] = "rbxassetid://10709806277",
                ["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
                ["lucide-cloud-snow"] = "rbxassetid://10709806374",
                ["lucide-cloud-sun"] = "rbxassetid://10709806631",
                ["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
                ["lucide-cloudy"] = "rbxassetid://10709806859",
                ["lucide-clover"] = "rbxassetid://10709806995",
                ["lucide-code"] = "rbxassetid://10709810463",
                ["lucide-code-2"] = "rbxassetid://10709807111",
                ["lucide-codepen"] = "rbxassetid://10709810534",
                ["lucide-codesandbox"] = "rbxassetid://10709810676",
                ["lucide-coffee"] = "rbxassetid://10709810814",
                ["lucide-cog"] = "rbxassetid://10709810948",
                ["lucide-coins"] = "rbxassetid://10709811110",
                ["lucide-columns"] = "rbxassetid://10709811261",
                ["lucide-command"] = "rbxassetid://10709811365",
                ["lucide-compass"] = "rbxassetid://10709811445",
                ["lucide-component"] = "rbxassetid://10709811595",
                ["lucide-concierge-bell"] = "rbxassetid://10709811706",
                ["lucide-connection"] = "rbxassetid://10747361219",
                ["lucide-contact"] = "rbxassetid://10709811834",
                ["lucide-contrast"] = "rbxassetid://10709811939",
                ["lucide-cookie"] = "rbxassetid://10709812067",
                ["lucide-copy"] = "rbxassetid://10709812159",
                ["lucide-copyleft"] = "rbxassetid://10709812251",
                ["lucide-copyright"] = "rbxassetid://10709812311",
                ["lucide-corner-down-left"] = "rbxassetid://10709812396",
                ["lucide-corner-down-right"] = "rbxassetid://10709812485",
                ["lucide-corner-left-down"] = "rbxassetid://10709812632",
                ["lucide-corner-left-up"] = "rbxassetid://10709812784",
                ["lucide-corner-right-down"] = "rbxassetid://10709812939",
                ["lucide-corner-right-up"] = "rbxassetid://10709813094",
                ["lucide-corner-up-left"] = "rbxassetid://10709813185",
                ["lucide-corner-up-right"] = "rbxassetid://10709813281",
                ["lucide-cpu"] = "rbxassetid://10709813383",
                ["lucide-croissant"] = "rbxassetid://10709818125",
                ["lucide-crop"] = "rbxassetid://10709818245",
                ["lucide-cross"] = "rbxassetid://10709818399",
                ["lucide-crosshair"] = "rbxassetid://10709818534",
                ["lucide-crown"] = "rbxassetid://10709818626",
                ["lucide-cup-soda"] = "rbxassetid://10709818763",
                ["lucide-curly-braces"] = "rbxassetid://10709818847",
                ["lucide-currency"] = "rbxassetid://10709818931",
                ["lucide-database"] = "rbxassetid://10709818996",
                ["lucide-delete"] = "rbxassetid://10709819059",
                ["lucide-diamond"] = "rbxassetid://10709819149",
                ["lucide-dice-1"] = "rbxassetid://10709819266",
                ["lucide-dice-2"] = "rbxassetid://10709819361",
                ["lucide-dice-3"] = "rbxassetid://10709819508",
                ["lucide-dice-4"] = "rbxassetid://10709819670",
                ["lucide-dice-5"] = "rbxassetid://10709819801",
                ["lucide-dice-6"] = "rbxassetid://10709819896",
                ["lucide-dices"] = "rbxassetid://10723343321",
                ["lucide-diff"] = "rbxassetid://10723343416",
                ["lucide-disc"] = "rbxassetid://10723343537",
                ["lucide-divide"] = "rbxassetid://10723343805",
                ["lucide-divide-circle"] = "rbxassetid://10723343636",
                ["lucide-divide-square"] = "rbxassetid://10723343737",
                ["lucide-dollar-sign"] = "rbxassetid://10723343958",
                ["lucide-download"] = "rbxassetid://10723344270",
                ["lucide-download-cloud"] = "rbxassetid://10723344088",
                ["lucide-droplet"] = "rbxassetid://10723344432",
                ["lucide-droplets"] = "rbxassetid://10734883356",
                ["lucide-drumstick"] = "rbxassetid://10723344737",
                ["lucide-edit"] = "rbxassetid://10734883598",
                ["lucide-edit-2"] = "rbxassetid://10723344885",
                ["lucide-edit-3"] = "rbxassetid://10723345088",
                ["lucide-egg"] = "rbxassetid://10723345518",
                ["lucide-egg-fried"] = "rbxassetid://10723345347",
                ["lucide-electricity"] = "rbxassetid://10723345749",
                ["lucide-electricity-off"] = "rbxassetid://10723345643",
                ["lucide-equal"] = "rbxassetid://10723345990",
                ["lucide-equal-not"] = "rbxassetid://10723345866",
                ["lucide-eraser"] = "rbxassetid://10723346158",
                ["lucide-euro"] = "rbxassetid://10723346372",
                ["lucide-expand"] = "rbxassetid://10723346553",
                ["lucide-external-link"] = "rbxassetid://10723346684",
                ["lucide-eye"] = "rbxassetid://10723346959",
                ["lucide-eye-off"] = "rbxassetid://10723346871",
                ["lucide-factory"] = "rbxassetid://10723347051",
                ["lucide-fan"] = "rbxassetid://10723354359",
                ["lucide-fast-forward"] = "rbxassetid://10723354521",
                ["lucide-feather"] = "rbxassetid://10723354671",
                ["lucide-figma"] = "rbxassetid://10723354801",
                ["lucide-file"] = "rbxassetid://10723374641",
                ["lucide-file-archive"] = "rbxassetid://10723354921",
                ["lucide-file-audio"] = "rbxassetid://10723355148",
                ["lucide-file-audio-2"] = "rbxassetid://10723355026",
                ["lucide-file-axis-3d"] = "rbxassetid://10723355272",
                ["lucide-file-badge"] = "rbxassetid://10723355622",
                ["lucide-file-badge-2"] = "rbxassetid://10723355451",
                ["lucide-file-bar-chart"] = "rbxassetid://10723355887",
                ["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
                ["lucide-file-box"] = "rbxassetid://10723355989",
                ["lucide-file-check"] = "rbxassetid://10723356210",
                ["lucide-file-check-2"] = "rbxassetid://10723356100",
                ["lucide-file-clock"] = "rbxassetid://10723356329",
                ["lucide-file-code"] = "rbxassetid://10723356507",
                ["lucide-file-cog"] = "rbxassetid://10723356830",
                ["lucide-file-cog-2"] = "rbxassetid://10723356676",
                ["lucide-file-diff"] = "rbxassetid://10723357039",
                ["lucide-file-digit"] = "rbxassetid://10723357151",
                ["lucide-file-down"] = "rbxassetid://10723357322",
                ["lucide-file-edit"] = "rbxassetid://10723357495",
                ["lucide-file-heart"] = "rbxassetid://10723357637",
                ["lucide-file-image"] = "rbxassetid://10723357790",
                ["lucide-file-input"] = "rbxassetid://10723357933",
                ["lucide-file-json"] = "rbxassetid://10723364435",
                ["lucide-file-json-2"] = "rbxassetid://10723364361",
                ["lucide-file-key"] = "rbxassetid://10723364605",
                ["lucide-file-key-2"] = "rbxassetid://10723364515",
                ["lucide-file-line-chart"] = "rbxassetid://10723364725",
                ["lucide-file-lock"] = "rbxassetid://10723364957",
                ["lucide-file-lock-2"] = "rbxassetid://10723364861",
                ["lucide-file-minus"] = "rbxassetid://10723365254",
                ["lucide-file-minus-2"] = "rbxassetid://10723365086",
                ["lucide-file-output"] = "rbxassetid://10723365457",
                ["lucide-file-pie-chart"] = "rbxassetid://10723365598",
                ["lucide-file-plus"] = "rbxassetid://10723365877",
                ["lucide-file-plus-2"] = "rbxassetid://10723365766",
                ["lucide-file-question"] = "rbxassetid://10723365987",
                ["lucide-file-scan"] = "rbxassetid://10723366167",
                ["lucide-file-search"] = "rbxassetid://10723366550",
                ["lucide-file-search-2"] = "rbxassetid://10723366340",
                ["lucide-file-signature"] = "rbxassetid://10723366741",
                ["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
                ["lucide-file-symlink"] = "rbxassetid://10723367098",
                ["lucide-file-terminal"] = "rbxassetid://10723367244",
                ["lucide-file-text"] = "rbxassetid://10723367380",
                ["lucide-file-type"] = "rbxassetid://10723367606",
                ["lucide-file-type-2"] = "rbxassetid://10723367509",
                ["lucide-file-up"] = "rbxassetid://10723367734",
                ["lucide-file-video"] = "rbxassetid://10723373884",
                ["lucide-file-video-2"] = "rbxassetid://10723367834",
                ["lucide-file-volume"] = "rbxassetid://10723374172",
                ["lucide-file-volume-2"] = "rbxassetid://10723374030",
                ["lucide-file-warning"] = "rbxassetid://10723374276",
                ["lucide-file-x"] = "rbxassetid://10723374544",
                ["lucide-file-x-2"] = "rbxassetid://10723374378",
                ["lucide-files"] = "rbxassetid://10723374759",
                ["lucide-film"] = "rbxassetid://10723374981",
                ["lucide-filter"] = "rbxassetid://10723375128",
                ["lucide-fingerprint"] = "rbxassetid://10723375250",
                ["lucide-flag"] = "rbxassetid://10723375890",
                ["lucide-flag-off"] = "rbxassetid://10723375443",
                ["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
                ["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
                ["lucide-flame"] = "rbxassetid://10723376114",
                ["lucide-flashlight"] = "rbxassetid://10723376471",
                ["lucide-flashlight-off"] = "rbxassetid://10723376365",
                ["lucide-flask-conical"] = "rbxassetid://10734883986",
                ["lucide-flask-round"] = "rbxassetid://10723376614",
                ["lucide-flip-horizontal"] = "rbxassetid://10723376884",
                ["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
                ["lucide-flip-vertical"] = "rbxassetid://10723377138",
                ["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
                ["lucide-flower"] = "rbxassetid://10747830374",
                ["lucide-flower-2"] = "rbxassetid://10723377305",
                ["lucide-focus"] = "rbxassetid://10723377537",
                ["lucide-folder"] = "rbxassetid://10723387563",
                ["lucide-folder-archive"] = "rbxassetid://10723384478",
                ["lucide-folder-check"] = "rbxassetid://10723384605",
                ["lucide-folder-clock"] = "rbxassetid://10723384731",
                ["lucide-folder-closed"] = "rbxassetid://10723384893",
                ["lucide-folder-cog"] = "rbxassetid://10723385213",
                ["lucide-folder-cog-2"] = "rbxassetid://10723385036",
                ["lucide-folder-down"] = "rbxassetid://10723385338",
                ["lucide-folder-edit"] = "rbxassetid://10723385445",
                ["lucide-folder-heart"] = "rbxassetid://10723385545",
                ["lucide-folder-input"] = "rbxassetid://10723385721",
                ["lucide-folder-key"] = "rbxassetid://10723385848",
                ["lucide-folder-lock"] = "rbxassetid://10723386005",
                ["lucide-folder-minus"] = "rbxassetid://10723386127",
                ["lucide-folder-open"] = "rbxassetid://10723386277",
                ["lucide-folder-output"] = "rbxassetid://10723386386",
                ["lucide-folder-plus"] = "rbxassetid://10723386531",
                ["lucide-folder-search"] = "rbxassetid://10723386787",
                ["lucide-folder-search-2"] = "rbxassetid://10723386674",
                ["lucide-folder-symlink"] = "rbxassetid://10723386930",
                ["lucide-folder-tree"] = "rbxassetid://10723387085",
                ["lucide-folder-up"] = "rbxassetid://10723387265",
                ["lucide-folder-x"] = "rbxassetid://10723387448",
                ["lucide-folders"] = "rbxassetid://10723387721",
                ["lucide-form-input"] = "rbxassetid://10723387841",
                ["lucide-forward"] = "rbxassetid://10723388016",
                ["lucide-frame"] = "rbxassetid://10723394389",
                ["lucide-framer"] = "rbxassetid://10723394565",
                ["lucide-frown"] = "rbxassetid://10723394681",
                ["lucide-fuel"] = "rbxassetid://10723394846",
                ["lucide-function-square"] = "rbxassetid://10723395041",
                ["lucide-gamepad"] = "rbxassetid://10723395457",
                ["lucide-gamepad-2"] = "rbxassetid://10723395215",
                ["lucide-gauge"] = "rbxassetid://10723395708",
                ["lucide-gavel"] = "rbxassetid://10723395896",
                ["lucide-gem"] = "rbxassetid://10723396000",
                ["lucide-ghost"] = "rbxassetid://10723396107",
                ["lucide-gift"] = "rbxassetid://10723396402",
                ["lucide-gift-card"] = "rbxassetid://10723396225",
                ["lucide-git-branch"] = "rbxassetid://10723396676",
                ["lucide-git-branch-plus"] = "rbxassetid://10723396542",
                ["lucide-git-commit"] = "rbxassetid://10723396812",
                ["lucide-git-compare"] = "rbxassetid://10723396954",
                ["lucide-git-fork"] = "rbxassetid://10723397049",
                ["lucide-git-merge"] = "rbxassetid://10723397165",
                ["lucide-git-pull-request"] = "rbxassetid://10723397431",
                ["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
                ["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
                ["lucide-glass"] = "rbxassetid://10723397788",
                ["lucide-glass-2"] = "rbxassetid://10723397529",
                ["lucide-glass-water"] = "rbxassetid://10723397678",
                ["lucide-glasses"] = "rbxassetid://10723397895",
                ["lucide-globe"] = "rbxassetid://10723404337",
                ["lucide-globe-2"] = "rbxassetid://10723398002",
                ["lucide-grab"] = "rbxassetid://10723404472",
                ["lucide-graduation-cap"] = "rbxassetid://10723404691",
                ["lucide-grape"] = "rbxassetid://10723404822",
                ["lucide-grid"] = "rbxassetid://10723404936",
                ["lucide-grip-horizontal"] = "rbxassetid://10723405089",
                ["lucide-grip-vertical"] = "rbxassetid://10723405236",
                ["lucide-hammer"] = "rbxassetid://10723405360",
                ["lucide-hand"] = "rbxassetid://10723405649",
                ["lucide-hand-metal"] = "rbxassetid://10723405508",
                ["lucide-hard-drive"] = "rbxassetid://10723405749",
                ["lucide-hard-hat"] = "rbxassetid://10723405859",
                ["lucide-hash"] = "rbxassetid://10723405975",
                ["lucide-haze"] = "rbxassetid://10723406078",
                ["lucide-headphones"] = "rbxassetid://10723406165",
                ["lucide-heart"] = "rbxassetid://10723406885",
                ["lucide-heart-crack"] = "rbxassetid://10723406299",
                ["lucide-heart-handshake"] = "rbxassetid://10723406480",
                ["lucide-heart-off"] = "rbxassetid://10723406662",
                ["lucide-heart-pulse"] = "rbxassetid://10723406795",
                ["lucide-help-circle"] = "rbxassetid://10723406988",
                ["lucide-hexagon"] = "rbxassetid://10723407092",
                ["lucide-highlighter"] = "rbxassetid://10723407192",
                ["lucide-history"] = "rbxassetid://10723407335",
                ["lucide-home"] = "rbxassetid://10723407389",
                ["lucide-hourglass"] = "rbxassetid://10723407498",
                ["lucide-ice-cream"] = "rbxassetid://10723414308",
                ["lucide-image"] = "rbxassetid://10723415040",
                ["lucide-image-minus"] = "rbxassetid://10723414487",
                ["lucide-image-off"] = "rbxassetid://10723414677",
                ["lucide-image-plus"] = "rbxassetid://10723414827",
                ["lucide-import"] = "rbxassetid://10723415205",
                ["lucide-inbox"] = "rbxassetid://10723415335",
                ["lucide-indent"] = "rbxassetid://10723415494",
                ["lucide-indian-rupee"] = "rbxassetid://10723415642",
                ["lucide-infinity"] = "rbxassetid://10723415766",
                ["lucide-info"] = "rbxassetid://10723415903",
                ["lucide-inspect"] = "rbxassetid://10723416057",
                ["lucide-italic"] = "rbxassetid://10723416195",
                ["lucide-japanese-yen"] = "rbxassetid://10723416363",
                ["lucide-joystick"] = "rbxassetid://10723416527",
                ["lucide-key"] = "rbxassetid://10723416652",
                ["lucide-keyboard"] = "rbxassetid://10723416765",
                ["lucide-lamp"] = "rbxassetid://10723417513",
                ["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
                ["lucide-lamp-desk"] = "rbxassetid://10723417016",
                ["lucide-lamp-floor"] = "rbxassetid://10723417131",
                ["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
                ["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
                ["lucide-landmark"] = "rbxassetid://10723417608",
                ["lucide-languages"] = "rbxassetid://10723417703",
                ["lucide-laptop"] = "rbxassetid://10723423881",
                ["lucide-laptop-2"] = "rbxassetid://10723417797",
                ["lucide-lasso"] = "rbxassetid://10723424235",
                ["lucide-lasso-select"] = "rbxassetid://10723424058",
                ["lucide-laugh"] = "rbxassetid://10723424372",
                ["lucide-layers"] = "rbxassetid://10723424505",
                ["lucide-layout"] = "rbxassetid://10723425376",
                ["lucide-layout-dashboard"] = "rbxassetid://10723424646",
                ["lucide-layout-grid"] = "rbxassetid://10723424838",
                ["lucide-layout-list"] = "rbxassetid://10723424963",
                ["lucide-layout-template"] = "rbxassetid://10723425187",
                ["lucide-leaf"] = "rbxassetid://10723425539",
                ["lucide-library"] = "rbxassetid://10723425615",
                ["lucide-life-buoy"] = "rbxassetid://10723425685",
                ["lucide-lightbulb"] = "rbxassetid://10723425852",
                ["lucide-lightbulb-off"] = "rbxassetid://10723425762",
                ["lucide-line-chart"] = "rbxassetid://10723426393",
                ["lucide-link"] = "rbxassetid://10723426722",
                ["lucide-link-2"] = "rbxassetid://10723426595",
                ["lucide-link-2-off"] = "rbxassetid://10723426513",
                ["lucide-list"] = "rbxassetid://10723433811",
                ["lucide-list-checks"] = "rbxassetid://10734884548",
                ["lucide-list-end"] = "rbxassetid://10723426886",
                ["lucide-list-minus"] = "rbxassetid://10723426986",
                ["lucide-list-music"] = "rbxassetid://10723427081",
                ["lucide-list-ordered"] = "rbxassetid://10723427199",
                ["lucide-list-plus"] = "rbxassetid://10723427334",
                ["lucide-list-start"] = "rbxassetid://10723427494",
                ["lucide-list-video"] = "rbxassetid://10723427619",
                ["lucide-list-x"] = "rbxassetid://10723433655",
                ["lucide-loader"] = "rbxassetid://10723434070",
                ["lucide-loader-2"] = "rbxassetid://10723433935",
                ["lucide-locate"] = "rbxassetid://10723434557",
                ["lucide-locate-fixed"] = "rbxassetid://10723434236",
                ["lucide-locate-off"] = "rbxassetid://10723434379",
                ["lucide-lock"] = "rbxassetid://10723434711",
                ["lucide-log-in"] = "rbxassetid://10723434830",
                ["lucide-log-out"] = "rbxassetid://10723434906",
                ["lucide-luggage"] = "rbxassetid://10723434993",
                ["lucide-magnet"] = "rbxassetid://10723435069",
                ["lucide-mail"] = "rbxassetid://10734885430",
                ["lucide-mail-check"] = "rbxassetid://10723435182",
                ["lucide-mail-minus"] = "rbxassetid://10723435261",
                ["lucide-mail-open"] = "rbxassetid://10723435342",
                ["lucide-mail-plus"] = "rbxassetid://10723435443",
                ["lucide-mail-question"] = "rbxassetid://10723435515",
                ["lucide-mail-search"] = "rbxassetid://10734884739",
                ["lucide-mail-warning"] = "rbxassetid://10734885015",
                ["lucide-mail-x"] = "rbxassetid://10734885247",
                ["lucide-mails"] = "rbxassetid://10734885614",
                ["lucide-map"] = "rbxassetid://10734886202",
                ["lucide-map-pin"] = "rbxassetid://10734886004",
                ["lucide-map-pin-off"] = "rbxassetid://10734885803",
                ["lucide-maximize"] = "rbxassetid://10734886735",
                ["lucide-maximize-2"] = "rbxassetid://10734886496",
                ["lucide-medal"] = "rbxassetid://10734887072",
                ["lucide-megaphone"] = "rbxassetid://10734887454",
                ["lucide-megaphone-off"] = "rbxassetid://10734887311",
                ["lucide-meh"] = "rbxassetid://10734887603",
                ["lucide-menu"] = "rbxassetid://10734887784",
                ["lucide-message-circle"] = "rbxassetid://10734888000",
                ["lucide-message-square"] = "rbxassetid://10734888228",
                ["lucide-mic"] = "rbxassetid://10734888864",
                ["lucide-mic-2"] = "rbxassetid://10734888430",
                ["lucide-mic-off"] = "rbxassetid://10734888646",
                ["lucide-microscope"] = "rbxassetid://10734889106",
                ["lucide-microwave"] = "rbxassetid://10734895076",
                ["lucide-milestone"] = "rbxassetid://10734895310",
                ["lucide-minimize"] = "rbxassetid://10734895698",
                ["lucide-minimize-2"] = "rbxassetid://10734895530",
                ["lucide-minus"] = "rbxassetid://10734896206",
                ["lucide-minus-circle"] = "rbxassetid://10734895856",
                ["lucide-minus-square"] = "rbxassetid://10734896029",
                ["lucide-monitor"] = "rbxassetid://10734896881",
                ["lucide-monitor-off"] = "rbxassetid://10734896360",
                ["lucide-monitor-speaker"] = "rbxassetid://10734896512",
                ["lucide-moon"] = "rbxassetid://10734897102",
                ["lucide-more-horizontal"] = "rbxassetid://10734897250",
                ["lucide-more-vertical"] = "rbxassetid://10734897387",
                ["lucide-mountain"] = "rbxassetid://10734897956",
                ["lucide-mountain-snow"] = "rbxassetid://10734897665",
                ["lucide-mouse"] = "rbxassetid://10734898592",
                ["lucide-mouse-pointer"] = "rbxassetid://10734898476",
                ["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
                ["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
                ["lucide-move"] = "rbxassetid://10734900011",
                ["lucide-move-3d"] = "rbxassetid://10734898756",
                ["lucide-move-diagonal"] = "rbxassetid://10734899164",
                ["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
                ["lucide-move-horizontal"] = "rbxassetid://10734899414",
                ["lucide-move-vertical"] = "rbxassetid://10734899821",
                ["lucide-music"] = "rbxassetid://10734905958",
                ["lucide-music-2"] = "rbxassetid://10734900215",
                ["lucide-music-3"] = "rbxassetid://10734905665",
                ["lucide-music-4"] = "rbxassetid://10734905823",
                ["lucide-navigation"] = "rbxassetid://10734906744",
                ["lucide-navigation-2"] = "rbxassetid://10734906332",
                ["lucide-navigation-2-off"] = "rbxassetid://10734906144",
                ["lucide-navigation-off"] = "rbxassetid://10734906580",
                ["lucide-network"] = "rbxassetid://10734906975",
                ["lucide-newspaper"] = "rbxassetid://10734907168",
                ["lucide-octagon"] = "rbxassetid://10734907361",
                ["lucide-option"] = "rbxassetid://10734907649",
                ["lucide-outdent"] = "rbxassetid://10734907933",
                ["lucide-package"] = "rbxassetid://10734909540",
                ["lucide-package-2"] = "rbxassetid://10734908151",
                ["lucide-package-check"] = "rbxassetid://10734908384",
                ["lucide-package-minus"] = "rbxassetid://10734908626",
                ["lucide-package-open"] = "rbxassetid://10734908793",
                ["lucide-package-plus"] = "rbxassetid://10734909016",
                ["lucide-package-search"] = "rbxassetid://10734909196",
                ["lucide-package-x"] = "rbxassetid://10734909375",
                ["lucide-paint-bucket"] = "rbxassetid://10734909847",
                ["lucide-paintbrush"] = "rbxassetid://10734910187",
                ["lucide-paintbrush-2"] = "rbxassetid://10734910030",
                ["lucide-palette"] = "rbxassetid://10734910430",
                ["lucide-palmtree"] = "rbxassetid://10734910680",
                ["lucide-paperclip"] = "rbxassetid://10734910927",
                ["lucide-party-popper"] = "rbxassetid://10734918735",
                ["lucide-pause"] = "rbxassetid://10734919336",
                ["lucide-pause-circle"] = "rbxassetid://10735024209",
                ["lucide-pause-octagon"] = "rbxassetid://10734919143",
                ["lucide-pen-tool"] = "rbxassetid://10734919503",
                ["lucide-pencil"] = "rbxassetid://10734919691",
                ["lucide-percent"] = "rbxassetid://10734919919",
                ["lucide-person-standing"] = "rbxassetid://10734920149",
                ["lucide-phone"] = "rbxassetid://10734921524",
                ["lucide-phone-call"] = "rbxassetid://10734920305",
                ["lucide-phone-forwarded"] = "rbxassetid://10734920508",
                ["lucide-phone-incoming"] = "rbxassetid://10734920694",
                ["lucide-phone-missed"] = "rbxassetid://10734920845",
                ["lucide-phone-off"] = "rbxassetid://10734921077",
                ["lucide-phone-outgoing"] = "rbxassetid://10734921288",
                ["lucide-pie-chart"] = "rbxassetid://10734921727",
                ["lucide-piggy-bank"] = "rbxassetid://10734921935",
                ["lucide-pin"] = "rbxassetid://10734922324",
                ["lucide-pin-off"] = "rbxassetid://10734922180",
                ["lucide-pipette"] = "rbxassetid://10734922497",
                ["lucide-pizza"] = "rbxassetid://10734922774",
                ["lucide-plane"] = "rbxassetid://10734922971",
                ["lucide-play"] = "rbxassetid://10734923549",
                ["lucide-play-circle"] = "rbxassetid://10734923214",
                ["lucide-plus"] = "rbxassetid://10734924532",
                ["lucide-plus-circle"] = "rbxassetid://10734923868",
                ["lucide-plus-square"] = "rbxassetid://10734924219",
                ["lucide-podcast"] = "rbxassetid://10734929553",
                ["lucide-pointer"] = "rbxassetid://10734929723",
                ["lucide-pound-sterling"] = "rbxassetid://10734929981",
                ["lucide-power"] = "rbxassetid://10734930466",
                ["lucide-power-off"] = "rbxassetid://10734930257",
                ["lucide-printer"] = "rbxassetid://10734930632",
                ["lucide-puzzle"] = "rbxassetid://10734930886",
                ["lucide-quote"] = "rbxassetid://10734931234",
                ["lucide-radio"] = "rbxassetid://10734931596",
                ["lucide-radio-receiver"] = "rbxassetid://10734931402",
                ["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
                ["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
                ["lucide-recycle"] = "rbxassetid://10734932295",
                ["lucide-redo"] = "rbxassetid://10734932822",
                ["lucide-redo-2"] = "rbxassetid://10734932586",
                ["lucide-refresh-ccw"] = "rbxassetid://10734933056",
                ["lucide-refresh-cw"] = "rbxassetid://10734933222",
                ["lucide-refrigerator"] = "rbxassetid://10734933465",
                ["lucide-regex"] = "rbxassetid://10734933655",
                ["lucide-repeat"] = "rbxassetid://10734933966",
                ["lucide-repeat-1"] = "rbxassetid://10734933826",
                ["lucide-reply"] = "rbxassetid://10734934252",
                ["lucide-reply-all"] = "rbxassetid://10734934132",
                ["lucide-rewind"] = "rbxassetid://10734934347",
                ["lucide-rocket"] = "rbxassetid://10734934585",
                ["lucide-rocking-chair"] = "rbxassetid://10734939942",
                ["lucide-rotate-3d"] = "rbxassetid://10734940107",
                ["lucide-rotate-ccw"] = "rbxassetid://10734940376",
                ["lucide-rotate-cw"] = "rbxassetid://10734940654",
                ["lucide-rss"] = "rbxassetid://10734940825",
                ["lucide-ruler"] = "rbxassetid://10734941018",
                ["lucide-russian-ruble"] = "rbxassetid://10734941199",
                ["lucide-sailboat"] = "rbxassetid://10734941354",
                ["lucide-save"] = "rbxassetid://10734941499",
                ["lucide-scale"] = "rbxassetid://10734941912",
                ["lucide-scale-3d"] = "rbxassetid://10734941739",
                ["lucide-scaling"] = "rbxassetid://10734942072",
                ["lucide-scan"] = "rbxassetid://10734942565",
                ["lucide-scan-face"] = "rbxassetid://10734942198",
                ["lucide-scan-line"] = "rbxassetid://10734942351",
                ["lucide-scissors"] = "rbxassetid://10734942778",
                ["lucide-screen-share"] = "rbxassetid://10734943193",
                ["lucide-screen-share-off"] = "rbxassetid://10734942967",
                ["lucide-scroll"] = "rbxassetid://10734943448",
                ["lucide-search"] = "rbxassetid://10734943674",
                ["lucide-send"] = "rbxassetid://10734943902",
                ["lucide-separator-horizontal"] = "rbxassetid://10734944115",
                ["lucide-separator-vertical"] = "rbxassetid://10734944326",
                ["lucide-server"] = "rbxassetid://10734949856",
                ["lucide-server-cog"] = "rbxassetid://10734944444",
                ["lucide-server-crash"] = "rbxassetid://10734944554",
                ["lucide-server-off"] = "rbxassetid://10734944668",
                ["lucide-settings"] = "rbxassetid://10734950309",
                ["lucide-settings-2"] = "rbxassetid://10734950020",
                ["lucide-share"] = "rbxassetid://10734950813",
                ["lucide-share-2"] = "rbxassetid://10734950553",
                ["lucide-sheet"] = "rbxassetid://10734951038",
                ["lucide-shield"] = "rbxassetid://10734951847",
                ["lucide-shield-alert"] = "rbxassetid://10734951173",
                ["lucide-shield-check"] = "rbxassetid://10734951367",
                ["lucide-shield-close"] = "rbxassetid://10734951535",
                ["lucide-shield-off"] = "rbxassetid://10734951684",
                ["lucide-shirt"] = "rbxassetid://10734952036",
                ["lucide-shopping-bag"] = "rbxassetid://10734952273",
                ["lucide-shopping-cart"] = "rbxassetid://10734952479",
                ["lucide-shovel"] = "rbxassetid://10734952773",
                ["lucide-shower-head"] = "rbxassetid://10734952942",
                ["lucide-shrink"] = "rbxassetid://10734953073",
                ["lucide-shrub"] = "rbxassetid://10734953241",
                ["lucide-shuffle"] = "rbxassetid://10734953451",
                ["lucide-sidebar"] = "rbxassetid://10734954301",
                ["lucide-sidebar-close"] = "rbxassetid://10734953715",
                ["lucide-sidebar-open"] = "rbxassetid://10734954000",
                ["lucide-sigma"] = "rbxassetid://10734954538",
                ["lucide-signal"] = "rbxassetid://10734961133",
                ["lucide-signal-high"] = "rbxassetid://10734954807",
                ["lucide-signal-low"] = "rbxassetid://10734955080",
                ["lucide-signal-medium"] = "rbxassetid://10734955336",
                ["lucide-signal-zero"] = "rbxassetid://10734960878",
                ["lucide-siren"] = "rbxassetid://10734961284",
                ["lucide-skip-back"] = "rbxassetid://10734961526",
                ["lucide-skip-forward"] = "rbxassetid://10734961809",
                ["lucide-skull"] = "rbxassetid://10734962068",
                ["lucide-slack"] = "rbxassetid://10734962339",
                ["lucide-slash"] = "rbxassetid://10734962600",
                ["lucide-slice"] = "rbxassetid://10734963024",
                ["lucide-sliders"] = "rbxassetid://10734963400",
                ["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
                ["lucide-smartphone"] = "rbxassetid://10734963940",
                ["lucide-smartphone-charging"] = "rbxassetid://10734963671",
                ["lucide-smile"] = "rbxassetid://10734964441",
                ["lucide-smile-plus"] = "rbxassetid://10734964188",
                ["lucide-snowflake"] = "rbxassetid://10734964600",
                ["lucide-sofa"] = "rbxassetid://10734964852",
                ["lucide-sort-asc"] = "rbxassetid://10734965115",
                ["lucide-sort-desc"] = "rbxassetid://10734965287",
                ["lucide-speaker"] = "rbxassetid://10734965419",
                ["lucide-sprout"] = "rbxassetid://10734965572",
                ["lucide-square"] = "rbxassetid://10734965702",
                ["lucide-star"] = "rbxassetid://10734966248",
                ["lucide-star-half"] = "rbxassetid://10734965897",
                ["lucide-star-off"] = "rbxassetid://10734966097",
                ["lucide-stethoscope"] = "rbxassetid://10734966384",
                ["lucide-sticker"] = "rbxassetid://10734972234",
                ["lucide-sticky-note"] = "rbxassetid://10734972463",
                ["lucide-stop-circle"] = "rbxassetid://10734972621",
                ["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
                ["lucide-stretch-vertical"] = "rbxassetid://10734973130",
                ["lucide-strikethrough"] = "rbxassetid://10734973290",
                ["lucide-subscript"] = "rbxassetid://10734973457",
                ["lucide-sun"] = "rbxassetid://10734974297",
                ["lucide-sun-dim"] = "rbxassetid://10734973645",
                ["lucide-sun-medium"] = "rbxassetid://10734973778",
                ["lucide-sun-moon"] = "rbxassetid://10734973999",
                ["lucide-sun-snow"] = "rbxassetid://10734974130",
                ["lucide-sunrise"] = "rbxassetid://10734974522",
                ["lucide-sunset"] = "rbxassetid://10734974689",
                ["lucide-superscript"] = "rbxassetid://10734974850",
                ["lucide-swiss-franc"] = "rbxassetid://10734975024",
                ["lucide-switch-camera"] = "rbxassetid://10734975214",
                ["lucide-sword"] = "rbxassetid://10734975486",
                ["lucide-swords"] = "rbxassetid://10734975692",
                ["lucide-syringe"] = "rbxassetid://10734975932",
                ["lucide-table"] = "rbxassetid://10734976230",
                ["lucide-table-2"] = "rbxassetid://10734976097",
                ["lucide-tablet"] = "rbxassetid://10734976394",
                ["lucide-tag"] = "rbxassetid://10734976528",
                ["lucide-tags"] = "rbxassetid://10734976739",
                ["lucide-target"] = "rbxassetid://10734977012",
                ["lucide-tent"] = "rbxassetid://10734981750",
                ["lucide-terminal"] = "rbxassetid://10734982144",
                ["lucide-terminal-square"] = "rbxassetid://10734981995",
                ["lucide-text-cursor"] = "rbxassetid://10734982395",
                ["lucide-text-cursor-input"] = "rbxassetid://10734982297",
                ["lucide-thermometer"] = "rbxassetid://10734983134",
                ["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
                ["lucide-thermometer-sun"] = "rbxassetid://10734982771",
                ["lucide-thumbs-down"] = "rbxassetid://10734983359",
                ["lucide-thumbs-up"] = "rbxassetid://10734983629",
                ["lucide-ticket"] = "rbxassetid://10734983868",
                ["lucide-timer"] = "rbxassetid://10734984606",
                ["lucide-timer-off"] = "rbxassetid://10734984138",
                ["lucide-timer-reset"] = "rbxassetid://10734984355",
                ["lucide-toggle-left"] = "rbxassetid://10734984834",
                ["lucide-toggle-right"] = "rbxassetid://10734985040",
                ["lucide-tornado"] = "rbxassetid://10734985247",
                ["lucide-toy-brick"] = "rbxassetid://10747361919",
                ["lucide-train"] = "rbxassetid://10747362105",
                ["lucide-trash"] = "rbxassetid://10747362393",
                ["lucide-trash-2"] = "rbxassetid://10747362241",
                ["lucide-tree-deciduous"] = "rbxassetid://10747362534",
                ["lucide-tree-pine"] = "rbxassetid://10747362748",
                ["lucide-trees"] = "rbxassetid://10747363016",
                ["lucide-trending-down"] = "rbxassetid://10747363205",
                ["lucide-trending-up"] = "rbxassetid://10747363465",
                ["lucide-triangle"] = "rbxassetid://10747363621",
                ["lucide-trophy"] = "rbxassetid://10747363809",
                ["lucide-truck"] = "rbxassetid://10747364031",
                ["lucide-tv"] = "rbxassetid://10747364593",
                ["lucide-tv-2"] = "rbxassetid://10747364302",
                ["lucide-type"] = "rbxassetid://10747364761",
                ["lucide-umbrella"] = "rbxassetid://10747364971",
                ["lucide-underline"] = "rbxassetid://10747365191",
                ["lucide-undo"] = "rbxassetid://10747365484",
                ["lucide-undo-2"] = "rbxassetid://10747365359",
                ["lucide-unlink"] = "rbxassetid://10747365771",
                ["lucide-unlink-2"] = "rbxassetid://10747397871",
                ["lucide-unlock"] = "rbxassetid://10747366027",
                ["lucide-upload"] = "rbxassetid://10747366434",
                ["lucide-upload-cloud"] = "rbxassetid://10747366266",
                ["lucide-usb"] = "rbxassetid://10747366606",
                ["lucide-user"] = "rbxassetid://10747373176",
                ["lucide-user-check"] = "rbxassetid://10747371901",
                ["lucide-user-cog"] = "rbxassetid://10747372167",
                ["lucide-user-minus"] = "rbxassetid://10747372346",
                ["lucide-user-plus"] = "rbxassetid://10747372702",
                ["lucide-user-x"] = "rbxassetid://10747372992",
                ["lucide-users"] = "rbxassetid://10747373426",
                ["lucide-utensils"] = "rbxassetid://10747373821",
                ["lucide-utensils-crossed"] = "rbxassetid://10747373629",
                ["lucide-venetian-mask"] = "rbxassetid://10747374003",
                ["lucide-verified"] = "rbxassetid://10747374131",
                ["lucide-vibrate"] = "rbxassetid://10747374489",
                ["lucide-vibrate-off"] = "rbxassetid://10747374269",
                ["lucide-video"] = "rbxassetid://10747374938",
                ["lucide-video-off"] = "rbxassetid://10747374721",
                ["lucide-view"] = "rbxassetid://10747375132",
                ["lucide-voicemail"] = "rbxassetid://10747375281",
                ["lucide-volume"] = "rbxassetid://10747376008",
                ["lucide-volume-1"] = "rbxassetid://10747375450",
                ["lucide-volume-2"] = "rbxassetid://10747375679",
                ["lucide-volume-x"] = "rbxassetid://10747375880",
                ["lucide-wallet"] = "rbxassetid://10747376205",
                ["lucide-wand"] = "rbxassetid://10747376565",
                ["lucide-wand-2"] = "rbxassetid://10747376349",
                ["lucide-watch"] = "rbxassetid://10747376722",
                ["lucide-waves"] = "rbxassetid://10747376931",
                ["lucide-webcam"] = "rbxassetid://10747381992",
                ["lucide-wifi"] = "rbxassetid://10747382504",
                ["lucide-wifi-off"] = "rbxassetid://10747382268",
                ["lucide-wind"] = "rbxassetid://10747382750",
                ["lucide-wrap-text"] = "rbxassetid://10747383065",
                ["lucide-wrench"] = "rbxassetid://10747383470",
                ["lucide-x"] = "rbxassetid://10747384394",
                ["lucide-x-circle"] = "rbxassetid://10747383819",
                ["lucide-x-octagon"] = "rbxassetid://10747384037",
                ["lucide-x-square"] = "rbxassetid://10747384217",
                ["lucide-zoom-in"] = "rbxassetid://10747384552",
                ["lucide-zoom-out"] = "rbxassetid://10747384679"
            }
        }
    end,
    [30] = function() --[[ Amethyst_Theme ]]
        local aa, ab, ac, ad, ae = b(30)
        local af = {
            SingleMotor = ac(ab.SingleMotor),
            GroupMotor = ac(ab.GroupMotor),
            Instant = ac(ab.Instant),
            Linear = ac(ab.Linear),
            Spring = ac(ab.Spring),
            isMotor = ac(ab.isMotor)
        }
        return af
    end,
    [31] = function() --[[ BaseMotor ]]
        local aa, ab, ac, ad, ae = b(31)
        local af, ag, ah, ai = game:GetService "RunService", ac(ab.Parent.Signal), function()
            end, {}
        ai.__index = ai
        function ai.new()
            return setmetatable({_onStep = ag.new(), _onStart = ag.new(), _onComplete = ag.new()}, ai)
        end
        function ai.onStep(aj, c)
            return aj._onStep:connect(c)
        end
        function ai.onStart(aj, c)
            return aj._onStart:connect(c)
        end
        function ai.onComplete(aj, c)
            return aj._onComplete:connect(c)
        end
        function ai.start(aj)
            if not aj._connection then
                aj._connection =
                    af.RenderStepped:Connect(
                    function(c)
                        aj:step(c)
                    end
                )
            end
        end
        function ai.stop(aj)
            if aj._connection then
                aj._connection:Disconnect()
                aj._connection = nil
            end
        end
        ai.destroy = ai.stop
        ai.step = ah
        ai.getValue = ah
        ai.setGoal = ah
        function ai.__tostring(aj)
            return "Motor"
        end
        return ai
    end,
    [32] = function() --[[ Module32 ]]
        local aa, ab, ac, ad, ae = b(32)
        return function()
            local af, ag = game:GetService "RunService", ac(ab.Parent.BaseMotor)
            describe(
                "connection management",
                function()
                    local ah = ag.new()
                    it(
                        "should hook up connections on :start()",
                        function()
                            ah:start()
                            expect(typeof(ah._connection)).to.equal "RBXScriptConnection"
                        end
                    )
                    it(
                        "should remove connections on :stop() or :destroy()",
                        function()
                            ah:stop()
                            expect(ah._connection).to.equal(nil)
                        end
                    )
                end
            )
            it(
                "should call :step() with deltaTime",
                function()
                    local ah, ai = (ag.new())
                    function ah.step(aj, ...)
                        ai = {...}
                        ah:stop()
                    end
                    ah:start()
                    local aj = af.RenderStepped:Wait()
                    af.RenderStepped:Wait()
                    expect(ai).to.be.ok()
                    expect(ai[1]).to.equal(aj)
                end
            )
        end
    end,
    [33] = function() --[[ GroupMotor ]]
        local aa, ab, ac, ad, ae = b(33)
        local af, ag, ah = ac(ab.Parent.BaseMotor), ac(ab.Parent.SingleMotor), ac(ab.Parent.isMotor)
        local ai = setmetatable({}, af)
        ai.__index = ai
        local aj = function(aj)
            if ah(aj) then
                return aj
            end
            local c = typeof(aj)
            if c == "number" then
                return ag.new(aj, false)
            elseif c == "table" then
                return ai.new(aj, false)
            end
            error(("Unable to convert %q to motor; type %s is unsupported"):format(aj, c), 2)
        end
        function ai.new(c, d)
            assert(c, "Missing argument #1: initialValues")
            assert(typeof(c) == "table", "initialValues must be a table!")
            assert(
                not c.step,
                [[initialValues contains disallowed property "step". Did you mean to put a table of values here?]]
            )
            local e = setmetatable(af.new(), ai)
            if d ~= nil then
                e._useImplicitConnections = d
            else
                e._useImplicitConnections = true
            end
            e._complete = true
            e._motors = {}
            for f, g in pairs(c) do
                e._motors[f] = aj(g)
            end
            return e
        end
        function ai.step(c, d)
            if c._complete then
                return true
            end
            local e = true
            for f, g in pairs(c._motors) do
                local h = g:step(d)
                if not h then
                    e = false
                end
            end
            c._onStep:fire(c:getValue())
            if e then
                if c._useImplicitConnections then
                    c:stop()
                end
                c._complete = true
                c._onComplete:fire()
            end
            return e
        end
        function ai.setGoal(c, d)
            assert(
                not d.step,
                [[goals contains disallowed property "step". Did you mean to put a table of goals here?]]
            )
            c._complete = false
            c._onStart:fire()
            for e, f in pairs(d) do
                local g = assert(c._motors[e], ("Unknown motor for key %s"):format(e))
                g:setGoal(f)
            end
            if c._useImplicitConnections then
                c:start()
            end
        end
        function ai.getValue(c)
            local d = {}
            for e, f in pairs(c._motors) do
                d[e] = f:getValue()
            end
            return d
        end
        function ai.__tostring(c)
            return "Motor(Group)"
        end
        return ai
    end,
    [34] = function() --[[ Module34 ]]
        local aa, ab, ac, ad, ae = b(34)
        return function()
            local af, ag, ah = ac(ab.Parent.GroupMotor), ac(ab.Parent.Instant), ac(ab.Parent.Spring)
            it(
                "should complete when all child motors are complete",
                function()
                    local ai = af.new({A = 1, B = 2}, false)
                    expect(ai._complete).to.equal(true)
                    ai:setGoal {A = ag.new(3), B = ah.new(4, {frequency = 7.5, dampingRatio = 1})}
                    expect(ai._complete).to.equal(false)
                    ai:step(1.6666666666666665E-2)
                    expect(ai._complete).to.equal(false)
                    for aj = 1, 30 do
                        ai:step(1.6666666666666665E-2)
                    end
                    expect(ai._complete).to.equal(true)
                end
            )
            it(
                "should start when the goal is set",
                function()
                    local ai, aj = af.new({A = 0}, false), false
                    ai:onStart(
                        function()
                            aj = not aj
                        end
                    )
                    ai:setGoal {A = ag.new(1)}
                    expect(aj).to.equal(true)
                    ai:setGoal {A = ag.new(1)}
                    expect(aj).to.equal(false)
                end
            )
            it(
                "should properly return all values",
                function()
                    local ai = af.new({A = 1, B = 2}, false)
                    local aj = ai:getValue()
                    expect(aj.A).to.equal(1)
                    expect(aj.B).to.equal(2)
                end
            )
            it(
                "should error when a goal is given to GroupMotor.new",
                function()
                    local ai =
                        pcall(
                        function()
                            af.new(ag.new(0))
                        end
                    )
                    expect(ai).to.equal(false)
                end
            )
            it(
                [[should error when a single goal is provided to GroupMotor:step]],
                function()
                    local ai =
                        pcall(
                        function()
                            af.new {a = 1}:setGoal(ag.new(0))
                        end
                    )
                    expect(ai).to.equal(false)
                end
            )
        end
    end,
    [35] = function() --[[ Instant ]]
        local aa, ab, ac, ad, ae = b(35)
        local af = {}
        af.__index = af
        function af.new(ag)
            return setmetatable({_targetValue = ag}, af)
        end
        function af.step(ag)
            return {complete = true, value = ag._targetValue}
        end
        return af
    end,
    [36] = function() --[[ Module36 ]]
        local aa, ab, ac, ad, ae = b(36)
        return function()
            local af = ac(ab.Parent.Instant)
            it(
                "should return a completed state with the provided value",
                function()
                    local ag = af.new(1.23)
                    local ah = ag:step(0.1, {value = 0, complete = false})
                    expect(ah.complete).to.equal(true)
                    expect(ah.value).to.equal(1.23)
                end
            )
        end
    end,
    [37] = function() --[[ Linear ]]
        local aa, ab, ac, ad, ae = b(37)
        local af = {}
        af.__index = af
        function af.new(ag, ah)
            assert(ag, "Missing argument #1: targetValue")
            ah = ah or {}
            return setmetatable({_targetValue = ag, _velocity = ah.velocity or 1}, af)
        end
        function af.step(ag, ah, ai)
            local aj, c, d = ah.value, ag._velocity, ag._targetValue
            local e = ai * c
            local f = e >= math.abs(d - aj)
            aj = aj + e * (d > aj and 1 or -1)
            if f then
                aj = ag._targetValue
                c = 0
            end
            return {complete = f, value = aj, velocity = c}
        end
        return af
    end,
    [38] = function() --[[ Module38 ]]
        local aa, ab, ac, ad, ae = b(38)
        return function()
            local af, ag = ac(ab.Parent.SingleMotor), ac(ab.Parent.Linear)
            describe(
                "completed state",
                function()
                    local ah, ai = af.new(0, false), ag.new(1, {velocity = 1})
                    ah:setGoal(ai)
                    for aj = 1, 60 do
                        ah:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(ah._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(ah._state.value).to.equal(1)
                        end
                    )
                end
            )
            describe(
                "uncompleted state",
                function()
                    local ah, ai = af.new(0, false), ag.new(1, {velocity = 1})
                    ah:setGoal(ai)
                    for aj = 1, 59 do
                        ah:step(1.6666666666666665E-2)
                    end
                    it(
                        "should be uncomplete",
                        function()
                            expect(ah._state.complete).to.equal(false)
                        end
                    )
                end
            )
            describe(
                "negative velocity",
                function()
                    local ah, ai = af.new(1, false), ag.new(0, {velocity = 1})
                    ah:setGoal(ai)
                    for aj = 1, 60 do
                        ah:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(ah._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(ah._state.value).to.equal(0)
                        end
                    )
                end
            )
        end
    end,
    [39] = function() --[[ Signal ]]
        local aa, ab, ac, ad, ae = b(39)
        local af = {}
        af.__index = af
        function af.new(ag, ah)
            return setmetatable({signal = ag, connected = true, _handler = ah}, af)
        end
        function af.disconnect(ag)
            if ag.connected then
                ag.connected = false
                for ah, ai in pairs(ag.signal._connections) do
                    if ai == ag then
                        table.remove(ag.signal._connections, ah)
                        return
                    end
                end
            end
        end
        local ag = {}
        ag.__index = ag
        function ag.new()
            return setmetatable({_connections = {}, _threads = {}}, ag)
        end
        function ag.fire(ah, ...)
            for ai, aj in pairs(ah._connections) do
                aj._handler(...)
            end
            for c, d in pairs(ah._threads) do
                coroutine.resume(d, ...)
            end
            ah._threads = {}
        end
        function ag.connect(ah, aj)
            local c = af.new(ah, aj)
            table.insert(ah._connections, c)
            return c
        end
        function ag.wait(ah)
            table.insert(ah._threads, coroutine.running())
            return coroutine.yield()
        end
        return ag
    end,
    [40] = function() --[[ Module40 ]]
        local aa, ab, ac, ad, ae = b(40)
        return function()
            local af = ac(ab.Parent.Signal)
            it(
                "should invoke all connections, instantly",
                function()
                    local ag, ah, aj = (af.new())
                    ag:connect(
                        function(c)
                            ah = c
                        end
                    )
                    ag:connect(
                        function(c)
                            aj = c
                        end
                    )
                    ag:fire "hello"
                    expect(ah).to.equal "hello"
                    expect(aj).to.equal "hello"
                end
            )
            it(
                "should return values when :wait() is called",
                function()
                    local ag = af.new()
                    spawn(
                        function()
                            ag:fire(123, "hello")
                        end
                    )
                    local ah, aj = ag:wait()
                    expect(ah).to.equal(123)
                    expect(aj).to.equal "hello"
                end
            )
            it(
                "should properly handle disconnections",
                function()
                    local ag, ah = af.new(), false
                    local aj =
                        ag:connect(
                        function()
                            ah = true
                        end
                    )
                    aj:disconnect()
                    ag:fire()
                    expect(ah).to.equal(false)
                end
            )
        end
    end,
    [41] = function() --[[ SingleMotor ]]
        local aa, ab, ac, ad, ae = b(41)
        local af = ac(ab.Parent.BaseMotor)
        local ag = setmetatable({}, af)
        ag.__index = ag
        function ag.new(ah, aj)
            assert(ah, "Missing argument #1: initialValue")
            assert(typeof(ah) == "number", "initialValue must be a number!")
            local c = setmetatable(af.new(), ag)
            if aj ~= nil then
                c._useImplicitConnections = aj
            else
                c._useImplicitConnections = true
            end
            c._goal = nil
            c._state = {complete = true, value = ah}
            return c
        end
        function ag.step(ah, aj)
            if ah._state.complete then
                return true
            end
            local c = ah._goal:step(ah._state, aj)
            ah._state = c
            ah._onStep:fire(c.value)
            if c.complete then
                if ah._useImplicitConnections then
                    ah:stop()
                end
                ah._onComplete:fire()
            end
            return c.complete
        end
        function ag.getValue(ah)
            return ah._state.value
        end
        function ag.setGoal(ah, aj)
            ah._state.complete = false
            ah._goal = aj
            ah._onStart:fire()
            if ah._useImplicitConnections then
                ah:start()
            end
        end
        function ag.__tostring(ah)
            return "Motor(Single)"
        end
        return ag
    end,
    [42] = function() --[[ Module42 ]]
        local aa, ab, ac, ad, ae = b(42)
        return function()
            local af, ag = ac(ab.Parent.SingleMotor), ac(ab.Parent.Instant)
            it(
                "should assign new state on step",
                function()
                    local ah = af.new(0, false)
                    ah:setGoal(ag.new(5))
                    ah:step(1.6666666666666665E-2)
                    expect(ah._state.complete).to.equal(true)
                    expect(ah._state.value).to.equal(5)
                end
            )
            it(
                [[should invoke onComplete listeners when the goal is completed]],
                function()
                    local ah, aj = af.new(0, false), false
                    ah:onComplete(
                        function()
                            aj = true
                        end
                    )
                    ah:setGoal(ag.new(5))
                    ah:step(1.6666666666666665E-2)
                    expect(aj).to.equal(true)
                end
            )
            it(
                "should start when the goal is set",
                function()
                    local ah, aj = af.new(0, false), false
                    ah:onStart(
                        function()
                            aj = not aj
                        end
                    )
                    ah:setGoal(ag.new(5))
                    expect(aj).to.equal(true)
                    ah:setGoal(ag.new(5))
                    expect(aj).to.equal(false)
                end
            )
        end
    end,
    [43] = function() --[[ Spring ]]
        local aa, ab, ac, ad, ae = b(43)
        local af, ag, ah, aj = 0.001, 0.001, 0.0001, {}
        aj.__index = aj
        function aj.new(c, d)
            assert(c, "Missing argument #1: targetValue")
            d = d or {}
            return setmetatable(
                {_targetValue = c, _frequency = d.frequency or 4, _dampingRatio = d.dampingRatio or 1},
                aj
            )
        end
        function aj.step(c, d, e)
            local f, g, h, i, j = c._dampingRatio, c._frequency * 2 * math.pi, c._targetValue, d.value, d.velocity or 0
            local k, l, m, n = i - h, (math.exp(-f * g * e))
            if f == 1 then
                m = (k * (1 + g * e) + j * e) * l + h
                n = (j * (1 - g * e) - k * (g * g * e)) * l
            elseif f < 1 then
                local o = math.sqrt(1 - f * f)
                local p, s, t = math.cos(g * o * e), (math.sin(g * o * e))
                if o > ah then
                    t = s / o
                else
                    local u = e * g
                    t = u + ((u * u) * (o * o) * (o * o) / 20 - o * o) * (u * u * u) / 6
                end
                local u
                if g * o > ah then
                    u = s / (g * o)
                else
                    local v = g * o
                    u = e + ((e * e) * (v * v) * (v * v) / 20 - v * v) * (e * e * e) / 6
                end
                m = (k * (p + f * t) + j * u) * l + h
                n = (j * (p - t * f) - k * (t * g)) * l
            else
                local o = math.sqrt(f * f - 1)
                local p, s = -g * (f - o), -g * (f + o)
                local t = (j - k * p) / (2 * g * o)
                local u = k - t
                local v, w = u * math.exp(p * e), t * math.exp(s * e)
                m = v + w + h
                n = v * p + w * s
            end
            local o = math.abs(n) < af and math.abs(m - h) < ag
            return {complete = o, value = o and h or m, velocity = n}
        end
        return aj
    end,
    [44] = function() --[[ Module44 ]]
        local aa, ab, ac, ad, ae = b(44)
        return function()
            local af, ag = ac(ab.Parent.SingleMotor), ac(ab.Parent.Spring)
            describe(
                "completed state",
                function()
                    local ah, aj = af.new(0, false), ag.new(1, {frequency = 2, dampingRatio = 0.75})
                    ah:setGoal(aj)
                    for c = 1, 100 do
                        ah:step(1.6666666666666665E-2)
                    end
                    it(
                        "should complete",
                        function()
                            expect(ah._state.complete).to.equal(true)
                        end
                    )
                    it(
                        "should be exactly the goal value when completed",
                        function()
                            expect(ah._state.value).to.equal(1)
                        end
                    )
                end
            )
            it(
                "should inherit velocity",
                function()
                    local ah = af.new(0, false)
                    ah._state = {complete = false, value = 0, velocity = -5}
                    local aj = ag.new(1, {frequency = 2, dampingRatio = 1})
                    ah:setGoal(aj)
                    ah:step(1.6666666666666665E-2)
                    expect(ah._state.velocity < 0).to.equal(true)
                end
            )
        end
    end,
    [45] = function() --[[ isMotor ]]
        local aa, ab, ac, ad, ae = b(45)
        local af = function(af)
            local ag = tostring(af):match "^Motor%((.+)%)$"
            if ag then
                return true, ag
            else
                return false
            end
        end
        return af
    end,
    [46] = function() --[[ Module46 ]]
        local aa, ab, ac, ad, ae = b(46)
        return function()
            local af, ag, ah = ac(ab.Parent.isMotor), ac(ab.Parent.SingleMotor), ac(ab.Parent.GroupMotor)
            local aj, c = ag.new(0), ah.new {}
            it(
                "should properly detect motors",
                function()
                    expect(af(aj)).to.equal(true)
                    expect(af(c)).to.equal(true)
                end
            )
            it(
                "shouldn't detect things that aren't motors",
                function()
                    expect(af {}).to.equal(false)
                end
            )
            it(
                "should return the proper motor type",
                function()
                    local d, e = af(aj)
                    local f, g = af(c)
                    expect(e).to.equal "Single"
                    expect(g).to.equal "Group"
                end
            )
        end
    end,
    [47] = function() --[[ isMotor_spec ]]
        local aa, ab, ac, ad, ae = b(47)
        local af = {
            Names = {
                "AMOLED", "Ash Gray", "Blood Red", "Cyanic", "Amber Glow", "Deep Violet", "Neon Cyber", "Neon Purple", "Royal Blue", "Deep Ocean", "RGB", "Orange", "Charcoal", "Pearl White", "Midnight Blue", "Galaxy Purple", "Cosmic Violet", "Cotton Candy", "Arctic Frost", "Bloomings", "Crimson", "Gold"
            }
        }
        for ag, ah in next, ab:GetChildren() do
            local aj = ac(ah)
            af[aj.Name] = aj
            if aj.Accent and not aj.ThemeAccentColors then
                aj.ThemeAccentColors = { aj.Accent }
            end
            if aj.Background == nil then aj.Background = nil end
            if aj.BackgroundTransparency == nil then aj.BackgroundTransparency = 0 end
        end

        if af["Blood Red"] then
            af["Blood Red"].Background = "rbxassetid://121343473918667"
            af["Blood Red"].BackgroundTransparency = 0.15
            af["Blood Red"].ThemeAccentColors = { Color3.fromRGB(180, 10, 20) }
        end

        af["AMOLED"] = {
            Name="AMOLED", Accent=Color3.fromRGB(255,255,255),
            AcrylicMain=Color3.fromRGB(0,0,0), AcrylicBorder=Color3.fromRGB(20,20,20),
            AcrylicGradient=ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0)),
            AcrylicNoise=1, TitleBarLine=Color3.fromRGB(22,22,22),
            Tab=Color3.fromRGB(28,28,28), Element=Color3.fromRGB(10,10,10),
            ElementBorder=Color3.fromRGB(0,0,0), InElementBorder=Color3.fromRGB(30,30,30),
            ElementTransparency=0.96, ToggleSlider=Color3.fromRGB(30,30,30),
            ToggleToggled=Color3.fromRGB(255,255,255), SliderRail=Color3.fromRGB(30,30,30),
            CheckboxUnchecked=Color3.fromRGB(30,30,30), CheckboxChecked=Color3.fromRGB(255,255,255),
            CheckboxCheck=Color3.fromRGB(255,255,255), ProgressBarRail=Color3.fromRGB(30,30,30), ProgressBarFill=Color3.fromRGB(255,255,255),
            DropdownFrame=Color3.fromRGB(18,18,18), DropdownHolder=Color3.fromRGB(0,0,0),
            DropdownBorder=Color3.fromRGB(0,0,0), DropdownOption=Color3.fromRGB(22,22,22),
            Keybind=Color3.fromRGB(22,22,22), Input=Color3.fromRGB(12,12,12),
            InputFocused=Color3.fromRGB(0,0,0), InputIndicator=Color3.fromRGB(45,45,45),
            InputIndicatorFocus=Color3.fromRGB(255,255,255), Dialog=Color3.fromRGB(0,0,0),
            DialogHolder=Color3.fromRGB(0,0,0), DialogHolderLine=Color3.fromRGB(18,18,18),
            DialogButton=Color3.fromRGB(10,10,10), DialogButtonBorder=Color3.fromRGB(28,28,28),
            DialogBorder=Color3.fromRGB(22,22,22), DialogInput=Color3.fromRGB(10,10,10),
            DialogInputLine=Color3.fromRGB(45,45,45), Text=Color3.fromRGB(255,255,255),
            SubText=Color3.fromRGB(150,150,150), Hover=Color3.fromRGB(22,22,22),
            HoverChange=0.03, ShineEnabled=false,
            Shine={Speed=0,RotationSpeed=0,ColorSequence=ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))},
            StrokeShine=false, StrokeDark=Color3.fromRGB(18,18,18),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(10,10,10)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(30,30,30)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(60,60,60)),ColorSequenceKeypoint.new(1,Color3.fromRGB(30,30,30))})},
            Background="rbxassetid://134736124666311", BackgroundTransparency=0, ThemeAccentColors={Color3.fromRGB(255,255,255)},
        }

        af["RGB"] = {
            Name="RGB", Accent=Color3.fromRGB(0,255,180),
            AcrylicMain=Color3.fromRGB(8,8,14), AcrylicBorder=Color3.fromRGB(0,255,180),
            AcrylicGradient=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(20,0,40)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(0,20,50)),ColorSequenceKeypoint.new(1,Color3.fromRGB(30,0,30))}),
            AcrylicNoise=0.95, TitleBarLine=Color3.fromRGB(0,200,140),
            Tab=Color3.fromRGB(0,200,160), Element=Color3.fromRGB(20,20,35),
            ElementBorder=Color3.fromRGB(5,5,12), InElementBorder=Color3.fromRGB(0,200,160),
            ElementTransparency=0.88, ToggleSlider=Color3.fromRGB(0,180,140),
            ToggleToggled=Color3.fromRGB(0,0,0), SliderRail=Color3.fromRGB(0,200,160),
            CheckboxUnchecked=Color3.fromRGB(0,200,160), CheckboxChecked=Color3.fromRGB(0,255,180),
            CheckboxCheck=Color3.fromRGB(0,0,0), ProgressBarRail=Color3.fromRGB(0,200,160), ProgressBarFill=Color3.fromRGB(0,255,180),
            DropdownFrame=Color3.fromRGB(0,200,160), DropdownHolder=Color3.fromRGB(8,8,20),
            DropdownBorder=Color3.fromRGB(0,200,160), DropdownOption=Color3.fromRGB(0,200,160),
            Keybind=Color3.fromRGB(0,200,160), Input=Color3.fromRGB(20,20,40),
            InputFocused=Color3.fromRGB(5,5,12), InputIndicator=Color3.fromRGB(0,180,140),
            InputIndicatorFocus=Color3.fromRGB(0,255,200), Dialog=Color3.fromRGB(8,8,20),
            DialogHolder=Color3.fromRGB(5,5,15), DialogHolderLine=Color3.fromRGB(0,200,160),
            DialogButton=Color3.fromRGB(10,10,22), DialogButtonBorder=Color3.fromRGB(0,200,160),
            DialogBorder=Color3.fromRGB(0,200,160), DialogInput=Color3.fromRGB(15,15,30),
            DialogInputLine=Color3.fromRGB(0,200,160), Text=Color3.fromRGB(220,255,245),
            SubText=Color3.fromRGB(100,220,190), Hover=Color3.fromRGB(0,50,40),
            HoverChange=0.05, ShineEnabled=true,
            Shine={Speed=1.2,RotationSpeed=40,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,180)),ColorSequenceKeypoint.new(0.33,Color3.fromRGB(120,0,255)),ColorSequenceKeypoint.new(0.66,Color3.fromRGB(255,0,150)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,255,180))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(0,180,140),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,40,30)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,20,15))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,180)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(120,0,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,255,180))})},
            Background=nil, BackgroundTransparency=0, IsRGB=true,
            ThemeAccentColors={Color3.fromRGB(0,255,180),Color3.fromRGB(120,0,255),Color3.fromRGB(255,0,150)},
        }

        af["Neon Cyber"] = {
            Name="Neon Cyber", Accent=Color3.fromRGB(57,255,20),
            AcrylicMain=Color3.fromRGB(5,10,5), AcrylicBorder=Color3.fromRGB(40,200,20),
            AcrylicGradient=ColorSequence.new(Color3.fromRGB(10,25,10),Color3.fromRGB(3,8,3)),
            AcrylicNoise=0.93, TitleBarLine=Color3.fromRGB(35,160,15),
            Tab=Color3.fromRGB(57,255,20), Element=Color3.fromRGB(10,22,10),
            ElementBorder=Color3.fromRGB(3,8,3), InElementBorder=Color3.fromRGB(35,160,15),
            ElementTransparency=0.88, ToggleSlider=Color3.fromRGB(57,255,20),
            ToggleToggled=Color3.fromRGB(0,0,0), SliderRail=Color3.fromRGB(57,255,20),
            CheckboxUnchecked=Color3.fromRGB(57,255,20), CheckboxChecked=Color3.fromRGB(57,255,20),
            CheckboxCheck=Color3.fromRGB(0,0,0), ProgressBarRail=Color3.fromRGB(57,255,20), ProgressBarFill=Color3.fromRGB(57,255,20),
            DropdownFrame=Color3.fromRGB(35,160,15), DropdownHolder=Color3.fromRGB(5,12,5),
            DropdownBorder=Color3.fromRGB(35,160,15), DropdownOption=Color3.fromRGB(57,255,20),
            Keybind=Color3.fromRGB(40,200,18), Input=Color3.fromRGB(10,22,10),
            InputFocused=Color3.fromRGB(3,7,3), InputIndicator=Color3.fromRGB(57,255,20),
            InputIndicatorFocus=Color3.fromRGB(130,255,80), Dialog=Color3.fromRGB(5,12,5),
            DialogHolder=Color3.fromRGB(3,8,3), DialogHolderLine=Color3.fromRGB(35,160,15),
            DialogButton=Color3.fromRGB(8,18,8), DialogButtonBorder=Color3.fromRGB(57,255,20),
            DialogBorder=Color3.fromRGB(40,200,18), DialogInput=Color3.fromRGB(10,22,10),
            DialogInputLine=Color3.fromRGB(57,255,20), Text=Color3.fromRGB(200,255,190),
            SubText=Color3.fromRGB(80,200,60), Hover=Color3.fromRGB(15,40,15),
            HoverChange=0.05, ShineEnabled=true,
            Shine={Speed=0.8,RotationSpeed=30,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(5,30,5)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(57,255,20)),ColorSequenceKeypoint.new(1,Color3.fromRGB(5,30,5))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(35,160,15),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(8,22,8)),ColorSequenceKeypoint.new(1,Color3.fromRGB(3,8,3))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(35,160,15)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(57,255,20)),ColorSequenceKeypoint.new(1,Color3.fromRGB(35,160,15))})},
            Background=nil, BackgroundTransparency=0, ThemeAccentColors={Color3.fromRGB(57,255,20)},
        }

        af["Arctic Frost"] = {
            Name="Arctic Frost", Accent=Color3.fromRGB(100,180,240),
            AcrylicMain=Color3.fromRGB(185,215,235), AcrylicBorder=Color3.fromRGB(200,228,248),
            AcrylicGradient=ColorSequence.new(Color3.fromRGB(235,248,255),Color3.fromRGB(210,235,250)),
            AcrylicNoise=0.97, TitleBarLine=Color3.fromRGB(180,215,240),
            Tab=Color3.fromRGB(90,150,200), Element=Color3.fromRGB(210,235,250),
            ElementBorder=Color3.fromRGB(170,200,225), InElementBorder=Color3.fromRGB(140,185,218),
            ElementTransparency=0.65, ToggleSlider=Color3.fromRGB(120,175,215),
            ToggleToggled=Color3.fromRGB(30,70,120), SliderRail=Color3.fromRGB(150,200,235),
            CheckboxUnchecked=Color3.fromRGB(150,200,235), CheckboxChecked=Color3.fromRGB(100,180,240),
            CheckboxCheck=Color3.fromRGB(30,70,120), ProgressBarRail=Color3.fromRGB(150,200,235), ProgressBarFill=Color3.fromRGB(100,180,240),
            DropdownFrame=Color3.fromRGB(190,225,248), DropdownHolder=Color3.fromRGB(225,242,255),
            DropdownBorder=Color3.fromRGB(170,210,238), DropdownOption=Color3.fromRGB(130,180,220),
            Keybind=Color3.fromRGB(150,200,235), Input=Color3.fromRGB(200,230,248),
            InputFocused=Color3.fromRGB(100,150,190), InputIndicator=Color3.fromRGB(160,210,240),
            InputIndicatorFocus=Color3.fromRGB(60,140,220), Dialog=Color3.fromRGB(220,240,255),
            DialogHolder=Color3.fromRGB(235,248,255), DialogHolderLine=Color3.fromRGB(200,228,248),
            DialogButton=Color3.fromRGB(225,242,255), DialogButtonBorder=Color3.fromRGB(170,210,238),
            DialogBorder=Color3.fromRGB(180,215,240), DialogInput=Color3.fromRGB(200,230,248),
            DialogInputLine=Color3.fromRGB(150,200,235), Text=Color3.fromRGB(20,40,70),
            SubText=Color3.fromRGB(65,105,148), Hover=Color3.fromRGB(170,210,238),
            HoverChange=0.04, ShineEnabled=true,
            Shine={Speed=0.3,RotationSpeed=15,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(200,235,255)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(200,235,255))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(170,210,238),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(190,225,248)),ColorSequenceKeypoint.new(1,Color3.fromRGB(220,240,255))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(150,200,235)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(200,235,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(150,200,235))})},
            Background=nil, BackgroundTransparency=0, ThemeAccentColors={Color3.fromRGB(100,180,240)},
        }

        af["Cotton Candy"] = {
            Name="Cotton Candy", Accent=Color3.fromRGB(255,130,190),
            AcrylicMain=Color3.fromRGB(255,225,245), AcrylicBorder=Color3.fromRGB(255,190,230),
            AcrylicGradient=ColorSequence.new(Color3.fromRGB(255,235,250),Color3.fromRGB(235,210,255)),
            AcrylicNoise=0.96, TitleBarLine=Color3.fromRGB(240,180,225),
            Tab=Color3.fromRGB(195,130,185), Element=Color3.fromRGB(255,200,235),
            ElementBorder=Color3.fromRGB(230,165,210), InElementBorder=Color3.fromRGB(235,170,215),
            ElementTransparency=0.70, ToggleSlider=Color3.fromRGB(215,145,192),
            ToggleToggled=Color3.fromRGB(90,30,70), SliderRail=Color3.fromRGB(235,170,215),
            CheckboxUnchecked=Color3.fromRGB(235,170,215), CheckboxChecked=Color3.fromRGB(255,130,190),
            CheckboxCheck=Color3.fromRGB(90,30,70), ProgressBarRail=Color3.fromRGB(235,170,215), ProgressBarFill=Color3.fromRGB(255,130,190),
            DropdownFrame=Color3.fromRGB(248,192,230), DropdownHolder=Color3.fromRGB(255,225,248),
            DropdownBorder=Color3.fromRGB(228,168,213), DropdownOption=Color3.fromRGB(205,140,188),
            Keybind=Color3.fromRGB(228,168,213), Input=Color3.fromRGB(250,210,238),
            InputFocused=Color3.fromRGB(195,125,168), InputIndicator=Color3.fromRGB(250,195,232),
            InputIndicatorFocus=Color3.fromRGB(255,130,190), Dialog=Color3.fromRGB(255,228,248),
            DialogHolder=Color3.fromRGB(255,238,252), DialogHolderLine=Color3.fromRGB(238,208,235),
            DialogButton=Color3.fromRGB(255,233,250), DialogButtonBorder=Color3.fromRGB(228,178,218),
            DialogBorder=Color3.fromRGB(238,188,226), DialogInput=Color3.fromRGB(250,213,240),
            DialogInputLine=Color3.fromRGB(228,172,215), Text=Color3.fromRGB(75,25,55),
            SubText=Color3.fromRGB(145,75,115), Hover=Color3.fromRGB(238,182,222),
            HoverChange=0.04, ShineEnabled=true,
            Shine={Speed=0.4,RotationSpeed=18,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,180,220)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(220,180,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,180,220))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(228,172,213),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(250,198,232)),ColorSequenceKeypoint.new(1,Color3.fromRGB(232,182,252))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(228,172,213)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(250,198,232)),ColorSequenceKeypoint.new(1,Color3.fromRGB(228,172,213))})},
            Background=nil, BackgroundTransparency=0,
            ThemeAccentColors={Color3.fromRGB(255,130,190),Color3.fromRGB(175,140,255)},
        }

        af["Orange"] = {
            Name="Orange", Accent=Color3.fromRGB(255,140,30),
            AcrylicMain=Color3.fromRGB(4,4,4), AcrylicBorder=Color3.fromRGB(200,90,10),
            AcrylicGradient=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(30,10,0)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(10,5,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}),
            AcrylicNoise=0.98, TitleBarLine=Color3.fromRGB(180,75,5),
            Tab=Color3.fromRGB(180,80,10), Element=Color3.fromRGB(22,10,2),
            ElementBorder=Color3.fromRGB(80,35,5), InElementBorder=Color3.fromRGB(200,90,10),
            ElementTransparency=0.92, ToggleSlider=Color3.fromRGB(255,140,30),
            ToggleToggled=Color3.fromRGB(0,0,0), SliderRail=Color3.fromRGB(180,80,10),
            CheckboxUnchecked=Color3.fromRGB(180,80,10), CheckboxChecked=Color3.fromRGB(255,140,30),
            CheckboxCheck=Color3.fromRGB(0,0,0), ProgressBarRail=Color3.fromRGB(180,80,10), ProgressBarFill=Color3.fromRGB(255,140,30),
            DropdownFrame=Color3.fromRGB(160,70,8), DropdownHolder=Color3.fromRGB(4,2,0),
            DropdownBorder=Color3.fromRGB(200,90,10), DropdownOption=Color3.fromRGB(255,140,30),
            Keybind=Color3.fromRGB(22,10,2), Input=Color3.fromRGB(18,8,2),
            InputFocused=Color3.fromRGB(2,1,0), InputIndicator=Color3.fromRGB(255,160,60),
            InputIndicatorFocus=Color3.fromRGB(255,200,100), Dialog=Color3.fromRGB(6,3,0),
            DialogHolder=Color3.fromRGB(4,2,0), DialogHolderLine=Color3.fromRGB(180,75,5),
            DialogButton=Color3.fromRGB(8,4,0), DialogButtonBorder=Color3.fromRGB(180,80,10),
            DialogBorder=Color3.fromRGB(120,50,5), DialogInput=Color3.fromRGB(18,8,2),
            DialogInputLine=Color3.fromRGB(255,160,60), Text=Color3.fromRGB(255,240,220),
            SubText=Color3.fromRGB(220,175,130), Hover=Color3.fromRGB(255,140,30),
            HoverChange=0.05, ShineEnabled=true,
            Shine={Speed=0.7,RotationSpeed=30,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(30,10,0)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,140,30)),ColorSequenceKeypoint.new(1,Color3.fromRGB(30,10,0))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(180,80,10),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(40,18,4)),ColorSequenceKeypoint.new(1,Color3.fromRGB(8,3,0))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(180,80,10)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,140,30)),ColorSequenceKeypoint.new(1,Color3.fromRGB(180,80,10))})},
            Background="rbxassetid://122033436660262", BackgroundTransparency=0.05,
            ThemeAccentColors={Color3.fromRGB(255,140,30),Color3.fromRGB(200,90,10)},
        }

        af["Cyanic"] = {
            Name="Cyanic", Accent=Color3.fromRGB(57,197,187),
            AcrylicMain=Color3.fromRGB(8,18,22), AcrylicBorder=Color3.fromRGB(40,170,165),
            AcrylicGradient=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(15,45,55)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(8,25,32)),ColorSequenceKeypoint.new(1,Color3.fromRGB(4,12,16))}),
            AcrylicNoise=0.92, TitleBarLine=Color3.fromRGB(35,155,150),
            Tab=Color3.fromRGB(40,165,160), Element=Color3.fromRGB(14,38,46),
            ElementBorder=Color3.fromRGB(8,22,28), InElementBorder=Color3.fromRGB(40,165,160),
            ElementTransparency=0.88, ToggleSlider=Color3.fromRGB(57,197,187),
            ToggleToggled=Color3.fromRGB(0,0,0), SliderRail=Color3.fromRGB(40,165,160),
            CheckboxUnchecked=Color3.fromRGB(40,165,160), CheckboxChecked=Color3.fromRGB(57,197,187),
            CheckboxCheck=Color3.fromRGB(0,0,0), ProgressBarRail=Color3.fromRGB(40,165,160), ProgressBarFill=Color3.fromRGB(57,197,187),
            DropdownFrame=Color3.fromRGB(32,140,135), DropdownHolder=Color3.fromRGB(6,18,22),
            DropdownBorder=Color3.fromRGB(40,165,160), DropdownOption=Color3.fromRGB(57,197,187),
            Keybind=Color3.fromRGB(14,38,46), Input=Color3.fromRGB(10,28,35),
            InputFocused=Color3.fromRGB(4,10,14), InputIndicator=Color3.fromRGB(80,215,205),
            InputIndicatorFocus=Color3.fromRGB(130,235,228), Dialog=Color3.fromRGB(8,22,28),
            DialogHolder=Color3.fromRGB(5,14,18), DialogHolderLine=Color3.fromRGB(35,155,150),
            DialogButton=Color3.fromRGB(10,26,32), DialogButtonBorder=Color3.fromRGB(40,165,160),
            DialogBorder=Color3.fromRGB(30,120,115), DialogInput=Color3.fromRGB(12,32,40),
            DialogInputLine=Color3.fromRGB(80,215,205), Text=Color3.fromRGB(210,248,246),
            SubText=Color3.fromRGB(130,210,205), Hover=Color3.fromRGB(57,197,187),
            HoverChange=0.05, ShineEnabled=true,
            Shine={Speed=0.6,RotationSpeed=25,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(10,40,50)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(57,197,187)),ColorSequenceKeypoint.new(1,Color3.fromRGB(10,40,50))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(35,155,150),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(18,55,65)),ColorSequenceKeypoint.new(1,Color3.fromRGB(8,22,28))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(35,155,150)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(57,197,187)),ColorSequenceKeypoint.new(1,Color3.fromRGB(35,155,150))})},
            Background="rbxassetid://95656189244173", BackgroundTransparency=0.12,
            ThemeAccentColors={Color3.fromRGB(57,197,187),Color3.fromRGB(35,155,150)},
        }

        af["Amber Glow"] = {
            Name="Amber Glow", Accent=Color3.fromRGB(255,170,40),
            AcrylicMain=Color3.fromRGB(18,10,4), AcrylicBorder=Color3.fromRGB(200,130,30),
            AcrylicGradient=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(50,25,5)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(28,14,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(10,5,1))}),
            AcrylicNoise=0.9, TitleBarLine=Color3.fromRGB(185,120,25),
            Tab=Color3.fromRGB(190,125,25), Element=Color3.fromRGB(38,20,5),
            ElementBorder=Color3.fromRGB(18,10,2), InElementBorder=Color3.fromRGB(200,130,30),
            ElementTransparency=0.88, ToggleSlider=Color3.fromRGB(255,170,40),
            ToggleToggled=Color3.fromRGB(0,0,0), SliderRail=Color3.fromRGB(190,125,25),
            CheckboxUnchecked=Color3.fromRGB(190,125,25), CheckboxChecked=Color3.fromRGB(255,170,40),
            CheckboxCheck=Color3.fromRGB(0,0,0), ProgressBarRail=Color3.fromRGB(190,125,25), ProgressBarFill=Color3.fromRGB(255,170,40),
            DropdownFrame=Color3.fromRGB(165,105,20), DropdownHolder=Color3.fromRGB(14,7,2),
            DropdownBorder=Color3.fromRGB(200,130,30), DropdownOption=Color3.fromRGB(255,170,40),
            Keybind=Color3.fromRGB(38,20,5), Input=Color3.fromRGB(28,14,3),
            InputFocused=Color3.fromRGB(8,4,1), InputIndicator=Color3.fromRGB(255,195,80),
            InputIndicatorFocus=Color3.fromRGB(255,220,130), Dialog=Color3.fromRGB(18,9,2),
            DialogHolder=Color3.fromRGB(12,6,1), DialogHolderLine=Color3.fromRGB(185,120,25),
            DialogButton=Color3.fromRGB(22,11,3), DialogButtonBorder=Color3.fromRGB(190,125,25),
            DialogBorder=Color3.fromRGB(140,88,18), DialogInput=Color3.fromRGB(32,16,4),
            DialogInputLine=Color3.fromRGB(255,195,80), Text=Color3.fromRGB(255,245,225),
            SubText=Color3.fromRGB(230,195,145), Hover=Color3.fromRGB(255,170,40),
            HoverChange=0.05, ShineEnabled=true,
            Shine={Speed=0.6,RotationSpeed=25,ColorSequence=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(50,22,4)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,170,40)),ColorSequenceKeypoint.new(1,Color3.fromRGB(50,22,4))})},
            StrokeShine=true, StrokeDark=Color3.fromRGB(185,120,25),
            ButtonGradient={Background=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(60,30,6)),ColorSequenceKeypoint.new(1,Color3.fromRGB(22,10,2))}),Stroke=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(185,120,25)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,170,40)),ColorSequenceKeypoint.new(1,Color3.fromRGB(185,120,25))})},
            Background="rbxassetid://107795771598485", BackgroundTransparency=0.12,
            ThemeAccentColors={Color3.fromRGB(255,170,40),Color3.fromRGB(200,130,30)},
        }

        af["Bloomings"] = {
            Name = "Bloomings",
            Accent = Color3.fromRGB(255, 80, 150),
            AcrylicMain = Color3.fromRGB(40, 15, 30),
            AcrylicBorder = Color3.fromRGB(200, 60, 120),
            AcrylicGradient = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 35, 85)),
                ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 95, 70)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 140, 145))
            }),
            AcrylicNoise = 0.90,
            TitleBarLine = Color3.fromRGB(255, 100, 180),
            Tab = Color3.fromRGB(50, 18, 38),
            Element = Color3.fromRGB(55, 22, 42),
            ElementBorder = Color3.fromRGB(255, 70, 160),
            InElementBorder = Color3.fromRGB(200, 80, 150),
            ElementTransparency = 0.92,
            ToggleSlider = Color3.fromRGB(255, 210, 230),
            ToggleToggled = Color3.fromRGB(255, 50, 140),
            SliderRail = Color3.fromRGB(100, 40, 75),
            CheckboxUnchecked = Color3.fromRGB(100, 40, 75),
            CheckboxChecked = Color3.fromRGB(255, 80, 150),
            CheckboxCheck = Color3.fromRGB(255, 50, 140),
            ProgressBarRail = Color3.fromRGB(100, 40, 75),
            ProgressBarFill = Color3.fromRGB(255, 80, 150),
            DropdownFrame = Color3.fromRGB(45, 18, 35),
            DropdownHolder = Color3.fromRGB(35, 12, 25),
            DropdownBorder = Color3.fromRGB(180, 60, 130),
            DropdownOption = Color3.fromRGB(55, 22, 42),
            Keybind = Color3.fromRGB(45, 18, 35),
            Input = Color3.fromRGB(45, 18, 35),
            InputFocused = Color3.fromRGB(60, 25, 48),
            InputIndicator = Color3.fromRGB(255, 80, 160),
            Dialog = Color3.fromRGB(40, 15, 30),
            DialogHolder = Color3.fromRGB(30, 10, 22),
            DialogHolderLine = Color3.fromRGB(200, 70, 150),
            DialogButton = Color3.fromRGB(55, 22, 42),
            DialogButtonBorder = Color3.fromRGB(200, 70, 160),
            DialogBorder = Color3.fromRGB(180, 60, 130),
            DialogInput = Color3.fromRGB(45, 18, 35),
            DialogInputLine = Color3.fromRGB(255, 80, 160),
            Text = Color3.fromRGB(255, 240, 248),
            SubText = Color3.fromRGB(230, 190, 215),
            Hover = Color3.fromRGB(255, 255, 255),
            HoverChange = 0.08,
            Background = "rbxassetid://133541508207801",
            BackgroundTransparency = 0.12,
            ViewportBackground = Color3.fromRGB(30, 10, 22),
            ViewportBackgroundImages = true,
            DropdownOutsideWindowBackground = Color3.fromRGB(35, 12, 25),
            DropdownOutsideWindowBackgroundImages = true,
            ShineEnabled = true,
            Shine = {
                Speed = 0.35,
                RotationSpeed = 15,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 150)),
                    ColorSequenceKeypoint.new(0.25, Color3.fromRGB(80, 255, 150)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(0.75, Color3.fromRGB(255, 50, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 70, 150))
                })
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(80, 30, 60),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 60, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 25, 60))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 180, 220)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 180)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 70, 150))
                })
            },
            ThemeAccentColors = {Color3.fromRGB(255, 80, 150), Color3.fromRGB(200, 60, 120)},
        }

        do
            local _crimsonBackgrounds = {
                "rbxassetid://132324914333495",
                "rbxassetid://74252111742950",
            }
            local _crimsonBg = _crimsonBackgrounds[math.random(1, #_crimsonBackgrounds)]
            af["Crimson"] = {
                Name = "Crimson",
                Accent = Color3.fromRGB(220, 30, 60),
                AcrylicMain = Color3.fromRGB(30, 6, 9),
                AcrylicBorder = Color3.fromRGB(120, 15, 35),
                AcrylicGradient = ColorSequence.new(Color3.fromRGB(150, 15, 30), Color3.fromRGB(20, 5, 10)),
                AcrylicNoise = 0.9,
                TitleBarLine = Color3.fromRGB(180, 20, 45),
                Tab = Color3.fromRGB(16, 10, 16),
                Element = Color3.fromRGB(14, 8, 14),
                ElementBorder = Color3.fromRGB(100, 10, 25),
                InElementBorder = Color3.fromRGB(200, 25, 55),
                ElementTransparency = 0.84,
                ToggleSlider = Color3.fromRGB(40, 10, 18),
                ToggleToggled = Color3.fromRGB(220, 30, 60),
                SliderRail = Color3.fromRGB(40, 10, 18),
                CheckboxUnchecked = Color3.fromRGB(40, 10, 18),
                CheckboxChecked = Color3.fromRGB(220, 30, 60),
                CheckboxCheck = Color3.fromRGB(220, 30, 60),
                ProgressBarRail = Color3.fromRGB(40, 10, 18),
                ProgressBarFill = Color3.fromRGB(220, 30, 60),
                DropdownFrame = Color3.fromRGB(12, 6, 12),
                DropdownHolder = Color3.fromRGB(6, 4, 8),
                DropdownBorder = Color3.fromRGB(100, 10, 25),
                DropdownOption = Color3.fromRGB(18, 10, 18),
                Keybind = Color3.fromRGB(18, 10, 18),
                Input = Color3.fromRGB(10, 6, 10),
                InputFocused = Color3.fromRGB(6, 3, 6),
                InputIndicator = Color3.fromRGB(200, 25, 55),
                Dialog = Color3.fromRGB(8, 5, 10),
                DialogHolder = Color3.fromRGB(5, 3, 7),
                DialogHolderLine = Color3.fromRGB(90, 10, 22),
                DialogButton = Color3.fromRGB(14, 8, 14),
                DialogButtonBorder = Color3.fromRGB(100, 10, 25),
                DialogBorder = Color3.fromRGB(100, 10, 25),
                DialogInput = Color3.fromRGB(10, 6, 10),
                DialogInputLine = Color3.fromRGB(200, 25, 55),
                Text = Color3.fromRGB(255, 235, 240),
                SubText = Color3.fromRGB(180, 100, 115),
                Hover = Color3.fromRGB(50, 12, 22),
                HoverChange = 0.05,
                Background = _crimsonBg,
                BackgroundTransparency = 0.15,
                ViewportBackground = Color3.fromRGB(10, 5, 8),
                ViewportBackgroundImages = true,
                DropdownOutsideWindowBackground = Color3.fromRGB(8, 4, 7),
                DropdownOutsideWindowBackgroundImages = true,
                ShineEnabled = true,
                Shine = {
                    Speed = 0.4,
                    RotationSpeed = 20,
                    ColorSequence = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 5, 20)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 30, 60)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 5, 20)),
                    }),
                },
                StrokeShine = true,
                StrokeDark = Color3.fromRGB(70, 5, 18),
                ButtonGradient = {
                    Background = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 5, 15)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 3, 8)),
                    }),
                    Stroke = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 20, 45)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 30, 60)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 20, 45)),
                    }),
                },
                ThemeAccentColors = {Color3.fromRGB(220, 30, 60), Color3.fromRGB(120, 15, 35)},
            }
        end

        af["Gold"] = {
            Name = "Gold",
            Accent = Color3.fromRGB(255, 200, 90),
            AcrylicMain = Color3.fromRGB(35, 27, 12),
            AcrylicBorder = Color3.fromRGB(120, 90, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(70, 55, 20), Color3.fromRGB(20, 15, 5)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(180, 140, 60),
            Tab = Color3.fromRGB(80, 65, 30),
            Element = Color3.fromRGB(70, 55, 25),
            ElementBorder = Color3.fromRGB(120, 90, 30),
            InElementBorder = Color3.fromRGB(80, 60, 25),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(255, 200, 90),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(120, 90, 30),
            CheckboxUnchecked = Color3.fromRGB(120, 90, 30),
            CheckboxChecked = Color3.fromRGB(255, 200, 90),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(120, 90, 30),
            ProgressBarFill = Color3.fromRGB(255, 200, 90),
            DropdownFrame = Color3.fromRGB(50, 40, 20),
            DropdownHolder = Color3.fromRGB(35, 25, 10),
            DropdownBorder = Color3.fromRGB(120, 90, 30),
            DropdownOption = Color3.fromRGB(255, 200, 90),
            Keybind = Color3.fromRGB(70, 55, 25),
            Input = Color3.fromRGB(45, 35, 15),
            InputFocused = Color3.fromRGB(25, 20, 10),
            InputIndicator = Color3.fromRGB(255, 220, 140),
            Dialog = Color3.fromRGB(45, 35, 15),
            DialogHolder = Color3.fromRGB(30, 20, 10),
            DialogHolderLine = Color3.fromRGB(25, 18, 8),
            DialogButton = Color3.fromRGB(45, 35, 15),
            DialogButtonBorder = Color3.fromRGB(120, 90, 30),
            DialogBorder = Color3.fromRGB(120, 90, 30),
            DialogInput = Color3.fromRGB(60, 45, 20),
            DialogInputLine = Color3.fromRGB(255, 220, 140),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(255, 200, 90),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 30, 10)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 210, 120)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 30, 10))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(120, 90, 30),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 210, 120)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 40, 10))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 90, 30)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 220, 140)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 90, 30))
                    }
                )
            },
            ThemeAccentColors = {Color3.fromRGB(255, 200, 90), Color3.fromRGB(120, 90, 30)},
        }

        return af
    end,
    [48] = function() --[[ Amethyst ]]
        local aa, ab, ac, ad, ae = b(48)
        return {
            Name = "Deep Violet",
            Accent = Color3.fromRGB(97, 62, 167),
            AcrylicMain = Color3.fromRGB(20, 20, 20),
            AcrylicBorder = Color3.fromRGB(110, 90, 130),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 57, 139), Color3.fromRGB(40, 25, 65)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(95, 75, 110),
            Tab = Color3.fromRGB(160, 140, 180),
            Element = Color3.fromRGB(140, 120, 160),
            ElementBorder = Color3.fromRGB(60, 50, 70),
            InElementBorder = Color3.fromRGB(100, 90, 110),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(140, 120, 160),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(140, 120, 160),
            CheckboxUnchecked = Color3.fromRGB(140, 120, 160),
            CheckboxChecked = Color3.fromRGB(97, 62, 167),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(140, 120, 160),
            ProgressBarFill = Color3.fromRGB(97, 62, 167),
            DropdownFrame = Color3.fromRGB(170, 160, 200),
            DropdownHolder = Color3.fromRGB(60, 45, 80),
            DropdownBorder = Color3.fromRGB(50, 40, 65),
            DropdownOption = Color3.fromRGB(140, 120, 160),
            Keybind = Color3.fromRGB(140, 120, 160),
            Input = Color3.fromRGB(140, 120, 160),
            InputFocused = Color3.fromRGB(20, 10, 30),
            InputIndicator = Color3.fromRGB(170, 150, 190),
            Dialog = Color3.fromRGB(60, 45, 80),
            DialogHolder = Color3.fromRGB(45, 30, 65),
            DialogHolderLine = Color3.fromRGB(40, 25, 60),
            DialogButton = Color3.fromRGB(60, 45, 80),
            DialogButtonBorder = Color3.fromRGB(95, 80, 110),
            DialogBorder = Color3.fromRGB(85, 70, 100),
            DialogInput = Color3.fromRGB(70, 55, 85),
            DialogInputLine = Color3.fromRGB(175, 160, 190),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(140, 120, 160),
            HoverChange = 0.04,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 25, 65)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 120, 220)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 65))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(110, 90, 130),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 25, 65)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 120, 220))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 25, 65)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 120, 220)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 65))
                    }
                )
            },
            Background = "rbxassetid://136310484943077",
            BackgroundTransparency = 0.15,
        }
    end,
    [49] = function() --[[ Dark ]]
        local aa, ab, ac, ad, ae = b(49)
        return {
            Name = "Ash Gray",
            Accent = Color3.fromRGB(150, 150, 150),
            AcrylicMain = Color3.fromRGB(60, 60, 60),
            AcrylicBorder = Color3.fromRGB(90, 90, 90),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(75, 75, 75), Color3.fromRGB(35, 35, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(75, 75, 75),
            Tab = Color3.fromRGB(120, 120, 120),
            Element = Color3.fromRGB(120, 120, 120),
            ElementBorder = Color3.fromRGB(35, 35, 35),
            InElementBorder = Color3.fromRGB(90, 90, 90),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(120, 120, 120),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(120, 120, 120),
            CheckboxUnchecked = Color3.fromRGB(120, 120, 120),
            CheckboxChecked = Color3.fromRGB(150, 150, 150),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(120, 120, 120),
            ProgressBarFill = Color3.fromRGB(150, 150, 150),
            DropdownFrame = Color3.fromRGB(160, 160, 160),
            DropdownHolder = Color3.fromRGB(45, 45, 45),
            DropdownBorder = Color3.fromRGB(35, 35, 35),
            DropdownOption = Color3.fromRGB(120, 120, 120),
            Keybind = Color3.fromRGB(120, 120, 120),
            Input = Color3.fromRGB(160, 160, 160),
            InputFocused = Color3.fromRGB(10, 10, 10),
            InputIndicator = Color3.fromRGB(150, 150, 150),
            Dialog = Color3.fromRGB(45, 45, 45),
            DialogHolder = Color3.fromRGB(35, 35, 35),
            DialogHolderLine = Color3.fromRGB(30, 30, 30),
            DialogButton = Color3.fromRGB(45, 45, 45),
            DialogButtonBorder = Color3.fromRGB(80, 80, 80),
            DialogBorder = Color3.fromRGB(70, 70, 70),
            DialogInput = Color3.fromRGB(55, 55, 55),
            DialogInputLine = Color3.fromRGB(160, 160, 160),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(120, 120, 120),
            HoverChange = 0.07,
            ShineEnabled = true,
            Shine = {
                Speed = 0.4,
                RotationSpeed = 20,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 40)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(105, 105, 105)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 40, 40))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(90, 90, 90),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 120, 120)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 60, 60))
                    }
                )
            },
            ViewportBackground = Color3.fromRGB(15, 15, 20),
            ViewportBackgroundImages = true,
            DropdownOutsideWindowBackground = Color3.fromRGB(35, 35, 35),
            DropdownOutsideWindowBackgroundImages = true,
            ElementBorderThickness = 1,
            DropdownBorderThickness = 1,
            DiscordJoinButton = Color3.fromRGB(88, 101, 242),
            WarningNotifyColor = Color3.fromRGB(255, 185, 30),
            SuccessNotifyColor = Color3.fromRGB(50, 205, 80),
            ErrorNotifyColor = Color3.fromRGB(220, 55, 55),
            InfoNotifyColor = Color3.fromRGB(76, 194, 255),
        }
    end,
    [50] = function() --[[ Darker ]]
        local aa, ab, ac, ad, ae = b(50)
        return {
            Name = "Charcoal",
            Accent = Color3.fromRGB(102, 102, 102),
            AcrylicMain = Color3.fromRGB(20, 20, 20),
            AcrylicBorder = Color3.fromRGB(60, 60, 60),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(30, 30, 30), Color3.fromRGB(10, 10, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(70, 70, 70),
            Tab = Color3.fromRGB(40, 40, 40),
            Element = Color3.fromRGB(35, 35, 35),
            ElementBorder = Color3.fromRGB(60, 60, 60),
            InElementBorder = Color3.fromRGB(45, 45, 45),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(90, 160, 255),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(60, 60, 60),
            CheckboxUnchecked = Color3.fromRGB(60, 60, 60),
            CheckboxChecked = Color3.fromRGB(102, 102, 102),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(60, 60, 60),
            ProgressBarFill = Color3.fromRGB(102, 102, 102),
            DropdownFrame = Color3.fromRGB(30, 30, 30),
            DropdownHolder = Color3.fromRGB(20, 20, 20),
            DropdownBorder = Color3.fromRGB(60, 60, 60),
            DropdownOption = Color3.fromRGB(90, 160, 255),
            Keybind = Color3.fromRGB(35, 35, 35),
            Input = Color3.fromRGB(25, 25, 25),
            InputFocused = Color3.fromRGB(15, 15, 15),
            InputIndicator = Color3.fromRGB(120, 180, 255),
            Dialog = Color3.fromRGB(25, 25, 25),
            DialogHolder = Color3.fromRGB(20, 20, 20),
            DialogHolderLine = Color3.fromRGB(15, 15, 15),
            DialogButton = Color3.fromRGB(25, 25, 25),
            DialogButtonBorder = Color3.fromRGB(60, 60, 60),
            DialogBorder = Color3.fromRGB(60, 60, 60),
            DialogInput = Color3.fromRGB(30, 30, 30),
            DialogInputLine = Color3.fromRGB(120, 180, 255),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(90, 160, 255),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.45,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 150, 150)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(60, 60, 60),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(175, 175, 175))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 180, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
                    }
                )
            }
        }
    end,
    [51] = function() --[[ Light ]]
        local aa, ab, ac, ad, ae = b(51)
        return {
            Name = "Pearl White",
            Accent = Color3.fromRGB(214, 214, 214),
            AcrylicMain = Color3.fromRGB(240, 240, 240),
            AcrylicBorder = Color3.fromRGB(200, 200, 200),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(220, 220, 220)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(200, 200, 200),
            Tab = Color3.fromRGB(230, 230, 230),
            Element = Color3.fromRGB(220, 220, 220),
            ElementBorder = Color3.fromRGB(200, 200, 200),
            InElementBorder = Color3.fromRGB(210, 210, 210),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(60, 160, 255),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(200, 200, 200),
            CheckboxUnchecked = Color3.fromRGB(200, 200, 200),
            CheckboxChecked = Color3.fromRGB(214, 214, 214),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(200, 200, 200),
            ProgressBarFill = Color3.fromRGB(214, 214, 214),
            DropdownFrame = Color3.fromRGB(230, 230, 230),
            DropdownHolder = Color3.fromRGB(220, 220, 220),
            DropdownBorder = Color3.fromRGB(200, 200, 200),
            DropdownOption = Color3.fromRGB(60, 160, 255),
            Keybind = Color3.fromRGB(220, 220, 220),
            Input = Color3.fromRGB(230, 230, 230),
            InputFocused = Color3.fromRGB(210, 210, 210),
            InputIndicator = Color3.fromRGB(60, 160, 255),
            Dialog = Color3.fromRGB(230, 230, 230),
            DialogHolder = Color3.fromRGB(220, 220, 220),
            DialogHolderLine = Color3.fromRGB(210, 210, 210),
            DialogButton = Color3.fromRGB(230, 230, 230),
            DialogButtonBorder = Color3.fromRGB(200, 200, 200),
            DialogBorder = Color3.fromRGB(200, 200, 200),
            DialogInput = Color3.fromRGB(240, 240, 240),
            DialogInputLine = Color3.fromRGB(60, 160, 255),
            Text = Color3.fromRGB(20, 20, 20),
            SubText = Color3.fromRGB(90, 90, 90),
            Hover = Color3.fromRGB(60, 160, 255),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.4,
                RotationSpeed = 20,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(200, 200, 200),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 180, 180))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 160, 160)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 160, 160))
                    }
                )
            }
        }
    end,
    [52] = function() --[[ BloodRed ]]
        local aa, ab, ac, ad, ae = b(52)
        return {
            Name = "Blood Red",
            Accent = Color3.fromRGB(180, 10, 20),
            AcrylicMain = Color3.fromRGB(35, 8, 10),
            AcrylicBorder = Color3.fromRGB(140, 15, 25),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(130, 12, 20), Color3.fromRGB(28, 5, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(155, 18, 28),
            Tab = Color3.fromRGB(145, 15, 25),
            Element = Color3.fromRGB(130, 12, 22),
            ElementBorder = Color3.fromRGB(85, 8, 14),
            InElementBorder = Color3.fromRGB(150, 18, 28),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(180, 10, 20),
            ToggleToggled = Color3.fromRGB(255, 230, 230),
            SliderRail = Color3.fromRGB(145, 15, 25),
            CheckboxUnchecked = Color3.fromRGB(145, 15, 25),
            CheckboxChecked = Color3.fromRGB(180, 10, 20),
            CheckboxCheck = Color3.fromRGB(255, 230, 230),
            ProgressBarRail = Color3.fromRGB(145, 15, 25),
            ProgressBarFill = Color3.fromRGB(180, 10, 20),
            DropdownFrame = Color3.fromRGB(115, 10, 18),
            DropdownHolder = Color3.fromRGB(28, 5, 8),
            DropdownBorder = Color3.fromRGB(80, 7, 13),
            DropdownOption = Color3.fromRGB(180, 10, 20),
            Keybind = Color3.fromRGB(130, 12, 22),
            Input = Color3.fromRGB(115, 10, 18),
            InputFocused = Color3.fromRGB(18, 3, 5),
            InputIndicator = Color3.fromRGB(220, 50, 70),
            Dialog = Color3.fromRGB(28, 5, 8),
            DialogHolder = Color3.fromRGB(18, 3, 5),
            DialogHolderLine = Color3.fromRGB(12, 2, 3),
            DialogButton = Color3.fromRGB(28, 5, 8),
            DialogButtonBorder = Color3.fromRGB(145, 15, 25),
            DialogBorder = Color3.fromRGB(85, 8, 14),
            DialogInput = Color3.fromRGB(50, 10, 14),
            DialogInputLine = Color3.fromRGB(220, 50, 70),
            Text = Color3.fromRGB(255, 230, 230),
            SubText = Color3.fromRGB(210, 175, 178),
            Hover = Color3.fromRGB(180, 10, 20),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(71, 0, 0)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(159, 0, 0)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(145, 15, 25),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(141, 0, 0)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(71, 0, 0)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(159, 0, 0)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(71, 0, 0))
                    }
                )
            }
        }
    end,
    [53] = function() --[[ Neon ]]
        local aa, ab, ac, ad, ae = b(53)
        return {
            Name = "Neon Purple",
            Accent = Color3.fromRGB(180, 0, 255),
            AcrylicMain = Color3.fromRGB(5, 0, 15),
            AcrylicBorder = Color3.fromRGB(140, 0, 255),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(5, 0, 15), Color3.fromRGB(45, 0, 160)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 0, 255),
            Tab = Color3.fromRGB(130, 0, 230),
            Element = Color3.fromRGB(120, 0, 210),
            ElementBorder = Color3.fromRGB(50, 0, 100),
            InElementBorder = Color3.fromRGB(155, 0, 245),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(180, 0, 255),
            ToggleToggled = Color3.fromRGB(15, 0, 40),
            SliderRail = Color3.fromRGB(130, 0, 230),
            CheckboxUnchecked = Color3.fromRGB(130, 0, 230),
            CheckboxChecked = Color3.fromRGB(180, 0, 255),
            CheckboxCheck = Color3.fromRGB(15, 0, 40),
            ProgressBarRail = Color3.fromRGB(130, 0, 230),
            ProgressBarFill = Color3.fromRGB(180, 0, 255),
            DropdownFrame = Color3.fromRGB(255, 255, 255),
            DropdownHolder = Color3.fromRGB(10, 0, 30),
            DropdownBorder = Color3.fromRGB(50, 0, 140),
            DropdownOption = Color3.fromRGB(180, 0, 255),
            Keybind = Color3.fromRGB(120, 0, 210),
            Input = Color3.fromRGB(255, 255, 255),
            InputFocused = Color3.fromRGB(20, 0, 50),
            InputIndicator = Color3.fromRGB(200, 0, 255),
            Dialog = Color3.fromRGB(10, 0, 30),
            DialogHolder = Color3.fromRGB(5, 0, 20),
            DialogHolderLine = Color3.fromRGB(3, 0, 12),
            DialogButton = Color3.fromRGB(10, 0, 30),
            DialogButtonBorder = Color3.fromRGB(140, 0, 255),
            DialogBorder = Color3.fromRGB(50, 0, 120),
            DialogInput = Color3.fromRGB(25, 0, 60),
            DialogInputLine = Color3.fromRGB(200, 0, 255),
            Text = Color3.fromRGB(252, 245, 255),
            SubText = Color3.fromRGB(210, 185, 255),
            Hover = Color3.fromRGB(150, 0, 255),
            HoverChange = 0.07,
            ShineEnabled = true,
            Shine = {
                Speed = 0.4,
                RotationSpeed = 20,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 5, 137)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(171, 32, 253)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 5, 137))
                    }
                )
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(60, 0, 150),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 18, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 5, 137))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 18, 255)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(171, 32, 253)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 18, 255))
                    }
                )
            }
        }
    end,
    [54] = function() --[[ Ocean ]]
        local aa, ab, ac, ad, ae = b(54)
        return {
            Name = "Deep Ocean",
            Accent = Color3.fromRGB(0, 150, 200),
            AcrylicMain = Color3.fromRGB(15, 30, 45),
            AcrylicBorder = Color3.fromRGB(0, 100, 150),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 80, 120), Color3.fromRGB(10, 25, 40)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(0, 120, 180),
            Tab = Color3.fromRGB(0, 100, 150),
            Element = Color3.fromRGB(0, 90, 135),
            ElementBorder = Color3.fromRGB(0, 70, 105),
            InElementBorder = Color3.fromRGB(0, 110, 165),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(0, 150, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(0, 100, 150),
            CheckboxUnchecked = Color3.fromRGB(0, 100, 150),
            CheckboxChecked = Color3.fromRGB(0, 150, 200),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(0, 100, 150),
            ProgressBarFill = Color3.fromRGB(0, 150, 200),
            DropdownFrame = Color3.fromRGB(0, 80, 120),
            DropdownHolder = Color3.fromRGB(10, 25, 40),
            DropdownBorder = Color3.fromRGB(0, 70, 105),
            DropdownOption = Color3.fromRGB(0, 150, 200),
            Keybind = Color3.fromRGB(0, 90, 135),
            Input = Color3.fromRGB(0, 80, 120),
            InputFocused = Color3.fromRGB(5, 20, 35),
            InputIndicator = Color3.fromRGB(0, 200, 255),
            Dialog = Color3.fromRGB(10, 25, 40),
            DialogHolder = Color3.fromRGB(5, 15, 25),
            DialogHolderLine = Color3.fromRGB(0, 10, 20),
            DialogButton = Color3.fromRGB(10, 25, 40),
            DialogButtonBorder = Color3.fromRGB(0, 100, 150),
            DialogBorder = Color3.fromRGB(0, 70, 105),
            DialogInput = Color3.fromRGB(15, 35, 55),
            DialogInputLine = Color3.fromRGB(0, 200, 255),
            Text = Color3.fromRGB(240, 248, 255),
            SubText = Color3.fromRGB(180, 210, 230),
            Hover = Color3.fromRGB(0, 150, 200),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 90)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90))
                })
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(0, 100, 150),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 180)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 150)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 150))
                })
            }
        }
    end,
    [55] = function() --[[ Midnight ]]
        local aa, ab, ac, ad, ae = b(55)
        return {
            Name = "Midnight Blue",
            Accent = Color3.fromRGB(100, 80, 200),
            AcrylicMain = Color3.fromRGB(10, 8, 25),
            AcrylicBorder = Color3.fromRGB(60, 45, 140),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 35, 120), Color3.fromRGB(8, 5, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 60, 170),
            Tab = Color3.fromRGB(60, 45, 140),
            Element = Color3.fromRGB(55, 40, 125),
            ElementBorder = Color3.fromRGB(40, 30, 90),
            InElementBorder = Color3.fromRGB(70, 55, 155),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 80, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 45, 140),
            CheckboxUnchecked = Color3.fromRGB(60, 45, 140),
            CheckboxChecked = Color3.fromRGB(100, 80, 200),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(60, 45, 140),
            ProgressBarFill = Color3.fromRGB(100, 80, 200),
            DropdownFrame = Color3.fromRGB(45, 30, 110),
            DropdownHolder = Color3.fromRGB(8, 5, 20),
            DropdownBorder = Color3.fromRGB(35, 25, 85),
            DropdownOption = Color3.fromRGB(100, 80, 200),
            Keybind = Color3.fromRGB(55, 40, 125),
            Input = Color3.fromRGB(45, 30, 110),
            InputFocused = Color3.fromRGB(5, 3, 15),
            InputIndicator = Color3.fromRGB(140, 120, 240),
            Dialog = Color3.fromRGB(8, 5, 20),
            DialogHolder = Color3.fromRGB(5, 3, 15),
            DialogHolderLine = Color3.fromRGB(3, 2, 10),
            DialogButton = Color3.fromRGB(8, 5, 20),
            DialogButtonBorder = Color3.fromRGB(60, 45, 140),
            DialogBorder = Color3.fromRGB(40, 30, 90),
            DialogInput = Color3.fromRGB(15, 10, 35),
            DialogInputLine = Color3.fromRGB(140, 120, 240),
            Text = Color3.fromRGB(220, 220, 255),
            SubText = Color3.fromRGB(170, 170, 210),
            Hover = Color3.fromRGB(100, 80, 200),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 15, 60)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60))
                })
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(60, 45, 140),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 60, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 45, 140)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 45, 140))
                })
            }
        }
    end,
    [56] = function() --[[ Sapphire ]]
        local aa, ab, ac, ad, ae = b(56)
        return {
            Name = "Royal Blue",
            Accent = Color3.fromRGB(15, 82, 186),
            AcrylicMain = Color3.fromRGB(10, 25, 50),
            AcrylicBorder = Color3.fromRGB(10, 65, 150),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(12, 70, 160), Color3.fromRGB(8, 20, 45)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(13, 75, 170),
            Tab = Color3.fromRGB(10, 65, 150),
            Element = Color3.fromRGB(9, 58, 135),
            ElementBorder = Color3.fromRGB(6, 40, 95),
            InElementBorder = Color3.fromRGB(11, 70, 160),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(15, 82, 186),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(10, 65, 150),
            CheckboxUnchecked = Color3.fromRGB(10, 65, 150),
            CheckboxChecked = Color3.fromRGB(15, 82, 186),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(10, 65, 150),
            ProgressBarFill = Color3.fromRGB(15, 82, 186),
            DropdownFrame = Color3.fromRGB(8, 50, 120),
            DropdownHolder = Color3.fromRGB(8, 20, 45),
            DropdownBorder = Color3.fromRGB(6, 40, 95),
            DropdownOption = Color3.fromRGB(15, 82, 186),
            Keybind = Color3.fromRGB(9, 58, 135),
            Input = Color3.fromRGB(8, 50, 120),
            InputFocused = Color3.fromRGB(5, 15, 35),
            InputIndicator = Color3.fromRGB(50, 120, 230),
            Dialog = Color3.fromRGB(8, 20, 45),
            DialogHolder = Color3.fromRGB(5, 15, 35),
            DialogHolderLine = Color3.fromRGB(3, 10, 25),
            DialogButton = Color3.fromRGB(8, 20, 45),
            DialogButtonBorder = Color3.fromRGB(10, 65, 150),
            DialogBorder = Color3.fromRGB(6, 40, 95),
            DialogInput = Color3.fromRGB(12, 30, 65),
            DialogInputLine = Color3.fromRGB(50, 120, 230),
            Text = Color3.fromRGB(220, 235, 255),
            SubText = Color3.fromRGB(170, 190, 220),
            Hover = Color3.fromRGB(15, 82, 186),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 85)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85))
                })
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(10, 65, 150),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 75, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 65, 150)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 65, 150))
                })
            }
        }
    end,
    [57] = function() --[[ Galaxy ]]
        local aa, ab, ac, ad, ae = b(57)
        return {
            Name = "Galaxy Purple",
            Accent = Color3.fromRGB(160, 60, 220),
            AcrylicMain = Color3.fromRGB(12, 5, 25),
            AcrylicBorder = Color3.fromRGB(120, 40, 185),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(110, 35, 175), Color3.fromRGB(8, 3, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(130, 50, 195),
            Tab = Color3.fromRGB(125, 45, 190),
            Element = Color3.fromRGB(112, 40, 170),
            ElementBorder = Color3.fromRGB(75, 25, 115),
            InElementBorder = Color3.fromRGB(130, 50, 195),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(160, 60, 220),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(125, 45, 190),
            CheckboxUnchecked = Color3.fromRGB(125, 45, 190),
            CheckboxChecked = Color3.fromRGB(160, 60, 220),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(125, 45, 190),
            ProgressBarFill = Color3.fromRGB(160, 60, 220),
            DropdownFrame = Color3.fromRGB(100, 35, 152),
            DropdownHolder = Color3.fromRGB(8, 3, 20),
            DropdownBorder = Color3.fromRGB(72, 24, 108),
            DropdownOption = Color3.fromRGB(160, 60, 220),
            Keybind = Color3.fromRGB(112, 40, 170),
            Input = Color3.fromRGB(100, 35, 152),
            InputFocused = Color3.fromRGB(5, 2, 14),
            InputIndicator = Color3.fromRGB(195, 100, 255),
            Dialog = Color3.fromRGB(8, 3, 20),
            DialogHolder = Color3.fromRGB(5, 2, 14),
            DialogHolderLine = Color3.fromRGB(3, 1, 9),
            DialogButton = Color3.fromRGB(8, 3, 20),
            DialogButtonBorder = Color3.fromRGB(125, 45, 190),
            DialogBorder = Color3.fromRGB(75, 25, 115),
            DialogInput = Color3.fromRGB(22, 10, 50),
            DialogInputLine = Color3.fromRGB(195, 100, 255),
            Text = Color3.fromRGB(242, 232, 255),
            SubText = Color3.fromRGB(200, 178, 228),
            Hover = Color3.fromRGB(160, 60, 220),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 18, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)) }) },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(125, 45, 190),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 50, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 45, 190)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 45, 190)) }) }
        }
    end,

    [58] = function() --[[ Cosmic ]]
        local aa, ab, ac, ad, ae = b(58)
        return {
            Name = "Cosmic Violet",
            Accent = Color3.fromRGB(80, 60, 140),
            AcrylicMain = Color3.fromRGB(12, 10, 22),
            AcrylicBorder = Color3.fromRGB(50, 35, 110),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(45, 30, 100), Color3.fromRGB(8, 6, 16)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(60, 42, 120),
            Tab = Color3.fromRGB(55, 38, 115),
            Element = Color3.fromRGB(50, 34, 104),
            ElementBorder = Color3.fromRGB(34, 23, 70),
            InElementBorder = Color3.fromRGB(60, 42, 120),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 60, 140),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(55, 38, 115),
            CheckboxUnchecked = Color3.fromRGB(55, 38, 115),
            CheckboxChecked = Color3.fromRGB(80, 60, 140),
            CheckboxCheck = Color3.fromRGB(255, 255, 255),
            ProgressBarRail = Color3.fromRGB(55, 38, 115),
            ProgressBarFill = Color3.fromRGB(80, 60, 140),
            DropdownFrame = Color3.fromRGB(44, 30, 92),
            DropdownHolder = Color3.fromRGB(8, 6, 16),
            DropdownBorder = Color3.fromRGB(32, 22, 68),
            DropdownOption = Color3.fromRGB(80, 60, 140),
            Keybind = Color3.fromRGB(50, 34, 104),
            Input = Color3.fromRGB(44, 30, 92),
            InputFocused = Color3.fromRGB(5, 3, 10),
            InputIndicator = Color3.fromRGB(115, 90, 175),
            Dialog = Color3.fromRGB(8, 6, 16),
            DialogHolder = Color3.fromRGB(5, 3, 10),
            DialogHolderLine = Color3.fromRGB(3, 2, 6),
            DialogButton = Color3.fromRGB(8, 6, 16),
            DialogButtonBorder = Color3.fromRGB(55, 38, 115),
            DialogBorder = Color3.fromRGB(34, 23, 70),
            DialogInput = Color3.fromRGB(22, 16, 45),
            DialogInputLine = Color3.fromRGB(115, 90, 175),
            Text = Color3.fromRGB(230, 225, 245),
            SubText = Color3.fromRGB(185, 175, 210),
            Hover = Color3.fromRGB(80, 60, 140),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 25, 65)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 90, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 25, 65)) }) },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(55, 38, 115),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 42, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 25, 65)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 38, 115)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 90, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 38, 115)) }) }
        }
    end,}

do local ab,ac,ad,ae,af,ag,ah,aj,c,e,f,g,h,i,j,k=task,setmetatable,error,newproxy,getmetatable,next,table,unpack,coroutine,script,type,require,pcall,getfenv,setfenv,rawget local l,m,n,o,p,s,t,u,v,w,x=ah.insert,ah.remove,ah.freeze or function(l)return l end,ab and ab.defer or function(l,...)local m=c.create(l)c.resume(m,...)return m end,'0.0.0-venv',{},{},{},{},{},{}local y,z={GetChildren=function(y)local z,A=x[y],{}for B in ag,z do l(A,B)end return A end,FindFirstChild=function(y,z)if not z then ad('Argument 1 missing or nil',2)end for A in ag,x[y]do if A.Name==z then return A end end return end,GetFullName=function(y)local z,A=y.Name,y.Parent while A do z=A.Name..'.'..z A=A.Parent end return'VirtualEnv.'..z end},{}for A,B in ag,y do z[A]=function(C,...)if not x[C]then ad("Expected ':' not '.' calling member function "..A,1)end return B(C,...)end end local C=function(C,D,E)local F,G,H,I,J=ac({},{__mode='k'}),function(F)ad(F..' is not a valid (virtual) member of '..C..' "'..D..'"',1)end,function(F)ad('Unable to assign (virtual) property '..F..'. Property is read only',1)end,(ae(true))local K=af(I)K.__index=function(L,M)if M=='ClassName'then return C elseif M=='Name'then return D elseif M=='Parent'then return E elseif C=='StringValue'and M=='Value'then return J else local N=z[M]if N then return N end end for N in ag,F do if N.Name==M then return N end end G(M)end K.__newindex=function(L,M,N)if M=='ClassName'then H(M)elseif M=='Name'then D=N elseif M=='Parent'then if N==I then return end if E~=nil then x[E][I]=nil end E=N if N~=nil then x[N][I]=true end elseif C=='StringValue'and M=='Value'then J=N else G(M)end end K.__tostring=function()return D end x[I]=F if E~=nil then x[E][I]=true end return I end local function D(E,F)local G,H,I,J=E[1],E[2],E[3],E[4]local K=m(I,1)local L=C(H,K,F)s[G]=L if I then for M,N in ag,I do L[M]=N end end if J then for M,N in ag,J do D(N,L)end end return L end local E={}for F,G in ag,a do l(E,D(G))end for H,I in ag,aa do local J=s[H]t[J]=I local K=J.ClassName if K=='LocalScript'or K=='Script'then l(v,J)end end local J=function(J)local K,L=J.ClassName,u[J]if L and K=='ModuleScript'then return aj(L)end local M=t[J]if not M then return end if K=='LocalScript'or K=='Script'then M()return else local N={M()}u[J]=N return aj(N)end end function b(K)local L=s[K]local M=t[L]if not M then return end local N,O,P,Q,R,S,T=false,n{Version=p,Script=e,Shared=w,GetScript=function()return e end,GetShared=function()return w end},L,function(N,...)if x[N]and N.ClassName=='ModuleScript'and t[N]then return J(N)end return g(N,...)end local U,V=function(U,...)if not N then T()end if f(U)=='number'and U>=0 then if U==0 then return S else U=U+1 local V,W=h(i,U)if V and W==R then return S end end end return i(U,...)end,function(U,V,...)if not N then T()end if f(U)=='number'and U>=0 then if U==0 then return j(S,V)else U=U+1 local W,X=h(i,U)if W and X==R then return j(S,V)end end end return j(U,V,...)end function T()R=i(0)local W={maui=O,script=P,require=Q,getfenv=U,setfenv=V}S=ac({},{__index=function(X,Y)local Z=k(S,Y)if Z~=nil then return Z end local _=W[Y]if _~=nil then return _ end return R[Y]end})j(M,S)N=true end return O,P,Q,U,V end for K,L in ag,v do o(J,L)end do local M for N,O in ag,E do if O.ClassName=='ModuleScript'and O.Name=='MainModule'then M=O break end end if M then return J(M)end end end
