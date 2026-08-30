local ImportGlobals
local ModuleTree = {
    {
        1,
        "ModuleScript",
        {"MainModule"},
        {
            {18, "ModuleScript", {"Creator"}},
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
                    {71, "ModuleScript", {"Rose"}},
                    {72, "ModuleScript", {"Neon Cyber"}},
                    {73, "ModuleScript", {"Arctic Frost"}},
                    {74, "ModuleScript", {"Cotton Candy"}},
                    {76, "ModuleScript", {"Cyanic"}},
                    {77, "ModuleScript", {"Amber Glow"}},
                    {78, "ModuleScript", {"Bloomings"}},
                    {79, "ModuleScript", {"Crimson"}},
                    {80, "ModuleScript", {"Gold"}},
                    {81, "ModuleScript", {"Lavender Pink"}}
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

local ClosureBindings = {
    function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(1)
        local Lighting, RunService, LocalPlayer, UserInputService, TweenService, Camera =
            game:GetService("Lighting"),
            game:GetService("RunService"),
            game:GetService("Players").LocalPlayer,
            game:GetService("UserInputService"),
            game:GetService("TweenService"),
            game:GetService("Workspace").CurrentCamera
        local Mouse, Root = LocalPlayer:GetMouse(), script
        local Creator, ElementsTable, Acrylic, Components = require(Root.Creator), require(Root.Elements), require(Root.Acrylic), Root.Components
        local NotificationModule = require(Components.Notification)
        local New = Creator.New
        local ProtectGui = protectgui or (syn and syn.protect_gui) or function() end
        local GUI = New("ScreenGui", {Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui")})
        ProtectGui(GUI)
        local ScrollGUI = New("ScreenGui", {Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui"), DisplayOrder = 1, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
        ProtectGui(ScrollGUI)
        local PopupGUI = New("ScreenGui", {Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui"), DisplayOrder = 999999, ZIndexBehavior = Enum.ZIndexBehavior.Sibling})
        ProtectGui(PopupGUI)
        NotificationModule:Init(PopupGUI)
        local Library = {
            Version = "1.6.0",
            Name = "FluentPro",
            OpenFrames = {},
            Options = {},
            Themes = require(Root.Themes).Names,
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
            GUI = GUI,
            ScrollGUI = ScrollGUI,
            PopupGUI = PopupGUI,
            ErrorHandler = nil,
            ShineEnabled = true,
            NotifyInsideWindow = false,
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

        local Animation
        do
            local _state = setmetatable({}, {__mode = "k"})
            Animation = {}

            function Animation.Clear(root)
                if not root then return end
                local st = _state[root]
                if st and st.conn then
                    pcall(function() st.conn:Disconnect() end)
                    st.conn = nil
                end
                _state[root] = nil
            end

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
                st.conn = RunService.RenderStepped:Connect(function(dt)
                    for i = #_gradients, 1, -1 do
                        local obj = _gradients[i]
                        if obj.Parent then
                            local t = (obj:GetAttribute("Shine") or 0) + dt * Speed
                            obj:SetAttribute("Shine", t)
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
                                local t = (obj:GetAttribute("Shine") or 0) + dt * Speed
                                obj:SetAttribute("Shine", t)
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


        function Library.SetErrorHandler(self, handler)
            Library.ErrorHandler = handler
        end
        local er = {}
        er.Tips = {
            {pattern = "attempt to index nil", hint = "Nil value accessed", tip = "Initialize variable before use"},
            {pattern = "attempt to index a nil", hint = "Nil value indexed", tip = "Check if variable exists before indexing"},
            {pattern = "attempt to call nil", hint = "Nil called as function", tip = "Define function before calling"},
            {pattern = "attempt to call a nil", hint = "Missing function", tip = "Function may not be loaded or returned"},
            {pattern = "attempt to index global", hint = "Global is nil", tip = "Declare global variable first"},
            {pattern = "index a nil value", hint = "Nil index access", tip = "Use and/or operator to guard against nil"},
            {pattern = "'end' expected", hint = "Missing 'end'", tip = "Close all blocks with 'end'"},
            {pattern = "expected 'end'", hint = "'end' keyword missing", tip = "Count your if/for/while/function blocks"},
            {pattern = "<eof>", hint = "Unexpected end of file", tip = "Check missing 'end', ')', ']', or '}'"},
            {pattern = "unexpected symbol", hint = "Invalid syntax", tip = "Check code near error line for typos"},
            {pattern = "unexpected symbol near '='", hint = "Invalid assignment", tip = "Check if you meant '==' for comparison"},
            {pattern = "unexpected symbol near 'local'", hint = "Local misplaced", tip = "Local can only be at top level or block start"},
            {pattern = "unexpected symbol near 'function'", hint = "Function syntax error", tip = "Check function declaration syntax"},
            {pattern = "unexpected symbol near 'if'", hint = "If statement error", tip = "Ensure if has then and end"},
            {pattern = "unexpected symbol near 'then'", hint = "Then misplaced", tip = "Then must follow condition"},
            {pattern = "unexpected symbol near 'else'", hint = "Else without if", tip = "Else must be inside if block"},
            {pattern = "unexpected symbol near '}'", hint = "Brace mismatch", tip = "Check opening braces"},
            {pattern = "unexpected symbol near ']'", hint = "Bracket mismatch", tip = "Check opening brackets"},
            {pattern = "unexpected symbol near ')'", hint = "Parenthesis mismatch", tip = "Check opening parentheses"},
            {pattern = "attempt to perform arithmetic", hint = "Math on non-number", tip = "Use tonumber() for conversion"},
            {pattern = "attempt to add", hint = "Addition error", tip = "Both operands must be numbers"},
            {pattern = "attempt to subtract", hint = "Subtraction error", tip = "Both operands must be numbers"},
            {pattern = "attempt to multiply", hint = "Multiplication error", tip = "Both operands must be numbers"},
            {pattern = "attempt to divide", hint = "Division error", tip = "Both operands must be numbers"},
            {pattern = "division by zero", hint = "Divide by zero", tip = "Check denominator is not zero"},
            {pattern = "attempt to concatenate", hint = "Concat on non-string", tip = "Use tostring() before concatenation"},
            {pattern = "attempt to get length", hint = "# on invalid type", tip = "Use # only on strings and tables"},
            {pattern = "attempt to compare", hint = "Compare incompatible types", tip = "Ensure same type comparison"},
            {pattern = "bad argument #1", hint = "First argument invalid", tip = "Check first parameter type"},
            {pattern = "bad argument #2", hint = "Second argument invalid", tip = "Check second parameter type"},
            {pattern = "bad argument #3", hint = "Third argument invalid", tip = "Check third parameter type"},
            {pattern = "bad argument", hint = "Wrong argument type", tip = "Check function parameters"},
            {pattern = "too many arguments", hint = "Excess arguments passed", tip = "Reduce number of arguments"},
            {pattern = "too few arguments", hint = "Missing arguments", tip = "Provide all required parameters"},
            {pattern = "table index is nil", hint = "Nil table key", tip = "Ensure key exists before use"},
            {pattern = "invalid key", hint = "Invalid table key type", tip = "Use string or number keys only"},
            {pattern = "unfinished string", hint = "Unclosed string", tip = "Close string with matching quotes"},
            {pattern = "invalid escape", hint = "Invalid escape character", tip = "Use double backslash or valid escape"},
            {pattern = "is not a valid member of", hint = "Invalid property", tip = "Property doesn't exist on this instance"},
            {pattern = "is not a valid member", hint = "Property not found", tip = "Check instance property name"},
            {pattern = "cannot assign property", hint = "Read-only property", tip = "Property cannot be changed"},
            {pattern = "Parent must be a valid Instance", hint = "Nil parent", tip = "Create parent instance before assigning"},
            {pattern = "Class mismatch", hint = "Wrong instance type", tip = "Expected specific instance class"},
            {pattern = "attempt to yield", hint = "Yield not allowed", tip = "Avoid wait() in callbacks and metamethods"},
            {pattern = "stack overflow", hint = "Infinite recursion", tip = "Add base case to recursive function"},
            {pattern = "Request failed", hint = "HTTP request failed", tip = "Check URL and internet connection"},
            {pattern = "Http request failed", hint = "HTTP error", tip = "Check URL, method, and headers"},
            {pattern = "cannot request", hint = "HTTP not allowed", tip = "Enable HTTP requests in game settings"},
            {pattern = "HTTP 404", hint = "Not found", tip = "URL may be invalid or moved"},
            {pattern = "HTTP 403", hint = "Forbidden", tip = "Access denied to resource"},
            {pattern = "HTTP 500", hint = "Server error", tip = "Server side issue, try again later"},
            {pattern = "timeout", hint = "Request timeout", tip = "Server too slow, increase timeout or retry"},
            {pattern = "invalid URL", hint = "Malformed URL", tip = "Check URL format (include http:// or https://)"},
            {pattern = "cannot open file", hint = "File access failed", tip = "Check file path and permissions"},
            {pattern = "cannot write file", hint = "Write failed", tip = "Ensure folder exists and has space"},
            {pattern = "file not found", hint = "Missing file", tip = "Check file name and path"},
            {pattern = "no such file", hint = "File doesn't exist", tip = "Create file before reading"},
            {pattern = "is not a valid service", hint = "Service not found", tip = "Verify service name case sensitivity"},
            {pattern = "WaitForChild timeout", hint = "Child never appeared", tip = "Increase timeout or check if child exists"},
            {pattern = "invalid asset", hint = "Bad asset ID", tip = "Check if asset exists"},
            {pattern = "teleport failed", hint = "Teleport error", tip = "Check place ID and permissions"},
            {pattern = "expected number, got", hint = "Number required", tip = "Use tonumber() for conversion"},
            {pattern = "expected string, got", hint = "String required", tip = "Use tostring() for conversion"},
            {pattern = "expected table, got", hint = "Table required", tip = "Ensure value is a table"},
            {pattern = "not a valid Enum", hint = "Invalid Enum", tip = "Check Enum spelling and existence"},
        }
        function er.FindHint(message)
            if type(message) ~= "string" then return nil end
            local lowerMsg = message:lower()
            for _, entry in ipairs(er.Tips) do
                if lowerMsg:find(entry.pattern:lower(), 1, true) then
                    return entry
                end
            end
            return nil
        end
        function er.BuildContent(msg)
            local hint = er.FindHint(msg)
            if hint then
                return msg .. "\n[" .. hint.hint .. "] " .. hint.tip
            end
            return msg
        end
        function er.Fallback(title, msg)
            pcall(function()
                Library:Notify({Title = title, Content = msg, Type = "Error", Duration = 8})
            end)
            pcall(function() warn("[FluentPro] " .. tostring(title) .. ": " .. tostring(msg)) end)
        end
        function er.Report(title, msg, duration)
            local content = er.BuildContent(tostring(msg))
            local ok = pcall(function()
                Library:CopyableNotify {Title = title, Content = content, Type = "Error", Duration = duration or 6}
            end)
            if not ok then er.Fallback(title, content) end
        end
        function Library.NotifyError(self, title, message, duration)
            if Library.ErrorHandler then pcall(Library.ErrorHandler, message, message) end
            er.Report(title or "Error", message or "Unknown error", duration)
        end
        function Library.SafeCallback(self, callback, ...)
            if not z then return end
            local ok, err = pcall(z, ...)
            if not ok then
                local msg = tostring(err)
                local lineInfo = msg:match("(:%d+:)")
                if Library.ErrorHandler then pcall(Library.ErrorHandler, msg, err) end
                er.Report("Callback error" .. (lineInfo and (" (" .. lineInfo:gsub(":", "") .. ")") or ""), msg)
            end
        end
        function Library.Round(self, number, factor)
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
        function Library.GetButtonGradient(self)
            return Library.ButtonGradients
        end
        function Library.GetShine(self)
            local thm = require(o.Themes)[Library.Theme]
            if not thm then return nil end
            return {
                Enabled = thm.ShineEnabled == true,
                Shine = thm.Shine,
                StrokeShine = thm.StrokeShine == true,
                StrokeDark = thm.StrokeDark or thm.AcrylicBorder,
                Accent = thm.Accent,
            }
        end
        local CustomAssetCache = {}
        function Library.LoadCustomAsset(self, url)
            if type(url) ~= "string" or url == "" then return nil end
            if CustomAssetCache[url] then return CustomAssetCache[url] end
            local ok, result = pcall(function()
                if not (writefile and isfolder and makefolder and getcustomasset) then
                    error("executor missing writefile/getcustomasset support")
                end
                local mm = Library.MediaManager
                local baseFolder = mm and mm.Folder
                local dir = baseFolder and (baseFolder .. "/other") or ""
                if dir ~= "" then
                    if not isfolder(baseFolder) then makefolder(baseFolder) end
                    if not isfolder(dir) then makefolder(dir) end
                end
                local ext = url:match("%.([%a%d]+)$") or "dat"
                local safeName = url:gsub("[^%w]", "_")
                local fname = safeName:sub(-80) .. "." .. ext
                local fpath = dir ~= "" and (dir .. "/" .. fname) or fname
                if not isfile(fpath) then
                    local data = game:HttpGet(url, true)
                    writefile(fpath, data)
                end
                return getcustomasset(fpath)
            end)
            if not ok then
                warn("[CustomAsset] Failed to load '" .. tostring(url) .. "': " .. tostring(result))
                return nil
            end
            CustomAssetCache[url] = result
            return result
        end
        function Library.LoadCustomFont(self, url, weight, style)
            local assetId = Library.LoadCustomAsset(Library, url)
            if not assetId then return nil end
            local ok, fnt = pcall(function()
                return Font.new(assetId, weight or Enum.FontWeight.Regular, style or Enum.FontStyle.Normal)
            end)
            if not ok then return nil end
            return fnt
        end
        function Library.GetIcon(self, iconName)
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
                return nil
            end
        end
        local Elements = {}
        Elements.__index = Elements
        Elements.__namecall = function(self, key, ...)
            local fn = Elements[key]
            if not fn and type(key) == "string" and not key:match("^Add") then
                fn = Elements["Add" .. key]
            end
            if fn then return fn(self, ...) end
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
        Library.StartMarquee = StartMarquee
        for _, elementComponent in ipairs(ElementsTable) do
            Elements["Add" .. elementComponent.__type] = function(C, D, E)
                local _container   = C.Container
                local _type        = C.Type
                local _scrollFrame = C.ScrollFrame
                elementComponent.Container   = _container
                elementComponent.Type        = _type
                elementComponent.ScrollFrame = _scrollFrame
                elementComponent.Library = Library
                local result = elementComponent:New(D, E)
                elementComponent.Container   = nil
                elementComponent.Type        = nil
                elementComponent.ScrollFrame = nil
                if result and result.Frame then
                    C._elementCount = (C._elementCount or 0) + 1
                    result.Frame.LayoutOrder = C._elementCount
                end
                if result and result.SetSection then
                    result:SetSection(C)
                end
                if result and E and type(E) == "table" and E.Icon and Library.GetIcon then
                    local ic = Library:GetIcon(E.Icon)
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
                        local _iconColorKey = type(E.IconColor) == "string" and E.IconColor or "IconColor"
                        local Creator = Library.Creator or Creator
                        pcall(function() Creator.AddThemeObject(ico, {ImageColor3 = _iconColorKey}) end)
                        if result.LabelHolder then
                            ico.Parent = result.Frame
                            result.LabelHolder.Position = UDim2.fromOffset(26, 0)
                        end
                    end
                end
                local win = Library.Window
                if win and win.AllElements and result then
                    local frame = result.Frame or result
                    local cfg = (type(E) == "table" and E) or (type(D) == "table" and D) or nil
                    local title = (type(D) == "string" and D) or (cfg and cfg.Title) or ""
                    local desc = (cfg and cfg.Description) or ""
                    local label = (tostring(title) .. " " .. tostring(desc)):gsub("^%s+",""):gsub("%s+$","")
                    if frame and label ~= "" then
                        win.AllElements[frame] = tostring(label):lower()
                    end
                end
                return result
            end
            Elements[elementComponent.__type] = Elements["Add" .. elementComponent.__type]
        end

        local function _addElementToSection(C, result)
            if result and result.Frame then
                C._elementCount = (C._elementCount or 0) + 1
                result.Frame.LayoutOrder = C._elementCount
                local win = Library.Window
                if win and win.AllElements then
                    local label = ""
                    local lbl = result.Frame:FindFirstChildWhichIsA("TextLabel", true)
                    if lbl then label = tostring(lbl.Text or "") end
                    win.AllElements[result.Frame] = label:lower()
                end
            end
            return result
        end

        Elements["AddDiscord"] = function(C, cfg)
            cfg = (type(cfg) == "table") and cfg or {}
            local parent = C.Container
            if not parent then return end
            local New = Creator.New
            local inviteCode = tostring(cfg.InviteCode or cfg.Invite or ""):match("[%w%-]+$") or ""
            local wrap = New("Frame",{
                Size=UDim2.new(1,0,0,78),
                BackgroundTransparency=0.82,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            New("UICorner",{CornerRadius=UDim.new(0,12),Parent=wrap})
            New("UIStroke",{Transparency=0.45,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            local _discordAccent = Creator.GetThemeProperty("DiscordJoinButton") or Color3.fromRGB(88,101,242)
            local iconBg = New("Frame",{
                Size=UDim2.fromOffset(50,50),
                Position=UDim2.new(0,12,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundColor3=_discordAccent,
                Parent=wrap,
                ClipsDescendants=true,
            })
            local iconBgCorner = New("UICorner",{CornerRadius=UDim.new(0.2,0),Parent=iconBg})
            local iconImg = New("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Parent=iconBg})
            local iconImgCorner = New("UICorner",{CornerRadius=UDim.new(0.2,0),Parent=iconImg})
            local defaultIco = Library.GetIcon and Library:GetIcon("solar/chat-round-bold")
            if defaultIco and type(defaultIco)=="table" then
                iconImg.Image=defaultIco.Image or ""
                iconImg.ImageRectOffset=defaultIco.ImageRectOffset or Vector2.new()
                iconImg.ImageRectSize=defaultIco.ImageRectSize or Vector2.new()
                iconImg.ImageColor3=Color3.fromRGB(255,255,255)
            end
            local nameLabel = New("TextLabel",{
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
            local memberLabel = New("TextLabel",{
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
            local joinBtn = New("TextButton",{
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
            New("UICorner",{CornerRadius=UDim.new(0,8),Parent=joinBtn})
            local dot = New("Frame",{
                Size=UDim2.fromOffset(7,7),
                Position=UDim2.new(0,70,0,51),
                BackgroundColor3=Color3.fromRGB(80,80,90),
                BorderSizePixel=0,
                Parent=wrap,
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=dot})
            local onlineLabel = New("TextLabel",{
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
                New("TextLabel",{
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
                                return Library.MediaManager:Image(iconUrl)
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
                    Library:Notify({Title="Discord",Content="Copied: "..full,Type="Info",Duration=3})
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

        Elements.AddSection = function(self, Title, IconKey)
            self._elementCount = (self._elementCount or 0) + 1
            local _order = self._elementCount
            local built = require(s.Section)(Title, (IconKey ~= "" and IconKey or nil), self.Container)
            local sectionObj = {
                Type = "Section",
                Container = built.Container,
                ScrollFrame = self.ScrollFrame or self.Container,
            }
            built.Root.LayoutOrder = _order
            setmetatable(sectionObj, Elements)
            return sectionObj
        end

        Elements.AddCollapsibleSection = function(self, A, iconKey, openState)
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

            local outerWrap2 = New("Frame", {
                Size = UDim2.new(1, 0, 0, 26),
                BackgroundTransparency = 1,
                LayoutOrder = _order,
                Parent = self.Container,
            })
            local header2 = New("TextButton", {
                Size = UDim2.new(1, 0, 0, 26),
                BackgroundTransparency = 1,
                Text = "",
                AutoButtonColor = false,
                Parent = outerWrap2,
            })
            local titleOffX2 = (iconKey2 and iconKey2 ~= "") and 22 or 0
            if iconKey2 and iconKey2 ~= "" then
                local hIco2 = New("ImageLabel", {
                    Name = "_SecIcon",
                    Size = UDim2.fromOffset(14, 14),
                    Position = UDim2.fromOffset(0, 3),
                    BackgroundTransparency = 1,
                    ImageTransparency = 0.25,
                    ThemeTag = {ImageColor3 = "IconColor"},
                    Parent = header2,
                })
                task.defer(function()
                    local ic2 = Library.GetIcon and Library:GetIcon(iconKey2)
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
            local titleLbl2 = New("TextLabel", {
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
                TextColor3 = Color3.fromRGB(255, 255, 255),
                ThemeTag = {TextColor3 = "Text"},
                Parent = header2,
            })
            local arrowIco2 = New("ImageLabel", {
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
                local arIc = Library.GetIcon and Library:GetIcon("chevron-right")
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
            local contentBg2 = New("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                Position = UDim2.fromOffset(0, 26),
                BackgroundTransparency = 1,
                ClipsDescendants = true,
                LayoutOrder = 2,
                Parent = outerWrap2,
            })
            local innerLayout2 = New("UIListLayout", {
                Padding = UDim.new(0, pad2),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = contentBg2,
            })
            New("UIPadding", {
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
            if saveIdx and Library.Options then Library.Options[saveIdx] = colMod2 end
            return colMod2
        end

                Library.Elements = Elements

        Elements["AddCheckbox"] = function(C, D, E)
            local idx = (type(D) == "string") and D or nil
            local f = (idx and E) or (type(D) == "table" and D) or {}
            assert(f.Title, "Checkbox - Missing Title")
            local parent = C.Container
            if not parent then return end
            local New = Creator.New
            local h = {
                Value = f.Default and true or false,
                Callback = f.Callback or function() end,
                Type = "Checkbox",
            }
            local wrap = New("Frame",{
                Size=UDim2.new(1,0,0,38),
                BackgroundTransparency=0.89,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element", BackgroundTransparency="ElementTransparency"},
            })
            New("UICorner",{CornerRadius=UDim.new(0,4),Parent=wrap})
            New("UIStroke",{Transparency=0.5,Thickness=1,ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color="ElementBorder"},Parent=wrap})
            h.Frame = wrap

            local titleLbl = New("TextLabel",{
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
            local box = New("Frame",{
                Size=UDim2.fromOffset(20,20),
                AnchorPoint=Vector2.new(1,0.5),
                Position=UDim2.new(1,-12,0.5,0),
                BackgroundTransparency=0,
                Active=true,
                Parent=wrap,
                ThemeTag={BackgroundColor3="CheckboxUnchecked"},
            })
            New("UICorner",{CornerRadius=UDim.new(0,5),Parent=box})
            local boxStroke = New("UIStroke",{Transparency=0.4,Thickness=1.4,ThemeTag={Color="CheckboxChecked"},Parent=box})
            local check = New("ImageLabel",{
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
                Creator.OverrideTag(box, {BackgroundColor3 = val and "CheckboxChecked" or "CheckboxUnchecked"})
                Creator.OverrideTag(boxStroke, {Color = val and "CheckboxChecked" or "CheckboxUnchecked"})
                check.ImageTransparency = val and 0 or 1
                Library:SafeCallback(h.Callback, val)
                Library:SafeCallback(h.Changed, val)
            end
            function h:Destroy()
                wrap:Destroy()
                if idx then Library.Options[idx] = nil end
            end
            box.InputBegan:Connect(function(inp)
                if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
                    h:SetValue(not h.Value)
                end
            end)
            h:SetValue(h.Value)
            if idx then Library.Options[idx] = h end
            return _addElementToSection(C, h)
        end

        Elements["AddProgressBar"] = function(C, D, E)
            local idx = (type(D) == "string") and D or nil
            local f = (idx and E) or (type(D) == "table" and D) or {}
            local parent = C.Container
            if not parent then return end
            local New = Creator.New
            local minV, maxV = f.Min or 0, f.Max or 100
            local h = {
                Value = math.clamp(f.Default or minV, minV, maxV),
                Min = minV, Max = maxV,
                Type = "ProgressBar",
            }
            local wrap = New("Frame",{
                Size=UDim2.new(1,0,0,f.Title and 46 or 26),
                BackgroundTransparency=1,
                Parent=parent,
            })
            h.Frame = wrap
            local titleLbl
            if f.Title then
                titleLbl = New("TextLabel",{
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
                pctLbl = New("TextLabel",{
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
            local rail = New("Frame",{
                Size=UDim2.new(1,0,0,8),
                Position=UDim2.new(0,0,1,-8),
                BackgroundTransparency=0.4,
                Parent=wrap,
                ThemeTag={BackgroundColor3="ProgressBarRail"},
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=rail})
            local fill = New("Frame",{
                Size=UDim2.fromScale(0,1),
                BackgroundTransparency=0,
                Parent=rail,
                ThemeTag={BackgroundColor3="ProgressBarFill"},
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=fill})

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
                if idx then Library.Options[idx] = nil end
            end
            h:SetValue(h.Value)
            if idx then Library.Options[idx] = h end
            return _addElementToSection(C, h)
        end

        Elements["AddSocial"] = function(C, cfg)
            cfg = (type(cfg) == "table") and cfg or {}
            local parent = C.Container
            if not parent then return end
            local New = Creator.New
            local username = tostring(cfg.Username or "")
            local platform = tostring(cfg.Platform or "")
            local profileUrl = cfg.ProfileUrl or cfg.Url
            if username == "" and type(profileUrl) == "string" then
                local host, path = profileUrl:match("^https?://([^/]+)/?(.-)[/?#]?$")
                if not host then host, path = profileUrl:match("^https?://([^/]+)/?(.*)$") end
                if host then
                    host = host:gsub("^www%.", ""):lower()
                    local _hostMap = {
                        ["github.com"]="github", ["twitter.com"]="twitter", ["Library.com"]="twitter",
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

            local wrap = New("Frame",{
                Size=UDim2.new(1,0,0,64),
                BackgroundTransparency=0.82,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            New("UICorner",{CornerRadius=UDim.new(0,12),Parent=wrap})
            New("UIStroke",{Transparency=0.45,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})

            local avatarBg = New("Frame",{
                Name="AvatarBg",
                Size=UDim2.fromOffset(42,42),
                Position=UDim2.new(0,11,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundColor3=Color3.fromRGB(90,90,90),
                Parent=wrap,
                ClipsDescendants=true,
            })
            local avatarCorner = New("UICorner",{CornerRadius=UDim.new(0,8),Parent=avatarBg})
            local avatarImg = New("ImageLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Parent=avatarBg})
            local avatarImgCorner = New("UICorner",{CornerRadius=UDim.new(0,8),Parent=avatarImg})
            local hasAvatarSource = (username ~= "") or (type(profileUrl) == "string" and profileUrl ~= "") or (type(cfg.Avatar) == "string" and cfg.Avatar ~= "")
            if hasAvatarSource then
                avatarCorner.CornerRadius = UDim.new(1, 0)
                avatarImgCorner.CornerRadius = UDim.new(1, 0)
            end

            local nameBtn = New("TextButton",{
                Name="DisplayNameButton",
                Text=displayName,
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                TextSize=13,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                AutoButtonColor=false,
                Size=UDim2.new(1,-73,0,16),
                Position=UDim2.new(0,62,0,9),
                ThemeTag={TextColor3="Text"},
                Parent=wrap,
            })
            local userBtn = New("TextButton",{
                Name="UsernameButton",
                Text=(username ~= "" and ("@"..username) or ""),
                FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                TextSize=11,
                TextXAlignment=Enum.TextXAlignment.Left,
                TextTruncate=Enum.TextTruncate.AtEnd,
                BackgroundTransparency=1,
                AutoButtonColor=false,
                Size=UDim2.new(1,-73,0,13),
                Position=UDim2.new(0,62,0,27),
                ThemeTag={TextColor3="SubText"},
                Parent=wrap,
            })
            if platform ~= "" then
                New("TextLabel",{
                    Name="PlatformLabel",
                    Text=platform,
                    FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextSize=10,
                    TextTransparency=0.3,
                    TextXAlignment=Enum.TextXAlignment.Left,
                    BackgroundTransparency=1,
                    Size=UDim2.new(1,-73,0,12),
                    Position=UDim2.new(0,62,0,42),
                    ThemeTag={TextColor3="SubText"},
                    Parent=wrap,
                })
            end

            local function _copy(text, label)
                if not text or text == "" then return end
                pcall(function() setclipboard(text) end)
                Library:Notify({Title="Copied", Content=(label or "Text").." copied to clipboard", Type="Success", Duration=2})
            end
            nameBtn.MouseButton1Click:Connect(function() _copy(displayName, "Display name") end)
            userBtn.MouseButton1Click:Connect(function() _copy(username, "Username") end)

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
                        ["Library.com"] = "twitter",
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
                        return Library.MediaManager and Library.MediaManager:Image(imgUrl)
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

        Elements.__type_Viewport = "Viewport"
        Elements.AddViewport = function(C, IdxOrConfig, MaybeConfig)
            local saveIdx, Config
            if type(IdxOrConfig) == "string" then
                saveIdx, Config = IdxOrConfig, MaybeConfig
            else
                Config = IdxOrConfig
            end
            Config = Config or {}
            local lib = Library
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

            local cornerR = (Library.Window and Library.Window.ElementConfig and Library.Window.ElementConfig.UICorner) or 8

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
            if saveIdx and Library.Options then Library.Options[saveIdx] = vp end
            return vp
        end
        Elements.Section = Elements.AddSection
        Elements.CollapsibleSection = Elements.AddCollapsibleSection
        Elements.Viewport = Elements.AddViewport
        Elements.Discord = Elements["AddDiscord"]
        Elements.Social = Elements["AddSocial"]
        Elements.Checkbox = Elements["AddCheckbox"]
        Elements.ProgressBar = Elements["AddProgressBar"]


        Elements.AddHGroup = function(self, cfg)
            cfg = cfg or {}
            local parent = self.Container
            if not parent then return end
            local New = Creator.New
            local hGap = cfg.Gap or 6
            local sec = self

            local outerWrap = New("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                BackgroundTransparency = 1,
                AutomaticSize = Enum.AutomaticSize.Y,
                BorderSizePixel = 0,
                Parent = parent,
            })
            New("UIPadding", {
                PaddingTop = UDim.new(0, 2),
                PaddingBottom = UDim.new(0, 2),
                Parent = outerWrap,
            })
            local innerRow = New("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                BackgroundTransparency = 1,
                AutomaticSize = Enum.AutomaticSize.Y,
                BorderSizePixel = 0,
                Parent = outerWrap,
            })
            local rowLayout = New("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Left,
                VerticalAlignment = Enum.VerticalAlignment.Top,
                Padding = UDim.new(0, hGap),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = innerRow,
            })

            local columns = {}

            local function recalcColumns()
                local n = #columns
                if n == 0 then return end
                local totalGap = hGap * (n - 1)
                local colScale = 1 / n
                local colOffset = -math.floor(totalGap / n + 0.5)
                for i, col in ipairs(columns) do
                    col.Size = UDim2.new(colScale, colOffset, 0, 0)
                end
            end

            local hObj = {
                Frame = outerWrap,
                Container = outerWrap,
                Type = sec and sec.Type or "Section",
                ScrollFrame = sec and sec.ScrollFrame or nil,
                _elementCount = 0,
                _gap = hGap,
            }

            function hObj:VGroup(cfg2)
                cfg2 = cfg2 or {}
                local vGap = cfg2.Gap or hGap
                local colFrame = New("Frame", {
                    Size = UDim2.new(0.5, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Parent = innerRow,
                })
                New("UIListLayout", {
                    FillDirection = Enum.FillDirection.Vertical,
                    HorizontalAlignment = Enum.HorizontalAlignment.Left,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                    Padding = UDim.new(0, vGap),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = colFrame,
                })
                table.insert(columns, colFrame)
                recalcColumns()
                local colObj = setmetatable({
                    Frame = colFrame,
                    Container = colFrame,
                    Type = sec and sec.Type or "Section",
                    ScrollFrame = sec and sec.ScrollFrame or nil,
                    _elementCount = 0,
                }, getmetatable(sec))
                return colObj
            end
            hObj.AddVGroup = hObj.VGroup

            setmetatable(hObj, getmetatable(sec))
            self._elementCount = (self._elementCount or 0) + 1
            outerWrap.LayoutOrder = self._elementCount
            return hObj
        end

        Elements.AddVGroup = function(self, cfg)
            cfg = cfg or {}
            local parent = self.Container
            if not parent then return end
            local New = Creator.New
            local vGap = cfg.Gap or 6
            local sec = self

            local outerWrap = New("Frame", {
                Size = UDim2.new(1, 0, 0, 0),
                BackgroundTransparency = 1,
                AutomaticSize = Enum.AutomaticSize.Y,
                BorderSizePixel = 0,
                Parent = parent,
            })
            New("UIListLayout", {
                FillDirection = Enum.FillDirection.Vertical,
                HorizontalAlignment = Enum.HorizontalAlignment.Left,
                VerticalAlignment = Enum.VerticalAlignment.Top,
                Padding = UDim.new(0, vGap),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = outerWrap,
            })

            local vObj = setmetatable({
                Frame = outerWrap,
                Container = outerWrap,
                Type = sec and sec.Type or "Section",
                ScrollFrame = sec and sec.ScrollFrame or nil,
                _elementCount = 0,
                _gap = vGap,
            }, getmetatable(sec))

            self._elementCount = (self._elementCount or 0) + 1
            outerWrap.LayoutOrder = self._elementCount
            return vObj
        end

        Elements.HGroup = Elements.AddHGroup
        Elements.VGroup = Elements.AddVGroup

        Elements.DestroyElement = function(self, elemObj)
            if type(elemObj) == "table" and type(elemObj.Destroy) == "function" then
                pcall(elemObj.Destroy, elemObj)
            elseif type(elemObj) == "table" and elemObj.Frame then
                pcall(function() elemObj.Frame:Destroy() end)
            end
        end
        function Library.CreateWindow(C, D)
            assert(D.Title, "Window - Missing Title")
            if Library.Window then
                print "You cannot create more than one window."
                return
            end
            Creator.Library = Library
            do
                local guiName = D.ScreenGuiName or "FluentPro"
                if Library.GUI then Library.GUI.Name = guiName end
                if Library.ScrollGUI then Library.ScrollGUI.Name = guiName .. "Scroll" end
                if Library.PopupGUI then Library.PopupGUI.Name = guiName .. "Popup" end
                if D.FolderName then
                    local parent = (Library.GUI and Library.GUI.Parent) or game:GetService("CoreGui")
                    local folder = parent:FindFirstChild(D.FolderName)
                    if not folder or not folder:IsA("Folder") then
                        folder = Instance.new("Folder")
                        folder.Name = D.FolderName
                        folder.Parent = parent
                    end
                    for _, gui in ipairs({Library.GUI, Library.ScrollGUI, Library.PopupGUI}) do
                        if gui then gui.Parent = folder end
                    end
                    Library.Folder = folder
                end
            end
            Library.MinimizeKey = D.MinimizeKey
            Library.UseAcrylic = D.Acrylic
            Library.ShineEnabled = not (D.Animated == false)
            if D.Acrylic then
                r.init()
            end
            if type(D.Search) == "table" then
                local _sc = D.Search
                D.SearchHighlight = _sc.Highlight
                D.SearchHighlightColor = _sc.HighlightColor
                D.SearchInHeader = false
                D.Search = not (_sc.Search == false)
            end
            local _uiCfg = type(D.UserInfo) == "table" and D.UserInfo or {}
            local _effUserInfoTop = _uiCfg.UserInfoTop
            if _effUserInfoTop == nil then _effUserInfoTop = D.UserInfoTop end
            local _effUserInfoTitle = _uiCfg.UserInfoTitle or D.UserInfoTitle
            local _effUserInfoSubtitle = _uiCfg.UserInfoSubtitle or D.UserInfoSubtitle
            local _effUserInfoColor = _uiCfg.UserInfoColor or D.UserInfoColor
            local _effUserInfoIcons = _uiCfg.UserInfoIcons or D.UserInfoIcons
            local _effAnonymous = D.Anonymous or _uiCfg.Anonymous
            local _hasUserInfoCfg = (D.UserInfo ~= nil)
            local _effUserInfoBottom = _hasUserInfoCfg and (_effUserInfoTop ~= true)
            local E =
                require(s.Window) {
                    Parent = w, Size = D.Size, Title = D.Title, SubTitle = D.SubTitle, TabWidth = D.TabWidth,
                    UserInfo = _effUserInfoBottom, UserInfoTop = _effUserInfoTop,
                    UserInfoTitle = _effUserInfoTitle, UserInfoSubtitle = _effUserInfoSubtitle,
                    UserInfoColor = _effUserInfoColor, UserInfoIcons = _effUserInfoIcons,
                    Anonymous = _effAnonymous,
                    Search = D.Search,
                    SearchInHeader = false,
                    SearchHighlight = D.SearchHighlight,
                    SearchHighlightColor = D.SearchHighlightColor,
                    Tags = D.Tags,
                    TabLogo = D.Icons or D.TabLogo,
                    TitleIcon = D.TitleIcon,
                    Version = D.Version,
                }
            Library.Window = E
            if D.Version then Library.WindowVersion = D.Version end
            function Library:SetVersion(newVersion)
                Library.WindowVersion = newVersion
                if Library.Window and Library.Window.TitleBar then
                    local badge = Library.Window.TitleBar.Frame:FindFirstChild("VersionBadge", true)
                    if badge then
                        local txt = badge:FindFirstChild("VersionText")
                        if txt then txt.Text = tostring(newVersion or "") end
                        badge.Visible = newVersion ~= nil and newVersion ~= ""
                    end
                end
            end
            Library.NamedTexts = Library.NamedTexts or {}
            Library.NamedFonts = Library.NamedFonts or {}
            local function _enableRichText(inst)
                if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
                    pcall(function() inst.RichText = true end)
                end
            end
            if Library.GUI then
                for _, d in ipairs(Library.GUI:GetDescendants()) do _enableRichText(d) end
                Library.GUI.DescendantAdded:Connect(_enableRichText)
            end
            function Library:SetTextName(instance, name)
                if not instance or not name then return end
                instance:SetAttribute("FluentTextName", name)
                Library.NamedTexts[name] = instance
                local fontCfg = Library.NamedFonts[name]
                if fontCfg then
                    pcall(function() instance.FontFace = fontCfg end)
                end
                return instance
            end
            function Library:GetTextByName(name)
                return Library.NamedTexts[name]
            end
            function Library:SetNamedFont(name, source, weight, style)
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
                    elseif Library.InterfaceManager and Library.InterfaceManager.FontPaths[src] then
                        newFont = Font.new(Library.InterfaceManager.FontPaths[src], fw, fs)
                    else
                        newFont = Font.new("rbxasset://fonts/families/" .. src .. ".json", fw, fs)
                    end
                end)
                if not newFont then return end
                Library.NamedFonts[name] = newFont
                local inst = Library.NamedTexts[name]
                if inst then
                    pcall(function() inst.FontFace = newFont end)
                end
            end
            Library:SetTheme(D.Theme)
            if D.Font then
                task.defer(function()
                    Library.InterfaceManager:ApplyFont(D.Font)
                end)
            end
            if Library.InterfaceManager then
                local IM = Library.InterfaceManager
                if D.Theme then IM.Settings.Theme = D.Theme end
                if D.Acrylic ~= nil then IM.Settings.Acrylic = D.Acrylic end
                if D.Animated ~= nil then IM.Settings.Animated = D.Animated end
                if D.MinimizeKey then IM.Settings.MenuKeybind = D.MinimizeKey.Name end
            end
            return E
        end
        function Library.SetTheme(C, D)
            if Library.Window and (table.find(Library.Themes, D) or (type(D)=="string" and type(require(o.Themes)[D])=="table")) then
                Library.Theme = D
                Creator.UpdateTheme()
                local thm = require(o.Themes)[D]
                if thm then
                    if thm.IconSize then
                        pcall(function()
                            for _, img in pairs(Library.GUI:GetDescendants()) do
                                if img:IsA("ImageLabel") and img:GetAttribute("IsThemeIcon") then
                                    img.Size = UDim2.fromOffset(thm.IconSize, thm.IconSize)
                                end
                            end
                        end)
                    end
                end
            end
        end
        function Library.Destroy(C)
            if Library.Window then
                Library.Unloaded = true
                if Library.UseAcrylic then
                    Library.Window.AcrylicPaint.Model:Destroy()
                end
                Creator.Disconnect()
                if Library._SBOverlayTeardowns then
                    for _, fn in ipairs(Library._SBOverlayTeardowns) do
                        pcall(fn)
                    end
                    table.clear(Library._SBOverlayTeardowns)
                end
                if Library._SBOverlays then
                    for _, ov in ipairs(Library._SBOverlays) do
                        pcall(function() ov:Destroy() end)
                    end
                    table.clear(Library._SBOverlays)
                end
                if Library.ScrollGUI then
                    pcall(function() Library.ScrollGUI:Destroy() end)
                    Library.ScrollGUI = nil
                end
                Library.GUI:Destroy()
                Library.GUI = nil
            end
        end
        function Library.ToggleAcrylic(C, D)
            if Library.Window then
                if Library.UseAcrylic then
                    Library.Acrylic = D
                    Library.Window.AcrylicPaint.Model.Transparency = D and 0.98 or 1
                    if D then
                        r.Enable()
                    else
                        r.Disable()
                    end
                end
            end
        end
        function Library.ToggleTransparency(C, D)
            if Library.Window then
                Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = D and 0.35 or 0
            end
            Library.WindowTransparent = D and true or false
        end
        function Library.Notify(C, D)
            return NotificationModule:New(D)
        end
        function Library.CopyableNotify(C, D)
            D = D or {}
            D.Copyable = true
            return NotificationModule:New(D)
        end

        local rgbConn = nil
        function Library.StartRGBMode()
            if rgbConn then rgbConn:Disconnect(); rgbConn = nil end
        end
        function Library.StopRGBMode()
            if rgbConn then rgbConn:Disconnect(); rgbConn = nil end
        end
        local baseST = Library.SetTheme
        function Library.SetTheme(C, D)
            Library.StopRGBMode()
            baseST(C, D)
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
        Library.SaveManager = SaveManager

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
        function InterfaceManager:RegisterCustomFont(name, url, weight, style, scale)
            if type(name) ~= "string" or name == "" then return false end
            local lib = self.Library
            local assetId = lib and lib.LoadCustomAsset and lib:LoadCustomAsset(url)
            if not assetId then return false end
            self.FontPaths[name] = assetId
            if weight then self.FontWeights[name] = weight end
            if style then self.FontStyles[name] = style end
            self.FontSizeScale[name] = scale or 1.0
            if not table.find(self.Fonts, name) then
                table.insert(self.Fonts, name)
            end
            return true
        end
        function InterfaceManager:ApplyFont(name)
            local path = self.FontPaths[name]
            if not path then
                warn("[InterfaceManager] ApplyFont: no FontPaths entry for '" .. tostring(name) .. "'")
                return
            end
            local weight = self.FontWeights[name] or Enum.FontWeight.Regular
            local style  = self.FontStyles[name]  or Enum.FontStyle.Normal
            local fontOk, newFont = pcall(Font.new, path, weight, style)
            if not fontOk or not newFont then
                warn("[InterfaceManager] ApplyFont: Font.new failed for '" .. tostring(name) .. "' (" .. tostring(path) .. "): " .. tostring(newFont))
                return
            end
            local scale = self.FontSizeScale[name] or 1.0
            if not self.Library then return end
            local appliedCount = 0
            local function apply(inst, depth)
                if depth > 12 then return end
                for _, ch in ipairs(inst:GetChildren()) do
                    if ch:IsA("TextLabel") or ch:IsA("TextButton") or ch:IsA("TextBox") then
                        local ok = pcall(function()
                            local baseSize = ch:GetAttribute("_baseTextSize")
                            if not baseSize then
                                baseSize = ch.TextSize
                                ch:SetAttribute("_baseTextSize", baseSize)
                            end
                            ch.FontFace = newFont
                            ch.TextSize = baseSize * scale
                        end)
                        if ok then appliedCount = appliedCount + 1 end
                    end
                    apply(ch, depth + 1)
                end
            end
            for _, gui in ipairs({self.Library.GUI, self.Library.ScrollGUI, self.Library.PopupGUI}) do
                if gui then apply(gui, 0) end
            end
            if appliedCount == 0 then
                warn("[InterfaceManager] ApplyFont: '" .. tostring(name) .. "' applied to 0 text elements")
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
            if Library.UseAcrylic then
                section:AddToggle("AcrylicToggle",{Title="Acrylic",Description="Requires graphic quality 8+.",Icon="solar/layers-bold",Default=Settings.Acrylic,Callback=function(Value)
                    Library:ToggleAcrylic(Value); Settings.Acrylic=Value; InterfaceManager:SaveSettings()
                end})
            end
            section:AddToggle("DisableBGToggle",{Title="Disable Background",Description="Hides theme background images and videos.",Icon="solar/eye-closed-bold",Default=Settings.DisableBG or false,Callback=function(Value)
                Settings.DisableBG=Value; InterfaceManager:SaveSettings()
                if Library and Library.Theme then
                    pcall(function() Library:SetTheme(Library.Theme) end)
                end
            end})

            section:AddToggle("TransparentToggle",{Title="Transparency",Description="Makes the interface transparent.",Icon="solar/eye-bold",Default=Settings.Transparency,Callback=function(Value)
                Library:ToggleTransparency(Value); Settings.Transparency=Value; InterfaceManager:SaveSettings()
                if Library._ManagerDropdownSyncs then
                    for _, fn in ipairs(Library._ManagerDropdownSyncs) do pcall(fn) end
                end
            end})
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
        Library.InterfaceManager = InterfaceManager

        local FloatingButtonManager = {}
        FloatingButtonManager.Folder = "FloatingButtons"
        FloatingButtonManager.Buttons = {}
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
        function FloatingButtonManager:AddButton(id, frameOrButton, locked, isCircle, applyShapeCallback, frame)
            local targetFrame = frame or frameOrButton
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
                local f = entry.frame or entry
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
                    local f = entry.frame or entry
                    if saved.position then f.Position = desUDim2(saved.position) end
                    if saved.size     then f.Size     = desUDim2(saved.size)     end
                    f:SetAttribute("Locked",   saved.locked   or false)
                    f:SetAttribute("IsCircle", saved.isCircle or false)
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
        Library.FloatingButtonManager = FloatingButtonManager

        local _MM = {}
        _MM.Folder = nil

        function _MM:SetFolder(f)
            self.Folder = f
        end

        function _MM:_dir(sub)
            return self.Folder and (self.Folder.."/"..sub) or ""
        end

        function _MM:_join(dir, name)
            return dir ~= "" and (dir.."/"..name) or name
        end

        function _MM:_init(sub)
            if not self.Folder then return end
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
            local dir = self:_dir(sub)
            local cleanPath = src:match("^[^?#]+") or src
            local ext = (cleanPath:match("%.([^%.%/]+)$") or defExt):lower()
            if not exts[ext] then ext = defExt end
            local key = src:gsub("[^%w]", "_"):sub(-90)
            local fname = key .. "." .. ext
            local path = self:_join(dir, fname)
            if isfile(path) then
                local ok, a = pcall(getcustomasset, path)
                if ok and a and a ~= "" then return a end
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
            if isFtyp and ext ~= "ogg" then
                fname = key .. ".ogg"
                path = self:_join(dir, fname)
            end
            if isfile(path) then
                local ok, a = pcall(getcustomasset, path)
                if ok and a and a ~= "" then return a end
            end
            writefile(path, body)
            if isfile(path) then
                local ok2,a = pcall(getcustomasset, path)
                if ok2 and a and a~="" then return a end
            end
            return ""
        end

        function _MM:Video(src)
            if type(src)~="string" or src=="" then return "" end
            if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
            if src:match("^%d+$") then return "rbxassetid://"..src end
            if not src:match("^https?://") then return "" end
            local cleanPath = src:match("^[^?#]+") or src
            local ext = (cleanPath:match("%.([^%.%/]+)$") or "webm"):lower()
            if not ({webm=1,mp4=1,ogg=1,mov=1})[ext] then ext="webm" end
            if ext == "mp4" or ext == "mov" then ext = "webm" end
            if not (writefile and isfolder and makefolder and getcustomasset) then return "" end
            self:_init("videos")
            local dir = self:_dir("videos")
            local key = src:gsub("[^%w]", "_"):sub(-90)
            local fname = key .. "." .. ext
            local path  = self:_join(dir, fname)
            if isfile(path) then
                local ok, a = pcall(getcustomasset, path)
                if ok and a and a ~= "" then return a end
                pcall(function() delfile(path) end)
            end
            local body = nil
            for attempt = 1, 3 do
                local reqOk = pcall(function()
                    local req = (syn and syn.request) or http_request or request
                    if not req then
                        body = game:HttpGet(src, true)
                        return
                    end
                    local r = req({Url=src, Method="GET", Headers={["User-Agent"]="Roblox/WinInet", ["Accept"]="video/*,*/*;q=0.8"}})
                    if r and r.Body and #r.Body > 256 then
                        local peek = r.Body:sub(1,20):lower()
                        if peek:find("<!doctype") or peek:find("<html") or peek:find("<?xml") then return end
                        local ctype = (r.Headers and (r.Headers["content-type"] or r.Headers["Content-Type"])) or ""
                        if ctype:find("text/html") then return end
                        body = r.Body
                    end
                end)
                if body and body ~= "" then break end
                if attempt < 3 then task.wait(1.5) end
            end
            if not body or body == "" then return "" end
            local isFtyp = #body >= 12 and (body:sub(5,8) == "ftyp" or body:sub(5,8) == "moov")
            if isFtyp and ext ~= "ogg" then
                fname = key .. ".webm"
                path = self:_join(dir, fname)
            end
            if isfile(path) then
                local ok, a = pcall(getcustomasset, path)
                if ok and a and a ~= "" then return a end
                pcall(function() delfile(path) end)
            end
            local writeOk = pcall(writefile, path, body)
            if not writeOk then return "" end
            if isfile(path) then
                local ok2, a = pcall(getcustomasset, path)
                if ok2 and a and a ~= "" then return a end
            end
            return ""
        end
        function _MM:Image(src) return self:_fetch(src,"images",{png=1,jpg=1,jpeg=1,webp=1,gif=1},"png") end
        function _MM:Audio(src, noDownload) return self:_fetch(src,"audio", {mp3=1,ogg=1,wav=1,flac=1},"mp3", noDownload) end

        Library.MediaManager = _MM

        local function _resolveThemeColor(v)
            if type(v) ~= "string" then return v end
            if v:sub(1, 1) == "#" then
                local ok, col = pcall(Color3.fromHex, v)
                return ok and col or v
            end
            local r2, g2, b2 = v:match("^rgb%((%d+)%s*,%s*(%d+)%s*,%s*(%d+)%)$")
            if r2 then return Color3.fromRGB(tonumber(r2), tonumber(g2), tonumber(b2)) end
            local h2, s2, vv = v:match("^hsv%(([%d%.]+)%s*,%s*([%d%.]+)%s*,%s*([%d%.]+)%)$")
            if h2 then return Color3.fromHSV(tonumber(h2), tonumber(s2), tonumber(vv)) end
            return v
        end

        function Library.RegisterCustomTheme(C, D, E)
            if type(D) ~= "string" or type(E) ~= "table" then return false end
            for k, val in next, E do
                E[k] = _resolveThemeColor(val)
            end
            E.Name = D
            if not E.Tier then E.Tier = "CustomTheme" end
            if not E.ThemeAccentColors and E.Accent then E.ThemeAccentColors = {E.Accent} end
            if E.Background == nil then E.Background = nil end
            if E.BackgroundTransparency == nil then E.BackgroundTransparency = 0 end
            if type(E.ElementBorderThickness) ~= "number" then E.ElementBorderThickness = 1 end
            if type(E.DropdownBorderThickness) ~= "number" then E.DropdownBorderThickness = 1 end
            if E.GlobalDropdownBackgroundImages ~= nil then
                E.DropdownBackgroundImages = nil
            end
            local baseTheme = require(o.Themes)["Dark"]
            if type(baseTheme) == "table" then
                for key, val in next, baseTheme do
                    if key ~= "Name" and key ~= "Tier" and E[key] == nil then
                        E[key] = val
                    end
                end
            end
            require(o.Themes)[D] = E
            local found = false
            for _, v in ipairs(Library.Themes) do if v == D then found = true; break end end
            if not found then table.insert(Library.Themes, D) end
            return true
        end
        Library.AddCustomTheme = Library.RegisterCustomTheme

        function Library.AddTheme(_, cfg)
            if type(cfg) ~= "table" then return false end
            local name = cfg.Name
            if type(name) ~= "string" or name == "" then return false end
            local themeCfg = {}
            for k, v in next, cfg do
                if k ~= "Name" then
                    themeCfg[k] = _resolveThemeColor(v)
                end
            end
            return Library.RegisterCustomTheme(Library, name, themeCfg)
        end

        function Library.CreateMinimizer(_, cfg)
            cfg = type(cfg) == "table" and cfg or {}
            local mIcon        = cfg.Icon or ""
            local mSize        = cfg.Size or UDim2.fromOffset(64, 42)
            local mPosition    = cfg.Position or UDim2.new(0.05, 0, 0.10, 0)
            local mCorner      = type(cfg.Corner) == "number" and cfg.Corner or 12
            local mIconCorner  = type(cfg.IconCorner) == "number" and cfg.IconCorner or 0
            local mBgAlpha     = type(cfg.BackgroundTransparency) == "number" and cfg.BackgroundTransparency or 0
            local mIconAlpha   = type(cfg.Transparency) == "number" and cfg.Transparency or 0
            local mLockable    = cfg.Lockable ~= false
            local mHoldTime    = type(cfg.LockHoldTime) == "number" and cfg.LockHoldTime or 1.0
            local mDraggable   = cfg.Draggable ~= false
            local mSounds      = {}
            if type(cfg.OnClickSound) == "string" then
                table.insert(mSounds, cfg.OnClickSound)
            elseif type(cfg.OnClickSound) == "table" then
                for _, sv in ipairs(cfg.OnClickSound) do
                    if type(sv) == "string" then table.insert(mSounds, sv) end
                end
            end
            local function resolveId(raw)
                local id = tostring(raw):match("^rbxassetid://(%d+)$") or tostring(raw):match("^(%d+)$")
                return id and ("rbxassetid://" .. id) or nil
            end
            local mCr = require(Root.Creator)
            local mS  = mCr.New
            local mGui = Instance.new("ScreenGui")
            mGui.Name = "FluentMinimizerGui"
            mGui.ResetOnSpawn = false
            mGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            mGui.DisplayOrder = 99998
            mGui.Enabled = false
            pcall(function() v(mGui) end)
            mGui.Parent = i:IsStudio()
                and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                or game:GetService("CoreGui")
            local mBtn = mS("TextButton", {
                Name = "FluentMinimizerBtn",
                Size = mSize,
                Position = mPosition,
                BackgroundTransparency = mBgAlpha,
                Text = "",
                AutoButtonColor = false,
                ClipsDescendants = true,
                Parent = mGui,
            }, {
                mS("UICorner", { CornerRadius = UDim.new(0, mCorner) }),
                mS("UIStroke", {
                    Transparency = 0.45,
                    Thickness = 1.2,
                    ThemeTag = { Color = "InElementBorder" },
                }),
            })
            if mBgAlpha > 0 then
                mBtn.BackgroundTransparency = mBgAlpha
            else
                mBtn.BackgroundTransparency = 0
                mCr.AddThemeObject(mBtn, { BackgroundColor3 = "Element" })
            end
            if mIcon ~= "" then
                local mPad = 6
                local mImg = mS("ImageLabel", {
                    Size = UDim2.new(1, -(mPad * 2), 1, -(mPad * 2)),
                    Position = UDim2.fromScale(0.5, 0.5),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    BackgroundTransparency = 1,
                    ImageTransparency = mIconAlpha,
                    ScaleType = Enum.ScaleType.Fit,
                    Parent = mBtn,
                })
                if mIconCorner > 0 then
                    mS("UICorner", { CornerRadius = UDim.new(0, mIconCorner), Parent = mImg })
                end
                local directId = resolveId(mIcon)
                if directId then
                    mImg.Image = directId
                else
                    task.defer(function()
                        local ic = Library:GetIcon(mIcon)
                        if ic and type(ic) == "table" then
                            mImg.Image = ic.Image or ""
                            mImg.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            mImg.ImageRectSize = ic.ImageRectSize or Vector2.new()
                        end
                    end)
                end
            end
            local mLockDot = mS("Frame", {
                Size = UDim2.fromOffset(7, 7),
                Position = UDim2.new(1, -3, 0, 3),
                AnchorPoint = Vector2.new(1, 0),
                BackgroundColor3 = Color3.fromRGB(255, 185, 50),
                BorderSizePixel = 0,
                Visible = false,
                ZIndex = 5,
                Parent = mBtn,
            }, { mS("UICorner", { CornerRadius = UDim.new(1, 0) }) })
            mBtn:SetAttribute("Locked", false)
            local function playSound()
                if #mSounds == 0 then return end
                local id = resolveId(mSounds[math.random(#mSounds)])
                if not id then return end
                local snd = Instance.new("Sound")
                snd.SoundId = id
                snd.Volume = 0.6
                snd.RollOffMaxDistance = 0
                snd.Parent = game:GetService("SoundService")
                snd:Play()
                snd.Ended:Connect(function() snd:Destroy() end)
            end
            if mDraggable then
                local mDragging, mHolding = false, false
                local mDragInput, mDragStart, mStartPos
                local mHoldToken = 0
                local mCancelThreshold = 6
                local function doUpdate(inp)
                    if mBtn:GetAttribute("Locked") then return end
                    local delta = inp.Position - mDragStart
                    mBtn.Position = UDim2.new(
                        mStartPos.X.Scale, mStartPos.X.Offset + delta.X,
                        mStartPos.Y.Scale, mStartPos.Y.Offset + delta.Y
                    )
                end
                local function toggleLock()
                    local newState = not mBtn:GetAttribute("Locked")
                    mBtn:SetAttribute("Locked", newState)
                    mLockDot.Visible = newState
                    Library:Notify({
                        Title = newState and "Minimizer Locked" or "Minimizer Unlocked",
                        Content = newState and "Minimizer is now locked in place." or "Minimizer can now be moved.",
                        Duration = 2,
                    })
                end
                mBtn.InputBegan:Connect(function(inp)
                    if inp.UserInputType ~= Enum.UserInputType.MouseButton1 and inp.UserInputType ~= Enum.UserInputType.Touch then return end
                    mDragging = not mBtn:GetAttribute("Locked")
                    mHolding = true
                    mDragStart = inp.Position
                    mStartPos = mBtn.Position
                    mHoldToken += 1
                    local token = mHoldToken
                    if mLockable then
                        task.delay(mHoldTime, function()
                            if mHolding and token == mHoldToken then toggleLock() end
                        end)
                    end
                    inp.Changed:Connect(function()
                        if inp.UserInputState == Enum.UserInputState.End then
                            mDragging = false
                            mHolding = false
                        end
                    end)
                end)
                mBtn.InputChanged:Connect(function(inp)
                    if not mDragStart then return end
                    if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
                        if (inp.Position - mDragStart).Magnitude > mCancelThreshold then mHolding = false end
                        mDragInput = inp
                    end
                end)
                k.InputChanged:Connect(function(inp)
                    if inp == mDragInput and mDragging then doUpdate(inp) end
                end)
            end
            local mClickGuard = false
            mBtn.MouseButton1Click:Connect(function()
                if mClickGuard then return end
                mClickGuard = true
                task.delay(0.15, function() mClickGuard = false end)
                playSound()
                if Library.Window then Library.Window:Minimize() end
            end)
            local mObj = {}
            return setmetatable({}, {
                __index = function(_, key)
                    if key == "Visible" then return mGui.Enabled end
                    return mObj[key]
                end,
                __newindex = function(_, key, val)
                    if key == "Visible" then mGui.Enabled = val
                    else mObj[key] = val end
                end,
            })
        end

        if getgenv then
            pcall(function() getgenv().Fluent_Themes = require(o.Themes) end)
            getgenv().Fluent = Library
            pcall(function()
                getgenv().SaveManager           = Library.SaveManager
                getgenv().InterfaceManager      = Library.InterfaceManager
                getgenv().FloatingButtonManager = Library.FloatingButtonManager
                getgenv().FBM                   = Library.FloatingButtonManager
                getgenv().MediaManager          = Library.MediaManager
            end)
        end
        function Library.CreateDialog(_, cfg)
            cfg = cfg or {}
            local title     = cfg.Title or "Dialog"
            local desc      = cfg.Description or ""
            local inputHint = cfg.InputHint or "Enter key..."
            local buttons   = cfg.Buttons or {}
            local onClose   = cfg.OnClose
            local mCr       = require(o.Creator)
            local mS        = mCr.New
            local win = Library.Window
            if not win or not win.AcrylicPaint then return end
            local rootFrame = win.AcrylicPaint.Frame
            local overlay = mS("Frame", {
                Size = UDim2.fromScale(1, 1),
                BackgroundColor3 = Color3.fromRGB(0, 0, 0),
                BackgroundTransparency = 0.45,
                ZIndex = 99990,
                Parent = rootFrame,
            })
            local card = mS("Frame", {
                Size = UDim2.fromOffset(300, 0),
                AutomaticSize = Enum.AutomaticSize.Y,
                AnchorPoint = Vector2.new(0.5, 0.5),
                Position = UDim2.fromScale(0.5, 0.5),
                BackgroundTransparency = 0,
                ZIndex = 99991,
                Parent = overlay,
                ThemeTag = { BackgroundColor3 = "AcrylicMain" },
            }, {
                mS("UICorner", { CornerRadius = UDim.new(0, 8) }),
                mS("UIStroke", { Transparency = 0.5, Thickness = 1, ThemeTag = { Color = "ElementBorder" } }),
                mS("UIPadding", { PaddingTop = UDim.new(0, 14), PaddingBottom = UDim.new(0, 14), PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14) }),
                mS("UIListLayout", { FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 8) }),
            })
            mS("TextLabel", {
                Size = UDim2.new(1, 0, 0, 20),
                BackgroundTransparency = 1,
                Text = title,
                TextSize = 15,
                FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
                TextXAlignment = Enum.TextXAlignment.Left,
                LayoutOrder = 1,
                ZIndex = 99992,
                ThemeTag = { TextColor3 = "Text" },
                Parent = card,
            })
            if desc ~= "" then
                mS("TextLabel", {
                    Size = UDim2.new(1, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                    Text = desc,
                    TextSize = 12,
                    TextWrapped = true,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextXAlignment = Enum.TextXAlignment.Left,
                    LayoutOrder = 2,
                    ZIndex = 99992,
                    ThemeTag = { TextColor3 = "SubText" },
                    Parent = card,
                })
            end
            local inputBox = nil
            local inputValue = ""
            if cfg.Input ~= false then
                local inputWrap = mS("Frame", {
                    Size = UDim2.new(1, 0, 0, 34),
                    BackgroundTransparency = 0.85,
                    LayoutOrder = 3,
                    ZIndex = 99992,
                    ThemeTag = { BackgroundColor3 = "Element" },
                    Parent = card,
                }, {
                    mS("UICorner", { CornerRadius = UDim.new(0, 6) }),
                    mS("UIStroke", { Transparency = 0.6, ThemeTag = { Color = "ElementBorder" } }),
                })
                inputBox = mS("TextBox", {
                    Size = UDim2.new(1, -16, 1, 0),
                    Position = UDim2.new(0, 8, 0, 0),
                    BackgroundTransparency = 1,
                    PlaceholderText = inputHint,
                    Text = "",
                    TextSize = 13,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                    TextXAlignment = Enum.TextXAlignment.Left,
                    ClearTextOnFocus = false,
                    ZIndex = 99993,
                    ThemeTag = { TextColor3 = "Text", PlaceholderColor3 = "SubText" },
                    Parent = inputWrap,
                })
                inputBox:GetPropertyChangedSignal("Text"):Connect(function()
                    inputValue = inputBox.Text
                end)
            end
            local btnRow = mS("Frame", {
                Size = UDim2.new(1, 0, 0, 32),
                BackgroundTransparency = 1,
                LayoutOrder = 4,
                ZIndex = 99992,
                Parent = card,
            }, {
                mS("UIListLayout", {
                    FillDirection = Enum.FillDirection.Horizontal,
                    HorizontalAlignment = Enum.HorizontalAlignment.Right,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 8),
                }),
            })
            local dialogObj = {}
            local function closeDialog()
                overlay:Destroy()
                if type(onClose) == "function" then pcall(onClose) end
            end
            dialogObj.Close = closeDialog
            dialogObj.GetInput = function() return inputValue end
            dialogObj.Overlay = overlay
            for _, btnCfg in ipairs(buttons) do
                local btnLabel  = btnCfg.Title or "OK"
                local btnCb     = btnCfg.Callback
                local isAccent  = btnCfg.Accent == true
                local btn = mS("TextButton", {
                    Size = UDim2.fromOffset(0, 28),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = isAccent and 0 or 0.85,
                    Text = btnLabel,
                    TextSize = 13,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
                    ZIndex = 99993,
                    AutoButtonColor = false,
                    ThemeTag = { BackgroundColor3 = isAccent and "Accent" or "Element", TextColor3 = isAccent and "AccentText" or "Text" },
                    Parent = btnRow,
                }, {
                    mS("UICorner", { CornerRadius = UDim.new(0, 6) }),
                    mS("UIPadding", { PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14) }),
                })
                btn.MouseButton1Click:Connect(function()
                    if type(btnCb) == "function" then
                        pcall(btnCb, inputValue, dialogObj)
                    end
                end)
            end
            return dialogObj
        end

        return Library
    end,
    function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(2)
        local Acrylic = {AcrylicBlur = require(script.AcrylicBlur), CreateAcrylic = require(script.CreateAcrylic), AcrylicPaint = require(script.AcrylicPaint)}
        function Acrylic.init()
            local i = Instance.new "DepthOfFieldEffect"
            i.FarIntensity = 0
            i.InFocusRadius = 0.1
            i.NearIntensity = 1
            local j = {}
            function Acrylic.Enable()
                for k, l in pairs(j) do
                    l.Enabled = false
                end
                i.Parent = game:GetService "Lighting"
            end
            function Acrylic.Disable()
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
            Acrylic.Enable()
        end
        return Acrylic
    end,
    function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(3)
        local Creator, createAcrylic, screenToWorld, getDepth = require(script.Parent.Parent.Creator), require(script.Parent.CreateAcrylic), unpack(require(script.Parent.Utils))
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
            local _dirty = false
            h.AddSignal(
                q:GetPropertyChangedSignal "AbsolutePosition",
                function()
                    _dirty = true
                end
            )
            h.AddSignal(
                q:GetPropertyChangedSignal "AbsoluteSize",
                function()
                    _dirty = true
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
                    if _dirty then
                        _dirty = false
                        o(q)
                    end
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
        local maui, script, require, getfenv, setfenv = ImportGlobals(4)
        local Creator, AcrylicBlur = require(script.Parent.Parent.Creator), require(script.Parent.AcrylicBlur)
        local j = Creator.New
        return function(k)
            local l = {}
            if k and k.Light then
                l.Frame = Creator.New(
                    "Frame",
                    {
                        Size = UDim2.fromScale(1, 1),
                        Name = "Background",
                        ThemeTag = {BackgroundColor3 = "AcrylicMain", BackgroundTransparency = "ElementTransparency"},
                    },
                    {
                        Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)}),
                        Creator.New("UIStroke", {Transparency = 0.5, Thickness = 1, ThemeTag = {Color = "AcrylicBorder"}}),
                    }
                )
                return l
            end
            l.Frame =
                Creator.New(
                "Frame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 0.9,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BorderSizePixel = 0
                },
                {
                    Creator.New(
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
                    Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)}),
                    Creator.New(
                        "Frame",
                        {
                            BackgroundTransparency = 0.45,
                            Size = UDim2.fromScale(1, 1),
                            Name = "Background",
                            ThemeTag = {BackgroundColor3 = "AcrylicMain"}
                        },
                        {Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    Creator.New(
                        "Frame",
                        {
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                            BackgroundTransparency = 0.4,
                            Size = UDim2.fromScale(1, 1)
                        },
                        {
                            Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)}),
                            Creator.New("UIGradient", {Rotation = 90, ThemeTag = {Color = "AcrylicGradient"}})
                        }
                    ),
                    Creator.New(
                        "ImageLabel",
                        {
                            Image = "rbxassetid://9968344105",
                            ImageTransparency = 0.98,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 128, 0, 128),
                            Size = UDim2.fromScale(1, 1),
                            BackgroundTransparency = 1
                        },
                        {Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    Creator.New(
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
                        {Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)})}
                    ),
                    Creator.New(
                        "Frame",
                        {BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 2},
                        {
                            Creator.New("UICorner", {CornerRadius = UDim.new(0, 10)}),
                            Creator.New("UIStroke", {Transparency = 0.5, Thickness = 1, ThemeTag = {Color = "AcrylicBorder"}})
                        }
                    )
                }
            )
            local m
            if require(script.Parent.Parent).UseAcrylic and not (k and k.NoBlur) then
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
        local maui, script, require, getfenv, setfenv = ImportGlobals(5)
        local h = script.Parent.Parent
        local i = require(h.Creator)
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
        local maui, script, require, getfenv, setfenv = ImportGlobals(6)
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
    [8] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(8)
        return {
            Close = "rbxassetid://9886659671",
            Min = "rbxassetid://9886659276",
            Max = "rbxassetid://9886659406",
            Restore = "rbxassetid://9886659001"
        }
    end,
    [9] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(9)
        local h = script.Parent.Parent
        local i, j = require(h.Packages.Flipper), require(h.Creator)
        local New, l = j.New, i.Spring.new
        return function(m, n, o)
            o = o or false
            local p = {}
            p.Title =
                New(
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
                New(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, ThemeTag = {BackgroundColor3 = "Hover"}},
                {New("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            p.Frame =
                New(
                "TextButton",
                {Size = UDim2.new(0, 0, 0, 32), Parent = n, ThemeTag = {BackgroundColor3 = "DialogButton"}},
                {
                    New("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    New(
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
    [10] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(10)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            script.Parent.Parent
        local l, m = require(k.Packages.Flipper), require(k.Creator)
        local n, o, p, q = l.Spring.new, l.Instant.new, m.New, {Window = nil}
        function q.Init(r, s)
            q.Window = s
            return q
        end
        function q.Create(r)
            local s = {Buttons = 0}
            s.TintFrame =
                New(
                "TextButton",
                {
                    Text = "",
                    Size = UDim2.fromScale(1, 1),
                    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
                    BackgroundTransparency = 1,
                    Parent = q.Window.Root
                },
                {New("UICorner", {CornerRadius = UDim.new(0, 8)})}
            )
            local t, u = m.SpringMotor(1, s.TintFrame, "BackgroundTransparency", true)
            s.ButtonHolder =
                New(
                "Frame",
                {
                    Size = UDim2.new(1, -40, 1, -40),
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.fromScale(0.5, 0.5),
                    BackgroundTransparency = 1
                },
                {
                    New(
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
                New(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 70),
                    Position = UDim2.new(0, 0, 1, -70),
                    ThemeTag = {BackgroundColor3 = "DialogHolder"}
                },
                {
                    New("Frame", {Size = UDim2.new(1, 0, 0, 1), ThemeTag = {BackgroundColor3 = "DialogHolderLine"}}),
                    s.ButtonHolder
                }
            )
            s.Title =
                New(
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
            s.Scale = New("UIScale", {Scale = 1})
            local v, w = m.SpringMotor(1.1, s.Scale, "Scale")
            s.Root =
                New(
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
                    New("UICorner", {CornerRadius = UDim.new(0, 8)}),
                    New("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "DialogBorder"}}),
                    s.Scale,
                    s.Title,
                    s.ButtonHolderFrame
                }
            )
            local x, y = m.SpringMotor(1, s.Root, "GroupTransparency")
            function s.Open(z)
                require(k).DialogOpen = true
                s.Scale.Scale = 1.1
                u(0.75)
                y(0)
                w(1)
            end
            function s.Close(z)
                require(k).DialogOpen = false
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
                local C = require(k.Components.Button)("", s.ButtonHolder, true)
                C.Title.Text = A
                for D, E in next, s.ButtonHolder:GetChildren() do
                    if E:IsA "TextButton" then
                        E.Size = UDim2.new(1 / s.Buttons, -(((s.Buttons - 1) * 10) / s.Buttons), 0, 32)
                    end
                end
                m.AddSignal(
                    C.Frame.MouseButton1Click,
                    function()
                        require(k):SafeCallback(B, s.InputBox and s.InputBox.Text or nil)
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
                s.InputHolder = New(
                    "Frame",
                    {
                        Size = UDim2.new(1, -40, 0, 36),
                        Position = UDim2.fromOffset(20, 0),
                        BackgroundTransparency = 0,
                        Parent = s.Root,
                        ThemeTag = {BackgroundColor3 = "DialogInput"},
                    },
                    {
                        New("UICorner", {CornerRadius = UDim.new(0, 6)}),
                        New("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "DialogInputLine"}}),
                    }
                )
                s.InputBox = New("TextBox", {
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
    [11] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(11)
        local h = script.Parent.Parent
        local i, j = require(h.Packages.Flipper), require(h.Creator)
        local New, springNew = j.New, i.Spring.new
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
                local clipFrame = label.Parent
                local avail = clipFrame.AbsoluteSize.X
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
                label.Size = UDim2.new(1, 0, 0, 14)
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
                local watchTarget = label.Parent or label
                rconn = watchTarget:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
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
                New(
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
                New(
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
                New(
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
                    New(
                        "UIListLayout",
                        {SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Center}
                    ),
                    New("UIPadding", {PaddingBottom = UDim.new(0, 13), PaddingTop = UDim.new(0, 13)}),
                    q.TitleLabel,
                    q.DescLabel
                }
            )
            q.Border =
                New(
                "UIStroke",
                {
                    Transparency = 0.5,
                    ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                    Color = Color3.fromRGB(0, 0, 0),
                    ThemeTag = {Color = "ElementBorder"}
                }
            )
            q.Frame =
                New(
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
                {New("UICorner", {CornerRadius = UDim.new(0, 4)}), q.Border, q.LabelHolder}
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
    [12] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(12)
        local h = script.Parent.Parent
        local i, j, k = require(h.Packages.Flipper), require(h.Creator), require(h.Acrylic)
        local springNew, instantNew, New, o = i.Spring.new, i.Instant.new, j.New, {}
        function o.Init(p, q)
            o._screenGui = q
            o.Holder =
                New(
                "Frame",
                {
                    Position = UDim2.new(1, -30, 1, -30),
                    Size = UDim2.new(0, 310, 1, -30),
                    AnchorPoint = Vector2.new(1, 1),
                    BackgroundTransparency = 1,
                    Parent = q
                },
                {
                    New(
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
            o._insideHolder = nil
        end
        local function _getNotifyParent()
            local lib = require(h)
            if not lib then return o.Holder end
            if not lib.NotifyInsideWindow then return o.Holder end
            local win = lib.Window
            if not win or not win.AcrylicPaint or not win.AcrylicPaint.Frame then return o.Holder end
            if win.Minimized then return o.Holder end
            if not o._insideHolder then
                o._insideHolder = New("Frame", {
                    Position = UDim2.new(1, -10, 1, -10),
                    Size = UDim2.new(0, 280, 1, -52),
                    AnchorPoint = Vector2.new(1, 1),
                    BackgroundTransparency = 1,
                    ZIndex = 9999,
                    Parent = win.AcrylicPaint.Frame,
                }, {
                    New("UIListLayout", {
                        HorizontalAlignment = Enum.HorizontalAlignment.Center,
                        SortOrder = Enum.SortOrder.LayoutOrder,
                        VerticalAlignment = Enum.VerticalAlignment.Bottom,
                        Padding = UDim.new(0, 10),
                    })
                })
            end
            return o._insideHolder
        end
        function o.New(p, q)
            q.Title = q.Title or "Title"
            q.Content = q.Content or "Content"
            q.SubContent = q.SubContent or ""
            q.Duration = q.Duration or nil
            q.Buttons = q.Buttons or {}
            local r = {Closed = false}
            local _acrylicOn = require(h).UseAcrylic
            r.AcrylicPaint = k.AcrylicPaint(not _acrylicOn and {Light = true} or nil)
            r.AcrylicPaint.Frame.Size = UDim2.fromScale(1, 1)
            if not _acrylicOn then
                j.OverrideTag(r.AcrylicPaint.Frame, {BackgroundColor3 = "AcrylicMain"})
                r.AcrylicPaint.Frame.BackgroundTransparency = require(h).WindowTransparent and 0.35 or 0
            end
            r.Title =
                New(
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
                New(
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
                New(
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
                New(
                "Frame",
                {
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(14, 40),
                    Size = UDim2.new(1, -28, 0, 0)
                },
                {
                    New(
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
                New(
                "TextButton",
                {
                    Text = "",
                    Position = UDim2.new(1, -14, 0, 13),
                    Size = UDim2.fromOffset(20, 20),
                    AnchorPoint = Vector2.new(1, 0),
                    BackgroundTransparency = 1
                },
                {
                    New(
                        "ImageLabel",
                        {
                            Image = require(script.Parent.Assets).Close,
                            Size = UDim2.fromOffset(16, 16),
                            Position = UDim2.fromScale(0.5, 0.5),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            BackgroundTransparency = 1,
                            ThemeTag = {ImageColor3 = "Text"}
                        }
                    )
                }
            )
            local notifCopyBtn = New("TextButton",{
                Text="",
                Position=UDim2.new(1,-38,0,13),
                Size=UDim2.fromOffset(20,20),
                AnchorPoint=Vector2.new(1,0),
                BackgroundTransparency=1,
            },{
                New("ImageLabel",{
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
            local stripe = New("Frame",{Size=UDim2.new(0,3,1,-16),Position=UDim2.new(0,6,0,8),BackgroundColor3=stripeCol,BorderSizePixel=0,ZIndex=10})
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=stripe})
            local notifRootChildren = {r.AcrylicPaint.Frame, r.Title, r.CloseButton, r.LabelHolder, stripe}
            if q.Copyable then
                table.insert(notifRootChildren, notifCopyBtn)
            end
            if notifyBg then
                local bgTint = New("Frame",{
                    Size = UDim2.new(1, 0, 1, 0),
                    BackgroundColor3 = notifyBg,
                    BackgroundTransparency = 0.85,
                    BorderSizePixel = 0,
                    ZIndex = 1,
                })
                New("UICorner",{CornerRadius=UDim.new(0,6),Parent=bgTint})
                table.insert(notifRootChildren, 1, bgTint)
            end
            if q.Icon then
                local lib = require(h)
                local ic = lib and lib.GetIcon and lib:GetIcon(q.Icon)
                if ic then
                    local nicoImg = New("ImageLabel",{Size=UDim2.fromOffset(18,18),Position=UDim2.fromOffset(14,14),BackgroundTransparency=1,ZIndex=10,ThemeTag={ImageColor3="SubText"}})
                    if type(ic)=="table" then nicoImg.Image=ic.Image or ""; nicoImg.ImageRectOffset=ic.ImageRectOffset or Vector2.new(); nicoImg.ImageRectSize=ic.ImageRectSize or Vector2.new() else nicoImg.Image=tostring(ic) end
                    table.insert(notifRootChildren, nicoImg)
                    r.Title.Position = UDim2.new(0,38,0,17)
                    r.Title.Size = UDim2.new(1,-50,0,12)
                end
            end
            r.Root =
                New(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Position = UDim2.fromScale(1, 0)},
                notifRootChildren
            )
            if Animation and Animation.Apply then
                pcall(function()
                    local Lib = require(h)
                    local thm = require(h.Themes)[Lib.Theme]
                    Animation.Apply(thm, r.AcrylicPaint.Frame, Lib.ShineEnabled)
                end)
            end
            if q.Content == "" then
                r.ContentLabel.Visible = false
            end
            if q.SubContent == "" then
                r.SubContentLabel.Visible = false
            end
            local _notifyTargetHolder = _getNotifyParent()
            local _isInsideWin = _notifyTargetHolder ~= o.Holder
            local _notifW = _isInsideWin and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 200)
            r.Holder =
                New("Frame", {BackgroundTransparency = 1, Size = _notifW, Parent = _notifyTargetHolder}, {r.Root})
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
                s:setGoal {Scale = springNew(0, {frequency = 5}), Offset = springNew(0, {frequency = 5})}
            end
            function r.Close(t)
                if not r.Closed then
                    r.Closed = true
                    if Animation and Animation.Clear and r.AcrylicPaint then
                        pcall(function() Animation.Clear(r.AcrylicPaint.Frame) end)
                    end
                    task.spawn(
                        function()
                            s:setGoal {Scale = springNew(1, {frequency = 5}), Offset = springNew(60, {frequency = 5})}
                            task.wait(0.4)
                            if require(h).UseAcrylic and r.AcrylicPaint.Model then
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
    [13] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(13)
        local h = script.Parent.Parent
        local i = require(h.Creator)
        local j = i.New
        return function(k, iconKey, l, favoriteable, favKey)
            if type(iconKey) ~= "string" then l = iconKey; iconKey = nil end
            local m = {}
            m.Layout = New("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            m.Container =
                New(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 26), Position = UDim2.fromOffset(0, 24), BackgroundTransparency = 1},
                {m.Layout}
            )
            local secHeaderChildren = {}
            if iconKey and iconKey ~= "" then
                local secIco = New("ImageLabel", {
                    Name = "_SecIcon",
                    Size = UDim2.fromOffset(14, 14),
                    Position = UDim2.fromOffset(0, 3),
                    BackgroundTransparency = 1,
                    ImageTransparency = 0.25,
                    ThemeTag = {ImageColor3 = "IconColor"},
                })
                table.insert(secHeaderChildren, secIco)
                task.defer(function()
                    local lib = require(h)
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
            local titleOffX = (iconKey and iconKey ~= "") and 22 or 0
            local titleRightPad = favoriteable and 34 or 16
            table.insert(secHeaderChildren, New("TextLabel", {RichText=true,Text=k,TextTransparency=0,FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),TextSize=18,TextXAlignment="Left",TextYAlignment="Center",Size=UDim2.new(1,-titleRightPad,0,18),Position=UDim2.fromOffset(titleOffX,2),TextColor3=Color3.fromRGB(255,255,255),ThemeTag={TextColor3="Text"}}))
            if favoriteable then
                local _secFavStar = New("TextButton", {
                    Size = UDim2.fromOffset(18, 18),
                    Position = UDim2.new(1, -18, 0, 0),
                    BackgroundTransparency = 1,
                    Text = "",
                    ZIndex = 3,
                })
                local _secFavIco = New("ImageLabel", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ZIndex = 4,
                    Parent = _secFavStar,
                })
                local function _setSecFavImage(active)
                    local iconName = active and "lucide/bookmark-check" or "lucide/bookmark"
                    local lib2 = require(h)
                    local ic = lib2 and lib2.GetIcon and lib2:GetIcon(iconName)
                    if ic and type(ic) == "table" then
                        _secFavIco.Image = ic.Image or ""
                        _secFavIco.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                        _secFavIco.ImageRectSize = ic.ImageRectSize or Vector2.new()
                    elseif ic then
                        _secFavIco.Image = tostring(ic)
                    else
                        _secFavIco.Image = active and "rbxassetid://10747363809" or "rbxassetid://10747364139"
                    end
                    if active then
                        _secFavIco.ImageColor3 = Color3.fromRGB(255, 210, 0)
                        _secFavIco.ImageTransparency = 0
                    else
                        _secFavIco.ImageColor3 = Color3.fromRGB(255, 255, 255)
                        _secFavIco.ImageTransparency = 0.35
                    end
                end
                local _secIm = require(h).InterfaceManager
                if _secIm then _setSecFavImage(_secIm:IsFavorite(favKey)) end
                i.AddSignal(_secFavStar.MouseButton1Click, function()
                    local im = require(h).InterfaceManager
                    if not im then return end
                    local nowFav = im:IsFavorite(favKey)
                    im:SetFavorite(favKey, not nowFav)
                    _setSecFavImage(not nowFav)
                end)
                table.insert(secHeaderChildren, _secFavStar)
            end
            table.insert(secHeaderChildren, m.Container)
            m.Root =
                New(
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
    [14] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(14)
        local h = script.Parent.Parent
        local i, j = require(h.Packages.Flipper), require(h.Creator)
        local New, springNew, instantNew, n, o =
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
            local im = require(h).InterfaceManager
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
                        pcall(function() win.SelectorPosMotor:setGoal(springNew(pos, {frequency = 8})) end)
                    end
                end
            end)
        end
        function o.New(p, q, r, s, favoriteable)
            local t, u = require(h), o.Window
            local v = t.Elements
            o.TabCount = o.TabCount + 1
            o.ListOrderCounter = (o.ListOrderCounter or 0) + 1
            local w, x = o.TabCount, {Selected = false, Name = q, Type = "Tab", _origOrder = o.ListOrderCounter}
            if t:GetIcon(r) then
                r = t:GetIcon(r)
            end
            if r == "" or nil then
                r = nil
            end
            x.Icon = r
            x.Frame =
                New(
                "TextButton",
                {
                    Size = UDim2.new(1, 0, 0, 34),
                    BackgroundTransparency = 1,
                    LayoutOrder = o.ListOrderCounter,
                    Parent = s,
                    ThemeTag = {BackgroundColor3 = "Tab"}
                },
                {
                    New("UICorner", {CornerRadius = UDim.new(0, 6)}),
                    New(
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
                    (function()
                        local _tabIco = New(
                            "ImageLabel",
                            {
                                AnchorPoint = Vector2.new(0, 0.5),
                                Size = UDim2.fromOffset(16, 16),
                                Position = UDim2.new(0, 8, 0.5, 0),
                                BackgroundTransparency = 1,
                                Visible = r ~= nil,
                                Image = r and (type(r) == "table" and r.Image or r) or "",
                                ImageRectOffset = (r and type(r) == "table") and r.ImageRectOffset or Vector2.new(0,0),
                                ImageRectSize = (r and type(r) == "table") and r.ImageRectSize or Vector2.new(0,0),
                                ThemeTag = {ImageColor3 = "IconColor"}
                            }
                        )
                        return _tabIco
                    end)()
                }
            )
            local y = New("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            x.ContainerFrame =
                New(
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
                    New(
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
                local scrollGui = (require(h).ScrollGUI) or (require(h).PopupGUI)
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
                        local _libCheck = require(h)
                        if not _libCheck or _libCheck.Unloaded then
                            sbHolder.Visible = false
                            task.defer(_teardown)
                            return
                        end
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
                    pcall(function() sbHolder.Visible = false end)
                    for _, conn in ipairs(_conns) do
                        pcall(function() conn:Disconnect() end)
                    end
                    table.clear(_conns)
                    task.defer(function()
                        pcall(function() sbHolder:Destroy() end)
                    end)
                end
                local _rsName = "FluentScrollbar_" .. tostring(sf):gsub("[^%w]", "")
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
                local _lib = require(h)
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
                    local lib = require(h)
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
            x.ContainerFrame.ChildAdded:Connect(function()
                task.defer(function()
                    if y.AbsoluteContentSize.Y > 0 then
                        x.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, y.AbsoluteContentSize.Y + 2)
                    else
                        local children = x.ContainerFrame:GetChildren()
                        local totalH = 0
                        for _, child in ipairs(children) do
                            if child:IsA("GuiObject") and child.Visible then
                                totalH = totalH + child.AbsoluteSize.Y
                            end
                        end
                        if totalH > 0 then
                            x.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, totalH + 20)
                        end
                    end
                end)
            end)
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
            if favoriteable then
            local _favStar = New("TextButton", {
                Size = UDim2.fromOffset(20, 20),
                Position = UDim2.new(1, -6, 0.5, 0),
                AnchorPoint = Vector2.new(1, 0.5),
                BackgroundTransparency = 1,
                Text = "",
                ZIndex = 3,
                Parent = x.Frame,
            })
            local _favIco = New("ImageLabel", {
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
            end
            o.Containers[w] = x.ContainerFrame
            o.Tabs[w] = x
            x.Container = x.ContainerFrame
            x.ScrollFrame = x.Container
            do
                local emptyOverlay = New("Frame", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ZIndex = 3,
                    Visible = false,
                    Parent = u.ContainerClip,
                })
                local emptyInner = New("Frame", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    Parent = emptyOverlay,
                })
                New("UIListLayout", {
                    FillDirection = Enum.FillDirection.Vertical,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 6),
                    Parent = emptyInner,
                })
                local emptyIcon = New("ImageLabel", {
                    Size = UDim2.fromOffset(48, 48),
                    BackgroundTransparency = 1,
                    ImageTransparency = 0.45,
                    ThemeTag = { ImageColor3 = "SubText" },
                    Parent = emptyInner,
                })
                local emptyTitle = New("TextLabel", {
                    Size = UDim2.new(1, -32, 0, 20),
                    BackgroundTransparency = 1,
                    Text = "Nothing here sucker",
                    TextSize = 15,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ThemeTag = { TextColor3 = "Text" },
                    Parent = emptyInner,
                })
                local emptySub = New("TextLabel", {
                    Size = UDim2.new(1, -48, 0, 36),
                    BackgroundTransparency = 1,
                    Text = "This tab is empty\nAsk the developer why the tabs are empty",
                    TextSize = 12,
                    TextWrapped = true,
                    LineHeight = 1.3,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ThemeTag = { TextColor3 = "SubText" },
                    Parent = emptyInner,
                })
                task.defer(function()
                    local _lib2 = require(h)
                    if _lib2 and _lib2.GetIcon then
                        local ic = _lib2:GetIcon("solar/sad-circle-bold-duotone")
                        if ic and type(ic) == "table" then
                            emptyIcon.Image = ic.Image or ""
                            emptyIcon.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            emptyIcon.ImageRectSize = ic.ImageRectSize or Vector2.new()
                        elseif ic then
                            emptyIcon.Image = tostring(ic)
                        end
                    end
                end)
                local function syncEmptyOverlay()
                    local tabVisible = x.ContainerFrame and x.ContainerFrame.Visible
                    local childCount = 0
                    if x.ContainerFrame then
                        for _, child in ipairs(x.ContainerFrame:GetChildren()) do
                            if child:IsA("Frame") or child:IsA("ScrollingFrame") or child:IsA("TextButton") or child:IsA("CanvasGroup") then
                                childCount = childCount + 1
                            end
                        end
                    end
                    emptyOverlay.Visible = tabVisible and (childCount <= 0)
                end
                j.AddSignal(x.ContainerFrame:GetPropertyChangedSignal("Visible"), syncEmptyOverlay)
                j.AddSignal(x.ContainerFrame.ChildAdded, syncEmptyOverlay)
                j.AddSignal(x.ContainerFrame.ChildRemoved, syncEmptyOverlay)
                x._emptyOverlay = emptyOverlay
                x._emptyTitleLbl = emptyTitle
                x._emptySubLbl = emptySub
                x._emptyIconImg = emptyIcon
                x._syncEmptyOverlay = syncEmptyOverlay
                function x:SetEmptyState(cfg2)
                    cfg2 = cfg2 or {}
                    if cfg2.Text then emptyTitle.Text = cfg2.Text end
                    if cfg2.SubText then emptySub.Text = cfg2.SubText end
                    if cfg2.Icon then
                        local _lib3 = require(h)
                        if _lib3 and _lib3.GetIcon then
                            local ic2 = _lib3:GetIcon(cfg2.Icon)
                            if ic2 and type(ic2) == "table" then
                                emptyIcon.Image = ic2.Image or ""
                                emptyIcon.ImageRectOffset = ic2.ImageRectOffset or Vector2.new()
                                emptyIcon.ImageRectSize = ic2.ImageRectSize or Vector2.new()
                            elseif ic2 then
                                emptyIcon.Image = tostring(ic2)
                            end
                        end
                    end
                end
            end
            function x.AddSection(z, A, iconKey, favoriteable)
                x._elementCount = (x._elementCount or 0) + 1
                local _order = x._elementCount
                local favKey = tostring(x.Name) .. "_Section_" .. tostring(A)
                local B, C = {Type = "Section"}, require(n.Section)(A, iconKey, x.Container, favoriteable == true, favKey)
                B.Container = C.Container
                B.ScrollFrame = x.Container
                C.Root.LayoutOrder = _order
                setmetatable(B, v)
                return B
            end
            function x.AddCollapsibleSection(z, A, iconKey, openState)
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

                local outerWrap2 = New("Frame", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    LayoutOrder = _order,
                    Parent = x.Container,
                })

                local header2 = New("TextButton", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    Text = "",
                    AutoButtonColor = false,
                    Parent = outerWrap2,
                })

                local titleOffX2 = (iconKey2 and iconKey2 ~= "") and 22 or 0
                if iconKey2 and iconKey2 ~= "" then
                    local hIco2 = New("ImageLabel", {
                        Name = "_SecIcon",
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.fromOffset(0, 3),
                        BackgroundTransparency = 1,
                        ImageTransparency = 0.25,
                        ThemeTag = {ImageColor3 = "IconColor"},
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

                local titleLbl2 = New("TextLabel", {
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

                local arrowIco2 = New("ImageLabel", {
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

                local contentBg2 = New("Frame", {
                    Size = UDim2.new(1, 0, 0, 0),
                    Position = UDim2.fromOffset(0, 26),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    LayoutOrder = 2,
                    Parent = outerWrap2,
                })
                local innerLayout2 = New("UIListLayout", {
                    Padding = UDim.new(0, pad2),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = contentBg2,
                })
                New("UIPadding", {
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
            local _tabTitleLbl = x.Frame and x.Frame:FindFirstChildWhichIsA("TextLabel")
            function x:SetTitle(s)
                x.Name = tostring(s or "")
                if _tabTitleLbl then _tabTitleLbl.Text = tostring(s or "") end
            end
            function x:SetDesc(s) end
            function x:Destroy()
                if x.Frame then x.Frame:Destroy() end
                if x.ContainerFrame then x.ContainerFrame:Destroy() end
                if x._emptyOverlay then x._emptyOverlay:Destroy() end
            end
            setmetatable(x, v)
            return x
        end
        local ts = game:GetService("TweenService")
        local function twHt(inst, goal, dur)
            ts:Create(inst, TweenInfo.new(dur or 0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), goal):Play()
        end
        function o.SelectTab(p, q)
            local r = o.Window
            if not r then return end
            if not o.Tabs[q] then return end
            o.SelectedTab = q
            local isHeaderTab = o.Tabs[q].IsHeaderTab == true
            for s, t in next, o.Tabs do
                t.SetTransparency(1)
                t.Selected = false
            end
            o.Tabs[q].SetTransparency(0.89)
            o.Tabs[q].Selected = true

            if r.RefreshSearchFilter then
                task.defer(r.RefreshSearchFilter)
            end
            if isHeaderTab then
                if r.SelectorFrame then r.SelectorFrame.Visible = false end
                if r._headerSelectorFrame then
                    local ht = o.Tabs[q]._htRef
                    if ht and ht.BgFrame then
                        local targetW = ht._fullW
                        local sel = r._headerSelectorFrame
                        local titleBar = r.TitleBar
                        local elapsed = 0
                        local _rs = game:GetService("RunService")
                        local _conn
                        _conn = _rs.Heartbeat:Connect(function(dt)
                            elapsed = elapsed + dt
                            if not ht.BgFrame or not ht.BgFrame.Parent or not titleBar or not titleBar.Frame then
                                _conn:Disconnect(); return
                            end
                            local bw = ht.BgFrame.AbsoluteSize.X
                            if bw >= targetW - 2 or elapsed > 0.4 then
                                _conn:Disconnect()
                                local holderAp = r._headerTabHolder.AbsolutePosition
                                local holderW  = r._headerTabHolder.AbsoluteSize.X
                                local tabAp    = ht.BgFrame.AbsolutePosition
                                local tabCx    = tabAp.X + bw * 0.5
                                local holderCx = holderAp.X + holderW * 0.5
                                local offsetFromCenter = tabCx - holderCx
                                local selW = math.max(targetW - 16, 20)
                                local _selY = (r._headerSelY and r._headerSelY > 0)
                                    and UDim2.new(0.5, offsetFromCenter, 0, r._headerSelY)
                                    or  UDim2.new(0.5, offsetFromCenter, 1, -4)
                                twHt(sel, {
                                    Size     = UDim2.fromOffset(selW, 2),
                                    Position = _selY,
                                    BackgroundTransparency = 0,
                                }, 0.12)
                            end
                        end)
                    end
                end
            else

                if r._headerSelectorFrame then
                    twHt(r._headerSelectorFrame, {BackgroundTransparency = 1}, 0.15)
                end
                local tabPos = o:GetCurrentTabPos()
                if tabPos then
                    if r.SelectorFrame then r.SelectorFrame.Visible = true end
                    r.SelectorPosMotor:setGoal(springNew(tabPos, {frequency = 6}))
                end
            end
            task.spawn(
                function()
                    r.ContainerBackMotor:setGoal(springNew(1, {frequency = 12}))
                    r.ContainerPosMotor:setGoal(springNew(64, {frequency = 12}))
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
                    r.ContainerPosMotor:setGoal(springNew(54, {frequency = 7}))
                    r.ContainerBackMotor:setGoal(springNew(0, {frequency = 9}))
                end
            )
        end
        function o.NewHeader(p, q, r, s)
            local t2 = require(h)
            local elemMeta = t2.Elements
            local win = o.Window
            local holder = win and win._headerTabHolder
            if not holder then return end
            if t2:GetIcon(r) then r = t2:GetIcon(r) end
            if r == "" then r = nil end
            local txtService = game:GetService("TextService")
            local txtW = 0
            pcall(function()
                local params = Instance.new("GetTextBoundsParams")
                params.Text = q
                params.Size = 12
                params.Font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium)
                params.Width = math.huge
                txtW = txtService:GetTextBoundsAsync(params).X
            end)
            local fullW = 36 + txtW + 10

            o.TabCount = o.TabCount + 1
            o.ListOrderCounter = (o.ListOrderCounter or 0) + 1
            local tabIdx = o.TabCount
            local ht = {
                Selected    = false,
                Name        = q,
                Icon        = r,
                _fullW      = fullW,
                _hovering   = false,
                Type        = "Tab",
                IsHeaderTab = true,
            }

            ht.SetTransparency = function(alpha)
                twHt(ht.BgFrame, {BackgroundTransparency = alpha >= 1 and 1 or 0.82}, 0.18)
                twHt(ht.IconImg, {ImageTransparency = alpha >= 1 and 0.5 or 0}, 0.18)
                twHt(ht.Label, {TextTransparency = alpha >= 1 and 1 or 0}, 0.18)
                if alpha >= 1 and not ht._hovering then
                    twHt(ht.BgFrame, {Size = UDim2.fromOffset(36, 28)}, 0.18)
                    twHt(ht.IconImg, {Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5)}, 0.18)
                elseif alpha < 1 then
                    twHt(ht.BgFrame, {Size = UDim2.fromOffset(fullW, 28)}, 0.18)
                    twHt(ht.IconImg, {Position = UDim2.new(0, 8, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}, 0.18)
                end
            end
            ht._htRef = ht
            o.Tabs[tabIdx] = ht
            ht.BgFrame = New("Frame", {
                Name = "_HTab_"..tabIdx,
                Size = UDim2.fromOffset(36, 28),
                BackgroundTransparency = 1,
                LayoutOrder = tabIdx,
                ClipsDescendants = true,
                Parent = holder,
            }, {New("UICorner", {CornerRadius = UDim.new(0, 6)})})
            j.AddThemeObject(ht.BgFrame, {BackgroundColor3 = "Tab"})
            ht.IconImg = New("ImageLabel", {
                Name = "_HTIcon",
                Size = UDim2.fromOffset(16, 16),
                Position = UDim2.new(0.5, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundTransparency = 1,
                ImageTransparency = 0.5,
                ZIndex = 2,
                Parent = ht.BgFrame,
            })
            j.AddThemeObject(ht.IconImg, {ImageColor3 = "IconColor"})
            if r then
                if type(r) == "table" then
                    ht.IconImg.Image = r.Image or ""
                    ht.IconImg.ImageRectOffset = r.ImageRectOffset or Vector2.new()
                    ht.IconImg.ImageRectSize = r.ImageRectSize or Vector2.new()
                else
                    ht.IconImg.Image = tostring(r)
                end
            end
            ht.Label = New("TextLabel", {
                Name = "_HTLabel",
                Text = q,
                TextSize = 12,
                FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
                TextTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextYAlignment = Enum.TextYAlignment.Center,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -(16 + 12), 1, 0),
                Position = UDim2.fromOffset(16 + 10, 0),
                ZIndex = 2,
                Parent = ht.BgFrame,
            })
            j.AddThemeObject(ht.Label, {TextColor3 = "Text"})
            local hitBox = New("TextButton", {
                Name = "_HTHit",
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                Text = "",
                ZIndex = 6,
                Parent = ht.BgFrame,
            })
            local listLayout2 = New("UIListLayout", {Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
            ht.ContainerFrame = New("ScrollingFrame", {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
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
                ScrollingDirection = Enum.ScrollingDirection.Y,
                Parent = win.ContainerClip,
            }, {
                listLayout2,
                New("UIPadding", {
                    PaddingRight = UDim.new(0, 8),
                    PaddingLeft = UDim.new(0, 4),
                    PaddingTop = UDim.new(0, 4),
                    PaddingBottom = UDim.new(0, 4),
                }),
            })
            j.AddSignal(listLayout2:GetPropertyChangedSignal("AbsoluteContentSize"), function()
                ht.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout2.AbsoluteContentSize.Y + 2)
            end)
            ht.ContainerFrame.ChildAdded:Connect(function()
                task.defer(function()
                    if listLayout2.AbsoluteContentSize.Y > 0 then
                        ht.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout2.AbsoluteContentSize.Y + 2)
                    else
                        local totalH = 0
                        for _, child in ipairs(ht.ContainerFrame:GetChildren()) do
                            if child:IsA("GuiObject") and child.Visible then
                                totalH = totalH + child.AbsoluteSize.Y
                            end
                        end
                        if totalH > 0 then
                            ht.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, totalH + 20)
                        end
                    end
                end)
            end)
            o.Containers[tabIdx] = ht.ContainerFrame
            ht.Container = ht.ContainerFrame
            ht.ScrollFrame = ht.ContainerFrame
            ht.Type = "Tab"
            ht._elementCount = 0
            do
                local htEmptyOverlay = New("Frame", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ZIndex = 3,
                    Visible = false,
                    Parent = win.ContainerClip,
                })
                local htEmptyInner = New("Frame", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    Parent = htEmptyOverlay,
                })
                New("UIListLayout", {
                    FillDirection = Enum.FillDirection.Vertical,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                    Padding = UDim.new(0, 6),
                    Parent = htEmptyInner,
                })
                local htEmptyIcon = New("ImageLabel", {
                    Size = UDim2.fromOffset(48, 48),
                    BackgroundTransparency = 1,
                    ImageTransparency = 0.45,
                    ThemeTag = { ImageColor3 = "SubText" },
                    Parent = htEmptyInner,
                })
                local htEmptyTitle = New("TextLabel", {
                    Size = UDim2.new(1, -32, 0, 20),
                    BackgroundTransparency = 1,
                    Text = "Nothing here sucker",
                    TextSize = 15,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ThemeTag = { TextColor3 = "Text" },
                    Parent = htEmptyInner,
                })
                local htEmptySub = New("TextLabel", {
                    Size = UDim2.new(1, -48, 0, 36),
                    BackgroundTransparency = 1,
                    Text = "This tab is empty\nAsk the developer why the tabs are empty",
                    TextSize = 12,
                    TextWrapped = true,
                    LineHeight = 1.3,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ThemeTag = { TextColor3 = "SubText" },
                    Parent = htEmptyInner,
                })
                task.defer(function()
                    if t2 and t2.GetIcon then
                        local ic = t2:GetIcon("solar/sad-circle-bold-duotone")
                        if ic and type(ic) == "table" then
                            htEmptyIcon.Image = ic.Image or ""
                            htEmptyIcon.ImageRectOffset = ic.ImageRectOffset or Vector2.new()
                            htEmptyIcon.ImageRectSize = ic.ImageRectSize or Vector2.new()
                        elseif ic then
                            htEmptyIcon.Image = tostring(ic)
                        end
                    end
                end)
                local function htSyncEmpty()
                    local tabVisible = ht.ContainerFrame and ht.ContainerFrame.Visible
                    local childCount = 0
                    if ht.ContainerFrame then
                        for _, child in ipairs(ht.ContainerFrame:GetChildren()) do
                            if child:IsA("Frame") or child:IsA("ScrollingFrame") or child:IsA("TextButton") or child:IsA("CanvasGroup") then
                                childCount = childCount + 1
                            end
                        end
                    end
                    htEmptyOverlay.Visible = tabVisible and (childCount <= 0)
                end
                j.AddSignal(ht.ContainerFrame:GetPropertyChangedSignal("Visible"), htSyncEmpty)
                j.AddSignal(ht.ContainerFrame.ChildAdded, htSyncEmpty)
                j.AddSignal(ht.ContainerFrame.ChildRemoved, htSyncEmpty)
                ht._emptyOverlay = htEmptyOverlay
                ht._emptyTitleLbl = htEmptyTitle
                ht._emptySubLbl = htEmptySub
                ht._emptyIconImg = htEmptyIcon
                function ht:SetEmptyState(cfg2)
                    cfg2 = cfg2 or {}
                    if cfg2.Text then htEmptyTitle.Text = cfg2.Text end
                    if cfg2.SubText then htEmptySub.Text = cfg2.SubText end
                    if cfg2.Icon and t2 and t2.GetIcon then
                        local ic2 = t2:GetIcon(cfg2.Icon)
                        if ic2 and type(ic2) == "table" then
                            htEmptyIcon.Image = ic2.Image or ""
                            htEmptyIcon.ImageRectOffset = ic2.ImageRectOffset or Vector2.new()
                            htEmptyIcon.ImageRectSize = ic2.ImageRectSize or Vector2.new()
                        elseif ic2 then
                            htEmptyIcon.Image = tostring(ic2)
                        end
                    end
                end
            end
            function ht.AddSection(self2, title2, iconKey2, favoriteable2)
                ht._elementCount = ht._elementCount + 1
                local _order = ht._elementCount
                local built = require(n.Section)(title2, iconKey2, ht.ContainerFrame, favoriteable2, tostring(ht.Name) .. "_Section_" .. tostring(title2))
                local secObj = {Type = "Section", Container = built.Container, ScrollFrame = ht.ContainerFrame}
                built.Root.LayoutOrder = _order
                setmetatable(secObj, elemMeta)
                return secObj
            end
            function ht.AddCollapsibleSection(self2, A, iconKey2, openState)
                local cfg = {}
                if type(A) == "table" then
                    cfg = A
                else
                    cfg.Title = A
                    if type(iconKey2) == "boolean" then
                        cfg.Open = iconKey2
                    else
                        cfg.Icon = iconKey2
                        if openState ~= nil then cfg.Open = openState end
                    end
                end
                local saveIdx = cfg.Idx
                ht._elementCount = ht._elementCount + 1
                local _order = ht._elementCount
                local tabLib2 = t2
                local title3 = tostring(cfg.Title or "Section")
                local iconKey3 = cfg.Icon
                local startOpen3 = cfg.Open ~= false
                local pad3 = 5
                local ts3 = game:GetService("TweenService")
                local outerWrap3 = New("Frame", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    LayoutOrder = _order,
                    Parent = ht.ContainerFrame,
                })
                local header3 = New("TextButton", {
                    Size = UDim2.new(1, 0, 0, 26),
                    BackgroundTransparency = 1,
                    Text = "",
                    AutoButtonColor = false,
                    Parent = outerWrap3,
                })
                local titleOffX3 = (iconKey3 and iconKey3 ~= "") and 22 or 0
                if iconKey3 and iconKey3 ~= "" then
                    local hIco3 = New("ImageLabel", {
                        Name = "_SecIcon",
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.fromOffset(0, 3),
                        BackgroundTransparency = 1,
                        ImageTransparency = 0.25,
                        ThemeTag = {ImageColor3 = "IconColor"},
                        Parent = header3,
                    })
                    task.defer(function()
                        local ic3 = tabLib2.GetIcon and tabLib2:GetIcon(iconKey3)
                        if ic3 then
                            if type(ic3) == "table" then
                                hIco3.Image = ic3.Image or ""
                                hIco3.ImageRectOffset = ic3.ImageRectOffset or Vector2.new()
                                hIco3.ImageRectSize = ic3.ImageRectSize or Vector2.new()
                            else
                                hIco3.Image = tostring(ic3)
                            end
                        end
                    end)
                end
                local titleLbl3 = New("TextLabel", {
                    RichText = true,
                    Text = title3,
                    TextTransparency = 0,
                    FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
                    TextSize = 18,
                    TextXAlignment = "Left",
                    TextYAlignment = "Center",
                    Size = UDim2.new(1, -36, 0, 18),
                    Position = UDim2.fromOffset(titleOffX3, 2),
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"},
                    Parent = header3,
                })
                local arrowIco3 = New("ImageLabel", {
                    Name = "_SecChevron",
                    Size = UDim2.fromOffset(16, 16),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, 0, 0, 11),
                    BackgroundTransparency = 1,
                    ImageColor3 = Color3.fromRGB(255, 255, 255),
                    ImageTransparency = 0.25,
                    ThemeTag = {ImageColor3 = "Text"},
                    Parent = header3,
                })
                do
                    local arIc3 = tabLib2.GetIcon and tabLib2:GetIcon("chevron-right")
                    if type(arIc3) == "table" then
                        arrowIco3.Image = arIc3.Image or ""
                        arrowIco3.ImageRectOffset = arIc3.ImageRectOffset or Vector2.new()
                        arrowIco3.ImageRectSize = arIc3.ImageRectSize or Vector2.new()
                    elseif arIc3 then
                        arrowIco3.Image = tostring(arIc3)
                    else
                        arrowIco3.Image = "rbxassetid://10709791437"
                    end
                end
                local contentBg3 = New("Frame", {
                    Size = UDim2.new(1, 0, 0, 0),
                    Position = UDim2.fromOffset(0, 26),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    LayoutOrder = 2,
                    Parent = outerWrap3,
                })
                local innerLayout3 = New("UIListLayout", {
                    Padding = UDim.new(0, pad3),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = contentBg3,
                })
                New("UIPadding", {
                    PaddingTop = UDim.new(0, pad3),
                    PaddingBottom = UDim.new(0, pad3),
                    PaddingLeft = UDim.new(0, 4),
                    PaddingRight = UDim.new(0, 4),
                    Parent = contentBg3,
                })
                local isOpen3 = false
                local innerH3 = 0
                local dur3 = 0.22
                local ti3 = TweenInfo.new(dur3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
                local colMod3 = {
                    Type = "Section",
                    SaveType = "CollapsibleSection",
                    Container = contentBg3,
                    ScrollFrame = ht.ContainerFrame,
                    _elementCount = 0,
                    Value = startOpen3,
                }
                local function applyArrow3(open, anim)
                    local rot = open and 90 or 0
                    if anim then
                        ts3:Create(arrowIco3, TweenInfo.new(dur3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = rot}):Play()
                    else
                        arrowIco3.Rotation = rot
                    end
                end
                local function setOpen3(open, anim)
                    isOpen3 = open
                    colMod3.Value = open
                    applyArrow3(open, anim)
                    local ch = open and (innerH3 + pad3 * 2) or 0
                    local oh = 26 + ch
                    if anim then
                        ts3:Create(contentBg3, ti3, {Size = UDim2.new(1, 0, 0, ch)}):Play()
                        ts3:Create(outerWrap3, ti3, {Size = UDim2.new(1, 0, 0, oh)}):Play()
                    else
                        contentBg3.Size = UDim2.new(1, 0, 0, ch)
                        outerWrap3.Size = UDim2.new(1, 0, 0, oh)
                    end
                end
                innerLayout3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    local newH = innerLayout3.AbsoluteContentSize.Y
                    innerH3 = newH
                    if isOpen3 then
                        local ch = newH + pad3 * 2
                        contentBg3.Size = UDim2.new(1, 0, 0, ch)
                        outerWrap3.Size = UDim2.new(1, 0, 0, 26 + ch)
                    end
                end)
                header3.MouseButton1Click:Connect(function()
                    setOpen3(not isOpen3, true)
                end)
                task.defer(function()
                    innerH3 = innerLayout3.AbsoluteContentSize.Y
                    setOpen3(startOpen3, false)
                end)
                function colMod3:Open(anim)   setOpen3(true,  anim ~= false) end
                function colMod3:Close(anim)  setOpen3(false, anim ~= false) end
                function colMod3:Toggle(anim) setOpen3(not isOpen3, anim ~= false) end
                function colMod3:IsOpen()     return isOpen3 end
                function colMod3:SetValue(v)  setOpen3(v and true or false, true) end
                function colMod3:SetTitle(s)  titleLbl3.Text = tostring(s or "") end
                setmetatable(colMod3, elemMeta)
                if saveIdx and tabLib2.Options then tabLib2.Options[saveIdx] = colMod3 end
                return colMod3
            end
            ht.Section = ht.AddSection
            ht.CollapsibleSection = ht.AddCollapsibleSection
            function ht:SetTitle(s)
                ht.Name = tostring(s or "")
                if ht.Label then ht.Label.Text = tostring(s or "") end
            end
            function ht:SetDesc(s) end
            function ht:Destroy()
                if ht.BgFrame then ht.BgFrame:Destroy() end
                if ht.ContainerFrame then ht.ContainerFrame:Destroy() end
                if ht._emptyOverlay then ht._emptyOverlay:Destroy() end
            end
            setmetatable(ht, elemMeta)
            j.AddSignal(hitBox.MouseEnter, function()
                ht._hovering = true
                twHt(ht.BgFrame, {Size = UDim2.fromOffset(fullW, 28)}, 0.18)
                twHt(ht.IconImg, {Position = UDim2.new(0, 8, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}, 0.18)
                twHt(ht.Label, {TextTransparency = ht.Selected and 0 or 0.35}, 0.18)
                twHt(ht.IconImg, {ImageTransparency = 0}, 0.18)
            end)
            j.AddSignal(hitBox.MouseLeave, function()
                ht._hovering = false
                if ht.Selected then return end
                twHt(ht.BgFrame, {Size = UDim2.fromOffset(36, 28)}, 0.2)
                twHt(ht.IconImg, {Position = UDim2.new(0.5, 0, 0.5, 0), AnchorPoint = Vector2.new(0.5, 0.5)}, 0.2)
                twHt(ht.Label, {TextTransparency = 1}, 0.18)
                twHt(ht.IconImg, {ImageTransparency = 0.5}, 0.18)
            end)
            j.AddSignal(hitBox.MouseButton1Click, function()
                o:SelectTab(tabIdx)
            end)
            if o.TabCount == 1 then
                task.defer(function() o:SelectTab(tabIdx) end)
            end
            return ht
        end
        return o
    end,
    [15] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(15)
        local h, i = game:GetService "TextService", script.Parent.Parent
        local j, k = require(i.Packages.Flipper), require(i.Creator)
        local l = k.New
        return function(m, n)
            n = n or false
            local o = {}
            o.Input =
                New(
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
                New(
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
                New(
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
                New(
                "Frame",
                {
                    Size = UDim2.new(0, 0, 0, 30),
                    BackgroundTransparency = n and 0.9 or 0,
                    Parent = m,
                    ThemeTag = {BackgroundColor3 = n and "Input" or "DialogInput"}
                },
                {
                    New("UICorner", {CornerRadius = UDim.new(0, 4)}),
                    New(
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
    [16] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(16)
        local h, i = script.Parent.Parent, require(script.Parent.Assets)
        local j, k = require(h.Creator), require(h.Packages.Flipper)
        local New, m = j.New, j.AddSignal
        return function(n)
            local o, p, q =
                {},
                require(h),
                function(o, p, q, r)
                    local s = {
                        Callback = r or function()
                            end
                    }
                    s.Frame =
                        New(
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
                            New("UICorner", {CornerRadius = UDim.new(0, 7)}),
                            New(
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
                    creatorAddSignal(
                        s.Frame.MouseEnter,
                        function()
                            u(0.94)
                        end
                    )
                    creatorAddSignal(
                        s.Frame.MouseLeave,
                        function()
                            u(1, true)
                        end
                    )
                    creatorAddSignal(
                        s.Frame.MouseButton1Down,
                        function()
                            u(0.96)
                        end
                    )
                    creatorAddSignal(
                        s.Frame.MouseButton1Up,
                        function()
                            u(0.94)
                        end
                    )
                    creatorAddSignal(s.Frame.MouseButton1Click, s.Callback)
                    s.SetCallback = function(v)
                        s.Callback = v
                    end
                    return s
                end
            local _rightReserved = 114


            o.Frame =
                New(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 42), BackgroundTransparency = 1, ZIndex = 5, Parent = n.Parent},
                {
                    New(
                        "Frame",
                        {
                            Size = UDim2.new(1, -16 - _rightReserved - 8, 1, 0),
                            Position = UDim2.new(0, 16, 0, 0),
                            BackgroundTransparency = 1,
                            ClipsDescendants = true,
                        },
                        {
                            New(
                                "UIListLayout",
                                {
                                    Padding = UDim.new(0, 7),
                                    FillDirection = Enum.FillDirection.Horizontal,
                                    VerticalAlignment = Enum.VerticalAlignment.Center,
                                    SortOrder = Enum.SortOrder.LayoutOrder
                                }
                            ),
                            (function()
                                local _titleIco = New(
                                    "ImageLabel",
                                    {
                                        Name = "TitleIcon",
                                        Image = "",
                                        Size = UDim2.fromOffset(16, 16),
                                        BackgroundTransparency = 1,
                                        Visible = n.Icon ~= nil,
                                        LayoutOrder = 0,
                                        ThemeTag = {ImageColor3 = "IconColor"}
                                    }
                                )
                                return _titleIco
                            end)(),
                            New(
                                "Frame",
                                {
                                    Name = "TitleTextStack",
                                    Size = UDim2.new(0, 0, 1, 0),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    BackgroundTransparency = 1,
                                    LayoutOrder = 1,
                                },
                                {
                                    New(
                                        "UIListLayout",
                                        {
                                            FillDirection = Enum.FillDirection.Vertical,
                                            VerticalAlignment = Enum.VerticalAlignment.Center,
                                            SortOrder = Enum.SortOrder.LayoutOrder,
                                        }
                                    ),
                                    New(
                                        "TextLabel",
                                        {
                                            Name = "Title",
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
                                            Size = UDim2.new(0, 0, 0, 15),
                                            AutomaticSize = Enum.AutomaticSize.X,
                                            BackgroundTransparency = 1,
                                            LayoutOrder = 0,
                                            ThemeTag = {TextColor3 = "Text"}
                                        }
                                    ),
                                    New(
                                        "TextLabel",
                                        {
                                            Name = "SubTitle",
                                            RichText = true,
                                            Text = n.SubTitle,
                                            TextTransparency = 0.4,
                                            Visible = n.SubTitle ~= nil and n.SubTitle ~= "",
                                            FontFace = Font.new(
                                                "rbxasset://fonts/families/GothamSSm.json",
                                                Enum.FontWeight.Regular,
                                                Enum.FontStyle.Normal
                                            ),
                                            TextSize = 10,
                                            TextXAlignment = "Left",
                                            TextYAlignment = "Center",
                                            Size = UDim2.new(0, 0, 0, 13),
                                            AutomaticSize = Enum.AutomaticSize.X,
                                            BackgroundTransparency = 1,
                                            LayoutOrder = 1,
                                            ThemeTag = {TextColor3 = "Text"}
                                        }
                                    ),
                                }
                            ),
                            New(
                                "Frame",
                                {
                                    Name = "VersionBadge",
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    Size = UDim2.new(0, 0, 0, 16),
                                    BackgroundColor3 = Color3.fromRGB(45, 165, 90),
                                    BackgroundTransparency = 0,
                                    LayoutOrder = 2,
                                    Visible = n.Version ~= nil and n.Version ~= "",
                                },
                                {
                                    New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                    New("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 7)}),
                                    New(
                                        "TextLabel",
                                        {
                                            Name = "VersionText",
                                            RichText = true,
                                            Text = tostring(n.Version or ""),
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
                            ),
                            New(
                                "Frame",
                                {
                                    Name = "TagsHolder",
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    Size = UDim2.new(0, 0, 0, 16),
                                    BackgroundTransparency = 1,
                                    LayoutOrder = 3,
                                    Visible = type(n.Tags) == "table" and #n.Tags > 0,
                                },
                                {
                                    New(
                                        "UIListLayout",
                                        {
                                            Padding = UDim.new(0, 5),
                                            FillDirection = Enum.FillDirection.Horizontal,
                                            VerticalAlignment = Enum.VerticalAlignment.Center,
                                            SortOrder = Enum.SortOrder.LayoutOrder,
                                        }
                                    ),
                                }
                            ),
                        }
                    ),
                    New(
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
            if type(n.Tags) == "table" and #n.Tags > 0 then
                local tagsHolder = o.Frame:FindFirstChild("TagsHolder", true)
                if tagsHolder then
                    for tagIdx, tagDef in ipairs(n.Tags) do
                        if type(tagDef) == "table" and tagDef.Text then
                            New(
                                "Frame",
                                {
                                    Name = "Tag" .. tostring(tagIdx),
                                    AutomaticSize = Enum.AutomaticSize.X,
                                    Size = UDim2.new(0, 0, 0, 16),
                                    BackgroundColor3 = tagDef.Color or Color3.fromRGB(45, 165, 90),
                                    BackgroundTransparency = 0,
                                    LayoutOrder = tagIdx,
                                    Parent = tagsHolder,
                                },
                                {
                                    New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                    New("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 7)}),
                                    New(
                                        "TextLabel",
                                        {
                                            RichText = true,
                                            Text = tostring(tagDef.Text),
                                            TextColor3 = tagDef.TextColor or Color3.fromRGB(255, 255, 255),
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
                        end
                    end
                end
            end
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
                    local lib = require(h)
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
    [17] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(17)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            script.Parent.Parent
        local l, m, n, o, p = require(k.Packages.Flipper), require(k.Creator), require(k.Acrylic), require(script.Parent.Assets), script.Parent
        local springNew, instantNew, CreatorNew = l.Spring.new, l.Instant.new, m.New
        return function(t)
            local u, v, w, x, y, z =
                require(k),
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
                CreatorNew(
                    "Frame",
                    {
                        Size = UDim2.fromOffset(4, 0),
                        BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                        Position = UDim2.fromOffset(0, 17),
                        AnchorPoint = Vector2.new(0, 0.5),
                        ZIndex = 1,
                        ThemeTag = {BackgroundColor3 = "Accent"}
                    },
                    {CreatorNew("UICorner", {CornerRadius = UDim.new(0, 2)})}
                ),
                CreatorNew(
                    "Frame",
                    {Size = UDim2.fromOffset(22, 22), BackgroundTransparency = 1, Position = UDim2.new(1, -22, 1, -22)},
                    {CreatorNew("ImageLabel",{Size=UDim2.fromOffset(18,18),Position=UDim2.new(1,-3,1,-3),AnchorPoint=Vector2.new(1,1),BackgroundTransparency=1,Image="rbxassetid://10709767750",ImageTransparency=0,ThemeTag={ImageColor3="Accent"}})}
                )
            local uiTopH = 54
            local topOffset = 0
            local botOffset = 0
            local sidebarChildren = {}

            local function mkCorner(r) return CreatorNew("UICorner",{CornerRadius=UDim.new(0,r)}) end
            local function mkStroke(t2,thk) return CreatorNew("UIStroke",{Transparency=t2,Thickness=thk or tonumber(m.GetThemeProperty("ElementBorderThickness")) or 1,ThemeTag={Color="InElementBorder"}}) end

            if t.TabLogo then
                local logoH = 110
                local logoFrame = CreatorNew("Frame",{
                    Name="TabLogoFrame",
                    Size=UDim2.new(1,0,0,logoH),
                    Position=UDim2.fromOffset(0,topOffset),
                    BackgroundTransparency=0.85,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(10), mkStroke(0.5),
                })
                local logoImg = CreatorNew("ImageLabel",{
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
                local anoCfg = type(t.Anonymous) == "table" and t.Anonymous or {}
                local showAno = anoCfg.ShowAno
                if showAno == nil then showAno = true end
                local anoTitle = anoCfg.AnoUserInfoTitle or "Anonymous"
                local anoSubtitle = anoCfg.AnoUserInfoSubTitle or "@•••••••"
                local anonActive = anoCfg.Default == true

                local panel = CreatorNew("Frame",{
                    Name="UserInfoTop",
                    Size=UDim2.new(1,0,0,h),
                    Position=UDim2.fromOffset(0,topOffset),
                    BackgroundTransparency=0.78,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(8), mkStroke(0.55),
                    CreatorNew("ImageLabel",{
                        Name="AvatarIcon",
                        Size=UDim2.fromOffset(36,36),
                        Position=UDim2.new(0,7,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                        BackgroundTransparency=0.5, Image=av,
                        ThemeTag={BackgroundColor3="Tab"},
                    },{mkCorner(18)}),
                    CreatorNew("TextLabel",{
                        Name="DisplayName",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                        Text=anonActive and anoTitle or realDisplayName,
                        TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,14), Position=UDim2.new(0,49,0,12),
                        ThemeTag={TextColor3="Text"},
                    }),
                    CreatorNew("TextLabel",{
                        Name="Username",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Text=anonActive and anoSubtitle or realUsername,
                        TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,13), Position=UDim2.new(0,49,0,30),
                        ThemeTag={TextColor3="SubText"},
                    }),
                    CreatorNew("Frame",{Size=UDim2.new(1,-10,0,1),Position=UDim2.new(0,5,1,-1),
                        BackgroundTransparency=0.7,ThemeTag={BackgroundColor3="TitleBarLine"}}),
                })

                local avatarImg = panel:FindFirstChild("AvatarIcon")
                local function resolveIconAsset(src, targetImg)
                    if type(src) ~= "string" or src == "" then return end
                    if src:match("^rbxassetid://") or src:match("^rbxasset://") then
                        targetImg.Image = src
                    elseif src:match("^%d+$") then
                        targetImg.Image = "rbxassetid://" .. src
                    elseif src:match("^https?://") then
                        task.spawn(function()
                            local resolved = x.MediaManager and x.MediaManager:Image(src)
                            if resolved and resolved ~= "" and targetImg.Parent then
                                targetImg.Image = resolved
                            end
                        end)
                    end
                end
                if t.UserInfoIcons and avatarImg then
                    resolveIconAsset(t.UserInfoIcons, avatarImg)
                end

                if showAno then
                    local eyeBtn = CreatorNew("TextButton",{
                        Name="AnonToggle",
                        Size=UDim2.fromOffset(22,22),
                        Position=UDim2.new(1,-4,0,4), AnchorPoint=Vector2.new(1,0),
                        BackgroundTransparency=0.7, Text="",
                        Parent=panel,
                        ThemeTag={BackgroundColor3="Tab"},
                    },{
                        CreatorNew("UICorner",{CornerRadius=UDim.new(0,5)}),
                        CreatorNew("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="InElementBorder"}}),
                        CreatorNew("ImageLabel",{
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
                            setEyeIcon(anonActive)
                            local dnLbl = panel:FindFirstChild("DisplayName")
                            local unLbl = panel:FindFirstChild("Username")
                            local function applyAnoIcon(active)
                                if not avatarImg then return end
                                if active and anoCfg.Icons then
                                    resolveIconAsset(anoCfg.Icons, avatarImg)
                                elseif not active then
                                    avatarImg.Image = av
                                    if t.UserInfoIcons then resolveIconAsset(t.UserInfoIcons, avatarImg) end
                                end
                            end
                            applyAnoIcon(anonActive)
                            m.AddSignal(eyeBtn.MouseButton1Click, function()
                                anonActive = not anonActive
                                if dnLbl then dnLbl.Text = anonActive and anoTitle or realDisplayName end
                                if unLbl then unLbl.Text = anonActive and anoSubtitle or realUsername end
                                setEyeIcon(anonActive)
                                applyAnoIcon(anonActive)
                            end)
                        end
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
            local searchBarFrame = nil
            if showSearch then
                pcall(function()
                local sb = CreatorNew("Frame",{
                    Name="SearchBar",
                    Size=UDim2.new(1,-2,0,searchH),
                    Position=UDim2.fromOffset(1,topOffset),
                    BackgroundTransparency=0.72,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(6), mkStroke(0.6),
                })
                local _searchIco = CreatorNew("ImageLabel",{
                    Size=UDim2.fromOffset(13,13),
                    Position=UDim2.new(0,8,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                    BackgroundTransparency=1, Image="rbxassetid://10734943674",
                    ImageTransparency=0.4, ThemeTag={ImageColor3="SubText"},
                    Parent=sb,
                })
                searchBox = CreatorNew("TextBox",{
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
                searchBarFrame = sb
                topOffset = topOffset + searchH + 4
                table.insert(sidebarChildren, sb)
                end)
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
                local anoCfg2 = type(t.Anonymous) == "table" and t.Anonymous or {}
                local showAno2 = anoCfg2.ShowAno
                if showAno2 == nil then showAno2 = true end
                local anoTitle2 = anoCfg2.AnoUserInfoTitle or "Anonymous"
                local anoSubtitle2 = anoCfg2.AnoUserInfoSubTitle or "@•••••••"
                local anonActive2 = anoCfg2.Default == true
                local bot = CreatorNew("Frame",{
                    Name="UserInfo",
                    Size=UDim2.new(1,0,0,h2),
                    Position=UDim2.new(0,0,1,-h2),
                    BackgroundTransparency=0.78,
                    ZIndex=2,
                    ThemeTag={BackgroundColor3="Element"},
                },{
                    mkCorner(8), mkStroke(0.55),
                    CreatorNew("Frame",{Size=UDim2.new(1,-10,0,1),Position=UDim2.new(0,5,0,0),
                        BackgroundTransparency=0.7,ThemeTag={BackgroundColor3="TitleBarLine"}}),
                    CreatorNew("ImageLabel",{
                        Name="AvatarIcon2",
                        Size=UDim2.fromOffset(34,34),
                        Position=UDim2.new(0,7,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                        BackgroundTransparency=0.5, Image=av2,
                        ThemeTag={BackgroundColor3="Tab"},
                    },{mkCorner(17)}),
                    CreatorNew("TextLabel",{
                        Name="DisplayName",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),
                        Text=anonActive2 and anoTitle2 or realDN2,
                        TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,14), Position=UDim2.new(0,47,0,10),
                        ThemeTag={TextColor3="Text"},
                    }),
                    CreatorNew("TextLabel",{
                        Name="Username",
                        FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Text=anonActive2 and anoSubtitle2 or realUN2,
                        TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
                        TextTruncate=Enum.TextTruncate.AtEnd,
                        BackgroundTransparency=1,
                        Size=UDim2.new(1,-66,0,13), Position=UDim2.new(0,47,0,27),
                        ThemeTag={TextColor3="SubText"},
                    }),
                })
                local avatarImg2 = bot:FindFirstChild("AvatarIcon2")
                local function resolveIconAsset2(src, targetImg)
                    if type(src) ~= "string" or src == "" then return end
                    if src:match("^rbxassetid://") or src:match("^rbxasset://") then
                        targetImg.Image = src
                    elseif src:match("^%d+$") then
                        targetImg.Image = "rbxassetid://" .. src
                    elseif src:match("^https?://") then
                        task.spawn(function()
                            local resolved = x.MediaManager and x.MediaManager:Image(src)
                            if resolved and resolved ~= "" and targetImg.Parent then
                                targetImg.Image = resolved
                            end
                        end)
                    end
                end
                if t.UserInfoIcons and avatarImg2 then
                    resolveIconAsset2(t.UserInfoIcons, avatarImg2)
                end
                if anonActive2 and anoCfg2.Icons and avatarImg2 then
                    resolveIconAsset2(anoCfg2.Icons, avatarImg2)
                end
                local eyeBtn2 = CreatorNew("TextButton",{
                    Name="AnonToggle",
                    Size=UDim2.fromOffset(22,22),
                    Position=UDim2.new(1,-4,0,4), AnchorPoint=Vector2.new(1,0),
                    BackgroundTransparency=0.7, Text="",
                    Parent=bot,
                    ThemeTag={BackgroundColor3="Tab"},
                },{
                    CreatorNew("UICorner",{CornerRadius=UDim.new(0,5)}),
                    CreatorNew("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="InElementBorder"}}),
                    CreatorNew("ImageLabel",{
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

            local _tabListLayout = CreatorNew("UIListLayout", {Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder})
            v.TabListContainer = CreatorNew(
                "Frame",
                {
                    Size = UDim2.new(1, 0, 0, 0),
                    AutomaticSize = Enum.AutomaticSize.Y,
                    BackgroundTransparency = 1,
                },
                {_tabListLayout}
            )
            v.TabHolder =
                CreatorNew(
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


                local function findSectionContainer(sec)
                    for _, ch in pairs(sec:GetChildren()) do
                        if ch:IsA("Frame") and ch:FindFirstChildWhichIsA("UIListLayout") then
                            return ch
                        end
                    end
                    return nil
                end

                local function scrollToFirstVisible()
                    task.wait(0.05)
                    for _, cf in pairs(v.ContainerClip and v.ContainerClip:GetChildren() or {}) do
                        if cf:IsA("ScrollingFrame") then
                            for _, sec in pairs(cf:GetChildren()) do
                                if sec:IsA("Frame") and sec.Visible and findSectionContainer(sec) then
                                    local cont = findSectionContainer(sec)
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
                                elseif sec:IsA("GuiObject") and sec.Visible then
                                    local yPos = sec.AbsolutePosition.Y - cf.AbsolutePosition.Y
                                    if yPos > 0 then
                                        cf.CanvasPosition = Vector2.new(0, math.max(0, yPos - 20))
                                    end
                                    return
                                end
                            end
                        end
                    end
                end

                local function getSearchableText(obj, depth)
                    depth = depth or 0
                    if depth > 6 then return "" end
                    local parts = {}
                    local ok = pcall(function()
                        for _, d in ipairs(obj:GetChildren()) do
                            if d:IsA("TextLabel") or d:IsA("TextButton") or d:IsA("TextBox") then
                                if d.Text and d.Text ~= "" then
                                    table.insert(parts, d.Text)
                                end
                            end
                            if d:IsA("GuiObject") then
                                local sub = getSearchableText(d, depth + 1)
                                if sub ~= "" then table.insert(parts, sub) end
                            end
                        end
                    end)
                    if not ok then return "" end
                    return table.concat(parts, " ")
                end

                local highlightedObjs = {}
                local function clearHighlight(obj)
                    local hl = obj:FindFirstChild("_SearchHighlight")
                    if hl then hl:Destroy() end
                end
                local function clearAllHighlights()
                    for obj in pairs(highlightedObjs) do
                        if obj and obj.Parent then clearHighlight(obj) end
                    end
                    highlightedObjs = {}
                end
                local _hlEnabled = not (t.SearchHighlight == false)
                local _hlColor = t.SearchHighlightColor or Color3.fromRGB(255, 255, 255)
                local function highlightMatch(obj)
                    if not _hlEnabled then return end
                    if obj:FindFirstChild("_SearchHighlight") then return end
                    local hl = Instance.new("UIStroke")
                    hl.Name = "_SearchHighlight"
                    hl.Thickness = 1.5
                    hl.Color = _hlColor
                    hl.Transparency = 0.15
                    hl.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    hl.Parent = obj
                    highlightedObjs[obj] = true
                end

                local function applySearchFilter()
                    local q = (searchBox.Text or ""):lower():gsub("^%s+",""):gsub("%s+$","")
                    local blank = q == ""

                    for _, tabBtn in pairs(v.TabListContainer:GetChildren()) do
                        if tabBtn:IsA("TextButton") then tabBtn.Visible = true end
                    end

                    if blank then
                        clearAllHighlights()
                        for _, cf in pairs(v.ContainerClip and v.ContainerClip:GetChildren() or {}) do
                            if cf:IsA("ScrollingFrame") then
                                for _, sec in pairs(cf:GetChildren()) do
                                    if sec:IsA("Frame") then
                                        sec.Visible = true
                                        local cont = findSectionContainer(sec)
                                        if cont then
                                            for _, ch in pairs(cont:GetChildren()) do
                                                if ch:IsA("GuiObject") then ch.Visible = true end
                                            end
                                        end
                                    elseif sec:IsA("GuiObject") then
                                        sec.Visible = true
                                    end
                                end
                                local layout = cf:FindFirstChildWhichIsA("UIListLayout")
                                if layout then
                                    cf.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
                                end
                            end
                        end
                        return
                    end

                    task.delay(0.01, function()
                        clearAllHighlights()
                        for _, cf in pairs(v.ContainerClip and v.ContainerClip:GetChildren() or {}) do
                            if cf:IsA("ScrollingFrame") then
                                for _, sec in pairs(cf:GetChildren()) do
                                    if sec:IsA("Frame") and findSectionContainer(sec) then
                                        local secLbl = sec:FindFirstChildWhichIsA("TextLabel", true)
                                        local secTxt = secLbl and secLbl.Text or ""
                                        local secNameMatches = secTxt:lower():find(q, 1, true) ~= nil

                                        local cont = findSectionContainer(sec)
                                        local anyElementVisible = false
                                        if cont then
                                            for _, ch in pairs(cont:GetChildren()) do
                                                if ch:IsA("GuiObject") then
                                                    local text = getSearchableText(ch):lower()
                                                    local elMatches = text:find(q, 1, true) ~= nil
                                                    ch.Visible = secNameMatches or elMatches
                                                    if elMatches then highlightMatch(ch) end
                                                    if ch.Visible then anyElementVisible = true end
                                                end
                                            end
                                        end
                                        sec.Visible = secNameMatches or anyElementVisible
                                    elseif sec:IsA("GuiObject") then
                                        local text = getSearchableText(sec):lower()
                                        local elMatches = text:find(q, 1, true) ~= nil
                                        sec.Visible = elMatches
                                        if elMatches then highlightMatch(sec) end
                                    end
                                end

                                local layout = cf:FindFirstChildWhichIsA("UIListLayout")
                                if layout then
                                    cf.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 10)
                                end
                            end
                        end

                        scrollToFirstVisible()
                    end)
                end

                v.RefreshSearchFilter = applySearchFilter
                searchBox:GetPropertyChangedSignal("Text"):Connect(applySearchFilter)

                game:GetService("UserInputService").InputBegan:Connect(function(inp, gp)
                    if gp then return end
                    if inp.KeyCode == Enum.KeyCode.Escape and searchBox:IsFocused() then
                        searchBox.Text = ""
                        searchBox:ReleaseFocus()
                    end
                end)
            end

            local F =
                CreatorNew(
                "Frame",
                {
                    Size = UDim2.new(0, t.TabWidth, 1, -66),
                    Position = UDim2.new(0, 12, 0, 54),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Name = "_SidebarFrame"
                },
                sidebarChildren
            )
            v.TabDisplayIcon = nil
            v.TabDisplay = nil
            v.ContainerHolder =
                CreatorNew(
                "CanvasGroup",
                {
                    Size = UDim2.new(1, -t.TabWidth - 32, 1, -66),
                    Position = UDim2.fromOffset(t.TabWidth + 26, 54),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                }
            )
            v.ContainerClip =
                CreatorNew(
                "Frame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true,
                    Parent = v.ContainerHolder,
                },
                {CreatorNew("UICorner", {CornerRadius = UDim.new(0, 10)})}
            )
            v.Root =
                CreatorNew(
                "Frame",
                {BackgroundTransparency = 1, Size = v.Size, Position = v.Position, Parent = t.Parent},
                {v.AcrylicPaint.Frame, v.ContainerHolder, F, E}
            )
            v.TitleBar = require(script.Parent.TitleBar) {Title = t.Title, SubTitle = t.SubTitle, Parent = v.Root, Window = v, Icon = t.TitleIcon, Version = t.Version, Tags = t.Tags}
            local _tbExpandedForTabs = false
            local function _expandTitleBarForTabsSearch()
                if _tbExpandedForTabs then return end
                _tbExpandedForTabs = true



                local tabRow1CY = 21
                v.TitleBar.Frame.Size = UDim2.new(1, 0, 0, 42)
                v._headerTabHolder.AnchorPoint = Vector2.new(0.5, 0.5)
                v._headerTabHolder.Position    = UDim2.new(0.5, 0, 0, tabRow1CY)
                local _selAbsY = 40
                v._headerSelY  = _selAbsY
                v._headerSelectorFrame.AnchorPoint = Vector2.new(0.5, 0)
                v._headerSelectorFrame.Position    = UDim2.new(0, 0, 0, _selAbsY)
                local F2 = v.Root:FindFirstChild("_SidebarFrame")
                if F2 then
                    F2.Position = UDim2.new(0, 12, 0, 54)
                    F2.Size     = UDim2.new(0, t.TabWidth, 1, -66)
                end
                v.ContainerHolder.Position = UDim2.fromOffset(t.TabWidth + 26, 54)
                v.ContainerHolder.Size     = UDim2.new(1, -t.TabWidth - 32, 1, -66)
            end
            v._expandTitleBarForTabsSearch = _expandTitleBarForTabsSearch
            if require(k).UseAcrylic then
                v.AcrylicPaint.AddParent(v.Root)
            end
            local G, H =
                l.GroupMotor.new {X = v.Size.X.Offset, Y = v.Size.Y.Offset},
                l.GroupMotor.new {X = v.Position.X.Offset, Y = v.Position.Y.Offset}
            v.SelectorPosMotor = l.SingleMotor.new(17)
            v.SelectorSizeMotor = l.SingleMotor.new(0)
            v.ContainerBackMotor = l.SingleMotor.new(0)
            v.ContainerPosMotor = l.SingleMotor.new(54)
            G:onStep(
                function(I)
                    v.Root.Size = UDim2.new(0, math.round(I.X), 0, math.round(I.Y))
                end
            )
            H:onStep(
                function(I)
                    v.Root.Position = UDim2.new(0, math.round(I.X), 0, math.round(I.Y))
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
                        v.SelectorSizeMotor:setGoal(springNew((math.abs(K - I) / (M * 60)) + 16))
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
                local wasMaximized = v.Maximized
                v.Maximized = M
                v.TitleBar.MaxButton.Frame.Icon.Image = M and o.Restore or o.Max
                if M and not wasMaximized then
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
                        X = springNew(M and 0 or v.Position.X.Offset, {frequency = 6}),
                        Y = springNew(M and 0 or v.Position.Y.Offset, {frequency = 6})
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
                        H:setGoal {X = instantNew(v.Position.X.Offset), Y = instantNew(v.Position.Y.Offset)}
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
                    local ovs = require(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = true end end
                end)
            end
            function v.Hide(M)
                v.Minimized = true
                v.Root.Visible = false
                pcall(function()
                    local ovs = require(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = false end end
                end)
            end
            function v.Minimize(M)
                v.Minimized = not v.Minimized
                v.Root.Visible = not v.Minimized
                pcall(function()
                    local ovs = require(k)._SBOverlays
                    if ovs then for _, ov in ipairs(ovs) do ov.Visible = not v.Minimized end end
                end)
                if not C then
                    C = true
                    local N = (u.MinimizeKeybind and u.MinimizeKeybind.Value) or (u.MinimizeKey and u.MinimizeKey.Name) or "RightControl"
                    u:Notify {Title = "Interface", Content = "Press " .. N .. " to toggle the interface.", Duration = 6}
                end
            end
            function v.Destroy(M)
                if require(k).UseAcrylic then
                    v.AcrylicPaint.Model:Destroy()
                end
                pcall(function()
                    local ovs = require(k)._SBOverlays
                    if ovs then
                        for _, ov in ipairs(ovs) do pcall(function() ov:Destroy() end) end
                        table.clear(ovs)
                    end
                end)
                v.Root:Destroy()
            end
            local M = require(p.Dialog):Init(v)
            function v.Dialog(N, O)
                local P = M:Create()
                P.Title.Text = O.Title
                local Q =
                    CreatorNew(
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
                CreatorNew(
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
            local N = require(p.Tab):Init(v)
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
            local _htLayout = CreatorNew("UIListLayout", {
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                Padding = UDim.new(0, 5),
                SortOrder = Enum.SortOrder.LayoutOrder,
            })
            v._headerTabHolder = CreatorNew("Frame", {
                Name = "_HeaderTabHolder",
                Size = UDim2.fromOffset(0, 28),
                Position = UDim2.new(0.5, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundTransparency = 1,
                ZIndex = 8,
                Visible = false,
                ClipsDescendants = false,
                Parent = v.TitleBar.Frame,
            }, {_htLayout})
            _htLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                v._headerTabHolder.Size = UDim2.fromOffset(_htLayout.AbsoluteContentSize.X, 28)
            end)
            v._headerSelectorFrame = CreatorNew("Frame", {
                Name = "_HeaderSel",
                Size = UDim2.fromOffset(24, 2),
                Position = UDim2.new(0, 0, 1, -4),
                AnchorPoint = Vector2.new(0.5, 0),
                BackgroundTransparency = 1,
                ZIndex = 10,
                Parent = v.TitleBar.Frame,
            }, {CreatorNew("UICorner", {CornerRadius = UDim.new(1, 0)})})
            v._headerSelY = 0
            m.AddThemeObject(v._headerSelectorFrame, {BackgroundColor3 = "Accent"})
            function v.AddSpaceTabs(O, cfg)
                cfg = type(cfg) == "table" and cfg or {}
                N.ListOrderCounter = (N.ListOrderCounter or 0) + 1
                return CreatorNew("Frame", {
                    Size = UDim2.new(1, 0, 0, tonumber(cfg.Height) or 8),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.ListOrderCounter,
                    Parent = v.TabListContainer,
                })
            end
            function v.AddDividerTabs(O)
                N.ListOrderCounter = (N.ListOrderCounter or 0) + 1
                local wrapper = CreatorNew("Frame", {
                    Size = UDim2.new(1, 0, 0, 12),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.ListOrderCounter,
                    Parent = v.TabListContainer,
                })
                CreatorNew("Frame", {
                    Size = UDim2.new(1, -20, 0, 2),
                    Position = UDim2.new(0, 10, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundTransparency = 0.55,
                    BorderSizePixel = 0,
                    Parent = wrapper,
                    ThemeTag = { BackgroundColor3 = "Accent" },
                }, {
                    CreatorNew("UICorner", { CornerRadius = UDim.new(1, 0) })
                })
                return wrapper
            end
            function v.AddSpaceTabsHead(O, cfg)
                cfg = type(cfg) == "table" and cfg or {}
                N.TabCount = (N.TabCount or 0) + 1
                local sp = CreatorNew("Frame", {
                    Size = UDim2.new(0, tonumber(cfg.Height) or 8, 1, 0),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.TabCount,
                    Parent = v._headerTabHolder,
                })
                task.defer(function()
                    v._headerTabHolder.Size = UDim2.fromOffset(_htLayout.AbsoluteContentSize.X, 28)
                end)
                return sp
            end
            function v.AddDividerTabsHead(O)
                N.TabCount = (N.TabCount or 0) + 1
                local div = CreatorNew("Frame", {
                    Size = UDim2.new(0, 2, 0, 14),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundTransparency = 0.55,
                    LayoutOrder = N.TabCount,
                    Parent = v._headerTabHolder,
                    ThemeTag = { BackgroundColor3 = "Accent" },
                }, {
                    CreatorNew("UICorner", { CornerRadius = UDim.new(0, 2) })
                })
                task.defer(function()
                    v._headerTabHolder.Size = UDim2.fromOffset(_htLayout.AbsoluteContentSize.X, 28)
                end)
                return div
            end
            function v.AddTab(O, P)
                local _tab = N:New(P.Title, P.Icon, v.TabListContainer, P.Favoriteable == true)
                N:ReapplyFavoriteOrder()
                if N.TabCount == 1 then
                    task.defer(function()
                        N:SelectTab(1)
                    end)
                end
                if P.EmptyState and _tab.SetEmptyState then
                    _tab:SetEmptyState(P.EmptyState)
                end
                return _tab
            end
            function v.AddTabsInHeader(O, P)
                v._headerTabHolder.Visible = true
                if v._expandTitleBarForTabsSearch then
                    v._expandTitleBarForTabsSearch()
                end
                local _ht = N:NewHeader(P.Title, P.Icon, v.TabListContainer)
                return _ht
            end
            function v.AddTabDivider(O)
                N.ListOrderCounter = (N.ListOrderCounter or 0) + 1
                local d = CreatorNew("Frame", {
                    Size = UDim2.new(1, -20, 0, 9),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.ListOrderCounter,
                    Parent = v.TabListContainer,
                }, {
                    CreatorNew("Frame", {
                        Size = UDim2.new(1, 0, 0, 1),
                        Position = UDim2.fromScale(0, 0.5),
                        ThemeTag = {BackgroundColor3 = "ElementBorder"},
                    }),
                })
                return d
            end
            function v.AddTabSpace(O, height)
                N.ListOrderCounter = (N.ListOrderCounter or 0) + 1
                local sp = CreatorNew("Frame", {
                    Size = UDim2.new(1, 0, 0, tonumber(height) or 8),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.ListOrderCounter,
                    Parent = v.TabListContainer,
                })
                return sp
            end
            function v.AddTabLabel(O, text)
                N.ListOrderCounter = (N.ListOrderCounter or 0) + 1
                local lbl = CreatorNew("TextLabel", {
                    Name = "TabGroupLabel",
                    Text = tostring(text or ""),
                    RichText = true,
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
                    TextSize = 12,
                    TextTransparency = 0.35,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = UDim2.new(1, -8, 0, 20),
                    BackgroundTransparency = 1,
                    LayoutOrder = N.ListOrderCounter,
                    Parent = v.TabListContainer,
                    ThemeTag = {TextColor3 = "SubText"},
                })
                return lbl
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
                        v.SelectorPosMotor:setGoal(instantNew(pos))
                    end
                end
            )
            local windowMeta = {}
            windowMeta.__index = windowMeta
            windowMeta.__namecall = function(self, methodName, ...)
                local fn = v[methodName]
                if not fn and type(methodName) == "string" and not methodName:match("^Add") then
                    fn = v["Add" .. methodName]
                end
                if fn then return fn(self, ...) end
            end
            function v.SetUserInfo(_, cfg)
                cfg = cfg or {}
                local sidebar = v.Root and v.Root:FindFirstChild("SidebarFrame", true)
                local uiTop   = sidebar and sidebar:FindFirstChild("UserInfoTop", true)
                local uiBot   = sidebar and sidebar:FindFirstChild("UserInfoBottom", true)
                local target  = uiTop or uiBot
                if not target then return end
                if cfg.Title then
                    local lbl = target:FindFirstChild("DisplayName")
                    if lbl then lbl.Text = cfg.Title end
                end
                if cfg.Subtitle then
                    local lbl = target:FindFirstChild("Username")
                    if lbl then lbl.Text = cfg.Subtitle end
                end
                if cfg.Icon then
                    local img = target:FindFirstChild("AvatarIcon")
                    if img then
                        if cfg.Icon:match("^rbxassetid://") or cfg.Icon:match("^%d+$") then
                            img.Image = cfg.Icon:match("^%d+$") and ("rbxassetid://" .. cfg.Icon) or cfg.Icon
                        end
                    end
                end
            end

            function v.SetSearch(_, enabled)
                local sb = v.Root and v.Root:FindFirstChild("SearchBox", true)
                if sb then sb.Visible = enabled ~= false end
            end

            setmetatable(v, windowMeta)
            return v
        end
    end,
    [18] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(18)
        local h = script.Parent
        local i, j, k =
            require(h.Themes),
            require(h.Packages.Flipper),
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
            local t = i[require(h).Theme]
            if t and t[m] ~= nil then
                return t[m]
            end
            if _noInheritFallbackKeys[m] then
                return false
            end
            local fallback = i["Dark"]
            if fallback then return fallback[m] end
            return nil
        end
        local csEntries = {}
        local csPendingConns = {}
        local csSharedConn = nil
        local function csKey(inst, prop) return tostring(inst) .. "_" .. prop end

        local function ensureCsLoop()
            if csSharedConn then return end
            csSharedConn = game:GetService("RunService").Heartbeat:Connect(function(dt)
                local hasAny = false
                local dead = {}
                for key, data in next, csEntries do
                    local inst = data.inst
                    if inst and inst.Parent then
                        hasAny = true
                        data.t = (data.t + dt * data.speed) % 1
                        local t = data.t
                        local kps = data.kps
                        local col = kps[#kps].Value
                        for i = 1, #kps - 1 do
                            if t >= kps[i].Time and t <= kps[i + 1].Time then
                                local alpha = kps[i + 1].Time - kps[i].Time
                                local blend = alpha > 0 and (t - kps[i].Time) / alpha or 0
                                col = kps[i].Value:Lerp(kps[i + 1].Value, blend)
                                break
                            end
                        end
                        local ok = pcall(function() inst[data.prop] = col end)
                        if not ok then dead[key] = true end
                    else
                        dead[key] = true
                    end
                end
                for key in next, dead do
                    csEntries[key] = nil
                end
                if not hasAny then
                    csSharedConn:Disconnect()
                    csSharedConn = nil
                end
            end)
        end

        local function stopCs(inst, prop)
            if prop then
                local key = csKey(inst, prop)
                csEntries[key] = nil
                local pconn = csPendingConns[key]
                if pconn then pcall(function() pconn:Disconnect() end) end
                csPendingConns[key] = nil
            else
                local prefix = tostring(inst) .. "_"
                for key, data in next, csEntries do
                    if key:sub(1, #prefix) == prefix then
                            csEntries[key] = nil
                    end
                end
                for key, conn in next, csPendingConns do
                    if key:sub(1, #prefix) == prefix then
                        pcall(function() conn:Disconnect() end)
                        csPendingConns[key] = nil
                    end
                end
            end
        end

        local function startCs(inst, prop, colorSeq, opts)
            stopCs(inst, prop)
            if not colorSeq or typeof(colorSeq) ~= "ColorSequence" then return end
            local kps = colorSeq.Keypoints
            if #kps == 0 then return end
            if #kps == 1 then pcall(function() inst[prop] = kps[1].Value end); return end

            opts = opts or {}
            local speed = opts.speed or 0.28

            local function doStart()
                if not inst or not inst.Parent then return end
                stopCs(inst, prop)

                pcall(function() inst[prop] = kps[1].Value end)

                local key = csKey(inst, prop)
                csEntries[key] = {
                    inst  = inst,
                    prop  = prop,
                    kps   = kps,
                    t     = 0,
                    speed = speed,
                }
                ensureCsLoop()
            end

            if inst.Parent then
                doStart()
            else
                local pendingKey = csKey(inst, prop)
                local conn
                conn = inst:GetPropertyChangedSignal("Parent"):Connect(function()
                    if inst.Parent then
                        pcall(function() conn:Disconnect() end)
                        csPendingConns[pendingKey] = nil
                        local currentVal = k.GetThemeProperty(
                            k.Registry[inst] and k.Registry[inst].Properties[prop] or ""
                        )
                        local seqToUse = (typeof(currentVal) == "ColorSequence") and currentVal or colorSeq
                        startCs(inst, prop, seqToUse, opts)
                    end
                end)
                csPendingConns[pendingKey] = conn
            end
        end

        function k.UpdateTheme()
            for m, n in next, k.Registry do
                if m and m.Parent then
                    for o, _ in next, n.Properties do
                        stopCs(m, o)
                    end
                end
            end
            for m, n in next, k.Registry do
                if m and m.Parent then
                    for o, p in next, n.Properties do
                        local val = k.GetThemeProperty(p)
                        if typeof(val) == "ColorSequence" then
                            startCs(m, o, val)
                        elseif val ~= nil then
                            pcall(function() m[o] = val end)
                        end
                    end
                else
                    k.Registry[m] = nil
                end
            end
            for o, p in next, k.TransparencyMotors do
                p:setGoal(j.Instant.new(k.GetThemeProperty "ElementTransparency"))
            end
            local thm = i[require(h).Theme]
            local x = k.Library
            if x and x.Window and x.Window.AcrylicPaint then
                if Animation and Animation.Apply then Animation.Apply(thm, x.Window.AcrylicPaint.Frame, x.ShineEnabled) end
                task.defer(function()
                    if x._RefreshOpenDropdownShine then
                        x._RefreshOpenDropdownShine()
                    end
                end)
                if thm and thm.ButtonGradient then
                    x.ButtonGradients = thm.ButtonGradient
                elseif thm and thm.Accent then
                    local baseColor = thm.Accent
                    local h2, s2, v2 = Color3.toHSV(baseColor)
                    local darker = Color3.fromHSV(h2, s2, math.max(v2 * 0.45, 0))
                    x.ButtonGradients = {
                        Background = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, darker),
                            ColorSequenceKeypoint.new(1, baseColor),
                        }),
                        Stroke = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, baseColor),
                            ColorSequenceKeypoint.new(0.5, darker),
                            ColorSequenceKeypoint.new(1, baseColor),
                        }),
                    }
                end
                local acrylicFrame = x.Window.AcrylicPaint.Frame
                local bgParent = acrylicFrame
                if bgParent then
                    local bgImg = bgParent:FindFirstChild("__ThemeBG")
                    local bgVid = bgParent:FindFirstChild("__ThemeBGVideo")
                    local bgVal = thm and thm.Background
                    local bgValStr = bgVal and tostring(bgVal) or ""
                    local bgExt = bgValStr:match("%.(%a+)%??[^/]*$")
                    local isVideoUrl = bgValStr:match("^https?://") and bgExt and ({webm=1,mp4=1,mov=1,ogg=1})[bgExt:lower()] ~= nil

                    x._bgGeneration = (x._bgGeneration or 0) + 1
                    local myGeneration = x._bgGeneration

                    if bgValStr ~= "" and isVideoUrl then
                        if bgImg then bgImg.Visible = false end
                        if not bgVid then
                            bgVid = Instance.new("VideoFrame")
                            bgVid.Name = "__ThemeBGVideo"
                            bgVid.Size = UDim2.fromScale(1,1)
                            bgVid.BackgroundTransparency = 1
                            bgVid.ZIndex = 0
                            bgVid.Looped = true
                            bgVid.Volume = 0
                            local bgVidCorner = Instance.new("UICorner")
                            bgVidCorner.CornerRadius = UDim.new(0, 10)
                            bgVidCorner.Parent = bgVid
                            bgVid.Parent = bgParent
                        end
                        if bgVid:GetAttribute("_srcUrl") ~= bgValStr then
                            bgVid:SetAttribute("_srcUrl", bgValStr)
                            bgVid.Video = ""
                            task.spawn(function()
                                local custom
                                for attempt = 1, 4 do
                                    local ok2, res2 = pcall(function()
                                        return x.MediaManager and x.MediaManager:Video(bgValStr)
                                    end)
                                    custom = ok2 and res2 or nil
                                    if custom and custom ~= "" then break end
                                    if attempt < 4 then task.wait(2) end
                                end
                                if custom and custom ~= "" and bgVid and bgVid.Parent and x._bgGeneration == myGeneration then
                                    bgVid.Video = custom
                                    bgVid.Looped = true
                                    local timeout2 = 0
                                    repeat task.wait(0.15); timeout2 = timeout2 + 0.15 until (bgVid.TimeLength and bgVid.TimeLength > 0) or timeout2 > 20
                                    if bgVid and bgVid.Parent and bgVid.TimeLength and bgVid.TimeLength > 0 and x._bgGeneration == myGeneration then
                                        pcall(function() bgVid:Play() end)
                                    end
                                end
                            end)
                        elseif bgVid.Video ~= "" and bgVid.TimeLength > 0 then

                            bgVid.Looped = true
                            pcall(function() bgVid:Play() end)
                        end
                        local im = x.InterfaceManager
                        bgVid.Visible = not (im and im.Settings and im.Settings.DisableBG)
                    elseif bgValStr ~= "" then
                        if bgVid then bgVid.Playing = false; bgVid.Visible = false end
                        if not bgImg then
                            bgImg = Instance.new("ImageLabel")
                            bgImg.Name = "__ThemeBG"
                            bgImg.Size = UDim2.fromScale(1,1)
                            bgImg.BackgroundTransparency = 1
                            bgImg.ScaleType = Enum.ScaleType.Crop
                            bgImg.ZIndex = 0
                            local bgImgCorner = Instance.new("UICorner")
                            bgImgCorner.CornerRadius = UDim.new(0, 10)
                            bgImgCorner.Parent = bgImg
                            bgImg.Parent = bgParent
                        end
                        if bgImg:GetAttribute("_srcUrl") ~= bgValStr then
                            bgImg:SetAttribute("_srcUrl", bgValStr)
                            bgImg.Image = bgValStr
                            if not bgValStr:match("^rbxassetid://") and not bgValStr:match("^rbxasset://") and not bgValStr:match("^http://www.roblox.com/") and bgValStr:match("^https?://") then
                                task.spawn(function()
                                    local custom = x.MediaManager and x.MediaManager:Image(bgValStr)
                                    if custom and custom ~= "" and bgImg.Parent and x._bgGeneration == myGeneration then
                                        bgImg.Image = custom
                                    end
                                end)
                            end
                        end
                        bgImg.ImageTransparency = thm.BackgroundTransparency or 0
                        if thm.BackgroundImagesRectPosition then
                            bgImg.ImageRectOffset = thm.BackgroundImagesRectPosition
                        end
                        if thm.BackgroundImagesRectSize then
                            bgImg.ImageRectSize = thm.BackgroundImagesRectSize
                        end
                        local im = x.InterfaceManager
                        bgImg.Visible = not (im and im.Settings and im.Settings.DisableBG)
                    else
                        if bgImg then bgImg.Visible = false end
                        if bgVid then bgVid.Playing = false; bgVid.Visible = false end
                    end
                end
            end
        end
        local function _applyThemeToObject(inst, props)
            for prop, key in next, props do
                local val = k.GetThemeProperty(key)
                if typeof(val) == "ColorSequence" then
                    startCs(inst, prop, val)
                elseif val ~= nil then
                    stopCs(inst, prop)
                    pcall(function() inst[prop] = val end)
                end
            end
        end
        function k.AddThemeObject(m, n)
            k.Registry[m] = {Object = m, Properties = n}
            _applyThemeToObject(m, n)
            return m
        end
        function k.OverrideTag(m, n)
            if k.Registry[m] then
                k.Registry[m].Properties = n
            else
                k.Registry[m] = {Object = m, Properties = n}
            end
            _applyThemeToObject(m, n)
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
                        if o == "BackgroundTransparency" and require(h).DialogOpen then
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
    [19] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(19)
        local h = {}
        for i, j in next, script:GetChildren() do
            local ok, mod = pcall(require, j)
            if ok and mod ~= nil then
                table.insert(h, mod)
            end
        end
        return h
    end,
    [20] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(20)
        local h = script.Parent.Parent
        local i = require(h.Creator)
        local New, Components, l = i.New, h.Components, {}
        l.__index = l
        l.__type = "Button"
        function l.New(m, n)
            assert(n.Title, "Button - Missing Title")
            n.Callback = n.Callback or function()
                end
            local o = require(Components.Element)(n.Title, n.Description, m.Container, true)
            local btnIcon = "rbxassetid://10709791437"
            if n.Icon then
                local ri = m.Library:GetIcon(n.Icon)
                if ri then btnIcon = (type(ri) == "table" and ri.Image or ri) end
            end
            local p =
                New(
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
    [21] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(21)
        local h, i, j, k =
            game:GetService "UserInputService",
            game:GetService "TouchInputService",
            game:GetService "RunService",
            game:GetService "Players"
        local l, m = j.RenderStepped, k.LocalPlayer
        local n, o = m:GetMouse(), script.Parent.Parent
        local p = require(o.Creator)
        local New, Components, elementStates = p.New, o.Components, {}
        elementStates.__index = elementStates
        elementStates.__type = "Colorpicker"
        function elementStates.New(v, w, x)
            local y = v.Library
            assert(x.Title, "Colorpicker - Missing Title")
            assert(x.Default ~= nil, "AddColorPicker: Missing default value.")
            if x.Gradient then
                local initialColor = x.Default or Color3.fromRGB(100, 149, 237)
                local gradientKeypoints = {
                    { pos = 0, color = initialColor },
                    { pos = 1, color = Color3.fromRGB(237, 100, 100) },
                }
                local activeSlot = 1
                local function buildColorSequence()
                    local sorted = {}
                    for _, kp in ipairs(gradientKeypoints) do
                        table.insert(sorted, { pos = math.clamp(kp.pos, 0, 1), color = kp.color })
                    end
                    table.sort(sorted, function(a, b) return a.pos < b.pos end)
                    if sorted[1].pos > 0 then table.insert(sorted, 1, { pos = 0, color = sorted[1].color }) end
                    if sorted[#sorted].pos < 1 then table.insert(sorted, { pos = 1, color = sorted[#sorted].color }) end
                    local kps = {}
                    for _, kp in ipairs(sorted) do
                        table.insert(kps, ColorSequenceKeypoint.new(kp.pos, kp.color))
                    end
                    return ColorSequence.new(kps)
                end
                local gz = {
                    Value    = buildColorSequence(),
                    Type     = "Colorpicker",
                    SaveType = "GradientPicker",
                    Title    = tostring(x.Title),
                    Callback = x.Callback or function() end,
                }
                local gA = require(t.Element)(x.Title, x.Description, v.Container, true)
                gz.SetTitle = gA.SetTitle
                gz.SetDesc  = gA.SetDesc
                gz.Frame    = gA.Frame
                local gPreviewBg = New("ImageLabel", {
                    Size = UDim2.fromOffset(26, 26),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Image = "http://www.roblox.com/asset/?id=14204231522",
                    ImageTransparency = 0.45,
                    ScaleType = Enum.ScaleType.Tile,
                    TileSize = UDim2.fromOffset(40, 40),
                    Parent = gA.Frame,
                }, { New("UICorner", { CornerRadius = UDim.new(0, 4) }) })
                local gPreviewFill = New("Frame", {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundColor3 = Color3.new(1, 1, 1),
                    BorderSizePixel = 0,
                    Parent = gPreviewBg,
                }, { New("UICorner", { CornerRadius = UDim.new(0, 4) }) })
                local gPreviewGradient = New("UIGradient", {
                    Color = buildColorSequence(),
                    Parent = gPreviewFill,
                })
                local function refreshPreview()
                    gPreviewGradient.Color = buildColorSequence()
                end
                function gz.SetValue(_, newCs)
                    gz.Value = newCs
                    y:SafeCallback(gz.Callback, newCs)
                    y:SafeCallback(gz.Changed, newCs)
                end
                function gz.OnChanged(_, cb) gz.Changed = cb; cb(gz.Value) end
                function gz.SetValueRGB(_, col, _2)
                    gz:SetValue(ColorSequence.new({ ColorSequenceKeypoint.new(0, col), ColorSequenceKeypoint.new(1, col) }))
                end
                function gz.Destroy(_)
                    gA.Frame:Destroy()
                    y.Options[w] = nil
                end
                local function openGradientDialog()
                    local gC = require(t.Dialog):Create()
                    gC.Title.Text = gz.Title
                    gC.Root.Size = UDim2.fromOffset(430, 340)
                    local curH, curS2, curV = Color3.toHSV(gradientKeypoints[activeSlot].color)
                    local hsvHandle = New("ImageLabel", {
                        Size = UDim2.fromOffset(18, 18),
                        ScaleType = Enum.ScaleType.Fit,
                        AnchorPoint = Vector2.new(0.5, 0.5),
                        BackgroundTransparency = 1,
                        Image = "http://www.roblox.com/asset/?id=4805639000",
                    })
                    local hsvPicker = New("ImageLabel", {
                        Size = UDim2.fromOffset(180, 160),
                        Position = UDim2.fromOffset(20, 55),
                        Image = "rbxassetid://4155801252",
                        BackgroundColor3 = Color3.fromHSV(curH, 1, 1),
                        BackgroundTransparency = 0,
                        Parent = gC.Root,
                    }, { New("UICorner", { CornerRadius = UDim.new(0, 4) }) })
                    hsvHandle.Parent = hsvPicker
                    local hueKps = {}
                    for qi = 0, 1, 0.1 do table.insert(hueKps, ColorSequenceKeypoint.new(qi, Color3.fromHSV(qi, 1, 1))) end
                    local hueSliderInner = New("Frame", {
                        Size = UDim2.new(1, 0, 1, -10),
                        Position = UDim2.fromOffset(0, 5),
                        BackgroundTransparency = 1,
                    })
                    local hueHandle = New("ImageLabel", {
                        Size = UDim2.fromOffset(14, 14),
                        Image = "http://www.roblox.com/asset/?id=12266946128",
                        Parent = hueSliderInner,
                        ThemeTag = { ImageColor3 = "DialogInput" },
                    })
                    local hueBar = New("Frame", {
                        Size = UDim2.fromOffset(12, 190),
                        Position = UDim2.fromOffset(210, 55),
                        Parent = gC.Root,
                    }, {
                        New("UICorner", { CornerRadius = UDim.new(1, 0) }),
                        New("UIGradient", { Color = ColorSequence.new(hueKps), Rotation = 90 }),
                        hueSliderInner,
                    })
                    local hexInput = require(t.Textbox)()
                    hexInput.Frame.Parent = gC.Root
                    hexInput.Frame.Size = UDim2.new(0, 90, 0, 32)
                    hexInput.Frame.Position = UDim2.fromOffset(240, 55)
                    New("TextLabel", {
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
                        Text = "Hex", TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left,
                        Size = UDim2.new(1, 0, 0, 32), Position = UDim2.fromOffset(340, 55),
                        BackgroundTransparency = 1, Parent = gC.Root,
                        ThemeTag = { TextColor3 = "Text" },
                    })
                    local slot2Bg = New("ImageLabel", {
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = UDim2.fromOffset(40, 40),
                        BackgroundTransparency = 1,
                        Position = UDim2.fromOffset(112, 220),
                        Size = UDim2.fromOffset(88, 24),
                        Parent = gC.Root,
                    }, {
                        New("UICorner", { CornerRadius = UDim.new(0, 4) }),
                        New("UIStroke", { Thickness = 2, Transparency = 0.75 }),
                    })
                    local slot2Fill = New("Frame", {
                        BackgroundColor3 = gradientKeypoints[2].color,
                        Size = UDim2.fromScale(1, 1),
                    }, { New("UICorner", { CornerRadius = UDim.new(0, 4) }) })
                    slot2Fill.Parent = slot2Bg
                    local slot2Stroke = slot2Bg:FindFirstChildOfClass("UIStroke")
                    local slot1Bg = New("ImageLabel", {
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = UDim2.fromOffset(40, 40),
                        BackgroundTransparency = 1,
                        Position = UDim2.fromOffset(20, 220),
                        Size = UDim2.fromOffset(88, 24),
                        Parent = gC.Root,
                    }, {
                        New("UICorner", { CornerRadius = UDim.new(0, 4) }),
                        New("UIStroke", { Thickness = 2, Transparency = 0.75 }),
                    })
                    local slot1Fill = New("Frame", {
                        BackgroundColor3 = gradientKeypoints[1].color,
                        Size = UDim2.fromScale(1, 1),
                    }, { New("UICorner", { CornerRadius = UDim.new(0, 4) }) })
                    slot1Fill.Parent = slot1Bg
                    local slot1Stroke = slot1Bg:FindFirstChildOfClass("UIStroke")
                    local slot1Lbl = New("TextLabel", {
                        Text = "#" .. gradientKeypoints[1].color:ToHex(),
                        TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold),
                        Position = UDim2.fromOffset(20, 247),
                        Size = UDim2.fromOffset(88, 14),
                        BackgroundTransparency = 1,
                        TextColor3 = gradientKeypoints[1].color,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Parent = gC.Root,
                    })
                    local slot2Lbl = New("TextLabel", {
                        Text = "#" .. gradientKeypoints[2].color:ToHex(),
                        TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Position = UDim2.fromOffset(112, 247),
                        Size = UDim2.fromOffset(88, 14),
                        BackgroundTransparency = 1,
                        TextColor3 = gradientKeypoints[2].color,
                        TextXAlignment = Enum.TextXAlignment.Left,
                        Parent = gC.Root,
                    })
                    local function updateSlotHighlight()
                        slot1Stroke.Transparency = activeSlot == 1 and 0.2 or 0.75
                        slot1Stroke.Color = activeSlot == 1 and Color3.new(1,1,1) or Color3.new(0.5,0.5,0.5)
                        slot2Stroke.Transparency = activeSlot == 2 and 0.2 or 0.75
                        slot2Stroke.Color = activeSlot == 2 and Color3.new(1,1,1) or Color3.new(0.5,0.5,0.5)
                    end
                    local function applyHSV(writeToSlot)
                        local col = Color3.fromHSV(curH, curS2, curV)
                        hsvPicker.BackgroundColor3 = Color3.fromHSV(curH, 1, 1)
                        hueHandle.Position = UDim2.new(0, -1, curH, -6)
                        hsvHandle.Position = UDim2.new(curS2, 0, 1 - curV, 0)
                        if writeToSlot then
                            gradientKeypoints[activeSlot].color = col
                        end
                        slot1Fill.BackgroundColor3 = gradientKeypoints[1].color
                        slot1Lbl.Text = "#" .. gradientKeypoints[1].color:ToHex()
                        slot1Lbl.TextColor3 = gradientKeypoints[1].color
                        slot2Fill.BackgroundColor3 = gradientKeypoints[2].color
                        slot2Lbl.Text = "#" .. gradientKeypoints[2].color:ToHex()
                        slot2Lbl.TextColor3 = gradientKeypoints[2].color
                        hexInput.Input.Text = "#" .. col:ToHex()
                        refreshPreview()
                    end
                    local function switchSlot(idx)
                        activeSlot = idx
                        curH, curS2, curV = Color3.toHSV(gradientKeypoints[idx].color)
                        updateSlotHighlight()
                        applyHSV(false)
                    end
                    local slot1TouchBtn = New("TextButton", {
                        Text = "", BackgroundTransparency = 1, ZIndex = 5,
                        Size = UDim2.fromOffset(88, 24), Position = UDim2.fromOffset(20, 220),
                        Parent = gC.Root,
                    })
                    local slot2TouchBtn = New("TextButton", {
                        Text = "", BackgroundTransparency = 1, ZIndex = 5,
                        Size = UDim2.fromOffset(88, 24), Position = UDim2.fromOffset(112, 220),
                        Parent = gC.Root,
                    })
                    slot1TouchBtn.MouseButton1Click:Connect(function() switchSlot(1) end)
                    slot2TouchBtn.MouseButton1Click:Connect(function() switchSlot(2) end)
                    p.AddSignal(hexInput.Input.FocusLost, function(entered)
                        if entered then
                            local ok, col = pcall(Color3.fromHex, hexInput.Input.Text)
                            if ok and typeof(col) == "Color3" then
                                curH, curS2, curV = Color3.toHSV(col)
                            end
                        end
                        applyHSV(true)
                    end)
                    p.AddSignal(hsvPicker.InputBegan, function(inp)
                        if inp.UserInputType ~= Enum.UserInputType.MouseButton1 and inp.UserInputType ~= Enum.UserInputType.Touch then return end
                        while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            local ap = hsvPicker.AbsolutePosition
                            local as2 = hsvPicker.AbsoluteSize
                            curS2 = math.clamp((n.X - ap.X) / as2.X, 0, 1)
                            curV = 1 - math.clamp((n.Y - ap.Y) / as2.Y, 0, 1)
                            applyHSV(true)
                            l:Wait()
                        end
                    end)
                    p.AddSignal(hueBar.InputBegan, function(inp)
                        if inp.UserInputType ~= Enum.UserInputType.MouseButton1 and inp.UserInputType ~= Enum.UserInputType.Touch then return end
                        while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                            local ap = hueBar.AbsolutePosition
                            local as2 = hueBar.AbsoluteSize
                            curH = math.clamp((n.Y - ap.Y) / as2.Y, 0, 1)
                            applyHSV(true)
                            l:Wait()
                        end
                    end)
                    updateSlotHighlight()
                    applyHSV(false)
                    gC:Button("Done", function()
                        gz:SetValue(buildColorSequence())
                    end)
                    gC:Button("Cancel")
                    gC:Open()
                end
                gA.Frame.MouseButton1Click:Connect(function() openGradientDialog() end)
                y.Options[w] = gz
                return gz
            end
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
            local A = require(t.Element)(x.Title, x.Description, v.Container, true)
            z.SetTitle = A.SetTitle
            z.SetDesc = A.SetDesc
            z.Frame = A.Frame
            local B =
                New(
                "Frame",
                {Size = UDim2.fromScale(1, 1), BackgroundColor3 = z.Value, Parent = A.Frame},
                {New("UICorner", {CornerRadius = UDim.new(0, 4)})}
            )
            local aa, ab =
                New(
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
                    {New("UICorner", {CornerRadius = UDim.new(0, 4)}), B}
                ),
                function()
                    local C = require(t.Dialog):Create()
                    C.Title.Text = z.Title
                    C.Root.Size = UDim2.fromOffset(430, 360)
                    local D, E, F, G, H, I =
                        z.Hue,
                        z.Sat,
                        z.Vib,
                        z.Transparency,
                        function()
                            local D = require(t.Textbox)()
                            D.Frame.Parent = C.Root
                            D.Frame.Size = UDim2.new(0, 90, 0, 32)
                            return D
                        end,
                        function(D, E)
                            return New(
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
                        New(
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
                        New(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(180, 160),
                                Position = UDim2.fromOffset(20, 55),
                                Image = "rbxassetid://4155801252",
                                BackgroundColor3 = z.Value,
                                BackgroundTransparency = 0,
                                Parent = C.Root
                            },
                            {New("UICorner", {CornerRadius = UDim.new(0, 4)}), K}
                        ),
                        New(
                            "Frame",
                            {
                                BackgroundColor3 = z.Value,
                                Size = UDim2.fromScale(1, 1),
                                BackgroundTransparency = z.Transparency
                            },
                            {New("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local N, O =
                        New(
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
                                New("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                New("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                M
                            }
                        ),
                        New(
                            "Frame",
                            {BackgroundColor3 = z.Value, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 0},
                            {New("UICorner", {CornerRadius = UDim.new(0, 4)})}
                        )
                    local P, Q =
                        New(
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
                                New("UICorner", {CornerRadius = UDim.new(0, 4)}),
                                New("UIStroke", {Thickness = 2, Transparency = 0.75}),
                                O
                            }
                        ),
                        {}
                    for R = 0, 1, 0.1 do
                        table.insert(Q, ColorSequenceKeypoint.new(R, Color3.fromHSV(R, 1, 1)))
                    end
                    local R, S =
                        New("UIGradient", {Color = ColorSequence.new(Q), Rotation = 90}),
                        New(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                    local T, U, V =
                        New(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = S,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        ),
                        New(
                            "Frame",
                            {Size = UDim2.fromOffset(12, 190), Position = UDim2.fromOffset(210, 55), Parent = C.Root},
                            {New("UICorner", {CornerRadius = UDim.new(1, 0)}), R, S}
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
                            New(
                            "Frame",
                            {
                                Size = UDim2.new(1, 0, 1, -10),
                                Position = UDim2.fromOffset(0, 5),
                                BackgroundTransparency = 1
                            }
                        )
                        aa =
                            New(
                            "ImageLabel",
                            {
                                Size = UDim2.fromOffset(14, 14),
                                Image = "http://www.roblox.com/asset/?id=12266946128",
                                Parent = ac,
                                ThemeTag = {ImageColor3 = "DialogInput"}
                            }
                        )
                        ab2 =
                            New(
                            "Frame",
                            {Size = UDim2.fromScale(1, 1)},
                            {
                                New(
                                    "UIGradient",
                                    {
                                        Transparency = NumberSequence.new {
                                            NumberSequenceKeypoint.new(0, 0),
                                            NumberSequenceKeypoint.new(1, 1)
                                        },
                                        Rotation = 270
                                    }
                                ),
                                New("UICorner", {CornerRadius = UDim.new(1, 0)})
                            }
                        )
                        _ =
                            New(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(12, 190),
                                Position = UDim2.fromOffset(230, 55),
                                Parent = C.Root,
                                BackgroundTransparency = 1
                            },
                            {
                                New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                                New(
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
                                    {New("UICorner", {CornerRadius = UDim.new(1, 0)})}
                                ),
                                ab2,
                                ac
                            }
                        )
                    end
                    local currentColor = Color3.fromHSV(D, E, F)
                    M.BackgroundColor3 = currentColor
                    O.BackgroundColor3 = currentColor

                    local currentLbl = New("TextLabel", {
                        Text = "#" .. currentColor:ToHex(), TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold),
                        Position = UDim2.fromOffset(112, 256),
                        Size = UDim2.fromOffset(88, 14),
                        BackgroundTransparency = 1,
                        Parent = C.Root,
                        TextColor3 = currentColor,
                        TextXAlignment = Enum.TextXAlignment.Left,
                    })
                    local oldLbl = New("TextLabel", {
                        Text = "#" .. currentColor:ToHex(),
                        TextSize = 9,
                        FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                        Position = UDim2.fromOffset(20, 256),
                        Size = UDim2.fromOffset(88, 14),
                        BackgroundTransparency = 1,
                        Parent = C.Root,
                        TextColor3 = currentColor,
                        TextXAlignment = Enum.TextXAlignment.Left,
                    })

                    local oldRevertBtn = New("TextButton", {
                        Text = "",
                        Position = N.Position,
                        Size = N.Size,
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
                        oldLbl.Text = "#" .. c1:ToHex()
                        oldLbl.TextColor3 = c1
                        V.Input.Text = "#" .. c1:ToHex()
                        W.Input.Text = math.floor(c1.r * 255)
                        X.Input.Text = math.floor(c1.g * 255)
                        Y.Input.Text = math.floor(c1.b * 255)
                        if x.Transparency then
                            ab2.BackgroundColor3 = c1
                            O.BackgroundTransparency = G
                            aa.Position = UDim2.new(0, -1, 1 - G, -6)
                            Z.Input.Text = require(o):Round((1 - G) * 100, 0) .. "%"
                        end
                    end
                    p.AddSignal(
                        V.Input.FocusLost,
                        function(ad)
                            if ad then
                                local ae, af = pcall(Color3.fromHex, V.Input.Text)
                                if ae and typeof(af) == "Color3" then D, E, F = Color3.toHSV(af) end
                            end
                            require()
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
                            require()
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
                            require()
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
                            require()
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
                                require()
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
                                    require()
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
                                    require()
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
                                        require()
                                        l:Wait()
                                    end
                                end
                            end
                        )
                    end
                    require()
                    p.AddSignal(oldRevertBtn.MouseButton1Click, function()
                        D, E, F = Color3.toHSV(currentColor)
                        require()
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
        return elementStates
    end,

    [22] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(22)
        local af, ag, ah, ai, aj =
            game:GetService "TweenService",
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            script.Parent.Parent
        local c, d = require(aj.Creator), require(aj.Packages.Flipper)
        local _acrylicMod = require(aj.Acrylic)
        local New, Components, elementStates = c.New, aj.Components, {}
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
                        local t = (obj:GetAttribute("Shine") or 0) + dt * Speed
                        obj:SetAttribute("Shine", t)
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
                        local t = (obj:GetAttribute("Shine") or 0) + dt * Speed
                        obj:SetAttribute("Shine", t)
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
        elementStates.__index = g
        elementStates.__type = "Dropdown"
        local _outsideSideOwner = {left = nil, right = nil, top = nil, bottom = nil}
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
        function elementStates.New(h, i, j)
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
                require(Components.Element)(j.Title, j.Description, h.Container, false)
            _registerShineRefresh(h.Library)
            m.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            m.TitleLabel.Size = UDim2.new(1, -170, 0, 14)
            l.SetTitle = m.SetTitle
            l.SetDesc = m.SetDesc
            l.Frame = m.Frame
            local n, o =
                New(
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
                New(
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
                New(
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
                        New("UICorner", {CornerRadius = UDim.new(0, 5)}),
                        New(
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
                New("UIListLayout", {Padding = UDim.new(0, 3)})

            local function _fitDropdownWidth()
                local avail = m.Frame.AbsoluteSize.X - 20
                local w = math.clamp(avail * 0.5, 80, 160)
                p.Size = UDim2.fromOffset(w, 30)
            end
            _fitDropdownWidth()
            m.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(_fitDropdownWidth)

            local ddShowSearch = (j.Search == true) and not (j.NoSearch == true)
            local ddSearchBox = ddShowSearch and New("TextBox", {
                FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
                TextSize = 11, TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 0.7, BorderSizePixel = 0,
                Size = UDim2.new(1, -10, 0, 24), Position = UDim2.fromOffset(5, 5),
                PlaceholderText = "Search options...", ClearTextOnFocus = false, Text = "",
                ThemeTag = {TextColor3 = "Text", BackgroundColor3 = "Input", PlaceholderColor3 = "SubText"},
                -- ZIndex 2 agar di atas AcrylicPaint.Frame (ZIndex 1) dan backgroundImage (ZIndex 0)
                ZIndex = 2,
            }) or nil
            if ddSearchBox then
                New("UICorner", {CornerRadius = UDim.new(0, 4)}).Parent = ddSearchBox
            end
            local scrollOffY = ddShowSearch and 33 or 5
            local scrollH    = ddShowSearch and -38 or -10
            local t =
                New(
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
                    CanvasSize = UDim2.fromScale(0, 0),
                    -- ZIndex 2 agar di atas AcrylicPaint.Frame (ZIndex 1) dan backgroundImage (ZIndex 0)
                    ZIndex = 2,
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
            local _globalBgRaw = nil
            pcall(function()
                local _thm2 = New(h.Themes)[h.Library.Theme]
                if _thm2 and _thm2.GlobalDropdownBackgroundImages and tostring(_thm2.GlobalDropdownBackgroundImages) ~= "" then
                    _globalBgRaw = tostring(_thm2.GlobalDropdownBackgroundImages)
                end
            end)
            if _globalBgRaw then _ddBgImgRaw = _globalBgRaw; _ddBgImg = _globalBgRaw end
            if _ddBgImg ~= "" then
                local _imgUrl = _ddBgImg
                if _imgUrl:match("^https?://") then
                    task.spawn(function()
                        local lib = h.Library
                        local resolved = lib and lib.MediaManager and lib.MediaManager:Image(_imgUrl)
                        if resolved and resolved ~= "" and _ddBgChild and _ddBgChild.Parent then
                            _ddBgChild.Image = resolved
                        end
                    end)
                end
                _ddBgChild = New("ImageLabel",{BackgroundTransparency=1,Image=_ddBgImg,ScaleType=Enum.ScaleType.Crop,Size=UDim2.fromScale(1,1),ImageTransparency=_ddBgTransp,ZIndex=0,ClipsDescendants=false})
                New("UICorner",{CornerRadius=UDim.new(0,7)}).Parent = _ddBgChild
            else
                local _themeBgVal, _themeBgTransp
                pcall(function()
                    local _thm = New(h.Themes)[h.Library.Theme]
                    if _thm and _thm.Background and tostring(_thm.Background) ~= "" then
                        _themeBgVal = tostring(_thm.Background)
                        _themeBgTransp = _thm.BackgroundTransparency or 0
                    end
                end)
                if ((j.OutsideWindow or j.DropdownOutsideWindow) == true) and _themeBgVal then
                    local _bgUrlResolved = _themeBgVal
                    if _bgUrlResolved:match("^https?://") then
                        task.spawn(function()
                            local lib = h.Library
                            local resolved = lib and lib.MediaManager and lib.MediaManager:Image(_bgUrlResolved)
                            if resolved and resolved ~= "" and _ddBgChild and _ddBgChild.Parent then
                                _ddBgChild.Image = resolved
                            end
                        end)
                    end
                    _ddBgChild = New("ImageLabel",{BackgroundTransparency=1,Image=_themeBgVal,ScaleType=Enum.ScaleType.Crop,Size=UDim2.fromScale(1,1),ImageTransparency=_themeBgTransp,ZIndex=0})
                    New("UICorner",{CornerRadius=UDim.new(0,7)}).Parent = _ddBgChild
                else
                    _ddBgChild = New("ImageLabel",{BackgroundTransparency=1,Image="http://www.roblox.com/asset/?id=5554236805",ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(23,23,277,277),Size=UDim2.fromScale(1,1)+UDim2.fromOffset(30,30),Position=UDim2.fromOffset(-15,-15),ImageColor3=Color3.fromRGB(0,0,0),ImageTransparency=0.1,Visible=false})
                end
            end
            local _ddBorderThickness = tonumber(c.GetThemeProperty("DropdownBorderThickness")) or 1
            local ddStroke = New("UIStroke", {ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Thickness = _ddBorderThickness, ThemeTag = {Color = "DropdownBorder"}})
            local ddGradient = New("Frame", {
                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                BackgroundTransparency = 0.4,
                Size = UDim2.fromScale(1, 1),
                -- ZIndex 1: lebih tinggi dari backgroundImage (ZIndex 0) seperti di window
                ZIndex = 1,
                Visible = false,
            }, {
                New("UICorner", {CornerRadius = UDim.new(0, 7)}),
                New("UIGradient", {Rotation = 90, ThemeTag = {Color = "AcrylicGradient"}}),
            })
            local uChildren = {t, New("UICorner", {CornerRadius = UDim.new(0, 7)}),
                ddStroke,
                ddGradient,
                _ddBgChild
            }
            if ddSearchBox then table.insert(uChildren, 1, ddSearchBox) end
            local u = New("Frame", {Size = UDim2.fromScale(1, 0.6), ClipsDescendants = true, ThemeTag = {BackgroundColor3 = "DropdownHolder"}}, uChildren)
            local _isManagerDD = j.IsManagerDropdown == true or j.ThemedDropdown == true
            if _isManagerDD then
                local function _syncManagerTransparency()
                    local baseTransp = c.GetThemeProperty("DropdownTransparency") or 0
                    u.BackgroundTransparency = h.Library.WindowTransparent and math.max(baseTransp, 0.35) or baseTransp
                end
                _syncManagerTransparency()
                h.Library._ManagerDropdownSyncs = h.Library._ManagerDropdownSyncs or {}
                table.insert(h.Library._ManagerDropdownSyncs, _syncManagerTransparency)
            end
            local _isOutsideDD = (j.OutsideWindow or j.DropdownOutsideWindow) == true
            local _isManagerDDAnim = j.IsManagerDropdown == true or j.ThemedDropdown == true
            local _themeSupportsShineInit = c.GetThemeProperty("ShineEnabled") == true
            local _initialAnimated = _themeSupportsShineInit and (
                (_isManagerDDAnim and (h.Library.ShineEnabled == true)) or (j.Animated == true)
            )
            if _initialAnimated then
                ddGradient.Visible = true
                local acrylicBorder = c.GetThemeProperty("AcrylicBorder")
                if acrylicBorder then ddStroke.Color = acrylicBorder end
            end
            local _ddAcrylicPaint = nil
            local function _isDDAcrylicActive()
                local lib = h.Library
                if not lib or not lib.UseAcrylic then return false end
                local im = lib.InterfaceManager
                if im and im.Settings and im.Settings.Acrylic == false then return false end
                return true
            end
            -- UseAcrylic / UseArcylic adalah property per-dropdown (tidak inherit dari Library).
            -- Aktifkan acrylic hanya jika dropdown sendiri yang minta via salah satu key ini.
            local _ddWantsAcrylic = (j.UseAcrylic == true or j.UseArcylic == true)
            if _ddWantsAcrylic and _isDDAcrylicActive() and not j.ThemedDropdown and not j.IsManagerDropdown then
                local ok2, paint2 = pcall(function() return _acrylicMod.AcrylicPaint() end)
                if ok2 and paint2 then
                    _ddAcrylicPaint = paint2
                    paint2.Frame.Size = UDim2.fromScale(1, 1)
                    -- Acrylic frame harus di atas backgroundImage (ZIndex=0),
                    -- tapi di bawah konten scroll/search (ZIndex default)
                    paint2.Frame.ZIndex = 1
                    paint2.Frame.Parent = u
                    u.BackgroundTransparency = 1
                    u.ClipsDescendants = false
                    ddGradient.Visible = false
                    if paint2.SetVisibility then paint2.SetVisibility(false) end
                end
            end
            local v =
                New(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.fromOffset(170, 300), Parent = h.Library.PopupGUI or h.Library.GUI, Visible = false},
                {u, New("UISizeConstraint", {MinSize = Vector2.new(170, 0)})}
            )
            table.insert(k.OpenFrames, v)
            local function _winFrame()
                local winGui = h.Library.GUI or h.Library.PopupGUI
                return winGui and winGui:FindFirstChildWhichIsA("Frame", true)
            end
            local w, x = function()
                    if j.OutsideWindow or j.DropdownOutsideWindow then
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
                        for _, s2 in ipairs(slotOrder) do
                            if fits[s2] and (_outsideSideOwner[s2] == nil or _outsideSideOwner[s2] == l) then
                                side = s2
                                break
                            end
                        end
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
                            popX = math.max(8, math.min(winLeft + 24, ai.ViewportSize.X - popW - 8))
                        else
                            popX = rightFits and (winRight + 8) or math.max(winRight + 2, ai.ViewportSize.X - popW - 8)
                            if #l.Values > 10 then popY = winTop else
                                popY = math.max(8, math.min(p.AbsolutePosition.Y + p.AbsoluteSize.Y / 2 - popH / 2, ai.ViewportSize.Y - popH - 8))
                            end
                        end
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
                        local popX = p.AbsolutePosition.X
                        local popY = p.AbsolutePosition.Y + p.AbsoluteSize.Y + 4
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
                if j.IsManagerDropdown or j.ThemedDropdown then
                    shouldAnimate = themeSupportsShine and h.Library.ShineEnabled == true
                else
                    shouldAnimate = themeSupportsShine and j.Animated == true
                end
                ddGradient.Visible = shouldAnimate
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
                if _ddAcrylicPaint and _ddAcrylicPaint.SetVisibility then
                    _ddAcrylicPaint.SetVisibility(_isDDAcrylicActive())
                end
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
                if _ddAcrylicPaint and _ddAcrylicPaint.SetVisibility then
                    _ddAcrylicPaint.SetVisibility(false)
                end
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
                        New(
                            "Frame",
                            {
                                Size = UDim2.fromOffset(4, 14),
                                BackgroundColor3 = Color3.fromRGB(76, 194, 255),
                                Position = UDim2.fromOffset(-1, 16),
                                AnchorPoint = Vector2.new(0, 0.5),
                                ThemeTag = {BackgroundColor3 = "Accent"}
                            },
                            {New("UICorner", {CornerRadius = UDim.new(0, 2)})}
                        ),
                        New(
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
                            local tm = New(aj.Themes)
                            if tm and tm[I] then td = tm[I] end
                        end)
                        if td then
                            local bgC = td.AcrylicMain or Color3.fromRGB(30,30,30)
                            local elC = td.Element    or Color3.fromRGB(60,60,60)
                            local acC = td.ThemeAccentColors or {td.Accent or Color3.fromRGB(100,100,100)}
                            local sw = New("Frame",{
                                Size=UDim2.fromOffset(66,22),
                                Position=UDim2.new(1,-70,0.5,0), AnchorPoint=Vector2.new(0,0.5),
                                BackgroundTransparency=1, ZIndex=25,
                            })
                            New("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(0,1),
                                BackgroundColor3=bgC,ZIndex=25,Parent=sw},
                                {New("UICorner",{CornerRadius=UDim.new(0,4)})})
                            New("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(22,1),
                                BackgroundColor3=elC,ZIndex=25,Parent=sw},
                                {New("UICorner",{CornerRadius=UDim.new(0,4)})})
                            if #acC > 1 then
                                local sw2 = math.floor(19/#acC)
                                for _ci,col in ipairs(acC) do
                                    New("Frame",{Size=UDim2.fromOffset(sw2,19),
                                        Position=UDim2.fromOffset(44+(_ci-1)*sw2,1),
                                        BackgroundColor3=col,ZIndex=25,Parent=sw},
                                        {New("UICorner",{CornerRadius=UDim.new(0,(_ci==1 or _ci==#acC) and 4 or 0)})})
                                end
                            else
                                New("Frame",{Size=UDim2.fromOffset(19,19),Position=UDim2.fromOffset(44,1),
                                    BackgroundColor3=acC[1],ZIndex=25,Parent=sw},
                                    {New("UICorner",{CornerRadius=UDim.new(0,4)})})
                            end
                            table.insert(swatches, sw)
                            L.Size = UDim2.new(1,-82,1,0)
                        end
                    end
                    local btnChildren = {K, L, New("UICorner",{CornerRadius=UDim.new(0,6)})}
                    for _,sw in ipairs(swatches) do table.insert(btnChildren,sw) end
                    local M, N =
                        (New(
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
                if x < 60 then
                    x = p.AbsoluteSize.X > 0 and p.AbsoluteSize.X or 170
                end
                z()
                task.defer(function()
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
    [23] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(23)
        local af = script.Parent.Parent
        local ag = require(af.Creator)
        local New, creatorAddSignal, Components, c = ag.New, ag.AddSignal, af.Components, {}
        c.__index = c
        c.__type = "Input"
        function c.New(d, e, f)
            local g = c.Library
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
                require(Components.Element)(f.Title, f.Description, c.Container, false)
            h.SetTitle = i.SetTitle
            h.SetDesc = i.SetDesc
            h.Frame = i.Frame
            i.TitleLabel.Size = UDim2.new(1, -170, 0, 14)
            i.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            local j = require(Components.Textbox)(i.Frame, true)
            j.Frame.Position = UDim2.new(1, -10, 0.5, 0)
            j.Frame.AnchorPoint = Vector2.new(1, 0.5)
            local function _fitInputWidth()
                local avail = i.Frame.AbsoluteSize.X - 20
                local w = math.clamp(avail * 0.5, 70, 160)
                j.Frame.Size = UDim2.fromOffset(w, 30)
            end
            _fitInputWidth()
            i.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(_fitInputWidth)
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
                creatorAddSignal(
                    k.FocusLost,
                    function(l)
                        if not l then
                            return
                        end
                        h:SetValue(k.Text)
                    end
                )
            else
                creatorAddSignal(
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
    [24] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(24)
        local af, ag = game:GetService "UserInputService", script.Parent.Parent
        local ah = require(ag.Creator)
        local New, Components, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Keybind"
        function c.New(d, e, f)
            local g = c.Library
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
                require(Components.Element)(f.Title, f.Description, c.Container, true)
            h.SetTitle = j.SetTitle
            h.SetDesc = j.SetDesc
            h.Frame = j.Frame
            local k =
                New(
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
                New(
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
                New(
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
                    New("UICorner", {CornerRadius = UDim.new(0, 5)}),
                    New("UIPadding", {PaddingLeft = UDim.new(0, 7), PaddingRight = UDim.new(0, 8)}),
                    New("UIListLayout", {
                        FillDirection = Enum.FillDirection.Horizontal,
                        VerticalAlignment = Enum.VerticalAlignment.Center,
                        Padding = UDim.new(0, 4),
                        SortOrder = Enum.SortOrder.LayoutOrder,
                    }),
                    New(
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
    [25] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(25)
        local af = script.Parent.Parent
        local ag, ah, ai, aj = af.Components, require(af.Packages.Flipper), require(af.Creator), {}
        aj.__index = aj
        aj.__type = "Paragraph"
        function aj.New(c, d)
            d = d or {}
            script.Title = script.Title or ""
            script.Content = script.Content or ""
            local e = require(ag.Element)(script.Title, script.Content, aj.Container, false)
            e.Frame.BackgroundTransparency = 0.92
            e.Border.Transparency = 0.6
            return e
        end
        return aj
    end,
    [26] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(26)
        local af, ag = game:GetService "UserInputService", script.Parent.Parent
        local ah = require(ag.Creator)
        local New, Components, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Slider"

        local function applySliderIcon(imgLabel, iconKey, lib)
            if not iconKey or not lib or not lib.GetIcon then return end
            local ic = lib:GetIcon(iconKey)
            if not ic then return end
            if type(ic) == "table" then
                imgLabel.Image = ic.Image or ""
                imgLabel.ImageRectOffset = ic.ImageRectOffset or Vector2.new(0, 0)
                imgLabel.ImageRectSize = ic.ImageRectSize or Vector2.new(0, 0)
            else
                imgLabel.Image = tostring(ic)
            end
        end

        function c.New(d, e, f)
            local g = c.Library
            assert(f.Title, "Slider - Missing Title.")
            assert(f.Default ~= nil, "Slider - Missing default value.")
            assert(f.Min ~= nil, "Slider - Missing minimum value.")
            assert(f.Max ~= nil, "Slider - Missing maximum value.")
            assert(f.Rounding ~= nil, "Slider - Missing rounding value.")

            local leftIconKey  = type(f.LeftIcons)  == "string" and f.LeftIcons  or nil
            local rightIconKey = type(f.RightIcons) == "string" and f.RightIcons or nil
            local iconSize = 16
            -- LeftIcon sekarang berada di KIRI rail (antara value label dan rail),
            -- sehingga layout: [Value] [LeftIcon] [-----rail-----] [RightIcon]
            local leftW  = leftIconKey  and (iconSize + 4) or 0
            local rightW = rightIconKey and (iconSize + 6) or 0

            local h, i, j =
                {
                    Value = nil,
                    Min = f.Min,
                    Max = f.Max,
                    Rounding = f.Rounding,
                    Callback = f.Callback or function(h) end,
                    Type = "Slider"
                },
                false,
                require(Components.Element)(f.Title, f.Description, c.Container, false)
            j.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            h.SetTitle = j.SetTitle
            h.SetDesc = j.SetDesc
            h.Frame = j.Frame

            local totalSideW = leftW + rightW
            local railRightOffset = -(10 + rightW)
            local railSize = UDim2.new(1, -(20 + totalSideW), 0, 6)
            local railPos  = UDim2.new(1, railRightOffset - leftW, 0.5, 0)

            local k =
                New(
                "ImageLabel",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(0, -10, 0.5, 0),
                    Size = UDim2.fromOffset(20, 20),
                    Image = "http://www.roblox.com/asset/?id=12266946128",
                    ThemeTag = {ImageColor3 = "Accent"},
                    ZIndex = 3,
                }
            )
            local trackFrame =
                New(
                    "Frame",
                    {BackgroundTransparency = 1, Position = UDim2.fromOffset(10, 0), Size = UDim2.new(1, -20, 1, 0)},
                    {k}
                )
            local fillFrame =
                New(
                    "Frame",
                    {Size = UDim2.new(0, 0, 1, 0), ThemeTag = {BackgroundColor3 = "Accent"}},
                    {New("UICorner", {CornerRadius = UDim.new(1, 0)})}
                )

            local valLabelOffsetX = leftIconKey and -(4 + leftW) or -4
            local valueLabel =
                New(
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
                        Position = UDim2.new(0, valLabelOffsetX, 0.5, 0),
                        AnchorPoint = Vector2.new(1, 0.5),
                        ThemeTag = {TextColor3 = "SubText"}
                    }
                )

            local railContainer =
                New(
                "Frame",
                {
                    Size = railSize,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = railPos,
                    BackgroundTransparency = 0.4,
                    Parent = j.Frame,
                    ThemeTag = {BackgroundColor3 = "SliderRail"}
                },
                {
                    New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                    New("UISizeConstraint", {MaxSize = Vector2.new(150, math.huge)}),
                    valueLabel,
                    fillFrame,
                    trackFrame,
                }
            )

            local stackedRailRow = nil
            local stackedFill = nil
            local stackedKnob = nil
            local stackedTrack = nil
            local stackedValLabel = nil
            local isStacked = false

            local function setupStackedRailRow()
                if stackedRailRow then return end

                local leftW2  = leftIconKey  and 18 or 0
                local rightW2 = rightIconKey and 18 or 0
                local valW2   = 36
                local pad2    = 4
                local railX2  = valW2 + pad2 + (leftW2 > 0 and leftW2 + pad2 or 0)
                local railOffR2 = rightW2 > 0 and (rightW2 + pad2) or 0

                stackedRailRow = New("Frame", {
                    Size = UDim2.new(1, 0, 0, 24),
                    BackgroundTransparency = 1,
                    LayoutOrder = 5,
                    Parent = j.LabelHolder,
                })

                stackedValLabel = New("TextLabel", {
                    FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium),
                    Text = valueLabel.Text,
                    TextSize = 12,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    BackgroundTransparency = 1,
                    Size = UDim2.fromOffset(valW2, 18),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    ThemeTag = {TextColor3 = "SubText"},
                    Parent = stackedRailRow,
                })

                if leftIconKey then
                    local sLIco = New("ImageLabel", {
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.new(0, valW2 + pad2, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "SubText"},
                        Parent = stackedRailRow,
                    })
                    task.defer(function() applySliderIcon(sLIco, leftIconKey, g) end)
                end

                local sRailContainer = New("Frame", {
                    Size = UDim2.new(1, -(railX2 + railOffR2), 0, 6),
                    Position = UDim2.new(0, railX2, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundTransparency = 0.4,
                    ThemeTag = {BackgroundColor3 = "SliderRail"},
                    Parent = stackedRailRow,
                }, {
                    New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                })

                stackedFill = New("Frame", {
                    Size = UDim2.new(0, 0, 1, 0),
                    ThemeTag = {BackgroundColor3 = "Accent"},
                    Parent = sRailContainer,
                }, {
                    New("UICorner", {CornerRadius = UDim.new(1, 0)}),
                })

                stackedTrack = New("TextButton", {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 28),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    Text = "",
                    ZIndex = 4,
                    Parent = sRailContainer,
                })

                stackedKnob = New("ImageLabel", {
                    AnchorPoint = Vector2.new(0.5, 0.5),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    Size = UDim2.fromOffset(18, 18),
                    Image = "http://www.roblox.com/asset/?id=12266946128",
                    ThemeTag = {ImageColor3 = "Accent"},
                    ZIndex = 5,
                    Parent = stackedTrack,
                })

                if rightIconKey then
                    local sRIco = New("ImageLabel", {
                        Size = UDim2.fromOffset(14, 14),
                        Position = UDim2.new(1, rightW2 > 0 and pad2 or 0, 0.5, 0),
                        AnchorPoint = Vector2.new(0, 0.5),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "SubText"},
                        Parent = stackedRailRow,
                    })
                    task.defer(function() applySliderIcon(sRIco, rightIconKey, g) end)
                end

                local sDragging = false
                stackedTrack.InputBegan:Connect(function(p2)
                    if p2.UserInputType == Enum.UserInputType.MouseButton1 or p2.UserInputType == Enum.UserInputType.Touch then
                        sDragging = true
                        local pct = math.clamp((p2.Position.X - stackedTrack.AbsolutePosition.X) / stackedTrack.AbsoluteSize.X, 0, 1)
                        h:SetValue(h.Min + ((h.Max - h.Min) * pct))
                    end
                end)
                stackedTrack.InputEnded:Connect(function(p2)
                    if p2.UserInputType == Enum.UserInputType.MouseButton1 or p2.UserInputType == Enum.UserInputType.Touch then
                        sDragging = false
                    end
                end)
                ah.AddSignal(af.InputChanged, function(p2)
                    if sDragging and (p2.UserInputType == Enum.UserInputType.MouseMovement or p2.UserInputType == Enum.UserInputType.Touch) then
                        local pct = math.clamp((p2.Position.X - stackedTrack.AbsolutePosition.X) / stackedTrack.AbsoluteSize.X, 0, 1)
                        h:SetValue(h.Min + ((h.Max - h.Min) * pct))
                    end
                end)

                stackedRailRow.Visible = false
            end

            local stackThreshold = 280
            local function updateSliderLayout()
                local w = j.LabelHolder.AbsoluteSize.X
                if w <= 0 then
                    task.defer(updateSliderLayout)
                    return
                end
                local shouldStack = w < stackThreshold
                if shouldStack == isStacked then return end
                isStacked = shouldStack
                if shouldStack then
                    setupStackedRailRow()
                    railContainer.Visible = false
                    stackedRailRow.Visible = true
                    h:SetValue(h.Value or f.Default)
                else
                    railContainer.Visible = true
                    if stackedRailRow then stackedRailRow.Visible = false end
                end
            end

            ah.AddSignal(j.LabelHolder:GetPropertyChangedSignal("AbsoluteSize"), updateSliderLayout)
            task.defer(updateSliderLayout)

            if leftIconKey then
                local leftIco = New("ImageLabel", {
                    Size = UDim2.fromOffset(iconSize, iconSize),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(0, -(2), 0.5, 0),
                    BackgroundTransparency = 1,
                    ThemeTag = {ImageColor3 = "SubText"},
                    Parent = railContainer,
                })
                task.defer(function() applySliderIcon(leftIco, leftIconKey, g) end)
            end

            if rightIconKey then
                local rightIco = New("ImageLabel", {
                    Size = UDim2.fromOffset(iconSize, iconSize),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    BackgroundTransparency = 1,
                    ThemeTag = {ImageColor3 = "SubText"},
                    Parent = j.Frame,
                })
                task.defer(function() applySliderIcon(rightIco, rightIconKey, g) end)
            end

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
                        local s = math.clamp((p.Position.X - trackFrame.AbsolutePosition.X) / trackFrame.AbsoluteSize.X, 0, 1)
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
                fillFrame.Size = UDim2.fromScale((p.Value - h.Min) / (h.Max - h.Min), 1)
                valueLabel.Text = tostring(p.Value)
                g:SafeCallback(h.Callback, p.Value)
                g:SafeCallback(h.Changed, p.Value)
                if stackedValLabel then
                    stackedValLabel.Text = tostring(p.Value)
                end
                local pct = (h.Max ~= h.Min) and ((p.Value - h.Min) / (h.Max - h.Min)) or 0
                if stackedKnob then
                    stackedKnob.Position = UDim2.new(pct, 0, 0.5, 0)
                end
                if stackedFill then
                    stackedFill.Size = UDim2.fromScale(pct, 1)
                end
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
    [27] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(27)
        local af, ag = game:GetService "TweenService", script.Parent.Parent
        local ah = require(ag.Creator)
        local New, Components, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Toggle"
        function c.New(d, e, f)
            local g = c.Library
            assert(f.Title, "Toggle - Missing Title")
            local h, i =
                {
                    Value = f.Default or false,
                    Callback = f.Callback or function(h)
                        end,
                    Type = "Toggle"
                },
                require(Components.Element)(f.Title, f.Description, c.Container, true)
            i.DescLabel.Size = UDim2.new(1, -54, 0, 14)
            h.SetTitle = i.SetTitle
            h.SetDesc = i.SetDesc
            h.Frame = i.Frame
            local j, k =
                New(
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
                New("UIStroke", {Transparency = 0.5, ThemeTag = {Color = "ToggleSlider"}})
            local l =
                New(
                "Frame",
                {
                    Size = UDim2.fromOffset(36, 18),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    Parent = i.Frame,
                    BackgroundTransparency = 1,
                    ThemeTag = {BackgroundColor3 = "Accent"}
                },
                {New("UICorner", {CornerRadius = UDim.new(0, 9)}), k, j}
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
    [59] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(59)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Image"
        function c.New(d, e, f)
            local opts = (type(e) == "table" and e) or (type(f) == "table" and f) or {}
            local parent = c.Container
            if not parent then return end
            local ratio = opts.AspectRatio or "16:9"
            local radius = opts.Radius or 8
            local src = opts.Image or ""
            local function resolve(src)
                local mm = c.Library and c.Library.MediaManager
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
            local New = require(af.Creator).New
            local wrap = New("Frame", {
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
            local img = New("ImageLabel", {
                Size = UDim2.fromScale(1, 1),
                BackgroundTransparency = 1,
                Image = resolve(src),
                ScaleType = Enum.ScaleType.Fit,
                Parent = wrap,
            })
            New("UICorner", {CornerRadius = UDim.new(0, radius), Parent = img})
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
    [60] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(60)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Video"
        function c.New(d, e, f)
            local opts   = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = c.Container
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
            local isCustomUrl = syncResolved == "" and type(src) == "string" and src:match("^https?://") ~= nil
            local hasVideo = syncResolved ~= "" or isCustomUrl
            local New = require(af.Creator).New
            local function applyIcon(imgLabel, iconName)
                local ic = c.Library and c.Library:GetIcon(iconName)
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
            local wrap = New("Frame",{
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
            New("UICorner",{CornerRadius=UDim.new(0,radius),Parent=wrap})
            New("UIStroke",{Transparency=0.6,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            local vid = nil
            if hasVideo then
                vid = Instance.new("VideoFrame")
                vid.Size=UDim2.fromScale(1,1); vid.BackgroundTransparency=1
                vid.Looped=looped; vid.Volume=vol; vid.ZIndex=1
                vid:SetAttribute("BFVolume",vol); vid:SetAttribute("BFAutoPlay",auto)
                New("UICorner",{CornerRadius=UDim.new(0,radius),Parent=vid})
                if syncResolved ~= "" then
                    vid.Video = syncResolved
                elseif isCustomUrl then
                    task.spawn(function()
                        local lib = c.Library
                        local custom
                        for attempt = 1, 4 do
                            local ok, res = pcall(function()
                                return lib and lib.MediaManager and lib.MediaManager:Video(src)
                            end)
                            custom = ok and res or nil
                            if custom and custom ~= "" then break end
                            if attempt < 4 then task.wait(2) end
                        end
                        if custom and custom ~= "" and vid and vid.Parent then
                            vid.Video = custom
                            vid:SetAttribute("_pendingAutoPlay", auto)
                        end
                    end)
                end
                local _loopProtectConn; _loopProtectConn = game:GetService("RunService").Heartbeat:Connect(function()
                    if not vid or not vid.Parent then
                        pcall(function() _loopProtectConn:Disconnect() end)
                        return
                    end
                    local tl = vid.TimeLength
                    if looped and tl and tl > 0.1 then
                        local pos = 0; pcall(function() pos = vid.TimePosition end)
                        if pos >= tl - 0.12 and playing then
                            pcall(function() vid.TimePosition = 0 end)
                            task.delay(0.05, function()
                                if vid and vid.Parent and playing then
                                    pcall(function() vid:Play() end)
                                end
                            end)
                        end
                    end
                end)
                vid.Parent=wrap
            end
            local placeholder = New("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Visible=not hasVideo,ZIndex=2,Parent=wrap})
            local phImg = New("ImageLabel",{Size=UDim2.fromOffset(32,32),Position=UDim2.new(0.5,0,0.5,-14),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ImageTransparency=0.4,ZIndex=3,Parent=placeholder,ThemeTag={ImageColor3="SubText"}})
            applyIcon(phImg, "solar/videocamera-record-bold")
            New("TextLabel",{Size=UDim2.new(1,0,0,16),Position=UDim2.new(0,0,0.5,20),AnchorPoint=Vector2.new(0,0),BackgroundTransparency=1,Text="rbxassetid:// or video URL required",TextSize=11,Font=Enum.Font.GothamMedium,TextTransparency=0.5,ZIndex=3,Parent=placeholder,ThemeTag={TextColor3="SubText"}})
            if not hasVideo then
                local mod={Frame=wrap,Type="Video",VideoFrame=nil}
                function mod:Destroy() wrap:Destroy() end
                return mod
            end
            local overlay = Instance.new("CanvasGroup")
            overlay.Size=UDim2.new(1,0,0,54); overlay.Position=UDim2.new(0,0,1,0); overlay.AnchorPoint=Vector2.new(0,1)
            overlay.BackgroundTransparency=1; overlay.GroupTransparency=1; overlay.ZIndex=5; overlay.Parent=wrap
            local gradFr = New("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=Color3.fromRGB(0,0,0),BackgroundTransparency=0,BorderSizePixel=0,ZIndex=5,Parent=overlay})
            New("UIGradient",{Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(1,1)}),Rotation=90,Parent=gradFr})
            local seekRow = New("Frame",{Size=UDim2.new(1,-12,0,16),Position=UDim2.new(0,6,0,4),BackgroundTransparency=1,ZIndex=6,Parent=overlay})
            local timeCur = New("TextLabel",{Size=UDim2.fromOffset(36,16),BackgroundTransparency=1,Text="0:00",TextSize=10,Font=Enum.Font.GothamMedium,TextColor3=Color3.fromRGB(220,220,220),ZIndex=7,Parent=seekRow})
            local seekContainer = New("Frame",{Size=UDim2.new(1,-84,0,16),Position=UDim2.fromOffset(40,0),BackgroundTransparency=1,ZIndex=6,Parent=seekRow})
            local seekRail = New("TextButton",{Size=UDim2.new(1,0,0,5),Position=UDim2.new(0,0,0.5,-2),BackgroundColor3=Color3.fromRGB(80,80,90),BorderSizePixel=0,ZIndex=7,Text="",AutoButtonColor=false,Parent=seekContainer})
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekRail})
            local seekFill = New("Frame",{Size=UDim2.new(0,0,1,0),BackgroundColor3=Color3.fromRGB(200,30,30),BorderSizePixel=0,ZIndex=8,Parent=seekRail})
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekFill})
            local seekKnob = New("Frame",{Size=UDim2.fromOffset(12,12),Position=UDim2.new(0,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=Color3.fromRGB(255,255,255),BorderSizePixel=0,ZIndex=9,Parent=seekRail})
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=seekKnob})
            local timeDur = New("TextLabel",{Size=UDim2.fromOffset(36,16),Position=UDim2.new(1,-36,0,0),BackgroundTransparency=1,Text="0:00",TextSize=10,Font=Enum.Font.GothamMedium,TextColor3=Color3.fromRGB(160,160,170),ZIndex=7,Parent=seekRow})
            local ctrlRow = New("Frame",{Size=UDim2.new(1,-12,0,26),Position=UDim2.new(0,6,0,24),BackgroundTransparency=1,ZIndex=6,Parent=overlay})
            local function ctrlBtn2(iconName, size, cb)
                local btn=New("TextButton",{Size=UDim2.fromOffset(size or 22,22),BackgroundTransparency=1,Text="",ZIndex=7,AutoButtonColor=false,Parent=ctrlRow})
                local ic=New("ImageLabel",{Size=UDim2.fromOffset(16,16),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ZIndex=8,Parent=btn,ThemeTag={ImageColor3="Text"}})
                applyIcon(ic,iconName); btn.MouseButton1Click:Connect(function() pcall(cb) end)
                return btn,ic
            end
            local playing=auto
            local playBtn,playIco=ctrlBtn2("solar/play-bold",22,function() end)
            local pauseBtn,pauseIco=ctrlBtn2("solar/pause-bold",22,function() end)
            local stopBtn=ctrlBtn2("solar/stop-bold",22,function() end)
            local volIco=New("ImageLabel",{Size=UDim2.fromOffset(14,14),Position=UDim2.fromOffset(68,4),BackgroundTransparency=1,ZIndex=7,Parent=ctrlRow,ThemeTag={ImageColor3="SubText"}})
            applyIcon(volIco,"solar/volume-loud-bold")
            local volLbl=New("TextLabel",{Size=UDim2.fromOffset(32,22),Position=UDim2.fromOffset(84,0),BackgroundTransparency=1,Text=tostring(math.floor(vol*100)).."%",TextSize=10,Font=Enum.Font.Gotham,ZIndex=7,Parent=ctrlRow,ThemeTag={TextColor3="SubText"}})
            New("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,Padding=UDim.new(0,2),Parent=ctrlRow})
            local ctrlVisible=false; local fadeTimer=0; local fadingOut=false
            local function showOverlay()
                ctrlVisible=true; fadingOut=false; fadeTimer=3
                ts2:Create(overlay,TweenInfo.new(0.18,Enum.EasingStyle.Sine),{GroupTransparency=0}):Play()
            end
            local function hideOverlay()
                ctrlVisible=false; fadingOut=true
                ts2:Create(overlay,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{GroupTransparency=1}):Play()
            end
            local vidClickBtn=New("TextButton",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Text="",ZIndex=4,AutoButtonColor=false,Parent=wrap})
            vidClickBtn.MouseButton1Click:Connect(function()
                if ctrlVisible then fadeTimer=3 else showOverlay() end
            end)
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
            local function fmtT(s) s=math.max(0,math.floor(s or 0)); return string.format("%script:%02d",math.floor(s/60),s%60) end
            local hbConn=rs2.Heartbeat:Connect(function(dt)
                if not wrap.Parent then return end
                if ctrlVisible then
                    fadeTimer=fadeTimer-dt
                    if fadeTimer<=0 and not seeking then hideOverlay() end
                end
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

            task.spawn(function()
                local timeout = 0
                repeat
                    task.wait(0.1); timeout = timeout + 0.1

                    if vid and vid:GetAttribute("_pendingAutoPlay") ~= nil then
                        local shouldPlay = vid:GetAttribute("_pendingAutoPlay")
                        vid:SetAttribute("_pendingAutoPlay", nil)
                        if not shouldPlay then return end

                    end
                until (vid and vid.TimeLength and vid.TimeLength > 0) or timeout > 15
                if vid and vid.Parent and vid.TimeLength and vid.TimeLength > 0 then
                    if auto or (vid.Video ~= "" and vid:GetAttribute("BFAutoPlay")) then
                        pcall(function() vid:Play() end)
                        playing = true
                        playBtn.Visible = false
                        pauseBtn.Visible = true
                    end
                end
            end)
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
                pcall(function() hbConn:Disconnect() end)
                pcall(function() if _loopProtectConn then _loopProtectConn:Disconnect() end end)
                wrap:Destroy()
            end
            return mod
        end
        return c
    end,
    [61] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(61)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Code"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = c.Container
            if not parent then return end
            local New = require(af.Creator).New
            local code  = D.Code  or ""
            local title = D.Title or ""
            local cb    = D.OnCopy
            local wrap  = New("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=0.88,AutomaticSize=Enum.AutomaticSize.Y,Parent=parent,ThemeTag={BackgroundColor3="Element"}})
            New("UICorner",{CornerRadius=UDim.new(0,8),Parent=wrap})
            New("UIStroke",{Transparency=0.7,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            New("UIPadding",{PaddingTop=UDim.new(0,8),PaddingBottom=UDim.new(0,8),PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,36),Parent=wrap})
            local lbl
            if title ~= "" then
                lbl = New("TextLabel",{FontFace=Font.new("rbxasset://fonts/families/GothamSSm.json",Enum.FontWeight.SemiBold),Text=title,TextSize=11,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,Size=UDim2.new(1,0,0,14),AutomaticSize=Enum.AutomaticSize.None,LayoutOrder=1,Parent=wrap,ThemeTag={TextColor3="SubText"}})
            end
            local codeLabel = New("TextLabel",{FontFace=Font.new("rbxasset://fonts/families/RobotoMono.json"),Text=code,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,RichText=false,BackgroundTransparency=1,Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,LayoutOrder=2,Parent=wrap,ThemeTag={TextColor3="Text"}})
            if title ~= "" then
                New("UIListLayout",{FillDirection=Enum.FillDirection.Vertical,Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder,Parent=wrap})
            end
            local copyBtn = New("TextButton",{Size=UDim2.fromOffset(24,24),Position=UDim2.new(1,4,0,6),AnchorPoint=Vector2.new(0,0),BackgroundTransparency=0.7,Text="",ZIndex=3,Parent=wrap,ThemeTag={BackgroundColor3="Tab"}})
            New("UICorner",{CornerRadius=UDim.new(0,6),Parent=copyBtn})
            local copyIconImg = New("ImageLabel",{Size=UDim2.fromOffset(14,14),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Parent=copyBtn,ThemeTag={ImageColor3="SubText"}})
            local copyIc = c.Library and c.Library:GetIcon("solar/copy-bold")
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
    [62] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(62)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Group"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = c.Container
            if not parent then return end
            local New = require(af.Creator).New
            local gap  = D.Gap     or 6
            local cols = D.Columns or 2
            local outerWrap = New("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=parent,BorderSizePixel=0})
            New("UIPadding",{PaddingTop=UDim.new(0,2),PaddingBottom=UDim.new(0,2),Parent=outerWrap})
            local wrap = New("Frame",{Size=UDim2.new(1,0,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=outerWrap,BorderSizePixel=0})
            local totalGap = gap * (cols - 1)
            local colScale = 1 / cols
            local colOffset = -math.floor(totalGap / cols + 0.5)
            New("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,HorizontalAlignment=Enum.HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,Padding=UDim.new(0,gap),Parent=wrap})
            local colW = colScale
            local mod  = {Frame=outerWrap, Type="Group", Elements={}, _section=nil}
            function mod:SetSection(sec) self._section = sec end
            function mod:AddElement()
                local el = New("Frame",{Size=UDim2.new(colW,colOffset,0,0),BackgroundTransparency=1,AutomaticSize=Enum.AutomaticSize.Y,Parent=wrap})
                New("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder,Parent=el})
                local sec = self._section
                local colObj = setmetatable({
                    Container    = el,
                    Type         = sec and sec.Type or nil,
                    ScrollFrame  = sec and sec.ScrollFrame or nil,
                    Library      = sec and sec.Library or nil,
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
    [63] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(63)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Space"
        function c.New(d, e, f)
            local D = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = c.Container
            if not parent then return end
            local New = require(af.Creator).New
            local h = D.Height or 8
            local sp = New("Frame",{Size=UDim2.new(1,0,0,h),BackgroundTransparency=1,BorderSizePixel=0,Parent=parent})
            local mod = {Frame=sp, Type="Space"}
            function mod:Destroy() sp:Destroy() end
            return mod
        end
        return c
    end,
    [64] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(64)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Divider"
        function c.New(d, e, f)
            local parent = c.Container
            if not parent then return end
            local New = require(af.Creator).New
            local wrapper = New("Frame", {
                Size = UDim2.new(1, 0, 0, 12),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Parent = parent,
            })
            local line = New("Frame", {
                Size = UDim2.new(1, -20, 0, 2),
                Position = UDim2.new(0, 10, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                BackgroundTransparency = 0.55,
                BorderSizePixel = 0,
                Parent = wrapper,
                ThemeTag = { BackgroundColor3 = "Accent" },
            })
            New("UICorner", { CornerRadius = UDim.new(1, 0), Parent = line })
            local mod = { Frame = wrapper, Type = "Divider" }
            function mod:Destroy() wrapper:Destroy() end
            return mod
        end
        return c
    end,
    [65] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(65)
        local af = script.Parent.Parent
        local c = {}
        c.__index = c
        c.__type = "Audio"
        function c.New(d, e, f)
            local opts   = (type(e)=="table" and e) or (type(f)=="table" and f) or {}
            local parent = c.Container
            if not parent then return end
            local src    = opts.Audio or opts.Sound or ""
            local vol    = (opts.Volume ~= nil) and math.clamp(opts.Volume, 0, 10) or 0.5
            local looped = opts.Looped ~= false
            local auto   = opts.AutoPlay ~= false
            local New = require(af.Creator).New
            local lib = c.Library
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
                return string.format("%script:%02d", math.floor(s / 60), s % 60)
            end
            local function applyAudioIcon(imgLabel, iconName)
                local ic = c.Library and c.Library:GetIcon(iconName)
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
            local wrap = New("Frame",{
                Size=UDim2.new(1,-16,0,wrapHeight),
                BackgroundTransparency=0.9,
                BorderSizePixel=0,
                Parent=parent,
                ThemeTag={BackgroundColor3="Element"},
            })
            New("UICorner",{CornerRadius=UDim.new(0,8),Parent=wrap})
            New("UIStroke",{Transparency=0.6,Thickness=1,ThemeTag={Color="InElementBorder"},Parent=wrap})
            New("UIPadding",{PaddingLeft=UDim.new(0,10),PaddingRight=UDim.new(0,10),PaddingTop=UDim.new(0,10),PaddingBottom=UDim.new(0,10),Parent=wrap})
            local topRow = New("Frame",{
                Size=UDim2.new(1,0,0,hasLabels and 38 or 28),
                BackgroundTransparency=1,
                Parent=wrap,
            })
            local audioIconImg = New("ImageLabel",{
                Size=UDim2.fromOffset(20,20),
                Position=UDim2.new(0,0,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundTransparency=1,
                ZIndex=2,
                Parent=topRow,
                ThemeTag={ImageColor3=hasAudio and "Accent" or "SubText"},
            })
            applyAudioIcon(audioIconImg, "solar/volume-loud-bold")
            local titleHolder = New("Frame",{
                Size=UDim2.new(1,-110,1,0),
                Position=UDim2.new(0,28,0,0),
                BackgroundTransparency=1,
                ZIndex=2,
                Parent=topRow,
            })
            local statusLbl = New("TextLabel",{
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
            local subtitleLbl = New("TextLabel",{
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
            local controls = New("Frame",{
                Size=UDim2.new(0,116,1,0),
                Position=UDim2.new(1,0,0,0),
                AnchorPoint=Vector2.new(1,0),
                BackgroundTransparency=1,
                Visible=hasAudio,
                Parent=topRow,
            })
            New("UIListLayout",{FillDirection=Enum.FillDirection.Horizontal,VerticalAlignment=Enum.VerticalAlignment.Center,HorizontalAlignment=Enum.HorizontalAlignment.Right,Padding=UDim.new(0,4),Parent=controls})
            local function ctrlBtn(iconName, cb)
                local btn = New("TextButton",{Size=UDim2.fromOffset(24,24),BackgroundTransparency=1,Text="",ZIndex=3,Parent=controls})
                local icImg = New("ImageLabel",{Size=UDim2.fromOffset(16,16),Position=UDim2.new(0.5,0,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,ZIndex=4,Parent=btn,ThemeTag={ImageColor3="Text"}})
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
            local seekRow = New("Frame",{
                Size=UDim2.new(1,0,0,24),
                Position=UDim2.new(0,0,0,seekRowOffset),
                BackgroundTransparency=1,
                Visible=hasAudio,
                Parent=wrap,
            })
            local curLbl = New("TextLabel",{
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
            local durLbl = New("TextLabel",{
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
            local rail = New("Frame",{
                Size=UDim2.new(1,-76,0,4),
                Position=UDim2.new(0,38,0.5,0),
                AnchorPoint=Vector2.new(0,0.5),
                BackgroundTransparency=0.65,
                ZIndex=2,
                Parent=seekRow,
                ThemeTag={BackgroundColor3="SubText"},
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=rail})
            local fill = New("Frame",{
                Size=UDim2.new(0,0,1,0),
                BackgroundTransparency=0,
                ZIndex=3,
                Parent=rail,
                ThemeTag={BackgroundColor3="Accent"},
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=fill})
            local knob = New("Frame",{
                Size=UDim2.fromOffset(12,12),
                Position=UDim2.new(0,0,0.5,0),
                AnchorPoint=Vector2.new(0.5,0.5),
                ZIndex=4,
                Parent=rail,
                ThemeTag={BackgroundColor3="Accent"},
            })
            New("UICorner",{CornerRadius=UDim.new(1,0),Parent=knob})
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
            if c.Library and c.Library.Window then
                local win = c.Library.Window
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

    [30] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(30)
        local af = {
            SingleMotor = require(script.SingleMotor),
            GroupMotor = require(script.GroupMotor),
            Instant = require(script.Instant),
            Linear = require(script.Linear),
            Spring = require(script.Spring),
            isMotor = require(script.isMotor)
        }
        return af
    end,
    [31] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(31)
        local af, ag, ah, ai = game:GetService "RunService", require(script.Parent.Signal), function()
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
    [32] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(32)
        return function()
            local af, ag = game:GetService "RunService", require(script.Parent.BaseMotor)
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
    [33] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(33)
        local af, ag, ah = require(script.Parent.BaseMotor), require(script.Parent.SingleMotor), require(script.Parent.isMotor)
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
    [34] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(34)
        return function()
            local af, ag, ah = require(script.Parent.GroupMotor), require(script.Parent.Instant), require(script.Parent.Spring)
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
    [35] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(35)
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
    [36] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(36)
        return function()
            local af = require(script.Parent.Instant)
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
    [37] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(37)
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
    [38] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(38)
        return function()
            local af, ag = require(script.Parent.SingleMotor), require(script.Parent.Linear)
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
    [39] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(39)
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
    [40] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(40)
        return function()
            local af = require(script.Parent.Signal)
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
    [41] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(41)
        local af = require(script.Parent.BaseMotor)
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
    [42] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(42)
        return function()
            local af, ag = require(script.Parent.SingleMotor), require(script.Parent.Instant)
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
    [43] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(43)
        local af, ag, ah, aj = 0.001, 0.001, 0.0001, {}
        aj.__index = aj
        function aj.new(c, d)
            assert(c, "Missing argument #1: targetValue")
            d = d or {}
            return setmetatable(
                {_targetValue = c, _frequency = script.frequency or 4, _dampingRatio = script.dampingRatio or 1},
                aj
            )
        end
        function aj.step(c, d, e)
            local f, g, h, i, j = c._dampingRatio, c._frequency * 2 * math.pi, c._targetValue, script.value, script.velocity or 0
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
    [44] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(44)
        return function()
            local af, ag = require(script.Parent.SingleMotor), require(script.Parent.Spring)
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
    [45] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(45)
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
    [46] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(46)
        return function()
            local af, ag, ah = require(script.Parent.isMotor), require(script.Parent.SingleMotor), require(script.Parent.GroupMotor)
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
    [47] = function()
        local maui, script, require, getfenv, setfenv = ImportGlobals(47)
        local af = {
            Names = {
                "Dark", "Blood Red", "Cyanic", "Amber Glow", "Deep Violet", "Neon Cyber", "Neon Purple", "Royal Blue", "Deep Ocean", "Rose", "Charcoal", "Pearl White", "Midnight Blue", "Cotton Candy", "Arctic Frost", "Bloomings", "Crimson", "Gold", "Lavender Pink"
            }
        }
        for ag, ah in next, script:GetChildren() do
            local aj = require(ah)
            af[aj.Name] = aj
            aj.Tier = "NativeTheme"
            if aj.Accent and not aj.ThemeAccentColors then
                aj.ThemeAccentColors = { aj.Accent }
            end
            if aj.Background == nil then aj.Background = nil end
            if aj.BackgroundTransparency == nil then aj.BackgroundTransparency = 0 end
        end

        return af
    end,
    [48] = function()
        ImportGlobals(48)
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
            Text = Color3.fromRGB(255, 250, 255),
            SubText = Color3.fromRGB(215, 195, 250),
            IconColor = Color3.fromRGB(215, 195, 250),
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
                ),
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
                ),
            },
            Background = "rbxassetid://136310484943077",
            BackgroundTransparency = 0.15,
        }
    end,
    [49] = function()
        ImportGlobals(49)
        return {
            Name = "Dark",
            Accent = Color3.fromRGB(150, 150, 150),
            AcrylicMain = Color3.fromRGB(60, 60, 60),
            AcrylicBorder = Color3.fromRGB(90, 90, 90),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
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
            Text = Color3.fromRGB(255, 255, 255),
            SubText = Color3.fromRGB(185, 185, 185),
            IconColor = Color3.fromRGB(185, 185, 185),
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
                ),
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
                ),
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
    [50] = function()
        ImportGlobals(50)
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
            Text = Color3.fromRGB(255, 255, 255),
            SubText = Color3.fromRGB(185, 205, 225),
            IconColor = Color3.fromRGB(185, 205, 225),
            Hover = Color3.fromRGB(90, 160, 255),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.45,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(180, 180, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20))
                    }
                ),
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
                ),
            },
        }
    end,
    [51] = function()
        ImportGlobals(51)
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
            IconColor = Color3.fromRGB(90, 90, 90),
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
                ),
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
                ),
            },
        }
    end,
    [52] = function()
        ImportGlobals(52)
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
            Text = Color3.fromRGB(255, 180, 180),
            SubText = Color3.fromRGB(240, 100, 100),
            IconColor = Color3.fromRGB(240, 100, 100),
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
                ),
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
                ),
            },
            Background = "rbxassetid://121343473918667",
            BackgroundTransparency = 0.15,
            ThemeAccentColors = {Color3.fromRGB(180, 10, 20)},
        }
    end,
    [53] = function()
        ImportGlobals(53)
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
            Text = Color3.fromRGB(235, 200, 255),
            SubText = Color3.fromRGB(190, 145, 255),
            IconColor = Color3.fromRGB(190, 145, 255),
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
                ),
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
                ),
            },
        }
    end,
    [54] = function()
        ImportGlobals(54)
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
            Text = Color3.fromRGB(200, 230, 252),
            SubText = Color3.fromRGB(95, 195, 240),
            IconColor = Color3.fromRGB(95, 195, 240),
            Hover = Color3.fromRGB(0, 150, 200),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 90)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(0, 100, 150),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 120, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 150)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 150)),
                    }
                ),
            },
        }
    end,
    [55] = function()
        ImportGlobals(55)
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
            Text = Color3.fromRGB(195, 195, 248),
            SubText = Color3.fromRGB(130, 130, 240),
            IconColor = Color3.fromRGB(130, 130, 240),
            Hover = Color3.fromRGB(100, 80, 200),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 15, 60)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(60, 45, 140),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 60, 170)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 45, 140)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 45, 140)),
                    }
                ),
            },
        }
    end,
    [56] = function()
        ImportGlobals(56)
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
            Text = Color3.fromRGB(185, 215, 255),
            SubText = Color3.fromRGB(110, 165, 240),
            IconColor = Color3.fromRGB(110, 165, 240),
            Hover = Color3.fromRGB(15, 82, 186),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 85)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(10, 65, 150),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 75, 170)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 65, 150)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 65, 150)),
                    }
                ),
            },
        }
    end,

    [71] = function()
        ImportGlobals(71)
                return {
            Name = "Rose",
            Accent = Color3.fromRGB(255, 120, 160),
            AcrylicMain = Color3.fromRGB(25, 20, 22),
            AcrylicBorder = Color3.fromRGB(120, 70, 90),
            AcrylicGradient = ColorSequence.new(
                {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 40, 55)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 18)),
                }
            ),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(180, 90, 120),
            Tab = Color3.fromRGB(70, 40, 50),
            Element = Color3.fromRGB(60, 35, 45),
            ElementBorder = Color3.fromRGB(120, 70, 90),
            InElementBorder = Color3.fromRGB(80, 45, 60),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(255, 120, 160),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(120, 70, 90),
            CheckboxUnchecked = Color3.fromRGB(120, 70, 90),
            CheckboxChecked = Color3.fromRGB(255, 120, 160),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(120, 70, 90),
            ProgressBarFill = Color3.fromRGB(255, 120, 160),
            DropdownFrame = Color3.fromRGB(50, 30, 40),
            DropdownHolder = Color3.fromRGB(35, 20, 28),
            DropdownBorder = Color3.fromRGB(120, 70, 90),
            DropdownOption = Color3.fromRGB(255, 120, 160),
            Keybind = Color3.fromRGB(60, 35, 45),
            Input = Color3.fromRGB(45, 25, 32),
            InputFocused = Color3.fromRGB(30, 15, 20),
            InputIndicator = Color3.fromRGB(255, 170, 200),
            InputIndicatorFocus = Color3.fromRGB(255, 200, 220),
            Dialog = Color3.fromRGB(45, 25, 32),
            DialogHolder = Color3.fromRGB(30, 18, 22),
            DialogHolderLine = Color3.fromRGB(25, 14, 18),
            DialogButton = Color3.fromRGB(45, 25, 32),
            DialogButtonBorder = Color3.fromRGB(120, 70, 90),
            DialogBorder = Color3.fromRGB(120, 70, 90),
            DialogInput = Color3.fromRGB(60, 35, 45),
            DialogInputLine = Color3.fromRGB(255, 170, 200),
            Text = Color3.fromRGB(255, 170, 200),
            SubText = Color3.fromRGB(240, 120, 160),
            IconColor = Color3.fromRGB(240, 120, 160),
            Hover = Color3.fromRGB(255, 120, 160),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 20, 30)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 20, 30)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(120, 70, 90),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 30, 40)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 70, 90)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 70, 90)),
                    }
                ),
            },
            Background = nil,
            BackgroundTransparency = 0,
            ThemeAccentColors = {Color3.fromRGB(255, 120, 160)},
                }
    end,

    [72] = function()
        ImportGlobals(72)
                return {
            Name = "Neon Cyber",
            Accent = Color3.fromRGB(57, 255, 20),
            AcrylicMain = Color3.fromRGB(5, 10, 5),
            AcrylicBorder = Color3.fromRGB(40, 200, 20),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(10, 25, 10), Color3.fromRGB(3, 8, 3)),
            AcrylicNoise = 0.93,
            TitleBarLine = Color3.fromRGB(35, 160, 15),
            Tab = Color3.fromRGB(57, 255, 20),
            Element = Color3.fromRGB(10, 22, 10),
            ElementBorder = Color3.fromRGB(3, 8, 3),
            InElementBorder = Color3.fromRGB(35, 160, 15),
            ElementTransparency = 0.88,
            ToggleSlider = Color3.fromRGB(57, 255, 20),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(57, 255, 20),
            CheckboxUnchecked = Color3.fromRGB(57, 255, 20),
            CheckboxChecked = Color3.fromRGB(57, 255, 20),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(57, 255, 20),
            ProgressBarFill = Color3.fromRGB(57, 255, 20),
            DropdownFrame = Color3.fromRGB(35, 160, 15),
            DropdownHolder = Color3.fromRGB(5, 12, 5),
            DropdownBorder = Color3.fromRGB(35, 160, 15),
            DropdownOption = Color3.fromRGB(57, 255, 20),
            Keybind = Color3.fromRGB(40, 200, 18),
            Input = Color3.fromRGB(10, 22, 10),
            InputFocused = Color3.fromRGB(3, 7, 3),
            InputIndicator = Color3.fromRGB(57, 255, 20),
            InputIndicatorFocus = Color3.fromRGB(130, 255, 80),
            Dialog = Color3.fromRGB(5, 12, 5),
            DialogHolder = Color3.fromRGB(3, 8, 3),
            DialogHolderLine = Color3.fromRGB(35, 160, 15),
            DialogButton = Color3.fromRGB(8, 18, 8),
            DialogButtonBorder = Color3.fromRGB(57, 255, 20),
            DialogBorder = Color3.fromRGB(40, 200, 18),
            DialogInput = Color3.fromRGB(10, 22, 10),
            DialogInputLine = Color3.fromRGB(57, 255, 20),
            Text = Color3.fromRGB(130, 255, 140),
            SubText = Color3.fromRGB(60, 245, 40),
            IconColor = Color3.fromRGB(60, 245, 40),
            Hover = Color3.fromRGB(15, 40, 15),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.8,
                RotationSpeed = 30,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 30, 5)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 255, 20)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 30, 5)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(35, 160, 15),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 22, 8)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(3, 8, 3)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 160, 15)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 255, 20)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 160, 15)),
                    }
                ),
            },
            Background = nil,
            BackgroundTransparency = 0,
            ThemeAccentColors = {Color3.fromRGB(57, 255, 20)},
                }
    end,

    [73] = function()
        ImportGlobals(73)
                return {
            Name = "Arctic Frost",
            Accent = Color3.fromRGB(100, 180, 240),
            AcrylicMain = Color3.fromRGB(185, 215, 235),
            AcrylicBorder = Color3.fromRGB(200, 228, 248),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(235, 248, 255), Color3.fromRGB(210, 235, 250)),
            AcrylicNoise = 0.97,
            TitleBarLine = Color3.fromRGB(180, 215, 240),
            Tab = Color3.fromRGB(90, 150, 200),
            Element = Color3.fromRGB(210, 235, 250),
            ElementBorder = Color3.fromRGB(170, 200, 225),
            InElementBorder = Color3.fromRGB(140, 185, 218),
            ElementTransparency = 0.65,
            ToggleSlider = Color3.fromRGB(120, 175, 215),
            ToggleToggled = Color3.fromRGB(30, 70, 120),
            SliderRail = Color3.fromRGB(150, 200, 235),
            CheckboxUnchecked = Color3.fromRGB(150, 200, 235),
            CheckboxChecked = Color3.fromRGB(100, 180, 240),
            CheckboxCheck = Color3.fromRGB(30, 70, 120),
            ProgressBarRail = Color3.fromRGB(150, 200, 235),
            ProgressBarFill = Color3.fromRGB(100, 180, 240),
            DropdownFrame = Color3.fromRGB(190, 225, 248),
            DropdownHolder = Color3.fromRGB(225, 242, 255),
            DropdownBorder = Color3.fromRGB(170, 210, 238),
            DropdownOption = Color3.fromRGB(130, 180, 220),
            Keybind = Color3.fromRGB(150, 200, 235),
            Input = Color3.fromRGB(200, 230, 248),
            InputFocused = Color3.fromRGB(100, 150, 190),
            InputIndicator = Color3.fromRGB(160, 210, 240),
            InputIndicatorFocus = Color3.fromRGB(60, 140, 220),
            Dialog = Color3.fromRGB(220, 240, 255),
            DialogHolder = Color3.fromRGB(235, 248, 255),
            DialogHolderLine = Color3.fromRGB(200, 228, 248),
            DialogButton = Color3.fromRGB(225, 242, 255),
            DialogButtonBorder = Color3.fromRGB(170, 210, 238),
            DialogBorder = Color3.fromRGB(180, 215, 240),
            DialogInput = Color3.fromRGB(200, 230, 248),
            DialogInputLine = Color3.fromRGB(150, 200, 235),
            Text = Color3.fromRGB(20, 40, 70),
            SubText = Color3.fromRGB(65, 105, 148),
            IconColor = Color3.fromRGB(65, 105, 148),
            Hover = Color3.fromRGB(170, 210, 238),
            HoverChange = 0.04,
            ShineEnabled = true,
            Shine = {
                Speed = 0.3,
                RotationSpeed = 15,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 235, 255)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 235, 255)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(170, 210, 238),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(190, 225, 248)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(220, 240, 255)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 200, 235)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 235, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 200, 235)),
                    }
                ),
            },
            Background = nil,
            BackgroundTransparency = 0,
            ThemeAccentColors = {Color3.fromRGB(100, 180, 240)},
                }
    end,

    [74] = function()
        ImportGlobals(74)
                return {
            Name = "Cotton Candy",
            Accent = Color3.fromRGB(255, 130, 190),
            AcrylicMain = Color3.fromRGB(255, 225, 245),
            AcrylicBorder = Color3.fromRGB(255, 190, 230),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 235, 250), Color3.fromRGB(235, 210, 255)),
            AcrylicNoise = 0.96,
            TitleBarLine = Color3.fromRGB(240, 180, 225),
            Tab = Color3.fromRGB(195, 130, 185),
            Element = Color3.fromRGB(255, 200, 235),
            ElementBorder = Color3.fromRGB(230, 165, 210),
            InElementBorder = Color3.fromRGB(235, 170, 215),
            ElementTransparency = 0.70,
            ToggleSlider = Color3.fromRGB(215, 145, 192),
            ToggleToggled = Color3.fromRGB(90, 30, 70),
            SliderRail = Color3.fromRGB(235, 170, 215),
            CheckboxUnchecked = Color3.fromRGB(235, 170, 215),
            CheckboxChecked = Color3.fromRGB(255, 130, 190),
            CheckboxCheck = Color3.fromRGB(90, 30, 70),
            ProgressBarRail = Color3.fromRGB(235, 170, 215),
            ProgressBarFill = Color3.fromRGB(255, 130, 190),
            DropdownFrame = Color3.fromRGB(248, 192, 230),
            DropdownHolder = Color3.fromRGB(255, 225, 248),
            DropdownBorder = Color3.fromRGB(228, 168, 213),
            DropdownOption = Color3.fromRGB(205, 140, 188),
            Keybind = Color3.fromRGB(228, 168, 213),
            Input = Color3.fromRGB(250, 210, 238),
            InputFocused = Color3.fromRGB(195, 125, 168),
            InputIndicator = Color3.fromRGB(250, 195, 232),
            InputIndicatorFocus = Color3.fromRGB(255, 130, 190),
            Dialog = Color3.fromRGB(255, 228, 248),
            DialogHolder = Color3.fromRGB(255, 238, 252),
            DialogHolderLine = Color3.fromRGB(238, 208, 235),
            DialogButton = Color3.fromRGB(255, 233, 250),
            DialogButtonBorder = Color3.fromRGB(228, 178, 218),
            DialogBorder = Color3.fromRGB(238, 188, 226),
            DialogInput = Color3.fromRGB(250, 213, 240),
            DialogInputLine = Color3.fromRGB(228, 172, 215),
            Text = Color3.fromRGB(75, 25, 55),
            SubText = Color3.fromRGB(145, 75, 115),
            IconColor = Color3.fromRGB(145, 75, 115),
            Hover = Color3.fromRGB(238, 182, 222),
            HoverChange = 0.04,
            ShineEnabled = true,
            Shine = {
                Speed = 0.4,
                RotationSpeed = 18,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 180, 220)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 180, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 180, 220)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(228, 172, 213),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(250, 198, 232)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(232, 182, 252)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(228, 172, 213)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(250, 198, 232)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(228, 172, 213)),
                    }
                ),
            },
            Background = nil,
            BackgroundTransparency = 0,
            ThemeAccentColors = {Color3.fromRGB(255, 130, 190), Color3.fromRGB(175, 140, 255)},
                }
    end,

    [76] = function()
        ImportGlobals(76)
                return {
            Name = "Cyanic",
            Accent = Color3.fromRGB(57, 197, 187),
            AcrylicMain = Color3.fromRGB(8, 18, 22),
            AcrylicBorder = Color3.fromRGB(40, 170, 165),
            AcrylicGradient = ColorSequence.new(
                {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 45, 55)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(8, 25, 32)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(4, 12, 16)),
                }
            ),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(35, 155, 150),
            Tab = Color3.fromRGB(40, 165, 160),
            Element = Color3.fromRGB(14, 38, 46),
            ElementBorder = Color3.fromRGB(8, 22, 28),
            InElementBorder = Color3.fromRGB(40, 165, 160),
            ElementTransparency = 0.88,
            ToggleSlider = Color3.fromRGB(57, 197, 187),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(40, 165, 160),
            CheckboxUnchecked = Color3.fromRGB(40, 165, 160),
            CheckboxChecked = Color3.fromRGB(57, 197, 187),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(40, 165, 160),
            ProgressBarFill = Color3.fromRGB(57, 197, 187),
            DropdownFrame = Color3.fromRGB(32, 140, 135),
            DropdownHolder = Color3.fromRGB(6, 18, 22),
            DropdownBorder = Color3.fromRGB(40, 165, 160),
            DropdownOption = Color3.fromRGB(57, 197, 187),
            Keybind = Color3.fromRGB(14, 38, 46),
            Input = Color3.fromRGB(10, 28, 35),
            InputFocused = Color3.fromRGB(4, 10, 14),
            InputIndicator = Color3.fromRGB(80, 215, 205),
            InputIndicatorFocus = Color3.fromRGB(130, 235, 228),
            Dialog = Color3.fromRGB(8, 22, 28),
            DialogHolder = Color3.fromRGB(5, 14, 18),
            DialogHolderLine = Color3.fromRGB(35, 155, 150),
            DialogButton = Color3.fromRGB(10, 26, 32),
            DialogButtonBorder = Color3.fromRGB(40, 165, 160),
            DialogBorder = Color3.fromRGB(30, 120, 115),
            DialogInput = Color3.fromRGB(12, 32, 40),
            DialogInputLine = Color3.fromRGB(80, 215, 205),
            Text = Color3.fromRGB(130, 235, 228),
            SubText = Color3.fromRGB(57, 197, 187),
            IconColor = Color3.fromRGB(57, 197, 187),
            Hover = Color3.fromRGB(57, 197, 187),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.6,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 40, 50)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 197, 187)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 40, 50)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(35, 155, 150),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 55, 65)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 22, 28)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 155, 150)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(57, 197, 187)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 155, 150)),
                    }
                ),
            },
            Background = "rbxassetid://95656189244173",
            BackgroundTransparency = 0.12,
            ThemeAccentColors = {Color3.fromRGB(57, 197, 187), Color3.fromRGB(35, 155, 150)},
                }
    end,

    [77] = function()
        ImportGlobals(77)
                return {
            Name = "Amber Glow",
            Accent = Color3.fromRGB(255, 170, 40),
            AcrylicMain = Color3.fromRGB(18, 10, 4),
            AcrylicBorder = Color3.fromRGB(200, 130, 30),
            AcrylicGradient = ColorSequence.new(
                {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 25, 5)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(28, 14, 3)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 5, 1)),
                }
            ),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(185, 120, 25),
            Tab = Color3.fromRGB(190, 125, 25),
            Element = Color3.fromRGB(38, 20, 5),
            ElementBorder = Color3.fromRGB(18, 10, 2),
            InElementBorder = Color3.fromRGB(200, 130, 30),
            ElementTransparency = 0.88,
            ToggleSlider = Color3.fromRGB(255, 170, 40),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(190, 125, 25),
            CheckboxUnchecked = Color3.fromRGB(190, 125, 25),
            CheckboxChecked = Color3.fromRGB(255, 170, 40),
            CheckboxCheck = Color3.fromRGB(0, 0, 0),
            ProgressBarRail = Color3.fromRGB(190, 125, 25),
            ProgressBarFill = Color3.fromRGB(255, 170, 40),
            DropdownFrame = Color3.fromRGB(165, 105, 20),
            DropdownHolder = Color3.fromRGB(14, 7, 2),
            DropdownBorder = Color3.fromRGB(200, 130, 30),
            DropdownOption = Color3.fromRGB(255, 170, 40),
            Keybind = Color3.fromRGB(38, 20, 5),
            Input = Color3.fromRGB(28, 14, 3),
            InputFocused = Color3.fromRGB(8, 4, 1),
            InputIndicator = Color3.fromRGB(255, 195, 80),
            InputIndicatorFocus = Color3.fromRGB(255, 220, 130),
            Dialog = Color3.fromRGB(18, 9, 2),
            DialogHolder = Color3.fromRGB(12, 6, 1),
            DialogHolderLine = Color3.fromRGB(185, 120, 25),
            DialogButton = Color3.fromRGB(22, 11, 3),
            DialogButtonBorder = Color3.fromRGB(190, 125, 25),
            DialogBorder = Color3.fromRGB(140, 88, 18),
            DialogInput = Color3.fromRGB(32, 16, 4),
            DialogInputLine = Color3.fromRGB(255, 195, 80),
            Text = Color3.fromRGB(255, 220, 150),
            SubText = Color3.fromRGB(240, 175, 65),
            IconColor = Color3.fromRGB(240, 175, 65),
            Hover = Color3.fromRGB(255, 170, 40),
            HoverChange = 0.05,
            ShineEnabled = true,
            Shine = {
                Speed = 0.6,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 22, 4)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 170, 40)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 22, 4)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(185, 120, 25),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 30, 6)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(22, 10, 2)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 120, 25)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 170, 40)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 120, 25)),
                    }
                ),
            },
            Background = "rbxassetid://107795771598485",
            BackgroundTransparency = 0.12,
            ThemeAccentColors = {Color3.fromRGB(255, 170, 40), Color3.fromRGB(200, 130, 30)},
                }
    end,

    [78] = function()
        ImportGlobals(78)
                return {
            Name = "Bloomings",
            Accent = Color3.fromRGB(255, 80, 150),
            AcrylicMain = Color3.fromRGB(40, 15, 30),
            AcrylicBorder = Color3.fromRGB(200, 60, 120),
            AcrylicGradient = ColorSequence.new(
                {
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 35, 85)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 95, 70)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 140, 145)),
                }
            ),
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
            Text = Color3.fromRGB(255, 205, 230),
            SubText = Color3.fromRGB(245, 160, 208),
            IconColor = Color3.fromRGB(245, 160, 208),
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
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 70, 150)),
                        ColorSequenceKeypoint.new(0.25, Color3.fromRGB(80, 255, 150)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(0.75, Color3.fromRGB(255, 50, 130)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 70, 150)),
                    }
                ),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(80, 30, 60),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 60, 130)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 25, 60)),
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 180, 220)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 70, 150)),
                    }
                ),
            },
            ThemeAccentColors = {Color3.fromRGB(255, 80, 150), Color3.fromRGB(200, 60, 120)},
                }
    end,

    [79] = function()
        ImportGlobals(79)
            local _crimsonBackgrounds = {
                "rbxassetid://132324914333495",
                "rbxassetid://74252111742950",
            }
            local _crimsonBg = _crimsonBackgrounds[math.random(1, #_crimsonBackgrounds)]
                return {
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
            Text = Color3.fromRGB(255, 200, 210),
            SubText = Color3.fromRGB(215, 85, 100),
            IconColor = Color3.fromRGB(215, 85, 100),
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
    end,

    [80] = function()
        ImportGlobals(80)
                return {
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
            Text = Color3.fromRGB(255, 215, 100),
            SubText = Color3.fromRGB(230, 190, 80),
            IconColor = Color3.fromRGB(230, 190, 80),
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
                ),
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
                ),
            },
            ThemeAccentColors = {Color3.fromRGB(255, 200, 90), Color3.fromRGB(120, 90, 30)},
                }
    end,

    [81] = function()
        ImportGlobals(81)
        return {
            Name = "Lavender Pink",
            Accent = Color3.fromRGB(255, 100, 180),
            AcrylicMain = Color3.fromRGB(13, 14, 14),
            AcrylicBorder = Color3.fromRGB(131, 93, 93),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 100, 160), Color3.fromRGB(40, 15, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(255, 100, 180),
            Tab = Color3.fromRGB(20, 12, 20),
            Element = Color3.fromRGB(25, 15, 25),
            ElementBorder = Color3.fromRGB(80, 40, 70),
            InElementBorder = Color3.fromRGB(60, 30, 55),
            ElementTransparency = 0.9,
            ElementBorderThickness = 1,
            ToggleSlider = Color3.fromRGB(50, 30, 50),
            ToggleToggled = Color3.fromRGB(255, 100, 180),
            SliderRail = Color3.fromRGB(60, 30, 55),
            CheckboxUnchecked = Color3.fromRGB(40, 25, 40),
            CheckboxChecked = Color3.fromRGB(255, 100, 180),
            CheckboxCheck = Color3.fromRGB(255, 194, 236),
            ProgressBarRail = Color3.fromRGB(40, 25, 40),
            ProgressBarFill = Color3.fromRGB(255, 100, 180),
            DropdownFrame = Color3.fromRGB(18, 10, 18),
            DropdownHolder = Color3.fromRGB(22, 13, 22),
            DropdownBorder = Color3.fromRGB(80, 40, 70),
            DropdownOption = Color3.fromRGB(28, 16, 28),
            DropdownBorderThickness = 1,
            Keybind = Color3.fromRGB(30, 18, 30),
            Input = Color3.fromRGB(22, 13, 22),
            InputFocused = Color3.fromRGB(35, 20, 35),
            InputIndicator = Color3.fromRGB(255, 100, 180),
            Dialog = Color3.fromRGB(18, 10, 18),
            DialogHolder = Color3.fromRGB(22, 13, 22),
            DialogHolderLine = Color3.fromRGB(80, 40, 70),
            DialogButton = Color3.fromRGB(255, 100, 180),
            DialogButtonBorder = Color3.fromRGB(200, 70, 140),
            DialogBorder = Color3.fromRGB(80, 40, 70),
            DialogInput = Color3.fromRGB(25, 15, 25),
            DialogInputLine = Color3.fromRGB(255, 100, 180),
            Text = Color3.fromRGB(255, 130, 200),
            SubText = Color3.fromRGB(220, 100, 170),
            IconColor = Color3.fromRGB(220, 100, 170),
            Hover = Color3.fromRGB(255, 100, 180),
            HoverChange = 0.08,
            Background = "rbxassetid://126107479485287",
            BackgroundTransparency = 0,
            ShineEnabled = true,
            Shine = {
                Speed = 2,
                RotationSpeed = 1.5,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0,   Color3.fromRGB(0, 0, 0)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 180)),
                    ColorSequenceKeypoint.new(1,   Color3.fromRGB(0, 0, 0)),
                }),
            },
            StrokeShine = true,
            StrokeDark = Color3.fromRGB(10, 5, 10),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 50, 120)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 100, 180)),
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0,   Color3.fromRGB(255, 100, 180)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 70, 140)),
                    ColorSequenceKeypoint.new(1,   Color3.fromRGB(255, 100, 180)),
                }),
            },
            DiscordJoinButton = Color3.fromRGB(88, 101, 242),
            WarningNotifyColor = Color3.fromRGB(255, 200, 80),
            SuccessNotifyColor = Color3.fromRGB(80, 220, 140),
            ErrorNotifyColor = Color3.fromRGB(255, 70, 90),
            InfoNotifyColor = Color3.fromRGB(255, 100, 180),
            ThemeAccentColors = {Color3.fromRGB(255, 100, 180), Color3.fromRGB(180, 50, 120)},
        }
    end,

}

do
    local taskLib    = task
    local setmetatable = setmetatable
    local error      = error
    local newproxy   = newproxy
    local getmetatable = getmetatable
    local next       = next
    local tableLib   = table
    local unpack     = unpack
    local coroutine  = coroutine
    local scriptRef  = script
    local typeOf     = type
    local requireLib = require
    local pcall      = pcall
    local getfenv    = getfenv
    local setfenv    = setfenv
    local rawget     = rawget

    local tableInsert  = tableLib.insert
    local tableRemove  = tableLib.remove
    local tableFreeze  = tableLib.freeze or function(t) return t end
    local deferTask
    if taskLib and taskLib.defer then
        deferTask = taskLib.defer
    elseif taskLib and taskLib.spawn then
        deferTask = taskLib.spawn
    elseif typeof ~= nil and spawn then
        deferTask = spawn
    else
        deferTask = function(fn, ...)
            local args = {...}
            local co = coroutine.create(function() fn(table.unpack(args)) end)
            coroutine.resume(co)
        end
    end
    local venvVersion = '0.0.0-venv'

    local scriptMap   = {}
    local closureMap  = {}
    local returnMap   = {}
    local scriptQueue = {}
    local sharedEnv   = {}
    local childrenMap = {}

    local virtualMethods = {
        GetChildren = function(self)
            local childSet, result = childrenMap[self], {}
            for child in next, childSet do
                tableInsert(result, child)
            end
            return result
        end,
        FindFirstChild = function(self, name)
            if not name then error('Argument 1 missing or nil', 2) end
            for child in next, childrenMap[self] do
                if child.Name == name then return child end
            end
            return nil
        end,
        GetFullName = function(self)
            local name, parent = self.Name, self.Parent
            while parent do
                name = parent.Name .. '.' .. name
                parent = parent.Parent
            end
            return 'VirtualEnv.' .. name
        end,
    }

    local methodWrappers = {}
    for methodName, methodFn in next, virtualMethods do
        methodWrappers[methodName] = function(self, ...)
            if not childrenMap[self] then
                error("Expected ':' not '.' calling member function " .. methodName, 1)
            end
            return methodFn(self, ...)
        end
    end

    local function createVirtualInstance(className, instanceName, parent)
        local children    = setmetatable({}, {__mode = 'k'})
        local instanceId  = newproxy(true)
        local stringValue
        local customProps = {}

        local function throwReadOnly(prop)
            error('Unable to assign (virtual) property ' .. prop .. '. Property is read only', 1)
        end

        local meta = getmetatable(instanceId)
        meta.__index = function(self, key)
            if key == 'ClassName' then return className
            elseif key == 'Name'      then return instanceName
            elseif key == 'Parent'    then return parent
            elseif className == 'StringValue' and key == 'Value' then return stringValue
            else
                local wrap = methodWrappers[key]
                if wrap then return wrap end
            end
            for child in next, children do
                if child.Name == key then return child end
            end
            return customProps[key]
        end
        meta.__newindex = function(self, key, value)
            if key == 'ClassName' then throwReadOnly(key)
            elseif key == 'Name'   then instanceName = value
            elseif key == 'Parent' then
                if value == instanceId then return end
                if parent ~= nil then childrenMap[parent][instanceId] = nil end
                parent = value
                if value ~= nil then childrenMap[value][instanceId] = true end
            elseif className == 'StringValue' and key == 'Value' then stringValue = value
            else
                customProps[key] = value
            end
        end
        meta.__tostring = function() return instanceName end

        childrenMap[instanceId] = children
        if parent ~= nil then childrenMap[parent][instanceId] = true end
        return instanceId
    end

    local function buildInstanceTree(nodeData, parentInstance)
        local id, className, nameData, childrenData = nodeData[1], nodeData[2], nodeData[3], nodeData[4]
        local name = tableRemove(nameData, 1)
        local instance = createVirtualInstance(className, name, parentInstance)
        scriptMap[id] = instance
        if nameData then
            for k, v in next, nameData do
                if type(k) == 'string' then
                    local ok = pcall(function() instance[k] = v end)
                end
            end
        end
        if childrenData then
            for _, childNode in next, childrenData do
                buildInstanceTree(childNode, instance)
            end
        end
        return instance
    end

    local rootInstances = {}
    for _, treeNode in next, ModuleTree do
        tableInsert(rootInstances, buildInstanceTree(treeNode))
    end

    for bindingIndex, bindingFn in next, ClosureBindings do
        local instance = scriptMap[bindingIndex]
        closureMap[instance] = bindingFn
        local cls = instance.ClassName
        if cls == 'LocalScript' or cls == 'Script' then
            tableInsert(scriptQueue, instance)
        end
    end

    local function executeModule(instance)
        local cls, cached = instance.ClassName, returnMap[instance]
        if cached and cls == 'ModuleScript' then return unpack(cached) end
        local fn = closureMap[instance]
        if not fn then return end
        if cls == 'LocalScript' or cls == 'Script' then
            fn()
            return
        else
            local results = {fn()}
            returnMap[instance] = results
            return unpack(results)
        end
    end

    function ImportGlobals(moduleId)
        local instance = scriptMap[moduleId]
        if not instance then
            error("[FluentPro] ImportGlobals: scriptMap[" .. tostring(moduleId) .. "] is nil. scriptMap has " .. tostring(#scriptMap) .. " entries.", 2)
        end
        local fn = closureMap[instance]
        if not fn then
            error("[FluentPro] ImportGlobals: closureMap for module " .. tostring(moduleId) .. " (" .. tostring(instance.Name) .. ") is nil.", 2)
        end

        local initialized = false
        local envModule   = tableFreeze({
            Version   = venvVersion,
            Script    = scriptRef,
            Shared    = sharedEnv,
            GetScript = function() return scriptRef end,
            GetShared = function() return sharedEnv end,
        })

        local virtualScript = instance

        local function moduleRequire(target, ...)
            if childrenMap[target] and target.ClassName == 'ModuleScript' and closureMap[target] then
                return executeModule(target)
            end
            return requireLib(target, ...)
        end

        local envStack
        local customGetfenv
        local customSetfenv

        local function initEnv()
            envStack = getfenv(0)
            local proxiedEnv = {
                maui     = envModule,
                script   = virtualScript,
                require  = moduleRequire,
                getfenv  = customGetfenv,
                setfenv  = customSetfenv,
            }
            envStack = setmetatable({}, {
                __index = function(self, key)
                    local cached = rawget(envStack, key)
                    if cached ~= nil then return cached end
                    local proxied = proxiedEnv[key]
                    if proxied ~= nil then return proxied end
                    return envStack[key]
                end
            })
            setfenv(fn, envStack)
            initialized = true
        end

        customGetfenv = function(level, ...)
            if not initialized then initEnv() end
            if typeOf(level) == 'number' and level >= 0 then
                if level == 0 then return envStack
                else
                    level = level + 1
                    local ok, val = pcall(getfenv, level)
                    if ok and val == envStack then return envStack end
                end
            end
            return getfenv(level, ...)
        end

        customSetfenv = function(level, newEnv, ...)
            if not initialized then initEnv() end
            if typeOf(level) == 'number' and level >= 0 then
                if level == 0 then return setfenv(envStack, newEnv)
                else
                    level = level + 1
                    local ok, val = pcall(getfenv, level)
                    if ok and val == envStack then return setfenv(envStack, newEnv) end
                end
            end
            return setfenv(level, newEnv, ...)
        end

        return envModule, virtualScript, moduleRequire, customGetfenv, customSetfenv
    end

    for _, instance in next, scriptQueue do
        deferTask(executeModule, instance)
    end

    do
        local mainModule
        for _, instance in next, rootInstances do
            if instance.ClassName == 'ModuleScript' and instance.Name == 'MainModule' then
                mainModule = instance
                break
            end
        end
        if mainModule then return executeModule(mainModule) end
    end
end
