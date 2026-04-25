--[[                                                                                                                                                                                                                                                                                                  
   &X:..........................................................................................:   
   &X..:+xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx+:.:   
   &X..+XXXXXX$$$$$$$$$$$$$$$X$$$X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X;.:   
   &X..+XXXXXXXXX$X$$$$$$$$$$$X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X;..   
   &X..+XXXXXXXXXXXX$XXX$$$$$Xxx+xX$$XX$$XXX$XX$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X;.:   
   &X..+XXXXXXXXXXXXXXXXXX$$XXX;:::+xXX$$XXX$XX$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X;.:   
   &X..+XXXXXXXXXXXXXXXXXXXXXXX;;;;;;+xXX$XXXXXXXXXXX$$$$$$$$$$$$$$$$$$$XX$$$$$$$X$$$$$$$$$$Xx;.:   
   &X..+XXXXXXXXXXXXXXXXXXXXXXX+;;;;;;;+xXXXXXXXXXXXXXXXXXXXXX$$XXXXXXXXXX$XXXXX$$$$$$$$$XX+;;:.:   
   &X..;XXXXXXXXXXXXXXXXXXXXXXXx++;::;;;;;xXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX$$XXXXXX$$x+;;;++;.:   
   &X..;XXXXXXXXXXXXXXXXXXXXXXXX++;::::;;;;;++xXXXXXxXxXX$XXXXX$XXXXXXXXXXXXXXX$$$$Xx;:;;;+++;;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXx;;;::::;;;;;;;++++;++++;;;;;;;;;+++;++++++xxxx++;;;;;;;;;++++;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXx;;;;;;;;;;;;;;;;;;;++;:;;;;::;;++;;;++++;;;;;;;;++++;;;;;+++;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXX+;;;;;;;;;;;;;;;;;;;;:;;++;::;;;;;;;;++++;;;;;xxxx+;;;;+++xx;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXXx+:::::;;;;;;::;;;:;;;;+x+;;+;:;+;;::;;+++++;:;+xxx++++xxXXx;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXXX+:;;;;:::;;;::;;:::;;+x+;;;;::;x+:::;;;;;+xx+;;;+xxxXXXXxx+;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXXX+;;;;:::::::::;:::;;;;;;::;;;;;x+:::;;;;;;;+xx+++xXXXxxxXXx;.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXXXX+;;:::;++;;:;;;;;;::;:;;+xxxxxx+;:::;;;:;;;;+xxxX$$$Xxx$&$+.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXXXx+::;;;;+xXX$x+;;;;:::::;+XXxxxx++++xxxxx++;;;;+xXX$$Xxx$&&&+.:   
   &X..;xXXXXXXXXXXXXXXXXXXXXXXXX+;:;;;::::;;x$X$X;::::::;+xxx;+x$&&&&$$$$$$XXX+;;;xXX$$$&&&&&+.:   
   &X..;xxxXXXXXxXXXXXxXXXXXXXXXx+:;;;;;;+;;:;;++x;:::::;;++x++X&&$XxXXXX+;;+++X$XxxXxxXX&&&&&+.:   
   &X..;xxxxxxxxxxxxxXXxxXXxxxXxx;;;;;;;;+++++;::;+;;;;;;;;+xx$$Xxx+;;;;;;+xxXXxX$$XXXxxxX&&&&+.:   
   &X..;xxxxxxxxxxxx+;+xXxxXxxXxx+;:::;;+++;;;;;;;;;;;;:;;xXXxxx+;::;;++xXXX$XXxxx$XXXXxxX&&&&+.:   
   &X..;xxxxxxxxxx;:::::+xxxxxxx+;:::::;;++;;:::;;;;::;;;+X$$X++;;;;;++XXX$XXXxxxxX$XXXXxX$&&$+.:   
   &X..;xxxxxxxx+:::;;+++xxxxxxxx;:::+xXx+;;::::::;+xx++xXX$Xx++xxxxxxXXXXxx++++++xX$XXXXXXX$$+.:   
   &X..;xxxxxxxx;:;+xXXXXxxxxxxxx;::;+xx+;:::::::::;xXXX$&Xx+++xxXXXXxx++xxXX$$X+++xX$$XXXXxx+;.:   
   &X..;xxxxxxx+;;+XXXXXXXxxx++++;:;xXXXx;:::::::...:x&$x;;;;+++xx+++++;;++++xX$Xx+++X$&$XXXXX;.:   
   &X..;xxxx+;:::;;xX$$$XXxxx+xxxx;::;;;::::::::::;;+xXx+++++++xxxxx+;;;;;+++++xXXx++X$$XxXXXx;.:   
   &x..;xx+;::::::;;x$$$Xxxxxxx++++;:;+xx+::;++++++xX&&&$x++++xxx++++;;;;;;;++++xxxX$$XXxXXXXx;.:   
   &X..;+;::::::;+xxxxX$Xxxxx+++++++;;+;;;;;:;+x$$&&&&&&&&$XXx+++++++;;;;;;+xxxxxXX$$XxxxX$$Xx;.:   
   &X..:::::;:;;xXXXxxX$Xxx++x++++x++;:;+xx+;:;+xXXXxXXXXXX$&&$$Xx++;;;;+++++xX$$$Xxx+xxX$$XXx;.:   
   &X..::::::;+xXXXXXXXXXxx+++++xx+++++;++xxx+;:;+;;++xxx++++++++;;;;;;++xxXXXxxXXxx++xX$$$XXx;.:   
   &x..:::::;+xX$XX$$$XXXXx++++xx+++++++;++xXXx+:::;;+++++;;;;;;;;;;+xxXXXXXXXXxx++xX$$$$XXXXx;.:   
   &x..::::;+xXXX$$$$$XXXXxx++++++++++++++;++xxxx+;;;;++;;;;;;;;++xxXXXXXXXxxxx++xXX$$$$$XXXXx;.:   
   &x..;;;+XXXX$&&&&$$XXXXXXx+++++++++++++++;;+xxxxxxx+++++++xxxxxxxxxxxxxxxxxXX$$$$$$$$$XXXXx;.:   
   &X..;;:+X$$&&&&&&$$$$$XXXXx++++++++++++++;::;+xxxXXXxxXxxXXXXXXXXXXXXXX$$$$$$$$$$$XXXXXXxxx;.:   
   &x..:::;xX$$$X$$$$$$$$XXXXXx++++++++++++;::::;+xxxxxXXxxxxxXXX$$$$$$$$$$$$$$$$$$$$XXXXxxxxx;.:   
   &x..;;:;+XX$$$$$$$$$$$$$XXXXXx+++++++++;::::::;+xxxxxXXxxxXXX$$&$$$$&&$$$$$$$$$$$XXxxxxxxXx;.:   
   &x..;;;;xXXXXXXXX$$$$$$XX$$$$$Xx;;;;;;;:::::::::;xxxXXxxxxXX$$$$$&&$$$XXX$$&&$$XXxxxxxXXXxx;.:   
   &X..;;;;;+xXXXXXXXXXXXX$$$$&$XXXxx+;:::::::;;::::;xxxxxxxxXXX$$$$XXX$$$&&&&$XxxxxXXXXXXxxxx;.:   
   &x..:;;;;;+xxXXxxxxXX$$$&&&$X$$XXXXx+;;;;;;;;:::::+xxxxxxXxX$&$X$$$$$&&$$XXxxxxXXXXXXxxxxxx;.:   
   &X..;;;;;;;;+xxXXX$$$&&&&$$XX$$$X$$$Xxx+++++;;:::::;+xxxxxX$$XXX$XX$$$XXxxxXXXXXXXxxxxxxxxx;.:   
   &x..;;;;;;;;;+xX$$$$XXXXXXXXX$$$$&&$XXXXXXXx++;::::::;;+xxX$XXXXxXX$$XXXXXXXXXXXxxxxxxxxxxx;.:   
   &X..;+++++++++++xxxxxXXxxXXX$$X$&&&$$$$&$X$$Xx+;::::::::;xXXxxxxX$$$XXXXXXXXXXxxxxxxxxxxxxx;.:   
   &X..;xXXxxxxxxx++xxxxxxxxxXX$XX&&$XXX$&&&$$&$Xx+:::::::::;+xXXXX$$XXXXXXXXXXxxxxxxxxxxxxxxx;.:   
   &X..+X$XXXXXXXXxx++xxxxxxXXXXX$$$XXXX$&&$X$&&$Xx:::::::::::+xX$XXXXXXXXXXxxxxxxxxxxxxxxxxxx;.:   
   &x..:;+++++++++;;;;++xxxxxxxxxxxxxxxxXXXXxxXXXx+;;;;;;;;;;;;+xxxxxxxxxxxxxxxxxxxxxxxxxxxx++:.:   
   &x...........................................................................................:   
                                                                                                    
    Fluent Interface Suite
    This script is not intended to be modified.
    To view the source code, see the 'src' folder on GitHub!

    Author: dawid
    License: MIT
    GitHub: https://github.com/dawid-scripts/Fluent
--]]
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
                    {50, "ModuleScript", {"Dark"}},
                    {52, "ModuleScript", {"Light"}},
                    {51, "ModuleScript", {"Darker"}},
                    {53, "ModuleScript", {"Rose"}},
                    {54, "ModuleScript", {"Crimson"}},
                    {55, "ModuleScript", {"Azure"}},
                    {56, "ModuleScript", {"Gold"}},
                    {57, "ModuleScript", {"Greenish"}},
                    {58, "ModuleScript", {"Neon"}},
                    {49, "ModuleScript", {"Aqua"}},
                    {48, "ModuleScript", {"Amethyst"}},
                    {59, "ModuleScript", {"Ocean"}},
                    {60, "ModuleScript", {"Forest"}},
                    {61, "ModuleScript", {"Sunset"}},
                    {62, "ModuleScript", {"Midnight"}},
                    {63, "ModuleScript", {"Lavender"}},
                    {64, "ModuleScript", {"Mint"}},
                    {65, "ModuleScript", {"Peach"}},
                    {66, "ModuleScript", {"Coral"}},
                    {67, "ModuleScript", {"Indigo"}},
                    {68, "ModuleScript", {"Lime"}},
                    {69, "ModuleScript", {"Ruby"}},
                    {70, "ModuleScript", {"Sapphire"}},
                    {71, "ModuleScript", {"Emerald"}},
                    {72, "ModuleScript", {"Topaz"}},
                    {73, "ModuleScript", {"Onyx"}},
                    {74, "ModuleScript", {"Jade"}},
                    {75, "ModuleScript", {"Amber"}},
                    {76, "ModuleScript", {"Quartz"}},
                    {77, "ModuleScript", {"Obsidian"}},
                    {78, "ModuleScript", {"Marble"}},
                    {79, "ModuleScript", {"Slate"}},
                    {80, "ModuleScript", {"Copper"}},
                    {81, "ModuleScript", {"Bronze"}},
                    {82, "ModuleScript", {"Silver"}},
                    {83, "ModuleScript", {"Platinum"}},
                    {84, "ModuleScript", {"Titanium"}},
                    {85, "ModuleScript", {"Steel"}},
                    {86, "ModuleScript", {"Iron"}},
                    {87, "ModuleScript", {"Nickel"}},
                    {88, "ModuleScript", {"Zinc"}},
                    {89, "ModuleScript", {"Tin"}},
                    {90, "ModuleScript", {"Lead"}},
                    {91, "ModuleScript", {"Chrome"}},
                    {92, "ModuleScript", {"Brass"}},
                    {93, "ModuleScript", {"Graphite"}},
                    {94, "ModuleScript", {"Carbon"}},
                    {95, "ModuleScript", {"Phantom"}},
                    {96, "ModuleScript", {"Spectre"}},
                    {97, "ModuleScript", {"Ghost"}},
                    {98, "ModuleScript", {"Shadow"}},
                    {99, "ModuleScript", {"Void"}},
                    {100, "ModuleScript", {"Abyss"}},
                    {101, "ModuleScript", {"Eclipse"}},
                    {102, "ModuleScript", {"Twilight"}},
                    {103, "ModuleScript", {"Dawn"}},
                    {104, "ModuleScript", {"Dusk"}},
                    {105, "ModuleScript", {"Aurora"}},
                    {106, "ModuleScript", {"Galaxy"}},
                    {107, "ModuleScript", {"Nebula"}},
                    {108, "ModuleScript", {"Comet"}},
                    {109, "ModuleScript", {"Meteor"}},
                    {110, "ModuleScript", {"Stardust"}},
                    {111, "ModuleScript", {"Cosmic"}},
                    {112, "ModuleScript", {"Astral"}},
                    {113, "ModuleScript", {"Celestial"}},
                    {114, "ModuleScript", {"Ethereal"}},
                    {115, "ModuleScript", {"Mystic"}},
                    {116, "ModuleScript", {"Arcane"}},
                    {117, "ModuleScript", {"Runic"}},
                    {118, "ModuleScript", {"Enchanted"}},
                    {119, "ModuleScript", {"Magical"}},
                    {120, "ModuleScript", {"Sorcery"}},
                    {121, "ModuleScript", {"Wizard"}},
                    {122, "ModuleScript", {"Dragon"}},
                    {123, "ModuleScript", {"Phoenix"}},
                    {124, "ModuleScript", {"Griffin"}},
                    {125, "ModuleScript", {"Pegasus"}},
                    {126, "ModuleScript", {"Unicorn"}},
                    {127, "ModuleScript", {"Fairy"}},
                    {128, "ModuleScript", {"Elf"}},
                    {129, "ModuleScript", {"Dwarf"}},
                    {130, "ModuleScript", {"Orc"}},
                    {131, "ModuleScript", {"Troll"}},
                    {132, "ModuleScript", {"Goblin"}},
                    {133, "ModuleScript", {"Demon"}},
                    {134, "ModuleScript", {"Angel"}},
                    {135, "ModuleScript", {"Valkyrie"}},
                    {136, "ModuleScript", {"Ninja"}},
                    {137, "ModuleScript", {"Samurai"}},
                    {138, "ModuleScript", {"Ronin"}}
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
                    {22, "ModuleScript", {"Dropdown"}},
                    {26, "ModuleScript", {"Slider"}},
                    {24, "ModuleScript", {"Keybind"}}
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
pcall(function()
    local _fn = loadstring(game:HttpGet("https://raw.githubusercontent.com/StyearX/Fluent-modded/refs/heads/main/Addons/animatedgui.lua"))
    if _fn then Animation = _fn() end
end)
if not Animation then Animation = {Apply = function() end} end
getgenv().ShineEnabled = true
getgenv().ButtonGradients = {
    Background = ColorSequence.new {
        ColorSequenceKeypoint.new(0, Color3.fromRGB(7, 42, 82)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(12, 76, 142)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(21, 97, 181))
    },
    Stroke = ColorSequence.new {
        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 120, 200)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 40, 80))
    }
}

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
        t:Init(w)
        local x = {
            Version = "1.1.0",
            OpenFrames = {},
            Options = {},
            Themes = e(o.Themes).Names,
            Window = nil,
            WindowFrame = nil,
            Unloaded = false,
            Theme = "Ash Gray",
            DialogOpen = false,
            UseAcrylic = false,
            Acrylic = false,
            Transparency = true,
            MinimizeKeybind = nil,
            MinimizeKey = Enum.KeyCode.LeftControl,
            GUI = w
        }
        function x.SafeCallback(y, z, ...)
            if not z then
                return
            end
            local A, B = pcall(z, ...)
            if not A then
                local C, D = B:find ":%d+: "
                if not D then
                    return x:Notify {Title = "Interface", Content = "Callback error", SubContent = B, Duration = 5}
                end
                return x:Notify {
                    Title = "Interface",
                    Content = "Callback error",
                    SubContent = B:sub(D + 1),
                    Duration = 5
                }
            end
        end
        function x.Round(y, z, A)
            if A == 0 then
                return math.floor(z)
            end
            z = tostring(z)
            return z:find "%." and tonumber(z:sub(1, z:find "%." + A)) or z
        end
        local y = e(o.Icons).assets
        function x.GetIcon(z, A)
            if A ~= nil and y["lucide-" .. A] then
                return y["lucide-" .. A]
            end
            return nil
        end
        local z = {}
        z.__index = z
        z.__namecall = function(A, B, ...)
            return z[B](...)
        end
        for A, B in ipairs(q) do
            z["Add" .. B.__type] = function(C, D, E)
                B.Container = C.Container
                B.Type = C.Type
                B.ScrollFrame = C.ScrollFrame
                B.Library = x
                return B:New(D, E)
            end
        end
        x.Elements = z
        function x.CreateWindow(C, D)
            assert(D.Title, "Window - Missing Title")
            if x.Window then
                print "You cannot create more than one window."
                return
            end
            x.MinimizeKey = D.MinimizeKey
            x.UseAcrylic = D.Acrylic
            if D.Acrylic then
                r.init()
            end
            local E =
                e(s.Window) {Parent = w, Size = D.Size, Title = D.Title, SubTitle = D.SubTitle, TabWidth = D.TabWidth}
            x.Window = E
            x:SetTheme(D.Theme)
            return E
        end
        function x.SetTheme(C, D)
            if x.Window and table.find(x.Themes, D) then
                x.Theme = D
                p.UpdateTheme()
            end
        end
        function x.Destroy(C)
            if x.Window then
                x.Unloaded = true
                if x.UseAcrylic then
                    x.Window.AcrylicPaint.Model:Destroy()
                end
                p.Disconnect()
                x.GUI:Destroy()
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
        end
        function x.Notify(C, D)
            return t:New(D)
        end
        if getgenv then
            getgenv().Fluent = x
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
            if e(d.Parent.Parent).UseAcrylic then
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
            local j = game:GetService "Workspace".CurrentCamera.ViewportSize.Y
            return h(j, 0, 2560, 8, 56)
        end
        return {i, j}
    end,
    [8] = function()
        local c, d, e, f, g = b(8)
        return {
            Close = "rbxassetid://9886659671",
            Min = "rbxassetid://9886659276",
            Max = "rbxassetid://9886659406",
            Restore = "rbxassetid://9886659001"
        }
    end,
    [9] = function()
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
    [10] = function()
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
                        e(k):SafeCallback(B)
                        pcall(
                            function()
                                s:Close()
                            end
                        )
                    end
                )
                return C
            end
            return s
        end
        return q
    end,
    [11] = function()
        local c, d, e, f, g = b(11)
        local h = d.Parent.Parent
        local i, j = e(h.Packages.Flipper), e(h.Creator)
        local k, l = j.New, i.Spring.new
        return function(m, n, o, p)
            local q = {}
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
            r.AcrylicPaint = k.AcrylicPaint()
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
            r.Root =
                n(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Position = UDim2.fromScale(1, 0)},
                {r.AcrylicPaint.Frame, r.Title, r.CloseButton, r.LabelHolder}
            )
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
                            if e(h).UseAcrylic then
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
        local c, d, e, f, g = b(13)
        local h = d.Parent.Parent
        local i = e(h.Creator)
        local j = i.New
        return function(k, l)
            local m = {}
            m.Layout = j("UIListLayout", {Padding = UDim.new(0, 5)})
            m.Container =
                j(
                "Frame",
                {Size = UDim2.new(1, 0, 0, 26), Position = UDim2.fromOffset(0, 24), BackgroundTransparency = 1},
                {m.Layout}
            )
            m.Root =
                j(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 26), LayoutOrder = 7, Parent = l},
                {
                    j(
                        "TextLabel",
                        {
                            RichText = true,
                            Text = k,
                            TextTransparency = 0,
                            FontFace = Font.new(
                                "rbxassetid://12187365364",
                                Enum.FontWeight.SemiBold,
                                Enum.FontStyle.Normal
                            ),
                            TextSize = 18,
                            TextXAlignment = "Left",
                            TextYAlignment = "Center",
                            Size = UDim2.new(1, -16, 0, 18),
                            Position = UDim2.fromOffset(0, 2),
                            ThemeTag = {TextColor3 = "Text"}
                        }
                    ),
                    m.Container
                }
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
            local q, r = o.Window.TabHolder.AbsolutePosition.Y, o.Tabs[o.SelectedTab].Frame.AbsolutePosition.Y
            return r - q
        end
        function o.New(p, q, r, s)
            local t, u = e(h), o.Window
            local v = t.Elements
            o.TabCount = o.TabCount + 1
            local w, x = o.TabCount, {Selected = false, Name = q, Type = "Tab"}
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
                            Position = r and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
                            Text = q,
                            RichText = true,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            TextTransparency = 0,
                            FontFace = Font.new(
                                "rbxasset://fonts/families/GothamSSm.json",
                                Enum.FontWeight.Regular,
                                Enum.FontStyle.Normal
                            ),
                            TextSize = 12,
                            TextXAlignment = "Left",
                            TextYAlignment = "Center",
                            Size = UDim2.new(1, -12, 1, 0),
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
                            Image = r and r or nil,
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
                    Parent = u.ContainerHolder,
                    Visible = false,
                    BottomImage = "rbxassetid://6889812791",
                    MidImage = "rbxassetid://6889812721",
                    TopImage = "rbxassetid://6276641225",
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ScrollBarImageTransparency = 0.95,
                    ScrollBarThickness = 3,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y
                },
                {
                    y,
                    k(
                        "UIPadding",
                        {
                            PaddingRight = UDim.new(0, 10),
                            PaddingLeft = UDim.new(0, 1),
                            PaddingTop = UDim.new(0, 1),
                            PaddingBottom = UDim.new(0, 1)
                        }
                    )
                }
            )
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
            o.Containers[w] = x.ContainerFrame
            o.Tabs[w] = x
            x.Container = x.ContainerFrame
            x.ScrollFrame = x.Container
            function x.AddSection(z, A)
                local B, C = {Type = "Section"}, e(n.Section)(A, x.Container)
                B.Container = C.Container
                B.ScrollFrame = x.Container
                setmetatable(B, v)
                return B
            end
            setmetatable(x, v)
            return x
        end
        function o.SelectTab(p, q)
            local r = o.Window
            o.SelectedTab = q
            for s, t in next, o.Tabs do
                t.SetTransparency(1)
                t.Selected = false
            end
            o.Tabs[q].SetTransparency(0.89)
            o.Tabs[q].Selected = true
            r.TabDisplay.Text = o.Tabs[q].Name
            r.SelectorPosMotor:setGoal(l(o:GetCurrentTabPos(), {frequency = 6}))
            task.spawn(
                function()
                    r.ContainerPosMotor:setGoal(l(110, {frequency = 10}))
                    r.ContainerBackMotor:setGoal(l(1, {frequency = 10}))
                    task.wait(0.15)
                    for u, v in next, o.Containers do
                        v.Visible = false
                    end
                    o.Containers[q].Visible = true
                    r.ContainerPosMotor:setGoal(l(94, {frequency = 5}))
                    r.ContainerBackMotor:setGoal(l(0, {frequency = 8}))
                end
            )
        end
        return o
    end,
    [15] = function()
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
    [16] = function()
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
                                    SortOrder = Enum.SortOrder.LayoutOrder
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
                                    ThemeTag = {TextColor3 = "Text"}
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
            return o
        end
    end,
    [17] = function()
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
                        ThemeTag = {BackgroundColor3 = "Accent"}
                    },
                    {s("UICorner", {CornerRadius = UDim.new(0, 2)})}
                ),
                s(
                    "Frame",
                    {Size = UDim2.fromOffset(20, 20), BackgroundTransparency = 1, Position = UDim2.new(1, -20, 1, -20)}
                )
            v.TabHolder =
                s(
                "ScrollingFrame",
                {
                    Size = UDim2.fromScale(1, 1),
                    BackgroundTransparency = 1,
                    ScrollBarImageTransparency = 1,
                    ScrollBarThickness = 0,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0),
                    ScrollingDirection = Enum.ScrollingDirection.Y
                },
                {s("UIListLayout", {Padding = UDim.new(0, 4)})}
            )
            local F =
                s(
                "Frame",
                {
                    Size = UDim2.new(0, t.TabWidth, 1, -66),
                    Position = UDim2.new(0, 12, 0, 54),
                    BackgroundTransparency = 1,
                    ClipsDescendants = true
                },
                {v.TabHolder, D}
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
                    BackgroundTransparency = 1
                }
            )
            v.Root =
                s(
                "Frame",
                {BackgroundTransparency = 1, Size = v.Size, Position = v.Position, Parent = t.Parent},
                {v.AcrylicPaint.Frame, v.TabDisplay, v.ContainerHolder, F, E}
            )
            v.TitleBar = e(d.Parent.TitleBar) {Title = t.Title, SubTitle = t.SubTitle, Parent = v.Root, Window = v}
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
                    D.Position = UDim2.new(0, 0, 0, K + 17)
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
                v.TabHolder.UIListLayout:GetPropertyChangedSignal "AbsoluteContentSize",
                function()
                    v.TabHolder.CanvasSize = UDim2.new(0, 0, 0, v.TabHolder.UIListLayout.AbsoluteContentSize.Y)
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
            function v.Minimize(M)
                v.Minimized = not v.Minimized
                v.Root.Visible = not v.Minimized
                if not C then
                    C = true
                    local N = u.MinimizeKeybind and u.MinimizeKeybind.Value or u.MinimizeKey.Name
                    u:Notify {Title = "Interface", Content = "Press " .. N .. " to toggle the inteface.", Duration = 6}
                end
            end
            function v.Destroy(M)
                if e(k).UseAcrylic then
                    v.AcrylicPaint.Model:Destroy()
                end
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
                P.Root.Size = UDim2.fromOffset(Q.TextBounds.X + 40, 165)
                if Q.TextBounds.X + 40 > v.Size.X.Offset - 120 then
                    P.Root.Size = UDim2.fromOffset(v.Size.X.Offset - 120, 165)
                    Q.TextWrapped = true
                    P.Root.Size = UDim2.fromOffset(v.Size.X.Offset - 120, Q.TextBounds.Y + 150)
                end
                for R, S in next, O.Buttons do
                    P:Button(S.Title, S.Callback)
                end
                P:Open()
            end
            local N = e(p.Tab):Init(v)
            function v.AddTab(O, P)
                return N:New(P.Title, P.Icon, v.TabHolder)
            end
            function v.SelectTab(O, P)
                N:SelectTab(1)
            end
            m.AddSignal(
                v.TabHolder:GetPropertyChangedSignal "CanvasPosition",
                function()
                    I = N:GetCurrentTabPos() + 16
                    J = 0
                    v.SelectorPosMotor:setGoal(r(N:GetCurrentTabPos()))
                end
            )
            return v
        end
    end,
    [18] = function()
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
        function k.GetThemeProperty(m)
            if i[e(h).Theme][m] then
                return i[e(h).Theme][m]
            end
            return i["Ash Gray"][m]
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
            local x = getgenv().Fluent
            if x.Window and x.Window.AcrylicPaint then
                if Animation and Animation.Apply then Animation.Apply(thm, x.Window.AcrylicPaint.Frame) end
                getgenv().ButtonGradients = thm.ButtonGradient
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
    [19] = function()
        local c, d, e, f, g = b(19)
        local h = {}
        for i, j in next, d:GetChildren() do
            table.insert(h, e(j))
        end
        return h
    end,
    [20] = function()
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
            local p =
                j(
                "ImageLabel",
                {
                    Image = "rbxassetid://10709791437",
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
            assert(x.Default, "AddColorPicker: Missing default value.")
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
                    C.Root.Size = UDim2.fromOffset(430, 330)
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
                    local _, aa, ab
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
                        ab =
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
                                ab,
                                ac
                            }
                        )
                    end
                    local ac = function()
                        L.BackgroundColor3 = Color3.fromHSV(D, 1, 1)
                        T.Position = UDim2.new(0, -1, D, -6)
                        K.Position = UDim2.new(E, 0, 1 - F, 0)
                        O.BackgroundColor3 = Color3.fromHSV(D, E, F)
                        V.Input.Text = "#" .. Color3.fromHSV(D, E, F):ToHex()
                        W.Input.Text = J().R
                        X.Input.Text = J().G
                        Y.Input.Text = J().B
                        if x.Transparency then
                            ab.BackgroundColor3 = Color3.fromHSV(D, E, F)
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
                                if ae and typeof(af) == "Color3" then
                                    D, E, F = Color3.toHSV(af)
                                end
                            end
                            ac()
                        end
                    )
                    p.AddSignal(
                        W.Input.FocusLost,
                        function(ad)
                            if ad then
                                local ae = J()
                                local af, ag = pcall(Color3.fromRGB, W.Input.Text, ae.G, ae.B)
                                if af and typeof(ag) == "Color3" then
                                    if tonumber(W.Input.Text) <= 255 then
                                        D, E, F = Color3.toHSV(ag)
                                    end
                                end
                            end
                            ac()
                        end
                    )
                    p.AddSignal(
                        X.Input.FocusLost,
                        function(ad)
                            if ad then
                                local ae = J()
                                local af, ag = pcall(Color3.fromRGB, ae.R, X.Input.Text, ae.B)
                                if af and typeof(ag) == "Color3" then
                                    if tonumber(X.Input.Text) <= 255 then
                                        D, E, F = Color3.toHSV(ag)
                                    end
                                end
                            end
                            ac()
                        end
                    )
                    p.AddSignal(
                        Y.Input.FocusLost,
                        function(ad)
                            if ad then
                                local ae = J()
                                local af, ag = pcall(Color3.fromRGB, ae.R, ae.G, Y.Input.Text)
                                if af and typeof(ag) == "Color3" then
                                    if tonumber(Y.Input.Text) <= 255 then
                                        D, E, F = Color3.toHSV(ag)
                                    end
                                end
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
                                    D = ((ag - ae) / (af - ae))
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
                    C:Button(
                        "Done",
                        function()
                            z:SetValue({D, E, F}, G)
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
    [22] = function()
        local aa, ab, ac, ad, ae = b(22)
        local af, ag, ah, ai, aj =
            game:GetService "TweenService",
            game:GetService "UserInputService",
            game:GetService "Players".LocalPlayer:GetMouse(),
            game:GetService "Workspace".CurrentCamera,
            ab.Parent.Parent
        local c, d = ac(aj.Creator), ac(aj.Packages.Flipper)
        local e, f, g = c.New, aj.Components, {}
        g.__index = g
        g.__type = "Dropdown"
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
            m.DescLabel.Size = UDim2.new(1, -170, 0, 14)
            l.SetTitle = m.SetTitle
            l.SetDesc = m.SetDesc
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
            local t =
                e(
                "ScrollingFrame",
                {
                    Size = UDim2.new(1, -5, 1, -10),
                    Position = UDim2.fromOffset(5, 5),
                    BackgroundTransparency = 1,
                    BottomImage = "rbxassetid://6889812791",
                    MidImage = "rbxassetid://6889812721",
                    TopImage = "rbxassetid://6276641225",
                    ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
                    ScrollBarImageTransparency = 0.95,
                    ScrollBarThickness = 4,
                    BorderSizePixel = 0,
                    CanvasSize = UDim2.fromScale(0, 0)
                },
                {s}
            )
            local u =
                e(
                "Frame",
                {Size = UDim2.fromScale(1, 0.6), ThemeTag = {BackgroundColor3 = "DropdownHolder"}},
                {
                    t,
                    e("UICorner", {CornerRadius = UDim.new(0, 7)}),
                    e(
                        "UIStroke",
                        {ApplyStrokeMode = Enum.ApplyStrokeMode.Border, ThemeTag = {Color = "DropdownBorder"}}
                    ),
                    e(
                        "ImageLabel",
                        {
                            BackgroundTransparency = 1,
                            Image = "http://www.roblox.com/asset/?id=5554236805",
                            ScaleType = Enum.ScaleType.Slice,
                            SliceCenter = Rect.new(23, 23, 277, 277),
                            Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
                            Position = UDim2.fromOffset(-15, -15),
                            ImageColor3 = Color3.fromRGB(0, 0, 0),
                            ImageTransparency = 0.1
                        }
                    )
                }
            )
            local v =
                e(
                "Frame",
                {BackgroundTransparency = 1, Size = UDim2.fromOffset(170, 300), Parent = h.Library.GUI, Visible = false},
                {u, e("UISizeConstraint", {MinSize = Vector2.new(170, 0)})}
            )
            table.insert(k.OpenFrames, v)
            local w, x = function()
                    local w = 0
                    if ai.ViewportSize.Y - p.AbsolutePosition.Y < v.AbsoluteSize.Y - 5 then
                        w = v.AbsoluteSize.Y - 5 - (ai.ViewportSize.Y - p.AbsolutePosition.Y) + 40
                    end
                    v.Position = UDim2.fromOffset(p.AbsolutePosition.X - 1, p.AbsolutePosition.Y - 5 - w)
                end, 0
            local y, z = function()
                    if #l.Values > 10 then
                        v.Size = UDim2.fromOffset(x, 392)
                    else
                        v.Size = UDim2.fromOffset(x, s.AbsoluteContentSize.Y + 10)
                    end
                end, function()
                    t.CanvasSize = UDim2.fromOffset(0, s.AbsoluteContentSize.Y)
                end
            w()
            y()
            c.AddSignal(p:GetPropertyChangedSignal "AbsolutePosition", w)
            c.AddSignal(
                p.MouseButton1Click,
                function()
                    l:Open()
                end
            )
            c.AddSignal(
                ag.InputBegan,
                function(A)
                    if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
                        local B, C = u.AbsolutePosition, u.AbsoluteSize
                        if ah.X < B.X or ah.X > B.X + C.X or ah.Y < (B.Y - 20 - 1) or ah.Y > B.Y + C.Y then
                            l:Close()
                        end
                    end
                end
            )
            local A = h.ScrollFrame
            function l.Open(B)
                l.Opened = true
                A.ScrollingEnabled = false
                v.Visible = true
                af:Create(
                    u,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                    {Size = UDim2.fromScale(1, 1)}
                ):Play()
            end
            function l.Close(B)
                l.Opened = false
                A.ScrollingEnabled = true
                u.Size = UDim2.fromScale(1, 0.6)
                v.Visible = false
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
            function l.BuildDropdownList(B)
                local C, D = l.Values, {}
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
                    local M, N =
                        (e(
                        "TextButton",
                        {
                            Size = UDim2.new(1, -5, 0, 32),
                            BackgroundTransparency = 1,
                            ZIndex = 23,
                            Text = "",
                            Parent = t,
                            ThemeTag = {BackgroundColor3 = "DropdownOption"}
                        },
                        {K, L, e("UICorner", {CornerRadius = UDim.new(0, 6)})}
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
                end
                x = 0
                for J, K in next, D do
                    if J.ButtonLabel then
                        if J.ButtonLabel.TextBounds.X > x then
                            x = J.ButtonLabel.TextBounds.X
                        end
                    end
                end
                x = x + 30
                z()
                y()
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
    [24] = function()
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
                    Position = UDim2.new(0, 0, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    AutomaticSize = Enum.AutomaticSize.X,
                    BackgroundTransparency = 1,
                    ThemeTag = {TextColor3 = "Text"}
                }
            )
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
                    ai("UIPadding", {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}),
                    ai(
                        "UIStroke",
                        {
                            Transparency = 0.5,
                            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
                            ThemeTag = {Color = "InElementBorder"}
                        }
                    ),
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
        local aa, ab, ac, ad, ae = b(25)
        local af = ab.Parent.Parent
        local ag, ah, ai, aj = af.Components, ac(af.Packages.Flipper), ac(af.Creator), {}
        aj.__index = aj
        aj.__type = "Paragraph"
        function aj.New(c, d)
            assert(d.Title, "Paragraph - Missing Title")
            d.Content = d.Content or ""
            local e = ac(ag.Element)(d.Title, d.Content, aj.Container, false)
            e.Frame.BackgroundTransparency = 0.92
            e.Border.Transparency = 0.6
            return e
        end
        return aj
    end,
    [26] = function()
        local aa, ab, ac, ad, ae = b(26)
        local af, ag = game:GetService "UserInputService", ab.Parent.Parent
        local ah = ac(ag.Creator)
        local ai, aj, c = ah.New, ag.Components, {}
        c.__index = c
        c.__type = "Slider"
        function c.New(d, e, f)
            local g = d.Library
            assert(f.Title, "Slider - Missing Title.")
            assert(f.Default, "Slider - Missing default value.")
            assert(f.Min, "Slider - Missing minimum value.")
            assert(f.Max, "Slider - Missing maximum value.")
            assert(f.Rounding, "Slider - Missing rounding value.")
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
            local k =
                ai(
                "ImageLabel",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Position = UDim2.new(0, -7, 0.5, 0),
                    Size = UDim2.fromOffset(14, 14),
                    Image = "http://www.roblox.com/asset/?id=12266946128",
                    ThemeTag = {ImageColor3 = "Accent"}
                }
            )
            local l, m, n =
                ai(
                    "Frame",
                    {BackgroundTransparency = 1, Position = UDim2.fromOffset(7, 0), Size = UDim2.new(1, -14, 1, 0)},
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
                        FontFace = Font.new "rbxasset://fonts/families/GothamSSm.json",
                        Text = "Value",
                        TextSize = 12,
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
                    Size = UDim2.new(1, 0, 0, 4),
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
                k.Position = UDim2.new((p.Value - h.Min) / (h.Max - h.Min), -7, 0.5, 0)
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
    [27] = function()
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
    [28] = function()
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
    [30] = function()
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
    [31] = function()
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
    [32] = function()
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
    [33] = function()
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
    [34] = function()
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
    [35] = function()
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
    [36] = function()
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
    [37] = function()
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
    [38] = function()
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
    [39] = function()
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
    [40] = function()
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
    [41] = function()
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
    [42] = function()
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
    [43] = function()
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
    [44] = function()
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
    [45] = function()
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
    [46] = function()
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
    [47] = function()
        local aa, ab, ac, ad, ae = b(47)
        local af = {
            Names = {
                "Ash Gray",
                "Charcoal",
                "Pearl White",
                "Cyan Frost",
                "Deep Violet",
                "Hot Pink",
                "Blood Red",
                "Sky Blue",
                "Honey Gold",
                "Lime Green",
                "Neon Purple",
                -- 80 New Theme Names
                "Deep Ocean",
                "Dark Forest",
                "Sunset Red",
                "Midnight Blue",
                "Soft Lavender",
                "Mint Breeze",
                "Peach Glow",
                "Coral Flame",
                "Dark Indigo",
                "Acid Lime",
                "Ruby Red",
                "Royal Blue",
                "Emerald Green",
                "Warm Topaz",
                "Onyx Black",
                "Jade Stone",
                "Amber Gold",
                "Rose Quartz",
                "Obsidian Black",
                "White Marble",
                "Slate Blue",
                "Warm Copper",
                "Dark Bronze",
                "Bright Silver",
                "Platinum Gray",
                "Titanium Gray",
                "Cold Steel",
                "Dark Iron",
                "Cool Nickel",
                "Zinc Gray",
                "Tin Gray",
                "Lead Gray",
                "Mirror Chrome",
                "Antique Brass",
                "Dark Graphite",
                "Carbon Black",
                "Phantom Blue",
                "Spectre Indigo",
                "Ghost Gray",
                "Deep Shadow",
                "Dark Purple",
                "Void Black",
                "Eclipse Dark",
                "Twilight Purple",
                "Golden Dawn",
                "Dusk Violet",
                "Aurora Teal",
                "Galaxy Purple",
                "Nebula Pink",
                "Comet Gold",
                "Meteor Blaze",
                "Silver Stardust",
                "Cosmic Violet",
                "Astral Purple",
                "Celestial Blue",
                "Ethereal Violet",
                "Mystic Purple",
                "Arcane Blue",
                "Runic Ember",
                "Enchanted Violet",
                "Magical Pink",
                "Dark Sorcery",
                "Wizard Blue",
                "Dragon Fire",
                "Phoenix Flame",
                "Griffin Gold",
                "Cloud White",
                "Unicorn Pink",
                "Fairy Green",
                "Elven Green",
                "Forge Brown",
                "War Green",
                "Swamp Green",
                "Poison Green",
                "Demon Blood",
                "Angelic White",
                "Valkyrie Mauve",
                "Shadow Black",
                "Rust Brown",
                "Dark Steel"
            }
        }
        for ag, ah in next, ab:GetChildren() do
            local aj = ac(ah)
            af[aj.Name] = aj
        end
        return af
    end,
    [48] = function()
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
            }
        }
    end,
    [49] = function()
        local aa, ab, ac, ad, ae = b(49)
        return {
            Name = "Cyan Frost",
            Accent = Color3.fromRGB(60, 165, 165),
            AcrylicMain = Color3.fromRGB(20, 20, 20),
            AcrylicBorder = Color3.fromRGB(50, 100, 100),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 140, 140), Color3.fromRGB(40, 80, 80)),
            AcrylicNoise = 0.92,
            TitleBarLine = Color3.fromRGB(60, 120, 120),
            Tab = Color3.fromRGB(140, 180, 180),
            Element = Color3.fromRGB(110, 160, 160),
            ElementBorder = Color3.fromRGB(40, 70, 70),
            InElementBorder = Color3.fromRGB(80, 110, 110),
            ElementTransparency = 0.84,
            ToggleSlider = Color3.fromRGB(110, 160, 160),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(110, 160, 160),
            DropdownFrame = Color3.fromRGB(160, 200, 200),
            DropdownHolder = Color3.fromRGB(40, 80, 80),
            DropdownBorder = Color3.fromRGB(40, 65, 65),
            DropdownOption = Color3.fromRGB(110, 160, 160),
            Keybind = Color3.fromRGB(110, 160, 160),
            Input = Color3.fromRGB(110, 160, 160),
            InputFocused = Color3.fromRGB(20, 10, 30),
            InputIndicator = Color3.fromRGB(130, 170, 170),
            Dialog = Color3.fromRGB(40, 80, 80),
            DialogHolder = Color3.fromRGB(30, 60, 60),
            DialogHolderLine = Color3.fromRGB(25, 50, 50),
            DialogButton = Color3.fromRGB(40, 80, 80),
            DialogButtonBorder = Color3.fromRGB(80, 110, 110),
            DialogBorder = Color3.fromRGB(50, 100, 100),
            DialogInput = Color3.fromRGB(45, 90, 90),
            DialogInputLine = Color3.fromRGB(130, 170, 170),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(110, 160, 160),
            HoverChange = 0.04,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 80, 80)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 220, 220)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 80, 80))
                    }
                )
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(50, 100, 100),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 80, 80)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 220, 220))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 80, 80)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 220, 220)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 80, 80))
                    }
                )
            }
        }
    end,
    [50] = function()
        local aa, ab, ac, ad, ae = b(50)
        return {
            Name = "Ash Gray",
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
            }
        }
    end,
    [51] = function()
        local aa, ab, ac, ad, ae = b(51)
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
    [52] = function()
        local aa, ab, ac, ad, ae = b(52)
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
    [53] = function()
        local aa, ab, ac, ad, ae = b(53)
        return {
            Name = "Hot Pink",
            Accent = Color3.fromRGB(255, 120, 160),
            AcrylicMain = Color3.fromRGB(25, 20, 22),
            AcrylicBorder = Color3.fromRGB(120, 70, 90),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(80, 40, 55), Color3.fromRGB(25, 15, 18)),
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
            DropdownFrame = Color3.fromRGB(50, 30, 40),
            DropdownHolder = Color3.fromRGB(35, 20, 28),
            DropdownBorder = Color3.fromRGB(120, 70, 90),
            DropdownOption = Color3.fromRGB(255, 120, 160),
            Keybind = Color3.fromRGB(60, 35, 45),
            Input = Color3.fromRGB(45, 25, 32),
            InputFocused = Color3.fromRGB(30, 15, 20),
            InputIndicator = Color3.fromRGB(255, 170, 200),
            Dialog = Color3.fromRGB(45, 25, 32),
            DialogHolder = Color3.fromRGB(30, 18, 22),
            DialogHolderLine = Color3.fromRGB(25, 14, 18),
            DialogButton = Color3.fromRGB(45, 25, 32),
            DialogButtonBorder = Color3.fromRGB(120, 70, 90),
            DialogBorder = Color3.fromRGB(120, 70, 90),
            DialogInput = Color3.fromRGB(60, 35, 45),
            DialogInputLine = Color3.fromRGB(255, 170, 200),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(255, 120, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 20, 30)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 20, 30))
                    }
                )
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(120, 70, 90),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 30, 40))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 70, 90)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 160, 190)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 70, 90))
                    }
                )
            }
        }
    end,
    [54] = function()
        local aa, ab, ac, ad, ae = b(54)
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
    [55] = function()
        local aa, ab, ac, ad, ae = b(55)
        return {
            Name = "Sky Blue",
            Accent = Color3.fromRGB(96, 205, 255),
            AcrylicMain = Color3.fromRGB(20, 20, 25),
            AcrylicBorder = Color3.fromRGB(40, 80, 120),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 120, 180), Color3.fromRGB(15, 20, 30)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 150, 220),
            Tab = Color3.fromRGB(40, 70, 100),
            Element = Color3.fromRGB(35, 60, 90),
            ElementBorder = Color3.fromRGB(40, 80, 120),
            InElementBorder = Color3.fromRGB(30, 55, 80),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(96, 205, 255),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(40, 80, 120),
            DropdownFrame = Color3.fromRGB(30, 55, 80),
            DropdownHolder = Color3.fromRGB(20, 35, 55),
            DropdownBorder = Color3.fromRGB(40, 80, 120),
            DropdownOption = Color3.fromRGB(96, 205, 255),
            Keybind = Color3.fromRGB(35, 60, 90),
            Input = Color3.fromRGB(25, 45, 70),
            InputFocused = Color3.fromRGB(15, 30, 50),
            InputIndicator = Color3.fromRGB(140, 220, 255),
            Dialog = Color3.fromRGB(25, 45, 70),
            DialogHolder = Color3.fromRGB(20, 35, 55),
            DialogHolderLine = Color3.fromRGB(15, 30, 50),
            DialogButton = Color3.fromRGB(25, 45, 70),
            DialogButtonBorder = Color3.fromRGB(40, 80, 120),
            DialogBorder = Color3.fromRGB(40, 80, 120),
            DialogInput = Color3.fromRGB(30, 60, 90),
            DialogInputLine = Color3.fromRGB(140, 220, 255),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(96, 205, 255),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 70)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 220, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 70))
                    }
                )
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(40, 80, 120),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 220, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 60, 90))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 80, 120)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 220, 255)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 80, 120))
                    }
                )
            }
        }
    end,
    [56] = function()
        local aa, ab, ac, ad, ae = b(56)
        return {
            Name = "Honey Gold",
            Accent = Color3.fromRGB(255, 200, 90),
            AcrylicMain = Color3.fromRGB(25, 25, 25),
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
            }
        }
    end,
    [57] = function()
        local aa, ab, ac, ad, ae = b(57)
        return {
            Name = "Lime Green",
            Accent = Color3.fromRGB(60, 200, 120),
            AcrylicMain = Color3.fromRGB(20, 25, 20),
            AcrylicBorder = Color3.fromRGB(40, 90, 60),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 100, 60), Color3.fromRGB(15, 30, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(60, 160, 100),
            Tab = Color3.fromRGB(40, 80, 60),
            Element = Color3.fromRGB(35, 70, 50),
            ElementBorder = Color3.fromRGB(40, 90, 60),
            InElementBorder = Color3.fromRGB(30, 60, 40),
            ElementTransparency = 0.9,
            ToggleSlider = Color3.fromRGB(60, 200, 120),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(40, 90, 60),
            DropdownFrame = Color3.fromRGB(30, 60, 40),
            DropdownHolder = Color3.fromRGB(20, 40, 30),
            DropdownBorder = Color3.fromRGB(40, 90, 60),
            DropdownOption = Color3.fromRGB(60, 200, 120),
            Keybind = Color3.fromRGB(35, 70, 50),
            Input = Color3.fromRGB(25, 55, 40),
            InputFocused = Color3.fromRGB(15, 35, 25),
            InputIndicator = Color3.fromRGB(120, 255, 180),
            Dialog = Color3.fromRGB(25, 55, 40),
            DialogHolder = Color3.fromRGB(20, 40, 30),
            DialogHolderLine = Color3.fromRGB(15, 35, 25),
            DialogButton = Color3.fromRGB(25, 55, 40),
            DialogButtonBorder = Color3.fromRGB(40, 90, 60),
            DialogBorder = Color3.fromRGB(40, 90, 60),
            DialogInput = Color3.fromRGB(30, 70, 50),
            DialogInputLine = Color3.fromRGB(120, 255, 180),
            Text = Color3.fromRGB(240, 240, 240),
            SubText = Color3.fromRGB(170, 170, 170),
            Hover = Color3.fromRGB(60, 200, 120),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 30)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 255, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 30))
                    }
                )
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(40, 90, 60),
            ButtonGradient = {
                Background = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 255, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 60, 40))
                    }
                ),
                Stroke = ColorSequence.new(
                    {
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 90, 60)),
                        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 255, 180)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 90, 60))
                    }
                )
            }
        }
    end,
    [58] = function()
        local aa, ab, ac, ad, ae = b(58)
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
            ShineEnabled = getgenv().ShineEnabled,
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
            StrokeShine = getgenv().ShineEnabled,
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
    [59] = function()
        local aa, ab, ac, ad, ae = b(59)
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
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 60, 90)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 90))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
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
    [60] = function()
        local aa, ab, ac, ad, ae = b(60)
        return {
            Name = "Dark Forest",
            Accent = Color3.fromRGB(60, 180, 80),
            AcrylicMain = Color3.fromRGB(15, 35, 20),
            AcrylicBorder = Color3.fromRGB(40, 120, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 140, 60), Color3.fromRGB(10, 30, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(55, 160, 70),
            Tab = Color3.fromRGB(45, 130, 55),
            Element = Color3.fromRGB(40, 115, 50),
            ElementBorder = Color3.fromRGB(35, 95, 45),
            InElementBorder = Color3.fromRGB(50, 145, 65),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(60, 180, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(45, 130, 55),
            DropdownFrame = Color3.fromRGB(35, 100, 45),
            DropdownHolder = Color3.fromRGB(10, 25, 15),
            DropdownBorder = Color3.fromRGB(30, 80, 40),
            DropdownOption = Color3.fromRGB(60, 180, 80),
            Keybind = Color3.fromRGB(40, 115, 50),
            Input = Color3.fromRGB(35, 100, 45),
            InputFocused = Color3.fromRGB(5, 20, 10),
            InputIndicator = Color3.fromRGB(100, 220, 120),
            Dialog = Color3.fromRGB(10, 25, 15),
            DialogHolder = Color3.fromRGB(5, 15, 10),
            DialogHolderLine = Color3.fromRGB(0, 10, 5),
            DialogButton = Color3.fromRGB(10, 25, 15),
            DialogButtonBorder = Color3.fromRGB(40, 120, 50),
            DialogBorder = Color3.fromRGB(30, 80, 40),
            DialogInput = Color3.fromRGB(20, 45, 25),
            DialogInputLine = Color3.fromRGB(100, 220, 120),
            Text = Color3.fromRGB(220, 255, 220),
            SubText = Color3.fromRGB(170, 210, 170),
            Hover = Color3.fromRGB(60, 180, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 60, 30)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 220, 120)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 60, 30))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(40, 120, 50),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 160, 70)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 60, 30))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 120, 50)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 220, 120)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 120, 50))
                })
            }
        }
    end,
    [61] = function()
        local aa, ab, ac, ad, ae = b(61)
        return {
            Name = "Sunset Red",
            Accent = Color3.fromRGB(255, 100, 80),
            AcrylicMain = Color3.fromRGB(35, 20, 25),
            AcrylicBorder = Color3.fromRGB(200, 70, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(180, 60, 45), Color3.fromRGB(30, 15, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(220, 80, 60),
            Tab = Color3.fromRGB(160, 55, 40),
            Element = Color3.fromRGB(140, 50, 35),
            ElementBorder = Color3.fromRGB(100, 35, 25),
            InElementBorder = Color3.fromRGB(180, 65, 45),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 100, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(160, 55, 40),
            DropdownFrame = Color3.fromRGB(120, 40, 30),
            DropdownHolder = Color3.fromRGB(25, 10, 15),
            DropdownBorder = Color3.fromRGB(80, 25, 20),
            DropdownOption = Color3.fromRGB(255, 100, 80),
            Keybind = Color3.fromRGB(140, 50, 35),
            Input = Color3.fromRGB(120, 40, 30),
            InputFocused = Color3.fromRGB(15, 5, 10),
            InputIndicator = Color3.fromRGB(255, 150, 130),
            Dialog = Color3.fromRGB(25, 10, 15),
            DialogHolder = Color3.fromRGB(15, 5, 10),
            DialogHolderLine = Color3.fromRGB(10, 3, 5),
            DialogButton = Color3.fromRGB(25, 10, 15),
            DialogButtonBorder = Color3.fromRGB(160, 55, 40),
            DialogBorder = Color3.fromRGB(100, 35, 25),
            DialogInput = Color3.fromRGB(40, 15, 20),
            DialogInputLine = Color3.fromRGB(255, 150, 130),
            Text = Color3.fromRGB(255, 240, 235),
            SubText = Color3.fromRGB(210, 180, 170),
            Hover = Color3.fromRGB(255, 100, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 20, 15)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 150, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 20, 15))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(160, 55, 40),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(220, 80, 60)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 20, 15))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 55, 40)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 150, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 55, 40))
                })
            }
        }
    end,
    [62] = function()
        local aa, ab, ac, ad, ae = b(62)
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
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 15, 60)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 120, 240)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 15, 60))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
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
    [63] = function()
        local aa, ab, ac, ad, ae = b(63)
        return {
            Name = "Soft Lavender",
            Accent = Color3.fromRGB(180, 130, 255),
            AcrylicMain = Color3.fromRGB(30, 25, 45),
            AcrylicBorder = Color3.fromRGB(140, 95, 210),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(120, 80, 190), Color3.fromRGB(25, 20, 40)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 110, 230),
            Tab = Color3.fromRGB(130, 90, 200),
            Element = Color3.fromRGB(115, 80, 180),
            ElementBorder = Color3.fromRGB(85, 60, 130),
            InElementBorder = Color3.fromRGB(145, 105, 215),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(180, 130, 255),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(130, 90, 200),
            DropdownFrame = Color3.fromRGB(100, 70, 165),
            DropdownHolder = Color3.fromRGB(25, 20, 40),
            DropdownBorder = Color3.fromRGB(80, 55, 130),
            DropdownOption = Color3.fromRGB(180, 130, 255),
            Keybind = Color3.fromRGB(115, 80, 180),
            Input = Color3.fromRGB(100, 70, 165),
            InputFocused = Color3.fromRGB(15, 12, 30),
            InputIndicator = Color3.fromRGB(210, 170, 255),
            Dialog = Color3.fromRGB(25, 20, 40),
            DialogHolder = Color3.fromRGB(15, 12, 30),
            DialogHolderLine = Color3.fromRGB(10, 8, 20),
            DialogButton = Color3.fromRGB(25, 20, 40),
            DialogButtonBorder = Color3.fromRGB(130, 90, 200),
            DialogBorder = Color3.fromRGB(85, 60, 130),
            DialogInput = Color3.fromRGB(40, 30, 65),
            DialogInputLine = Color3.fromRGB(210, 170, 255),
            Text = Color3.fromRGB(240, 240, 255),
            SubText = Color3.fromRGB(200, 190, 220),
            Hover = Color3.fromRGB(180, 130, 255),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 35, 75)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(210, 170, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 35, 75))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(130, 90, 200),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 110, 230)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 35, 75))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 90, 200)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(210, 170, 255)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(130, 90, 200))
                })
            }
        }
    end,
    [64] = function()
        local aa, ab, ac, ad, ae = b(64)
        return {
            Name = "Mint Breeze",
            Accent = Color3.fromRGB(80, 220, 160),
            AcrylicMain = Color3.fromRGB(15, 35, 30),
            AcrylicBorder = Color3.fromRGB(55, 170, 120),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 190, 140), Color3.fromRGB(10, 30, 25)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(70, 200, 145),
            Tab = Color3.fromRGB(60, 175, 125),
            Element = Color3.fromRGB(55, 155, 110),
            ElementBorder = Color3.fromRGB(40, 110, 80),
            InElementBorder = Color3.fromRGB(65, 185, 135),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 220, 160),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 175, 125),
            DropdownFrame = Color3.fromRGB(50, 140, 100),
            DropdownHolder = Color3.fromRGB(10, 30, 25),
            DropdownBorder = Color3.fromRGB(35, 100, 70),
            DropdownOption = Color3.fromRGB(80, 220, 160),
            Keybind = Color3.fromRGB(55, 155, 110),
            Input = Color3.fromRGB(50, 140, 100),
            InputFocused = Color3.fromRGB(5, 20, 15),
            InputIndicator = Color3.fromRGB(130, 255, 200),
            Dialog = Color3.fromRGB(10, 30, 25),
            DialogHolder = Color3.fromRGB(5, 20, 15),
            DialogHolderLine = Color3.fromRGB(3, 12, 10),
            DialogButton = Color3.fromRGB(10, 30, 25),
            DialogButtonBorder = Color3.fromRGB(60, 175, 125),
            DialogBorder = Color3.fromRGB(40, 110, 80),
            DialogInput = Color3.fromRGB(20, 55, 45),
            DialogInputLine = Color3.fromRGB(130, 255, 200),
            Text = Color3.fromRGB(230, 255, 245),
            SubText = Color3.fromRGB(180, 220, 200),
            Hover = Color3.fromRGB(80, 220, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 70, 55)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(130, 255, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 70, 55))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 175, 125),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 200, 145)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 70, 55))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 175, 125)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(130, 255, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 175, 125))
                })
            }
        }
    end,
    [65] = function()
        local aa, ab, ac, ad, ae = b(65)
        return {
            Name = "Peach Glow",
            Accent = Color3.fromRGB(255, 160, 120),
            AcrylicMain = Color3.fromRGB(40, 30, 25),
            AcrylicBorder = Color3.fromRGB(220, 130, 90),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 115, 80), Color3.fromRGB(35, 25, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 145, 105),
            Tab = Color3.fromRGB(200, 120, 85),
            Element = Color3.fromRGB(180, 110, 75),
            ElementBorder = Color3.fromRGB(130, 80, 55),
            InElementBorder = Color3.fromRGB(215, 130, 95),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 160, 120),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(200, 120, 85),
            DropdownFrame = Color3.fromRGB(165, 100, 70),
            DropdownHolder = Color3.fromRGB(35, 25, 20),
            DropdownBorder = Color3.fromRGB(120, 75, 50),
            DropdownOption = Color3.fromRGB(255, 160, 120),
            Keybind = Color3.fromRGB(180, 110, 75),
            Input = Color3.fromRGB(165, 100, 70),
            InputFocused = Color3.fromRGB(25, 18, 15),
            InputIndicator = Color3.fromRGB(255, 200, 170),
            Dialog = Color3.fromRGB(35, 25, 20),
            DialogHolder = Color3.fromRGB(25, 18, 15),
            DialogHolderLine = Color3.fromRGB(18, 12, 10),
            DialogButton = Color3.fromRGB(35, 25, 20),
            DialogButtonBorder = Color3.fromRGB(200, 120, 85),
            DialogBorder = Color3.fromRGB(130, 80, 55),
            DialogInput = Color3.fromRGB(55, 40, 30),
            DialogInputLine = Color3.fromRGB(255, 200, 170),
            Text = Color3.fromRGB(255, 245, 240),
            SubText = Color3.fromRGB(220, 200, 190),
            Hover = Color3.fromRGB(255, 160, 120),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 50, 40)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 200, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 50, 40))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 120, 85),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 145, 105)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 50, 40))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 120, 85)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 200, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 120, 85))
                })
            }
        }
    end,
    [66] = function()
        local aa, ab, ac, ad, ae = b(66)
        return {
            Name = "Coral Flame",
            Accent = Color3.fromRGB(255, 90, 100),
            AcrylicMain = Color3.fromRGB(45, 25, 30),
            AcrylicBorder = Color3.fromRGB(220, 65, 75),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 55, 65), Color3.fromRGB(40, 20, 25)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 75, 85),
            Tab = Color3.fromRGB(200, 60, 70),
            Element = Color3.fromRGB(180, 55, 65),
            ElementBorder = Color3.fromRGB(130, 40, 45),
            InElementBorder = Color3.fromRGB(215, 70, 80),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 90, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(200, 60, 70),
            DropdownFrame = Color3.fromRGB(165, 50, 55),
            DropdownHolder = Color3.fromRGB(40, 20, 25),
            DropdownBorder = Color3.fromRGB(120, 35, 40),
            DropdownOption = Color3.fromRGB(255, 90, 100),
            Keybind = Color3.fromRGB(180, 55, 65),
            Input = Color3.fromRGB(165, 50, 55),
            InputFocused = Color3.fromRGB(30, 15, 18),
            InputIndicator = Color3.fromRGB(255, 140, 150),
            Dialog = Color3.fromRGB(40, 20, 25),
            DialogHolder = Color3.fromRGB(30, 15, 18),
            DialogHolderLine = Color3.fromRGB(20, 10, 12),
            DialogButton = Color3.fromRGB(40, 20, 25),
            DialogButtonBorder = Color3.fromRGB(200, 60, 70),
            DialogBorder = Color3.fromRGB(130, 40, 45),
            DialogInput = Color3.fromRGB(60, 30, 35),
            DialogInputLine = Color3.fromRGB(255, 140, 150),
            Text = Color3.fromRGB(255, 240, 240),
            SubText = Color3.fromRGB(220, 190, 195),
            Hover = Color3.fromRGB(255, 90, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 35, 45)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 140, 150)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 35, 45))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 60, 70),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 75, 85)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 35, 45))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 60, 70)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 140, 150)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 60, 70))
                })
            }
        }
    end,
    [67] = function()
        local aa, ab, ac, ad, ae = b(67)
        return {
            Name = "Dark Indigo",
            Accent = Color3.fromRGB(75, 0, 130),
            AcrylicMain = Color3.fromRGB(20, 10, 40),
            AcrylicBorder = Color3.fromRGB(55, 0, 100),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 0, 110), Color3.fromRGB(15, 5, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 0, 115),
            Tab = Color3.fromRGB(55, 0, 100),
            Element = Color3.fromRGB(50, 0, 90),
            ElementBorder = Color3.fromRGB(35, 0, 65),
            InElementBorder = Color3.fromRGB(60, 0, 105),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(75, 0, 130),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(55, 0, 100),
            DropdownFrame = Color3.fromRGB(45, 0, 85),
            DropdownHolder = Color3.fromRGB(15, 5, 35),
            DropdownBorder = Color3.fromRGB(35, 0, 65),
            DropdownOption = Color3.fromRGB(75, 0, 130),
            Keybind = Color3.fromRGB(50, 0, 90),
            Input = Color3.fromRGB(45, 0, 85),
            InputFocused = Color3.fromRGB(10, 3, 25),
            InputIndicator = Color3.fromRGB(110, 30, 170),
            Dialog = Color3.fromRGB(15, 5, 35),
            DialogHolder = Color3.fromRGB(10, 3, 25),
            DialogHolderLine = Color3.fromRGB(8, 2, 20),
            DialogButton = Color3.fromRGB(15, 5, 35),
            DialogButtonBorder = Color3.fromRGB(55, 0, 100),
            DialogBorder = Color3.fromRGB(35, 0, 65),
            DialogInput = Color3.fromRGB(25, 8, 50),
            DialogInputLine = Color3.fromRGB(110, 30, 170),
            Text = Color3.fromRGB(230, 220, 255),
            SubText = Color3.fromRGB(180, 170, 220),
            Hover = Color3.fromRGB(75, 0, 130),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 0, 65)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(110, 30, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 0, 65))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(55, 0, 100),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 0, 115)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 0, 65))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 0, 100)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(110, 30, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 0, 100))
                })
            }
        }
    end,
    [68] = function()
        local aa, ab, ac, ad, ae = b(68)
        return {
            Name = "Acid Lime",
            Accent = Color3.fromRGB(150, 255, 50),
            AcrylicMain = Color3.fromRGB(25, 35, 15),
            AcrylicBorder = Color3.fromRGB(110, 200, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(120, 210, 35), Color3.fromRGB(20, 30, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(130, 225, 40),
            Tab = Color3.fromRGB(110, 200, 30),
            Element = Color3.fromRGB(100, 180, 25),
            ElementBorder = Color3.fromRGB(70, 130, 18),
            InElementBorder = Color3.fromRGB(120, 215, 35),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(150, 255, 50),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(110, 200, 30),
            DropdownFrame = Color3.fromRGB(85, 160, 20),
            DropdownHolder = Color3.fromRGB(20, 30, 10),
            DropdownBorder = Color3.fromRGB(65, 120, 15),
            DropdownOption = Color3.fromRGB(150, 255, 50),
            Keybind = Color3.fromRGB(100, 180, 25),
            Input = Color3.fromRGB(85, 160, 20),
            InputFocused = Color3.fromRGB(12, 20, 5),
            InputIndicator = Color3.fromRGB(190, 255, 100),
            Dialog = Color3.fromRGB(20, 30, 10),
            DialogHolder = Color3.fromRGB(12, 20, 5),
            DialogHolderLine = Color3.fromRGB(8, 15, 3),
            DialogButton = Color3.fromRGB(20, 30, 10),
            DialogButtonBorder = Color3.fromRGB(110, 200, 30),
            DialogBorder = Color3.fromRGB(70, 130, 18),
            DialogInput = Color3.fromRGB(35, 55, 15),
            DialogInputLine = Color3.fromRGB(190, 255, 100),
            Text = Color3.fromRGB(240, 255, 220),
            SubText = Color3.fromRGB(200, 220, 180),
            Hover = Color3.fromRGB(150, 255, 50),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 75, 20)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 255, 100)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 75, 20))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(110, 200, 30),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 225, 40)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 75, 20))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 200, 30)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 255, 100)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 200, 30))
                })
            }
        }
    end,
    [69] = function()
        local aa, ab, ac, ad, ae = b(69)
        return {
            Name = "Ruby Red",
            Accent = Color3.fromRGB(224, 17, 95),
            AcrylicMain = Color3.fromRGB(50, 15, 25),
            AcrylicBorder = Color3.fromRGB(190, 12, 80),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(170, 10, 70), Color3.fromRGB(45, 10, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(200, 14, 85),
            Tab = Color3.fromRGB(180, 12, 75),
            Element = Color3.fromRGB(160, 10, 65),
            ElementBorder = Color3.fromRGB(110, 7, 45),
            InElementBorder = Color3.fromRGB(185, 13, 80),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(224, 17, 95),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(180, 12, 75),
            DropdownFrame = Color3.fromRGB(145, 9, 60),
            DropdownHolder = Color3.fromRGB(45, 10, 20),
            DropdownBorder = Color3.fromRGB(105, 7, 45),
            DropdownOption = Color3.fromRGB(224, 17, 95),
            Keybind = Color3.fromRGB(160, 10, 65),
            Input = Color3.fromRGB(145, 9, 60),
            InputFocused = Color3.fromRGB(30, 5, 15),
            InputIndicator = Color3.fromRGB(255, 60, 130),
            Dialog = Color3.fromRGB(45, 10, 20),
            DialogHolder = Color3.fromRGB(30, 5, 15),
            DialogHolderLine = Color3.fromRGB(20, 3, 10),
            DialogButton = Color3.fromRGB(45, 10, 20),
            DialogButtonBorder = Color3.fromRGB(180, 12, 75),
            DialogBorder = Color3.fromRGB(110, 7, 45),
            DialogInput = Color3.fromRGB(65, 12, 30),
            DialogInputLine = Color3.fromRGB(255, 60, 130),
            Text = Color3.fromRGB(255, 230, 240),
            SubText = Color3.fromRGB(220, 180, 200),
            Hover = Color3.fromRGB(224, 17, 95),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 15, 40)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 60, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 15, 40))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(180, 12, 75),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 14, 85)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 15, 40))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 12, 75)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 60, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(180, 12, 75))
                })
            }
        }
    end,
    [70] = function()
        local aa, ab, ac, ad, ae = b(70)
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
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 40, 85)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 120, 230)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 40, 85))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
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
    [71] = function()
        local aa, ab, ac, ad, ae = b(71)
        return {
            Name = "Emerald Green",
            Accent = Color3.fromRGB(80, 200, 120),
            AcrylicMain = Color3.fromRGB(15, 35, 20),
            AcrylicBorder = Color3.fromRGB(55, 160, 90),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 180, 100), Color3.fromRGB(10, 30, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(70, 190, 105),
            Tab = Color3.fromRGB(60, 170, 95),
            Element = Color3.fromRGB(55, 150, 85),
            ElementBorder = Color3.fromRGB(40, 110, 60),
            InElementBorder = Color3.fromRGB(65, 185, 100),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 200, 120),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 170, 95),
            DropdownFrame = Color3.fromRGB(50, 135, 75),
            DropdownHolder = Color3.fromRGB(10, 30, 15),
            DropdownBorder = Color3.fromRGB(35, 100, 55),
            DropdownOption = Color3.fromRGB(80, 200, 120),
            Keybind = Color3.fromRGB(55, 150, 85),
            Input = Color3.fromRGB(50, 135, 75),
            InputFocused = Color3.fromRGB(5, 20, 10),
            InputIndicator = Color3.fromRGB(130, 240, 170),
            Dialog = Color3.fromRGB(10, 30, 15),
            DialogHolder = Color3.fromRGB(5, 20, 10),
            DialogHolderLine = Color3.fromRGB(3, 12, 8),
            DialogButton = Color3.fromRGB(10, 30, 15),
            DialogButtonBorder = Color3.fromRGB(60, 170, 95),
            DialogBorder = Color3.fromRGB(40, 110, 60),
            DialogInput = Color3.fromRGB(20, 55, 30),
            DialogInputLine = Color3.fromRGB(130, 240, 170),
            Text = Color3.fromRGB(230, 255, 240),
            SubText = Color3.fromRGB(180, 220, 195),
            Hover = Color3.fromRGB(80, 200, 120),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 70, 40)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(130, 240, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 70, 40))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 170, 95),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 190, 105)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 70, 40))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 170, 95)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(130, 240, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 170, 95))
                })
            }
        }
    end,
    [72] = function()
        local aa, ab, ac, ad, ae = b(72)
        return {
            Name = "Warm Topaz",
            Accent = Color3.fromRGB(255, 180, 80),
            AcrylicMain = Color3.fromRGB(40, 30, 20),
            AcrylicBorder = Color3.fromRGB(220, 150, 55),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 135, 50), Color3.fromRGB(35, 25, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 160, 65),
            Tab = Color3.fromRGB(200, 140, 55),
            Element = Color3.fromRGB(180, 125, 50),
            ElementBorder = Color3.fromRGB(130, 90, 35),
            InElementBorder = Color3.fromRGB(215, 150, 60),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 180, 80),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(200, 140, 55),
            DropdownFrame = Color3.fromRGB(165, 115, 45),
            DropdownHolder = Color3.fromRGB(35, 25, 15),
            DropdownBorder = Color3.fromRGB(120, 85, 30),
            DropdownOption = Color3.fromRGB(255, 180, 80),
            Keybind = Color3.fromRGB(180, 125, 50),
            Input = Color3.fromRGB(165, 115, 45),
            InputFocused = Color3.fromRGB(25, 18, 10),
            InputIndicator = Color3.fromRGB(255, 210, 130),
            Dialog = Color3.fromRGB(35, 25, 15),
            DialogHolder = Color3.fromRGB(25, 18, 10),
            DialogHolderLine = Color3.fromRGB(18, 12, 8),
            DialogButton = Color3.fromRGB(35, 25, 15),
            DialogButtonBorder = Color3.fromRGB(200, 140, 55),
            DialogBorder = Color3.fromRGB(130, 90, 35),
            DialogInput = Color3.fromRGB(55, 40, 25),
            DialogInputLine = Color3.fromRGB(255, 210, 130),
            Text = Color3.fromRGB(255, 248, 235),
            SubText = Color3.fromRGB(220, 200, 180),
            Hover = Color3.fromRGB(255, 180, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 55, 30)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 210, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 140, 55),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 160, 65)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 140, 55)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 210, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 140, 55))
                })
            }
        }
    end,
    [73] = function()
        local aa, ab, ac, ad, ae = b(73)
        return {
            Name = "Onyx Black",
            Accent = Color3.fromRGB(100, 100, 100),
            AcrylicMain = Color3.fromRGB(15, 15, 15),
            AcrylicBorder = Color3.fromRGB(70, 70, 70),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 60, 60), Color3.fromRGB(10, 10, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 80, 80),
            Tab = Color3.fromRGB(70, 70, 70),
            Element = Color3.fromRGB(65, 65, 65),
            ElementBorder = Color3.fromRGB(45, 45, 45),
            InElementBorder = Color3.fromRGB(75, 75, 75),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 100, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(70, 70, 70),
            DropdownFrame = Color3.fromRGB(55, 55, 55),
            DropdownHolder = Color3.fromRGB(10, 10, 10),
            DropdownBorder = Color3.fromRGB(40, 40, 40),
            DropdownOption = Color3.fromRGB(100, 100, 100),
            Keybind = Color3.fromRGB(65, 65, 65),
            Input = Color3.fromRGB(55, 55, 55),
            InputFocused = Color3.fromRGB(8, 8, 8),
            InputIndicator = Color3.fromRGB(140, 140, 140),
            Dialog = Color3.fromRGB(10, 10, 10),
            DialogHolder = Color3.fromRGB(8, 8, 8),
            DialogHolderLine = Color3.fromRGB(5, 5, 5),
            DialogButton = Color3.fromRGB(10, 10, 10),
            DialogButtonBorder = Color3.fromRGB(70, 70, 70),
            DialogBorder = Color3.fromRGB(45, 45, 45),
            DialogInput = Color3.fromRGB(25, 25, 25),
            DialogInputLine = Color3.fromRGB(140, 140, 140),
            Text = Color3.fromRGB(220, 220, 220),
            SubText = Color3.fromRGB(160, 160, 160),
            Hover = Color3.fromRGB(100, 100, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 140, 140)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 35))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(70, 70, 70),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 80, 80)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 35))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 70, 70)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 140, 140)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 70, 70))
                })
            }
        }
    end,
    [74] = function()
        local aa, ab, ac, ad, ae = b(74)
        return {
            Name = "Jade Stone",
            Accent = Color3.fromRGB(0, 180, 140),
            AcrylicMain = Color3.fromRGB(10, 30, 25),
            AcrylicBorder = Color3.fromRGB(0, 140, 110),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 160, 125), Color3.fromRGB(8, 25, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(0, 165, 130),
            Tab = Color3.fromRGB(0, 145, 115),
            Element = Color3.fromRGB(0, 130, 100),
            ElementBorder = Color3.fromRGB(0, 95, 75),
            InElementBorder = Color3.fromRGB(0, 155, 120),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(0, 180, 140),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(0, 145, 115),
            DropdownFrame = Color3.fromRGB(0, 120, 95),
            DropdownHolder = Color3.fromRGB(8, 25, 20),
            DropdownBorder = Color3.fromRGB(0, 90, 70),
            DropdownOption = Color3.fromRGB(0, 180, 140),
            Keybind = Color3.fromRGB(0, 130, 100),
            Input = Color3.fromRGB(0, 120, 95),
            InputFocused = Color3.fromRGB(5, 18, 15),
            InputIndicator = Color3.fromRGB(50, 220, 180),
            Dialog = Color3.fromRGB(8, 25, 20),
            DialogHolder = Color3.fromRGB(5, 18, 15),
            DialogHolderLine = Color3.fromRGB(3, 12, 10),
            DialogButton = Color3.fromRGB(8, 25, 20),
            DialogButtonBorder = Color3.fromRGB(0, 145, 115),
            DialogBorder = Color3.fromRGB(0, 95, 75),
            DialogInput = Color3.fromRGB(15, 40, 35),
            DialogInputLine = Color3.fromRGB(50, 220, 180),
            Text = Color3.fromRGB(220, 255, 248),
            SubText = Color3.fromRGB(170, 210, 200),
            Hover = Color3.fromRGB(0, 180, 140),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 55, 45)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 220, 180)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 55, 45))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(0, 145, 115),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 165, 130)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 55, 45))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 145, 115)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 220, 180)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 145, 115))
                })
            }
        }
    end,
    [75] = function()
        local aa, ab, ac, ad, ae = b(75)
        return {
            Name = "Amber Gold",
            Accent = Color3.fromRGB(255, 140, 0),
            AcrylicMain = Color3.fromRGB(40, 25, 10),
            AcrylicBorder = Color3.fromRGB(220, 120, 0),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 110, 0), Color3.fromRGB(35, 20, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 130, 0),
            Tab = Color3.fromRGB(200, 115, 0),
            Element = Color3.fromRGB(180, 100, 0),
            ElementBorder = Color3.fromRGB(130, 75, 0),
            InElementBorder = Color3.fromRGB(215, 125, 0),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 140, 0),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(200, 115, 0),
            DropdownFrame = Color3.fromRGB(165, 95, 0),
            DropdownHolder = Color3.fromRGB(35, 20, 8),
            DropdownBorder = Color3.fromRGB(120, 70, 0),
            DropdownOption = Color3.fromRGB(255, 140, 0),
            Keybind = Color3.fromRGB(180, 100, 0),
            Input = Color3.fromRGB(165, 95, 0),
            InputFocused = Color3.fromRGB(25, 15, 5),
            InputIndicator = Color3.fromRGB(255, 180, 60),
            Dialog = Color3.fromRGB(35, 20, 8),
            DialogHolder = Color3.fromRGB(25, 15, 5),
            DialogHolderLine = Color3.fromRGB(18, 10, 3),
            DialogButton = Color3.fromRGB(35, 20, 8),
            DialogButtonBorder = Color3.fromRGB(200, 115, 0),
            DialogBorder = Color3.fromRGB(130, 75, 0),
            DialogInput = Color3.fromRGB(55, 35, 12),
            DialogInputLine = Color3.fromRGB(255, 180, 60),
            Text = Color3.fromRGB(255, 245, 220),
            SubText = Color3.fromRGB(220, 200, 170),
            Hover = Color3.fromRGB(255, 140, 0),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 45, 15)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 180, 60)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 45, 15))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 115, 0),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 130, 0)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 45, 15))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 115, 0)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 180, 60)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 115, 0))
                })
            }
        }
    end,
    [76] = function()
        local aa, ab, ac, ad, ae = b(76)
        return {
            Name = "Rose Quartz",
            Accent = Color3.fromRGB(200, 180, 220),
            AcrylicMain = Color3.fromRGB(30, 28, 35),
            AcrylicBorder = Color3.fromRGB(170, 150, 190),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(160, 140, 180), Color3.fromRGB(25, 23, 30)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(180, 160, 200),
            Tab = Color3.fromRGB(165, 145, 185),
            Element = Color3.fromRGB(150, 130, 170),
            ElementBorder = Color3.fromRGB(110, 95, 125),
            InElementBorder = Color3.fromRGB(175, 155, 195),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(200, 180, 220),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(165, 145, 185),
            DropdownFrame = Color3.fromRGB(140, 120, 160),
            DropdownHolder = Color3.fromRGB(25, 23, 30),
            DropdownBorder = Color3.fromRGB(105, 90, 120),
            DropdownOption = Color3.fromRGB(200, 180, 220),
            Keybind = Color3.fromRGB(150, 130, 170),
            Input = Color3.fromRGB(140, 120, 160),
            InputFocused = Color3.fromRGB(18, 16, 22),
            InputIndicator = Color3.fromRGB(230, 210, 250),
            Dialog = Color3.fromRGB(25, 23, 30),
            DialogHolder = Color3.fromRGB(18, 16, 22),
            DialogHolderLine = Color3.fromRGB(12, 10, 15),
            DialogButton = Color3.fromRGB(25, 23, 30),
            DialogButtonBorder = Color3.fromRGB(165, 145, 185),
            DialogBorder = Color3.fromRGB(110, 95, 125),
            DialogInput = Color3.fromRGB(40, 38, 50),
            DialogInputLine = Color3.fromRGB(230, 210, 250),
            Text = Color3.fromRGB(240, 235, 250),
            SubText = Color3.fromRGB(200, 190, 220),
            Hover = Color3.fromRGB(200, 180, 220),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 50, 70)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 210, 250)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 50, 70))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(165, 145, 185),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 160, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 50, 70))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(165, 145, 185)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 210, 250)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(165, 145, 185))
                })
            }
        }
    end,
    [77] = function()
        local aa, ab, ac, ad, ae = b(77)
        return {
            Name = "Obsidian Black",
            Accent = Color3.fromRGB(80, 80, 90),
            AcrylicMain = Color3.fromRGB(8, 8, 10),
            AcrylicBorder = Color3.fromRGB(55, 55, 65),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 50, 60), Color3.fromRGB(5, 5, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 65, 75),
            Tab = Color3.fromRGB(55, 55, 65),
            Element = Color3.fromRGB(50, 50, 60),
            ElementBorder = Color3.fromRGB(35, 35, 45),
            InElementBorder = Color3.fromRGB(60, 60, 70),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 80, 90),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(55, 55, 65),
            DropdownFrame = Color3.fromRGB(45, 45, 55),
            DropdownHolder = Color3.fromRGB(5, 5, 8),
            DropdownBorder = Color3.fromRGB(30, 30, 40),
            DropdownOption = Color3.fromRGB(80, 80, 90),
            Keybind = Color3.fromRGB(50, 50, 60),
            Input = Color3.fromRGB(45, 45, 55),
            InputFocused = Color3.fromRGB(3, 3, 5),
            InputIndicator = Color3.fromRGB(120, 120, 135),
            Dialog = Color3.fromRGB(5, 5, 8),
            DialogHolder = Color3.fromRGB(3, 3, 5),
            DialogHolderLine = Color3.fromRGB(2, 2, 3),
            DialogButton = Color3.fromRGB(5, 5, 8),
            DialogButtonBorder = Color3.fromRGB(55, 55, 65),
            DialogBorder = Color3.fromRGB(35, 35, 45),
            DialogInput = Color3.fromRGB(20, 20, 28),
            DialogInputLine = Color3.fromRGB(120, 120, 135),
            Text = Color3.fromRGB(210, 210, 220),
            SubText = Color3.fromRGB(150, 150, 165),
            Hover = Color3.fromRGB(80, 80, 90),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 40)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 120, 135)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 40))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(55, 55, 65),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 65, 75)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 40))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 55, 65)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 120, 135)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 55, 65))
                })
            }
        }
    end,
    [78] = function()
        local aa, ab, ac, ad, ae = b(78)
        return {
            Name = "White Marble",
            Accent = Color3.fromRGB(180, 180, 190),
            AcrylicMain = Color3.fromRGB(45, 45, 50),
            AcrylicBorder = Color3.fromRGB(150, 150, 160),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(140, 140, 150), Color3.fromRGB(40, 40, 45)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 160, 170),
            Tab = Color3.fromRGB(150, 150, 160),
            Element = Color3.fromRGB(135, 135, 145),
            ElementBorder = Color3.fromRGB(100, 100, 110),
            InElementBorder = Color3.fromRGB(155, 155, 165),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(180, 180, 190),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(150, 150, 160),
            DropdownFrame = Color3.fromRGB(125, 125, 135),
            DropdownHolder = Color3.fromRGB(40, 40, 45),
            DropdownBorder = Color3.fromRGB(95, 95, 105),
            DropdownOption = Color3.fromRGB(180, 180, 190),
            Keybind = Color3.fromRGB(135, 135, 145),
            Input = Color3.fromRGB(125, 125, 135),
            InputFocused = Color3.fromRGB(30, 30, 35),
            InputIndicator = Color3.fromRGB(215, 215, 225),
            Dialog = Color3.fromRGB(40, 40, 45),
            DialogHolder = Color3.fromRGB(30, 30, 35),
            DialogHolderLine = Color3.fromRGB(20, 20, 25),
            DialogButton = Color3.fromRGB(40, 40, 45),
            DialogButtonBorder = Color3.fromRGB(150, 150, 160),
            DialogBorder = Color3.fromRGB(100, 100, 110),
            DialogInput = Color3.fromRGB(60, 60, 70),
            DialogInputLine = Color3.fromRGB(215, 215, 225),
            Text = Color3.fromRGB(240, 240, 245),
            SubText = Color3.fromRGB(200, 200, 210),
            Hover = Color3.fromRGB(180, 180, 190),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 80, 90)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 215, 225)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 90))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(150, 150, 160),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 160, 170)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 90))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 150, 160)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 215, 225)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 150, 160))
                })
            }
        }
    end,
    [79] = function()
        local aa, ab, ac, ad, ae = b(79)
        return {
            Name = "Slate Blue",
            Accent = Color3.fromRGB(120, 140, 160),
            AcrylicMain = Color3.fromRGB(25, 30, 35),
            AcrylicBorder = Color3.fromRGB(90, 110, 130),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 105, 125), Color3.fromRGB(20, 25, 30)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(100, 120, 140),
            Tab = Color3.fromRGB(95, 115, 135),
            Element = Color3.fromRGB(85, 105, 125),
            ElementBorder = Color3.fromRGB(60, 80, 95),
            InElementBorder = Color3.fromRGB(100, 120, 140),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(120, 140, 160),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(95, 115, 135),
            DropdownFrame = Color3.fromRGB(75, 95, 115),
            DropdownHolder = Color3.fromRGB(20, 25, 30),
            DropdownBorder = Color3.fromRGB(55, 75, 90),
            DropdownOption = Color3.fromRGB(120, 140, 160),
            Keybind = Color3.fromRGB(85, 105, 125),
            Input = Color3.fromRGB(75, 95, 115),
            InputFocused = Color3.fromRGB(12, 18, 22),
            InputIndicator = Color3.fromRGB(160, 180, 200),
            Dialog = Color3.fromRGB(20, 25, 30),
            DialogHolder = Color3.fromRGB(12, 18, 22),
            DialogHolderLine = Color3.fromRGB(8, 12, 15),
            DialogButton = Color3.fromRGB(20, 25, 30),
            DialogButtonBorder = Color3.fromRGB(95, 115, 135),
            DialogBorder = Color3.fromRGB(60, 80, 95),
            DialogInput = Color3.fromRGB(35, 45, 55),
            DialogInputLine = Color3.fromRGB(160, 180, 200),
            Text = Color3.fromRGB(230, 240, 250),
            SubText = Color3.fromRGB(180, 195, 210),
            Hover = Color3.fromRGB(120, 140, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 55, 65)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 180, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 55, 65))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(95, 115, 135),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 120, 140)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 55, 65))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 115, 135)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 180, 200)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 115, 135))
                })
            }
        }
    end,
    [80] = function()
        local aa, ab, ac, ad, ae = b(80)
        return {
            Name = "Warm Copper",
            Accent = Color3.fromRGB(184, 115, 51),
            AcrylicMain = Color3.fromRGB(35, 25, 18),
            AcrylicBorder = Color3.fromRGB(155, 95, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(145, 88, 38), Color3.fromRGB(30, 22, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(165, 105, 45),
            Tab = Color3.fromRGB(150, 95, 42),
            Element = Color3.fromRGB(135, 85, 38),
            ElementBorder = Color3.fromRGB(100, 60, 28),
            InElementBorder = Color3.fromRGB(160, 100, 45),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(184, 115, 51),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(150, 95, 42),
            DropdownFrame = Color3.fromRGB(125, 80, 35),
            DropdownHolder = Color3.fromRGB(30, 22, 15),
            DropdownBorder = Color3.fromRGB(95, 58, 25),
            DropdownOption = Color3.fromRGB(184, 115, 51),
            Keybind = Color3.fromRGB(135, 85, 38),
            Input = Color3.fromRGB(125, 80, 35),
            InputFocused = Color3.fromRGB(20, 15, 10),
            InputIndicator = Color3.fromRGB(220, 150, 85),
            Dialog = Color3.fromRGB(30, 22, 15),
            DialogHolder = Color3.fromRGB(20, 15, 10),
            DialogHolderLine = Color3.fromRGB(15, 10, 8),
            DialogButton = Color3.fromRGB(30, 22, 15),
            DialogButtonBorder = Color3.fromRGB(150, 95, 42),
            DialogBorder = Color3.fromRGB(100, 60, 28),
            DialogInput = Color3.fromRGB(50, 38, 25),
            DialogInputLine = Color3.fromRGB(220, 150, 85),
            Text = Color3.fromRGB(255, 245, 235),
            SubText = Color3.fromRGB(220, 200, 185),
            Hover = Color3.fromRGB(184, 115, 51),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = {
                Speed = 0.5,
                RotationSpeed = 25,
                ColorSequence = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 50, 30)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 150, 85)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 50, 30))
                })
            },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(150, 95, 42),
            ButtonGradient = {
                Background = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(165, 105, 45)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 50, 30))
                }),
                Stroke = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 95, 42)),
                    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 150, 85)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 95, 42))
                })
            }
        }
    end,
    [81] = function()
        local aa, ab, ac, ad, ae = b(81)
        return {
            Name = "Dark Bronze",
            Accent = Color3.fromRGB(205, 127, 50),
            AcrylicMain = Color3.fromRGB(40, 30, 20),
            AcrylicBorder = Color3.fromRGB(170, 100, 35),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(160, 95, 33), Color3.fromRGB(35, 25, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(180, 110, 40),
            Tab = Color3.fromRGB(165, 100, 38),
            Element = Color3.fromRGB(150, 90, 35),
            ElementBorder = Color3.fromRGB(110, 65, 25),
            InElementBorder = Color3.fromRGB(175, 105, 42),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(205, 127, 50),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(165, 100, 38),
            DropdownFrame = Color3.fromRGB(140, 85, 32),
            DropdownHolder = Color3.fromRGB(35, 25, 15),
            DropdownBorder = Color3.fromRGB(105, 62, 22),
            DropdownOption = Color3.fromRGB(205, 127, 50),
            Keybind = Color3.fromRGB(150, 90, 35),
            Input = Color3.fromRGB(140, 85, 32),
            InputFocused = Color3.fromRGB(22, 16, 10),
            InputIndicator = Color3.fromRGB(235, 160, 85),
            Dialog = Color3.fromRGB(35, 25, 15),
            DialogHolder = Color3.fromRGB(22, 16, 10),
            DialogHolderLine = Color3.fromRGB(16, 12, 8),
            DialogButton = Color3.fromRGB(35, 25, 15),
            DialogButtonBorder = Color3.fromRGB(165, 100, 38),
            DialogBorder = Color3.fromRGB(110, 65, 25),
            DialogInput = Color3.fromRGB(55, 40, 22),
            DialogInputLine = Color3.fromRGB(235, 160, 85),
            Text = Color3.fromRGB(255, 248, 240),
            SubText = Color3.fromRGB(220, 200, 180),
            Hover = Color3.fromRGB(205, 127, 50),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 55, 30)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 160, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(165, 100, 38),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 110, 40)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(165, 100, 38)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 160, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(165, 100, 38)) }) }
        }
    end,
    [82] = function()
        local aa, ab, ac, ad, ae = b(82)
        return {
            Name = "Bright Silver",
            Accent = Color3.fromRGB(192, 192, 192),
            AcrylicMain = Color3.fromRGB(45, 45, 50),
            AcrylicBorder = Color3.fromRGB(160, 160, 160),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(40, 40, 45)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(170, 170, 170),
            Tab = Color3.fromRGB(160, 160, 160),
            Element = Color3.fromRGB(145, 145, 145),
            ElementBorder = Color3.fromRGB(110, 110, 110),
            InElementBorder = Color3.fromRGB(165, 165, 165),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(192, 192, 192),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(160, 160, 160),
            DropdownFrame = Color3.fromRGB(135, 135, 135),
            DropdownHolder = Color3.fromRGB(40, 40, 45),
            DropdownBorder = Color3.fromRGB(105, 105, 105),
            DropdownOption = Color3.fromRGB(192, 192, 192),
            Keybind = Color3.fromRGB(145, 145, 145),
            Input = Color3.fromRGB(135, 135, 135),
            InputFocused = Color3.fromRGB(30, 30, 35),
            InputIndicator = Color3.fromRGB(220, 220, 220),
            Dialog = Color3.fromRGB(40, 40, 45),
            DialogHolder = Color3.fromRGB(30, 30, 35),
            DialogHolderLine = Color3.fromRGB(20, 20, 25),
            DialogButton = Color3.fromRGB(40, 40, 45),
            DialogButtonBorder = Color3.fromRGB(160, 160, 160),
            DialogBorder = Color3.fromRGB(110, 110, 110),
            DialogInput = Color3.fromRGB(60, 60, 70),
            DialogInputLine = Color3.fromRGB(220, 220, 220),
            Text = Color3.fromRGB(245, 245, 250),
            SubText = Color3.fromRGB(200, 200, 210),
            Hover = Color3.fromRGB(192, 192, 192),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 85, 95)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 220, 220)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 85, 95)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(160, 160, 160),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 170, 170)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 85, 95)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 160, 160)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 220, 220)), ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 160, 160)) }) }
        }
    end,
    [83] = function()
        local aa, ab, ac, ad, ae = b(83)
        return {
            Name = "Platinum Gray",
            Accent = Color3.fromRGB(229, 228, 226),
            AcrylicMain = Color3.fromRGB(55, 55, 60),
            AcrylicBorder = Color3.fromRGB(200, 198, 195),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(190, 188, 185), Color3.fromRGB(50, 50, 55)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(210, 208, 205),
            Tab = Color3.fromRGB(200, 198, 195),
            Element = Color3.fromRGB(180, 178, 175),
            ElementBorder = Color3.fromRGB(140, 138, 135),
            InElementBorder = Color3.fromRGB(205, 203, 200),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(229, 228, 226),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(200, 198, 195),
            DropdownFrame = Color3.fromRGB(170, 168, 165),
            DropdownHolder = Color3.fromRGB(50, 50, 55),
            DropdownBorder = Color3.fromRGB(135, 133, 130),
            DropdownOption = Color3.fromRGB(229, 228, 226),
            Keybind = Color3.fromRGB(180, 178, 175),
            Input = Color3.fromRGB(170, 168, 165),
            InputFocused = Color3.fromRGB(38, 38, 42),
            InputIndicator = Color3.fromRGB(245, 244, 242),
            Dialog = Color3.fromRGB(50, 50, 55),
            DialogHolder = Color3.fromRGB(38, 38, 42),
            DialogHolderLine = Color3.fromRGB(25, 25, 30),
            DialogButton = Color3.fromRGB(50, 50, 55),
            DialogButtonBorder = Color3.fromRGB(200, 198, 195),
            DialogBorder = Color3.fromRGB(140, 138, 135),
            DialogInput = Color3.fromRGB(75, 75, 80),
            DialogInputLine = Color3.fromRGB(245, 244, 242),
            Text = Color3.fromRGB(250, 250, 255),
            SubText = Color3.fromRGB(210, 210, 215),
            Hover = Color3.fromRGB(229, 228, 226),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 100, 105)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(245, 244, 242)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 100, 105)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 198, 195),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 208, 205)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 100, 105)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 198, 195)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(245, 244, 242)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 198, 195)) }) }
        }
    end,
    [84] = function()
        local aa, ab, ac, ad, ae = b(84)
        return {
            Name = "Titanium Gray",
            Accent = Color3.fromRGB(135, 140, 145),
            AcrylicMain = Color3.fromRGB(30, 32, 35),
            AcrylicBorder = Color3.fromRGB(105, 110, 115),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(100, 105, 110), Color3.fromRGB(25, 27, 30)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(115, 120, 125),
            Tab = Color3.fromRGB(110, 115, 120),
            Element = Color3.fromRGB(100, 105, 110),
            ElementBorder = Color3.fromRGB(70, 75, 80),
            InElementBorder = Color3.fromRGB(115, 120, 125),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(135, 140, 145),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(110, 115, 120),
            DropdownFrame = Color3.fromRGB(90, 95, 100),
            DropdownHolder = Color3.fromRGB(25, 27, 30),
            DropdownBorder = Color3.fromRGB(65, 70, 75),
            DropdownOption = Color3.fromRGB(135, 140, 145),
            Keybind = Color3.fromRGB(100, 105, 110),
            Input = Color3.fromRGB(90, 95, 100),
            InputFocused = Color3.fromRGB(15, 18, 20),
            InputIndicator = Color3.fromRGB(170, 175, 180),
            Dialog = Color3.fromRGB(25, 27, 30),
            DialogHolder = Color3.fromRGB(15, 18, 20),
            DialogHolderLine = Color3.fromRGB(10, 12, 15),
            DialogButton = Color3.fromRGB(25, 27, 30),
            DialogButtonBorder = Color3.fromRGB(110, 115, 120),
            DialogBorder = Color3.fromRGB(70, 75, 80),
            DialogInput = Color3.fromRGB(40, 45, 50),
            DialogInputLine = Color3.fromRGB(170, 175, 180),
            Text = Color3.fromRGB(235, 240, 245),
            SubText = Color3.fromRGB(185, 190, 200),
            Hover = Color3.fromRGB(135, 140, 145),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 55, 60)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 175, 180)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 55, 60)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(110, 115, 120),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 120, 125)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 55, 60)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 115, 120)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 175, 180)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 115, 120)) }) }
        }
    end,
    [85] = function()
        local aa, ab, ac, ad, ae = b(85)
        return {
            Name = "Cold Steel",
            Accent = Color3.fromRGB(100, 110, 120),
            AcrylicMain = Color3.fromRGB(25, 28, 30),
            AcrylicBorder = Color3.fromRGB(75, 85, 95),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(70, 80, 90), Color3.fromRGB(20, 23, 25)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(85, 95, 105),
            Tab = Color3.fromRGB(80, 90, 100),
            Element = Color3.fromRGB(72, 82, 92),
            ElementBorder = Color3.fromRGB(50, 60, 70),
            InElementBorder = Color3.fromRGB(85, 95, 105),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 110, 120),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(80, 90, 100),
            DropdownFrame = Color3.fromRGB(65, 75, 85),
            DropdownHolder = Color3.fromRGB(20, 23, 25),
            DropdownBorder = Color3.fromRGB(45, 55, 65),
            DropdownOption = Color3.fromRGB(100, 110, 120),
            Keybind = Color3.fromRGB(72, 82, 92),
            Input = Color3.fromRGB(65, 75, 85),
            InputFocused = Color3.fromRGB(12, 15, 18),
            InputIndicator = Color3.fromRGB(135, 145, 155),
            Dialog = Color3.fromRGB(20, 23, 25),
            DialogHolder = Color3.fromRGB(12, 15, 18),
            DialogHolderLine = Color3.fromRGB(8, 10, 12),
            DialogButton = Color3.fromRGB(20, 23, 25),
            DialogButtonBorder = Color3.fromRGB(80, 90, 100),
            DialogBorder = Color3.fromRGB(50, 60, 70),
            DialogInput = Color3.fromRGB(35, 40, 45),
            DialogInputLine = Color3.fromRGB(135, 145, 155),
            Text = Color3.fromRGB(230, 235, 240),
            SubText = Color3.fromRGB(180, 185, 195),
            Hover = Color3.fromRGB(100, 110, 120),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 45, 50)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 145, 155)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 45, 50)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(80, 90, 100),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 95, 105)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 45, 50)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 90, 100)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 145, 155)), ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 90, 100)) }) }
        }
    end,
    [86] = function()
        local aa, ab, ac, ad, ae = b(86)
        return {
            Name = "Dark Iron",
            Accent = Color3.fromRGB(80, 85, 90),
            AcrylicMain = Color3.fromRGB(20, 22, 25),
            AcrylicBorder = Color3.fromRGB(55, 60, 65),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 55, 60), Color3.fromRGB(15, 17, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 70, 75),
            Tab = Color3.fromRGB(60, 65, 70),
            Element = Color3.fromRGB(54, 59, 64),
            ElementBorder = Color3.fromRGB(38, 42, 46),
            InElementBorder = Color3.fromRGB(65, 70, 75),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 85, 90),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 65, 70),
            DropdownFrame = Color3.fromRGB(48, 52, 56),
            DropdownHolder = Color3.fromRGB(15, 17, 20),
            DropdownBorder = Color3.fromRGB(35, 38, 42),
            DropdownOption = Color3.fromRGB(80, 85, 90),
            Keybind = Color3.fromRGB(54, 59, 64),
            Input = Color3.fromRGB(48, 52, 56),
            InputFocused = Color3.fromRGB(10, 12, 14),
            InputIndicator = Color3.fromRGB(115, 120, 125),
            Dialog = Color3.fromRGB(15, 17, 20),
            DialogHolder = Color3.fromRGB(10, 12, 14),
            DialogHolderLine = Color3.fromRGB(6, 8, 10),
            DialogButton = Color3.fromRGB(15, 17, 20),
            DialogButtonBorder = Color3.fromRGB(60, 65, 70),
            DialogBorder = Color3.fromRGB(38, 42, 46),
            DialogInput = Color3.fromRGB(28, 32, 36),
            DialogInputLine = Color3.fromRGB(115, 120, 125),
            Text = Color3.fromRGB(225, 230, 235),
            SubText = Color3.fromRGB(175, 180, 185),
            Hover = Color3.fromRGB(80, 85, 90),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 38, 42)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 120, 125)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 38, 42)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 65, 70),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 70, 75)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 38, 42)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 65, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 120, 125)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 65, 70)) }) }
        }
    end,
    [87] = function()
        local aa, ab, ac, ad, ae = b(87)
        return {
            Name = "Cool Nickel",
            Accent = Color3.fromRGB(140, 145, 150),
            AcrylicMain = Color3.fromRGB(35, 37, 40),
            AcrylicBorder = Color3.fromRGB(110, 115, 120),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(105, 110, 115), Color3.fromRGB(30, 32, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(120, 125, 130),
            Tab = Color3.fromRGB(115, 120, 125),
            Element = Color3.fromRGB(105, 110, 115),
            ElementBorder = Color3.fromRGB(75, 80, 85),
            InElementBorder = Color3.fromRGB(120, 125, 130),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(140, 145, 150),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(115, 120, 125),
            DropdownFrame = Color3.fromRGB(95, 100, 105),
            DropdownHolder = Color3.fromRGB(30, 32, 35),
            DropdownBorder = Color3.fromRGB(70, 75, 80),
            DropdownOption = Color3.fromRGB(140, 145, 150),
            Keybind = Color3.fromRGB(105, 110, 115),
            Input = Color3.fromRGB(95, 100, 105),
            InputFocused = Color3.fromRGB(18, 20, 22),
            InputIndicator = Color3.fromRGB(175, 180, 185),
            Dialog = Color3.fromRGB(30, 32, 35),
            DialogHolder = Color3.fromRGB(18, 20, 22),
            DialogHolderLine = Color3.fromRGB(12, 14, 16),
            DialogButton = Color3.fromRGB(30, 32, 35),
            DialogButtonBorder = Color3.fromRGB(115, 120, 125),
            DialogBorder = Color3.fromRGB(75, 80, 85),
            DialogInput = Color3.fromRGB(45, 50, 55),
            DialogInputLine = Color3.fromRGB(175, 180, 185),
            Text = Color3.fromRGB(240, 245, 250),
            SubText = Color3.fromRGB(190, 195, 200),
            Hover = Color3.fromRGB(140, 145, 150),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 60, 65)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 180, 185)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 60, 65)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(115, 120, 125),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 125, 130)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 60, 65)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 120, 125)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 180, 185)), ColorSequenceKeypoint.new(1, Color3.fromRGB(115, 120, 125)) }) }
        }
    end,
    [88] = function()
        local aa, ab, ac, ad, ae = b(88)
        return {
            Name = "Zinc Gray",
            Accent = Color3.fromRGB(160, 165, 170),
            AcrylicMain = Color3.fromRGB(40, 42, 45),
            AcrylicBorder = Color3.fromRGB(130, 135, 140),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(125, 130, 135), Color3.fromRGB(35, 37, 40)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(140, 145, 150),
            Tab = Color3.fromRGB(135, 140, 145),
            Element = Color3.fromRGB(122, 127, 132),
            ElementBorder = Color3.fromRGB(88, 92, 96),
            InElementBorder = Color3.fromRGB(140, 145, 150),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(160, 165, 170),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(135, 140, 145),
            DropdownFrame = Color3.fromRGB(112, 117, 122),
            DropdownHolder = Color3.fromRGB(35, 37, 40),
            DropdownBorder = Color3.fromRGB(85, 90, 95),
            DropdownOption = Color3.fromRGB(160, 165, 170),
            Keybind = Color3.fromRGB(122, 127, 132),
            Input = Color3.fromRGB(112, 117, 122),
            InputFocused = Color3.fromRGB(22, 24, 26),
            InputIndicator = Color3.fromRGB(195, 200, 205),
            Dialog = Color3.fromRGB(35, 37, 40),
            DialogHolder = Color3.fromRGB(22, 24, 26),
            DialogHolderLine = Color3.fromRGB(15, 17, 19),
            DialogButton = Color3.fromRGB(35, 37, 40),
            DialogButtonBorder = Color3.fromRGB(135, 140, 145),
            DialogBorder = Color3.fromRGB(88, 92, 96),
            DialogInput = Color3.fromRGB(55, 58, 62),
            DialogInputLine = Color3.fromRGB(195, 200, 205),
            Text = Color3.fromRGB(245, 250, 255),
            SubText = Color3.fromRGB(200, 205, 210),
            Hover = Color3.fromRGB(160, 165, 170),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 70, 75)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 200, 205)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 70, 75)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(135, 140, 145),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 145, 150)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 70, 75)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 140, 145)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 200, 205)), ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 140, 145)) }) }
        }
    end,
    [89] = function()
        local aa, ab, ac, ad, ae = b(89)
        return {
            Name = "Tin Gray",
            Accent = Color3.fromRGB(150, 155, 160),
            AcrylicMain = Color3.fromRGB(38, 40, 42),
            AcrylicBorder = Color3.fromRGB(120, 125, 130),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(115, 120, 125), Color3.fromRGB(33, 35, 37)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(130, 135, 140),
            Tab = Color3.fromRGB(125, 130, 135),
            Element = Color3.fromRGB(113, 118, 123),
            ElementBorder = Color3.fromRGB(82, 86, 90),
            InElementBorder = Color3.fromRGB(130, 135, 140),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(150, 155, 160),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(125, 130, 135),
            DropdownFrame = Color3.fromRGB(105, 110, 115),
            DropdownHolder = Color3.fromRGB(33, 35, 37),
            DropdownBorder = Color3.fromRGB(78, 82, 86),
            DropdownOption = Color3.fromRGB(150, 155, 160),
            Keybind = Color3.fromRGB(113, 118, 123),
            Input = Color3.fromRGB(105, 110, 115),
            InputFocused = Color3.fromRGB(20, 22, 24),
            InputIndicator = Color3.fromRGB(185, 190, 195),
            Dialog = Color3.fromRGB(33, 35, 37),
            DialogHolder = Color3.fromRGB(20, 22, 24),
            DialogHolderLine = Color3.fromRGB(13, 15, 17),
            DialogButton = Color3.fromRGB(33, 35, 37),
            DialogButtonBorder = Color3.fromRGB(125, 130, 135),
            DialogBorder = Color3.fromRGB(82, 86, 90),
            DialogInput = Color3.fromRGB(50, 55, 58),
            DialogInputLine = Color3.fromRGB(185, 190, 195),
            Text = Color3.fromRGB(240, 245, 250),
            SubText = Color3.fromRGB(190, 195, 200),
            Hover = Color3.fromRGB(150, 155, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 65, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(185, 190, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 65, 70)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(125, 130, 135),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 135, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 65, 70)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 130, 135)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(185, 190, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 130, 135)) }) }
        }
    end,
    [90] = function()
        local aa, ab, ac, ad, ae = b(90)
        return {
            Name = "Lead Gray",
            Accent = Color3.fromRGB(85, 90, 100),
            AcrylicMain = Color3.fromRGB(22, 24, 28),
            AcrylicBorder = Color3.fromRGB(60, 65, 75),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(55, 60, 70), Color3.fromRGB(18, 20, 23)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(70, 75, 85),
            Tab = Color3.fromRGB(65, 70, 80),
            Element = Color3.fromRGB(58, 63, 73),
            ElementBorder = Color3.fromRGB(40, 45, 52),
            InElementBorder = Color3.fromRGB(70, 75, 85),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(85, 90, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(65, 70, 80),
            DropdownFrame = Color3.fromRGB(52, 56, 66),
            DropdownHolder = Color3.fromRGB(18, 20, 23),
            DropdownBorder = Color3.fromRGB(38, 42, 48),
            DropdownOption = Color3.fromRGB(85, 90, 100),
            Keybind = Color3.fromRGB(58, 63, 73),
            Input = Color3.fromRGB(52, 56, 66),
            InputFocused = Color3.fromRGB(11, 13, 15),
            InputIndicator = Color3.fromRGB(120, 125, 135),
            Dialog = Color3.fromRGB(18, 20, 23),
            DialogHolder = Color3.fromRGB(11, 13, 15),
            DialogHolderLine = Color3.fromRGB(7, 9, 10),
            DialogButton = Color3.fromRGB(18, 20, 23),
            DialogButtonBorder = Color3.fromRGB(65, 70, 80),
            DialogBorder = Color3.fromRGB(40, 45, 52),
            DialogInput = Color3.fromRGB(30, 34, 40),
            DialogInputLine = Color3.fromRGB(120, 125, 135),
            Text = Color3.fromRGB(225, 230, 240),
            SubText = Color3.fromRGB(175, 180, 190),
            Hover = Color3.fromRGB(85, 90, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 42, 48)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 125, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 42, 48)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(65, 70, 80),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 75, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 42, 48)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 70, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 125, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 70, 80)) }) }
        }
    end,
    [91] = function()
        local aa, ab, ac, ad, ae = b(91)
        return {
            Name = "Mirror Chrome",
            Accent = Color3.fromRGB(210, 215, 220),
            AcrylicMain = Color3.fromRGB(50, 52, 55),
            AcrylicBorder = Color3.fromRGB(180, 185, 190),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(170, 175, 180), Color3.fromRGB(45, 47, 50)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(190, 195, 200),
            Tab = Color3.fromRGB(185, 190, 195),
            Element = Color3.fromRGB(168, 173, 178),
            ElementBorder = Color3.fromRGB(128, 132, 136),
            InElementBorder = Color3.fromRGB(190, 195, 200),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(210, 215, 220),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(185, 190, 195),
            DropdownFrame = Color3.fromRGB(158, 163, 168),
            DropdownHolder = Color3.fromRGB(45, 47, 50),
            DropdownBorder = Color3.fromRGB(125, 130, 135),
            DropdownOption = Color3.fromRGB(210, 215, 220),
            Keybind = Color3.fromRGB(168, 173, 178),
            Input = Color3.fromRGB(158, 163, 168),
            InputFocused = Color3.fromRGB(28, 30, 33),
            InputIndicator = Color3.fromRGB(235, 240, 245),
            Dialog = Color3.fromRGB(45, 47, 50),
            DialogHolder = Color3.fromRGB(28, 30, 33),
            DialogHolderLine = Color3.fromRGB(18, 20, 22),
            DialogButton = Color3.fromRGB(45, 47, 50),
            DialogButtonBorder = Color3.fromRGB(185, 190, 195),
            DialogBorder = Color3.fromRGB(128, 132, 136),
            DialogInput = Color3.fromRGB(70, 72, 78),
            DialogInputLine = Color3.fromRGB(235, 240, 245),
            Text = Color3.fromRGB(250, 252, 255),
            SubText = Color3.fromRGB(210, 212, 218),
            Hover = Color3.fromRGB(210, 215, 220),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 88, 92)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 240, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 88, 92)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(185, 190, 195),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(190, 195, 200)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 88, 92)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 190, 195)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 240, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 190, 195)) }) }
        }
    end,
    [92] = function()
        local aa, ab, ac, ad, ae = b(92)
        return {
            Name = "Antique Brass",
            Accent = Color3.fromRGB(181, 166, 66),
            AcrylicMain = Color3.fromRGB(35, 32, 20),
            AcrylicBorder = Color3.fromRGB(150, 135, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(140, 125, 45), Color3.fromRGB(30, 27, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 145, 55),
            Tab = Color3.fromRGB(150, 135, 50),
            Element = Color3.fromRGB(135, 120, 45),
            ElementBorder = Color3.fromRGB(100, 88, 32),
            InElementBorder = Color3.fromRGB(155, 140, 52),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(181, 166, 66),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(150, 135, 50),
            DropdownFrame = Color3.fromRGB(125, 112, 42),
            DropdownHolder = Color3.fromRGB(30, 27, 15),
            DropdownBorder = Color3.fromRGB(95, 84, 30),
            DropdownOption = Color3.fromRGB(181, 166, 66),
            Keybind = Color3.fromRGB(135, 120, 45),
            Input = Color3.fromRGB(125, 112, 42),
            InputFocused = Color3.fromRGB(20, 18, 10),
            InputIndicator = Color3.fromRGB(215, 200, 100),
            Dialog = Color3.fromRGB(30, 27, 15),
            DialogHolder = Color3.fromRGB(20, 18, 10),
            DialogHolderLine = Color3.fromRGB(14, 12, 7),
            DialogButton = Color3.fromRGB(30, 27, 15),
            DialogButtonBorder = Color3.fromRGB(150, 135, 50),
            DialogBorder = Color3.fromRGB(100, 88, 32),
            DialogInput = Color3.fromRGB(50, 45, 25),
            DialogInputLine = Color3.fromRGB(215, 200, 100),
            Text = Color3.fromRGB(255, 250, 225),
            SubText = Color3.fromRGB(220, 210, 185),
            Hover = Color3.fromRGB(181, 166, 66),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 62, 30)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 200, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 62, 30)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(150, 135, 50),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 145, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 62, 30)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 135, 50)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 200, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 135, 50)) }) }
        }
    end,
    [93] = function()
        local aa, ab, ac, ad, ae = b(93)
        return {
            Name = "Dark Graphite",
            Accent = Color3.fromRGB(90, 95, 100),
            AcrylicMain = Color3.fromRGB(18, 20, 22),
            AcrylicBorder = Color3.fromRGB(65, 70, 75),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 65, 70), Color3.fromRGB(14, 16, 18)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(75, 80, 85),
            Tab = Color3.fromRGB(70, 75, 80),
            Element = Color3.fromRGB(63, 68, 73),
            ElementBorder = Color3.fromRGB(44, 48, 52),
            InElementBorder = Color3.fromRGB(75, 80, 85),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(90, 95, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(70, 75, 80),
            DropdownFrame = Color3.fromRGB(56, 60, 65),
            DropdownHolder = Color3.fromRGB(14, 16, 18),
            DropdownBorder = Color3.fromRGB(40, 44, 48),
            DropdownOption = Color3.fromRGB(90, 95, 100),
            Keybind = Color3.fromRGB(63, 68, 73),
            Input = Color3.fromRGB(56, 60, 65),
            InputFocused = Color3.fromRGB(9, 10, 12),
            InputIndicator = Color3.fromRGB(125, 130, 135),
            Dialog = Color3.fromRGB(14, 16, 18),
            DialogHolder = Color3.fromRGB(9, 10, 12),
            DialogHolderLine = Color3.fromRGB(6, 7, 8),
            DialogButton = Color3.fromRGB(14, 16, 18),
            DialogButtonBorder = Color3.fromRGB(70, 75, 80),
            DialogBorder = Color3.fromRGB(44, 48, 52),
            DialogInput = Color3.fromRGB(28, 32, 36),
            DialogInputLine = Color3.fromRGB(125, 130, 135),
            Text = Color3.fromRGB(230, 235, 240),
            SubText = Color3.fromRGB(180, 185, 190),
            Hover = Color3.fromRGB(90, 95, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 42, 46)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(125, 130, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 42, 46)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(70, 75, 80),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 80, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 42, 46)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 75, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(125, 130, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 75, 80)) }) }
        }
    end,
    [94] = function()
        local aa, ab, ac, ad, ae = b(94)
        return {
            Name = "Carbon Black",
            Accent = Color3.fromRGB(70, 75, 80),
            AcrylicMain = Color3.fromRGB(12, 14, 16),
            AcrylicBorder = Color3.fromRGB(45, 50, 55),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 45, 50), Color3.fromRGB(8, 10, 12)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(55, 60, 65),
            Tab = Color3.fromRGB(50, 55, 60),
            Element = Color3.fromRGB(45, 50, 55),
            ElementBorder = Color3.fromRGB(30, 34, 38),
            InElementBorder = Color3.fromRGB(55, 60, 65),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(70, 75, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(50, 55, 60),
            DropdownFrame = Color3.fromRGB(40, 44, 48),
            DropdownHolder = Color3.fromRGB(8, 10, 12),
            DropdownBorder = Color3.fromRGB(28, 32, 36),
            DropdownOption = Color3.fromRGB(70, 75, 80),
            Keybind = Color3.fromRGB(45, 50, 55),
            Input = Color3.fromRGB(40, 44, 48),
            InputFocused = Color3.fromRGB(5, 6, 8),
            InputIndicator = Color3.fromRGB(105, 110, 115),
            Dialog = Color3.fromRGB(8, 10, 12),
            DialogHolder = Color3.fromRGB(5, 6, 8),
            DialogHolderLine = Color3.fromRGB(3, 4, 5),
            DialogButton = Color3.fromRGB(8, 10, 12),
            DialogButtonBorder = Color3.fromRGB(50, 55, 60),
            DialogBorder = Color3.fromRGB(30, 34, 38),
            DialogInput = Color3.fromRGB(20, 24, 28),
            DialogInputLine = Color3.fromRGB(105, 110, 115),
            Text = Color3.fromRGB(220, 225, 230),
            SubText = Color3.fromRGB(170, 175, 180),
            Hover = Color3.fromRGB(70, 75, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 34, 38)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(105, 110, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 34, 38)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(50, 55, 60),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 60, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 34, 38)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 55, 60)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(105, 110, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 55, 60)) }) }
        }
    end,
    [95] = function()
        local aa, ab, ac, ad, ae = b(95)
        return {
            Name = "Phantom Blue",
            Accent = Color3.fromRGB(80, 85, 110),
            AcrylicMain = Color3.fromRGB(15, 18, 25),
            AcrylicBorder = Color3.fromRGB(55, 60, 80),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 55, 75), Color3.fromRGB(10, 13, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 70, 90),
            Tab = Color3.fromRGB(60, 65, 85),
            Element = Color3.fromRGB(54, 59, 77),
            ElementBorder = Color3.fromRGB(36, 40, 55),
            InElementBorder = Color3.fromRGB(65, 70, 90),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 85, 110),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 65, 85),
            DropdownFrame = Color3.fromRGB(48, 52, 70),
            DropdownHolder = Color3.fromRGB(10, 13, 20),
            DropdownBorder = Color3.fromRGB(35, 38, 52),
            DropdownOption = Color3.fromRGB(80, 85, 110),
            Keybind = Color3.fromRGB(54, 59, 77),
            Input = Color3.fromRGB(48, 52, 70),
            InputFocused = Color3.fromRGB(6, 8, 14),
            InputIndicator = Color3.fromRGB(115, 120, 145),
            Dialog = Color3.fromRGB(10, 13, 20),
            DialogHolder = Color3.fromRGB(6, 8, 14),
            DialogHolderLine = Color3.fromRGB(4, 5, 10),
            DialogButton = Color3.fromRGB(10, 13, 20),
            DialogButtonBorder = Color3.fromRGB(60, 65, 85),
            DialogBorder = Color3.fromRGB(36, 40, 55),
            DialogInput = Color3.fromRGB(25, 30, 42),
            DialogInputLine = Color3.fromRGB(115, 120, 145),
            Text = Color3.fromRGB(225, 230, 245),
            SubText = Color3.fromRGB(175, 180, 200),
            Hover = Color3.fromRGB(80, 85, 110),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(32, 36, 50)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 120, 145)), ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 36, 50)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 65, 85),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 70, 90)), ColorSequenceKeypoint.new(1, Color3.fromRGB(32, 36, 50)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 65, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 120, 145)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 65, 85)) }) }
        }
    end,
    [96] = function()
        local aa, ab, ac, ad, ae = b(96)
        return {
            Name = "Spectre Indigo",
            Accent = Color3.fromRGB(100, 95, 130),
            AcrylicMain = Color3.fromRGB(18, 16, 28),
            AcrylicBorder = Color3.fromRGB(70, 65, 100),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 60, 95), Color3.fromRGB(12, 10, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 75, 110),
            Tab = Color3.fromRGB(75, 70, 105),
            Element = Color3.fromRGB(68, 63, 95),
            ElementBorder = Color3.fromRGB(46, 42, 65),
            InElementBorder = Color3.fromRGB(80, 75, 110),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 95, 130),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(75, 70, 105),
            DropdownFrame = Color3.fromRGB(60, 55, 85),
            DropdownHolder = Color3.fromRGB(12, 10, 22),
            DropdownBorder = Color3.fromRGB(44, 40, 62),
            DropdownOption = Color3.fromRGB(100, 95, 130),
            Keybind = Color3.fromRGB(68, 63, 95),
            Input = Color3.fromRGB(60, 55, 85),
            InputFocused = Color3.fromRGB(8, 6, 16),
            InputIndicator = Color3.fromRGB(135, 128, 165),
            Dialog = Color3.fromRGB(12, 10, 22),
            DialogHolder = Color3.fromRGB(8, 6, 16),
            DialogHolderLine = Color3.fromRGB(5, 4, 11),
            DialogButton = Color3.fromRGB(12, 10, 22),
            DialogButtonBorder = Color3.fromRGB(75, 70, 105),
            DialogBorder = Color3.fromRGB(46, 42, 65),
            DialogInput = Color3.fromRGB(28, 25, 45),
            DialogInputLine = Color3.fromRGB(135, 128, 165),
            Text = Color3.fromRGB(235, 232, 250),
            SubText = Color3.fromRGB(185, 180, 210),
            Hover = Color3.fromRGB(100, 95, 130),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 32, 55)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 128, 165)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 32, 55)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(75, 70, 105),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 75, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 32, 55)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 70, 105)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 128, 165)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 70, 105)) }) }
        }
    end,
    [97] = function()
        local aa, ab, ac, ad, ae = b(97)
        return {
            Name = "Ghost Gray",
            Accent = Color3.fromRGB(110, 115, 125),
            AcrylicMain = Color3.fromRGB(22, 24, 28),
            AcrylicBorder = Color3.fromRGB(80, 85, 95),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(75, 80, 90), Color3.fromRGB(17, 19, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(90, 95, 105),
            Tab = Color3.fromRGB(85, 90, 100),
            Element = Color3.fromRGB(77, 82, 92),
            ElementBorder = Color3.fromRGB(52, 56, 64),
            InElementBorder = Color3.fromRGB(90, 95, 105),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(110, 115, 125),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(85, 90, 100),
            DropdownFrame = Color3.fromRGB(68, 72, 82),
            DropdownHolder = Color3.fromRGB(17, 19, 22),
            DropdownBorder = Color3.fromRGB(50, 54, 62),
            DropdownOption = Color3.fromRGB(110, 115, 125),
            Keybind = Color3.fromRGB(77, 82, 92),
            Input = Color3.fromRGB(68, 72, 82),
            InputFocused = Color3.fromRGB(10, 12, 15),
            InputIndicator = Color3.fromRGB(145, 150, 160),
            Dialog = Color3.fromRGB(17, 19, 22),
            DialogHolder = Color3.fromRGB(10, 12, 15),
            DialogHolderLine = Color3.fromRGB(7, 8, 10),
            DialogButton = Color3.fromRGB(17, 19, 22),
            DialogButtonBorder = Color3.fromRGB(85, 90, 100),
            DialogBorder = Color3.fromRGB(52, 56, 64),
            DialogInput = Color3.fromRGB(35, 38, 45),
            DialogInputLine = Color3.fromRGB(145, 150, 160),
            Text = Color3.fromRGB(235, 240, 248),
            SubText = Color3.fromRGB(185, 190, 200),
            Hover = Color3.fromRGB(110, 115, 125),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 46, 54)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(145, 150, 160)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 46, 54)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(85, 90, 100),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 95, 105)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 46, 54)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 90, 100)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(145, 150, 160)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 90, 100)) }) }
        }
    end,
    [98] = function()
        local aa, ab, ac, ad, ae = b(98)
        return {
            Name = "Deep Shadow",
            Accent = Color3.fromRGB(60, 65, 75),
            AcrylicMain = Color3.fromRGB(10, 12, 15),
            AcrylicBorder = Color3.fromRGB(35, 40, 50),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(30, 35, 45), Color3.fromRGB(6, 8, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(45, 50, 60),
            Tab = Color3.fromRGB(40, 45, 55),
            Element = Color3.fromRGB(36, 40, 50),
            ElementBorder = Color3.fromRGB(24, 28, 35),
            InElementBorder = Color3.fromRGB(45, 50, 60),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(60, 65, 75),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(40, 45, 55),
            DropdownFrame = Color3.fromRGB(32, 36, 45),
            DropdownHolder = Color3.fromRGB(6, 8, 10),
            DropdownBorder = Color3.fromRGB(22, 26, 32),
            DropdownOption = Color3.fromRGB(60, 65, 75),
            Keybind = Color3.fromRGB(36, 40, 50),
            Input = Color3.fromRGB(32, 36, 45),
            InputFocused = Color3.fromRGB(4, 5, 7),
            InputIndicator = Color3.fromRGB(95, 100, 110),
            Dialog = Color3.fromRGB(6, 8, 10),
            DialogHolder = Color3.fromRGB(4, 5, 7),
            DialogHolderLine = Color3.fromRGB(2, 3, 4),
            DialogButton = Color3.fromRGB(6, 8, 10),
            DialogButtonBorder = Color3.fromRGB(40, 45, 55),
            DialogBorder = Color3.fromRGB(24, 28, 35),
            DialogInput = Color3.fromRGB(18, 22, 28),
            DialogInputLine = Color3.fromRGB(95, 100, 110),
            Text = Color3.fromRGB(215, 220, 230),
            SubText = Color3.fromRGB(165, 170, 180),
            Hover = Color3.fromRGB(60, 65, 75),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 32, 38)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(95, 100, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(28, 32, 38)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(40, 45, 55),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 50, 60)), ColorSequenceKeypoint.new(1, Color3.fromRGB(28, 32, 38)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 45, 55)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(95, 100, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 45, 55)) }) }
        }
    end,
    [99] = function()
        local aa, ab, ac, ad, ae = b(99)
        return {
            Name = "Dark Purple",
            Accent = Color3.fromRGB(80, 45, 120),
            AcrylicMain = Color3.fromRGB(12, 8, 22),
            AcrylicBorder = Color3.fromRGB(60, 32, 95),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(55, 28, 88), Color3.fromRGB(8, 5, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(68, 38, 105),
            Tab = Color3.fromRGB(62, 33, 98),
            Element = Color3.fromRGB(56, 28, 88),
            ElementBorder = Color3.fromRGB(35, 17, 56),
            InElementBorder = Color3.fromRGB(68, 38, 105),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 45, 120),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(62, 33, 98),
            DropdownFrame = Color3.fromRGB(48, 24, 78),
            DropdownHolder = Color3.fromRGB(8, 5, 15),
            DropdownBorder = Color3.fromRGB(32, 16, 52),
            DropdownOption = Color3.fromRGB(80, 45, 120),
            Keybind = Color3.fromRGB(56, 28, 88),
            Input = Color3.fromRGB(48, 24, 78),
            InputFocused = Color3.fromRGB(5, 3, 10),
            InputIndicator = Color3.fromRGB(120, 75, 175),
            Dialog = Color3.fromRGB(8, 5, 15),
            DialogHolder = Color3.fromRGB(5, 3, 10),
            DialogHolderLine = Color3.fromRGB(3, 2, 7),
            DialogButton = Color3.fromRGB(8, 5, 15),
            DialogButtonBorder = Color3.fromRGB(62, 33, 98),
            DialogBorder = Color3.fromRGB(35, 17, 56),
            DialogInput = Color3.fromRGB(20, 12, 38),
            DialogInputLine = Color3.fromRGB(120, 75, 175),
            Text = Color3.fromRGB(225, 215, 245),
            SubText = Color3.fromRGB(175, 162, 205),
            Hover = Color3.fromRGB(80, 45, 120),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 16, 55)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 75, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 16, 55)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(62, 33, 98),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(68, 38, 105)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 16, 55)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(62, 33, 98)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 75, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(62, 33, 98)) }) }
        }
    end,
    [100] = function()
        local aa, ab, ac, ad, ae = b(100)
        return {
            Name = "Void Black",
            Accent = Color3.fromRGB(25, 30, 45),
            AcrylicMain = Color3.fromRGB(4, 6, 10),
            AcrylicBorder = Color3.fromRGB(15, 20, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(12, 16, 25), Color3.fromRGB(3, 4, 6)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(18, 22, 32),
            Tab = Color3.fromRGB(16, 20, 30),
            Element = Color3.fromRGB(14, 18, 27),
            ElementBorder = Color3.fromRGB(9, 12, 18),
            InElementBorder = Color3.fromRGB(18, 22, 32),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(25, 30, 45),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(16, 20, 30),
            DropdownFrame = Color3.fromRGB(12, 16, 24),
            DropdownHolder = Color3.fromRGB(3, 4, 6),
            DropdownBorder = Color3.fromRGB(8, 11, 16),
            DropdownOption = Color3.fromRGB(25, 30, 45),
            Keybind = Color3.fromRGB(14, 18, 27),
            Input = Color3.fromRGB(12, 16, 24),
            InputFocused = Color3.fromRGB(2, 3, 4),
            InputIndicator = Color3.fromRGB(60, 68, 85),
            Dialog = Color3.fromRGB(3, 4, 6),
            DialogHolder = Color3.fromRGB(2, 3, 4),
            DialogHolderLine = Color3.fromRGB(1, 2, 3),
            DialogButton = Color3.fromRGB(3, 4, 6),
            DialogButtonBorder = Color3.fromRGB(16, 20, 30),
            DialogBorder = Color3.fromRGB(9, 12, 18),
            DialogInput = Color3.fromRGB(10, 13, 20),
            DialogInputLine = Color3.fromRGB(60, 68, 85),
            Text = Color3.fromRGB(205, 210, 225),
            SubText = Color3.fromRGB(155, 160, 175),
            Hover = Color3.fromRGB(25, 30, 45),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 22, 32)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 68, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 22, 32)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(16, 20, 30),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 22, 32)), ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 22, 32)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 20, 30)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(60, 68, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 20, 30)) }) }
        }
    end,
    [101] = function()
        local aa, ab, ac, ad, ae = b(101)
        return {
            Name = "Eclipse Dark",
            Accent = Color3.fromRGB(50, 45, 60),
            AcrylicMain = Color3.fromRGB(8, 7, 12),
            AcrylicBorder = Color3.fromRGB(30, 25, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(25, 20, 35), Color3.fromRGB(5, 4, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(38, 33, 48),
            Tab = Color3.fromRGB(35, 30, 45),
            Element = Color3.fromRGB(32, 27, 40),
            ElementBorder = Color3.fromRGB(20, 17, 26),
            InElementBorder = Color3.fromRGB(38, 33, 48),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(50, 45, 60),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(35, 30, 45),
            DropdownFrame = Color3.fromRGB(28, 24, 38),
            DropdownHolder = Color3.fromRGB(5, 4, 8),
            DropdownBorder = Color3.fromRGB(18, 15, 24),
            DropdownOption = Color3.fromRGB(50, 45, 60),
            Keybind = Color3.fromRGB(32, 27, 40),
            Input = Color3.fromRGB(28, 24, 38),
            InputFocused = Color3.fromRGB(3, 2, 5),
            InputIndicator = Color3.fromRGB(85, 78, 100),
            Dialog = Color3.fromRGB(5, 4, 8),
            DialogHolder = Color3.fromRGB(3, 2, 5),
            DialogHolderLine = Color3.fromRGB(2, 1, 3),
            DialogButton = Color3.fromRGB(5, 4, 8),
            DialogButtonBorder = Color3.fromRGB(35, 30, 45),
            DialogBorder = Color3.fromRGB(20, 17, 26),
            DialogInput = Color3.fromRGB(15, 13, 22),
            DialogInputLine = Color3.fromRGB(85, 78, 100),
            Text = Color3.fromRGB(215, 210, 230),
            SubText = Color3.fromRGB(165, 160, 180),
            Hover = Color3.fromRGB(50, 45, 60),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 22, 35)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 78, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 22, 35)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(35, 30, 45),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 33, 48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 22, 35)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 30, 45)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 78, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 30, 45)) }) }
        }
    end,
    [102] = function()
        local aa, ab, ac, ad, ae = b(102)
        return {
            Name = "Twilight Purple",
            Accent = Color3.fromRGB(120, 80, 150),
            AcrylicMain = Color3.fromRGB(18, 14, 25),
            AcrylicBorder = Color3.fromRGB(90, 55, 115),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 50, 110), Color3.fromRGB(14, 10, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(100, 65, 125),
            Tab = Color3.fromRGB(95, 60, 120),
            Element = Color3.fromRGB(86, 54, 108),
            ElementBorder = Color3.fromRGB(58, 36, 72),
            InElementBorder = Color3.fromRGB(100, 65, 125),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(120, 80, 150),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(95, 60, 120),
            DropdownFrame = Color3.fromRGB(76, 48, 96),
            DropdownHolder = Color3.fromRGB(14, 10, 20),
            DropdownBorder = Color3.fromRGB(55, 34, 68),
            DropdownOption = Color3.fromRGB(120, 80, 150),
            Keybind = Color3.fromRGB(86, 54, 108),
            Input = Color3.fromRGB(76, 48, 96),
            InputFocused = Color3.fromRGB(8, 5, 14),
            InputIndicator = Color3.fromRGB(155, 115, 185),
            Dialog = Color3.fromRGB(14, 10, 20),
            DialogHolder = Color3.fromRGB(8, 5, 14),
            DialogHolderLine = Color3.fromRGB(5, 3, 9),
            DialogButton = Color3.fromRGB(14, 10, 20),
            DialogButtonBorder = Color3.fromRGB(95, 60, 120),
            DialogBorder = Color3.fromRGB(58, 36, 72),
            DialogInput = Color3.fromRGB(30, 20, 45),
            DialogInputLine = Color3.fromRGB(155, 115, 185),
            Text = Color3.fromRGB(235, 225, 245),
            SubText = Color3.fromRGB(195, 180, 210),
            Hover = Color3.fromRGB(120, 80, 150),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 25, 55)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(155, 115, 185)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 55)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(95, 60, 120),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 65, 125)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 25, 55)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 60, 120)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(155, 115, 185)), ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 60, 120)) }) }
        }
    end,
    [103] = function()
        local aa, ab, ac, ad, ae = b(103)
        return {
            Name = "Golden Dawn",
            Accent = Color3.fromRGB(255, 180, 100),
            AcrylicMain = Color3.fromRGB(40, 30, 20),
            AcrylicBorder = Color3.fromRGB(220, 150, 70),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 135, 60), Color3.fromRGB(35, 25, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 160, 80),
            Tab = Color3.fromRGB(200, 140, 70),
            Element = Color3.fromRGB(180, 125, 63),
            ElementBorder = Color3.fromRGB(130, 90, 45),
            InElementBorder = Color3.fromRGB(215, 150, 75),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 180, 100),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(200, 140, 70),
            DropdownFrame = Color3.fromRGB(165, 115, 58),
            DropdownHolder = Color3.fromRGB(35, 25, 15),
            DropdownBorder = Color3.fromRGB(120, 85, 42),
            DropdownOption = Color3.fromRGB(255, 180, 100),
            Keybind = Color3.fromRGB(180, 125, 63),
            Input = Color3.fromRGB(165, 115, 58),
            InputFocused = Color3.fromRGB(22, 16, 10),
            InputIndicator = Color3.fromRGB(255, 210, 140),
            Dialog = Color3.fromRGB(35, 25, 15),
            DialogHolder = Color3.fromRGB(22, 16, 10),
            DialogHolderLine = Color3.fromRGB(16, 12, 7),
            DialogButton = Color3.fromRGB(35, 25, 15),
            DialogButtonBorder = Color3.fromRGB(200, 140, 70),
            DialogBorder = Color3.fromRGB(130, 90, 45),
            DialogInput = Color3.fromRGB(55, 40, 25),
            DialogInputLine = Color3.fromRGB(255, 210, 140),
            Text = Color3.fromRGB(255, 248, 235),
            SubText = Color3.fromRGB(220, 200, 180),
            Hover = Color3.fromRGB(255, 180, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 55, 30)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 210, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 140, 70),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 160, 80)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 30)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 140, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 210, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 140, 70)) }) }
        }
    end,
    [104] = function()
        local aa, ab, ac, ad, ae = b(104)
        return {
            Name = "Dusk Violet",
            Accent = Color3.fromRGB(100, 70, 130),
            AcrylicMain = Color3.fromRGB(20, 16, 28),
            AcrylicBorder = Color3.fromRGB(70, 45, 100),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 40, 95), Color3.fromRGB(15, 11, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 55, 110),
            Tab = Color3.fromRGB(75, 50, 105),
            Element = Color3.fromRGB(68, 45, 95),
            ElementBorder = Color3.fromRGB(46, 30, 64),
            InElementBorder = Color3.fromRGB(80, 55, 110),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 70, 130),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(75, 50, 105),
            DropdownFrame = Color3.fromRGB(60, 40, 85),
            DropdownHolder = Color3.fromRGB(15, 11, 22),
            DropdownBorder = Color3.fromRGB(44, 28, 60),
            DropdownOption = Color3.fromRGB(100, 70, 130),
            Keybind = Color3.fromRGB(68, 45, 95),
            Input = Color3.fromRGB(60, 40, 85),
            InputFocused = Color3.fromRGB(9, 6, 15),
            InputIndicator = Color3.fromRGB(135, 105, 165),
            Dialog = Color3.fromRGB(15, 11, 22),
            DialogHolder = Color3.fromRGB(9, 6, 15),
            DialogHolderLine = Color3.fromRGB(6, 4, 10),
            DialogButton = Color3.fromRGB(15, 11, 22),
            DialogButtonBorder = Color3.fromRGB(75, 50, 105),
            DialogBorder = Color3.fromRGB(46, 30, 64),
            DialogInput = Color3.fromRGB(28, 20, 45),
            DialogInputLine = Color3.fromRGB(135, 105, 165),
            Text = Color3.fromRGB(230, 220, 245),
            SubText = Color3.fromRGB(185, 170, 210),
            Hover = Color3.fromRGB(100, 70, 130),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 25, 55)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 105, 165)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 25, 55)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(75, 50, 105),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 55, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 25, 55)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 50, 105)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 105, 165)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 50, 105)) }) }
        }
    end,
    [105] = function()
        local aa, ab, ac, ad, ae = b(105)
        return {
            Name = "Aurora Teal",
            Accent = Color3.fromRGB(80, 220, 180),
            AcrylicMain = Color3.fromRGB(12, 30, 28),
            AcrylicBorder = Color3.fromRGB(50, 180, 145),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 190, 155), Color3.fromRGB(8, 25, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 200, 160),
            Tab = Color3.fromRGB(60, 185, 150),
            Element = Color3.fromRGB(54, 168, 135),
            ElementBorder = Color3.fromRGB(38, 118, 95),
            InElementBorder = Color3.fromRGB(65, 200, 160),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 220, 180),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 185, 150),
            DropdownFrame = Color3.fromRGB(48, 150, 120),
            DropdownHolder = Color3.fromRGB(8, 25, 22),
            DropdownBorder = Color3.fromRGB(35, 110, 88),
            DropdownOption = Color3.fromRGB(80, 220, 180),
            Keybind = Color3.fromRGB(54, 168, 135),
            Input = Color3.fromRGB(48, 150, 120),
            InputFocused = Color3.fromRGB(5, 16, 14),
            InputIndicator = Color3.fromRGB(120, 250, 210),
            Dialog = Color3.fromRGB(8, 25, 22),
            DialogHolder = Color3.fromRGB(5, 16, 14),
            DialogHolderLine = Color3.fromRGB(3, 12, 10),
            DialogButton = Color3.fromRGB(8, 25, 22),
            DialogButtonBorder = Color3.fromRGB(60, 185, 150),
            DialogBorder = Color3.fromRGB(38, 118, 95),
            DialogInput = Color3.fromRGB(22, 60, 50),
            DialogInputLine = Color3.fromRGB(120, 250, 210),
            Text = Color3.fromRGB(230, 255, 248),
            SubText = Color3.fromRGB(180, 220, 205),
            Hover = Color3.fromRGB(80, 220, 180),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 80, 65)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 250, 210)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 80, 65)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 185, 150),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 200, 160)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 80, 65)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 185, 150)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 250, 210)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 185, 150)) }) }
        }
    end,
    [106] = function()
        local aa, ab, ac, ad, ae = b(106)
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
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 18, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(125, 45, 190),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 50, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 18, 85)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(125, 45, 190)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 100, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(125, 45, 190)) }) }
        }
    end,
    [107] = function()
        local aa, ab, ac, ad, ae = b(107)
        return {
            Name = "Nebula Pink",
            Accent = Color3.fromRGB(200, 100, 160),
            AcrylicMain = Color3.fromRGB(20, 12, 25),
            AcrylicBorder = Color3.fromRGB(160, 70, 125),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(150, 60, 115), Color3.fromRGB(15, 8, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(170, 80, 135),
            Tab = Color3.fromRGB(165, 75, 130),
            Element = Color3.fromRGB(148, 68, 117),
            ElementBorder = Color3.fromRGB(100, 45, 78),
            InElementBorder = Color3.fromRGB(170, 80, 135),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(200, 100, 160),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(165, 75, 130),
            DropdownFrame = Color3.fromRGB(132, 60, 104),
            DropdownHolder = Color3.fromRGB(15, 8, 20),
            DropdownBorder = Color3.fromRGB(96, 43, 75),
            DropdownOption = Color3.fromRGB(200, 100, 160),
            Keybind = Color3.fromRGB(148, 68, 117),
            Input = Color3.fromRGB(132, 60, 104),
            InputFocused = Color3.fromRGB(8, 4, 12),
            InputIndicator = Color3.fromRGB(230, 140, 190),
            Dialog = Color3.fromRGB(15, 8, 20),
            DialogHolder = Color3.fromRGB(8, 4, 12),
            DialogHolderLine = Color3.fromRGB(5, 2, 8),
            DialogButton = Color3.fromRGB(15, 8, 20),
            DialogButtonBorder = Color3.fromRGB(165, 75, 130),
            DialogBorder = Color3.fromRGB(100, 45, 78),
            DialogInput = Color3.fromRGB(32, 18, 45),
            DialogInputLine = Color3.fromRGB(230, 140, 190),
            Text = Color3.fromRGB(250, 235, 245),
            SubText = Color3.fromRGB(210, 190, 210),
            Hover = Color3.fromRGB(200, 100, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 28, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 140, 190)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 28, 70)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(165, 75, 130),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 80, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 28, 70)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(165, 75, 130)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 140, 190)), ColorSequenceKeypoint.new(1, Color3.fromRGB(165, 75, 130)) }) }
        }
    end,
    [108] = function()
        local aa, ab, ac, ad, ae = b(108)
        return {
            Name = "Comet Gold",
            Accent = Color3.fromRGB(220, 200, 100),
            AcrylicMain = Color3.fromRGB(30, 28, 15),
            AcrylicBorder = Color3.fromRGB(190, 170, 70),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(180, 160, 60), Color3.fromRGB(25, 23, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(200, 180, 80),
            Tab = Color3.fromRGB(190, 170, 70),
            Element = Color3.fromRGB(171, 153, 63),
            ElementBorder = Color3.fromRGB(124, 110, 45),
            InElementBorder = Color3.fromRGB(200, 180, 80),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(220, 200, 100),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(190, 170, 70),
            DropdownFrame = Color3.fromRGB(152, 136, 56),
            DropdownHolder = Color3.fromRGB(25, 23, 10),
            DropdownBorder = Color3.fromRGB(120, 106, 42),
            DropdownOption = Color3.fromRGB(220, 200, 100),
            Keybind = Color3.fromRGB(171, 153, 63),
            Input = Color3.fromRGB(152, 136, 56),
            InputFocused = Color3.fromRGB(16, 15, 6),
            InputIndicator = Color3.fromRGB(240, 225, 140),
            Dialog = Color3.fromRGB(25, 23, 10),
            DialogHolder = Color3.fromRGB(16, 15, 6),
            DialogHolderLine = Color3.fromRGB(11, 10, 4),
            DialogButton = Color3.fromRGB(25, 23, 10),
            DialogButtonBorder = Color3.fromRGB(190, 170, 70),
            DialogBorder = Color3.fromRGB(124, 110, 45),
            DialogInput = Color3.fromRGB(48, 44, 20),
            DialogInputLine = Color3.fromRGB(240, 225, 140),
            Text = Color3.fromRGB(255, 252, 230),
            SubText = Color3.fromRGB(225, 215, 185),
            Hover = Color3.fromRGB(220, 200, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 65, 30)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 225, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 65, 30)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(190, 170, 70),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 180, 80)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 65, 30)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(190, 170, 70)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 225, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 170, 70)) }) }
        }
    end,
    [109] = function()
        local aa, ab, ac, ad, ae = b(109)
        return {
            Name = "Meteor Blaze",
            Accent = Color3.fromRGB(255, 120, 40),
            AcrylicMain = Color3.fromRGB(35, 20, 12),
            AcrylicBorder = Color3.fromRGB(220, 95, 25),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 85, 20), Color3.fromRGB(30, 16, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 105, 30),
            Tab = Color3.fromRGB(200, 90, 25),
            Element = Color3.fromRGB(180, 80, 22),
            ElementBorder = Color3.fromRGB(130, 58, 16),
            InElementBorder = Color3.fromRGB(215, 95, 28),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 120, 40),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(200, 90, 25),
            DropdownFrame = Color3.fromRGB(165, 75, 20),
            DropdownHolder = Color3.fromRGB(30, 16, 8),
            DropdownBorder = Color3.fromRGB(120, 55, 15),
            DropdownOption = Color3.fromRGB(255, 120, 40),
            Keybind = Color3.fromRGB(180, 80, 22),
            Input = Color3.fromRGB(165, 75, 20),
            InputFocused = Color3.fromRGB(20, 10, 5),
            InputIndicator = Color3.fromRGB(255, 165, 90),
            Dialog = Color3.fromRGB(30, 16, 8),
            DialogHolder = Color3.fromRGB(20, 10, 5),
            DialogHolderLine = Color3.fromRGB(14, 7, 3),
            DialogButton = Color3.fromRGB(30, 16, 8),
            DialogButtonBorder = Color3.fromRGB(200, 90, 25),
            DialogBorder = Color3.fromRGB(130, 58, 16),
            DialogInput = Color3.fromRGB(50, 28, 14),
            DialogInputLine = Color3.fromRGB(255, 165, 90),
            Text = Color3.fromRGB(255, 245, 235),
            SubText = Color3.fromRGB(220, 200, 185),
            Hover = Color3.fromRGB(255, 120, 40),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 38, 18)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 165, 90)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 38, 18)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(200, 90, 25),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 105, 30)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 38, 18)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 90, 25)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 165, 90)), ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 90, 25)) }) }
        }
    end,
    [110] = function()
        local aa, ab, ac, ad, ae = b(110)
        return {
            Name = "Silver Stardust",
            Accent = Color3.fromRGB(210, 210, 230),
            AcrylicMain = Color3.fromRGB(35, 35, 45),
            AcrylicBorder = Color3.fromRGB(180, 180, 200),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(170, 170, 190), Color3.fromRGB(30, 30, 40)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(190, 190, 210),
            Tab = Color3.fromRGB(185, 185, 205),
            Element = Color3.fromRGB(168, 168, 185),
            ElementBorder = Color3.fromRGB(128, 128, 140),
            InElementBorder = Color3.fromRGB(190, 190, 210),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(210, 210, 230),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(185, 185, 205),
            DropdownFrame = Color3.fromRGB(158, 158, 175),
            DropdownHolder = Color3.fromRGB(30, 30, 40),
            DropdownBorder = Color3.fromRGB(125, 125, 138),
            DropdownOption = Color3.fromRGB(210, 210, 230),
            Keybind = Color3.fromRGB(168, 168, 185),
            Input = Color3.fromRGB(158, 158, 175),
            InputFocused = Color3.fromRGB(20, 20, 28),
            InputIndicator = Color3.fromRGB(235, 235, 250),
            Dialog = Color3.fromRGB(30, 30, 40),
            DialogHolder = Color3.fromRGB(20, 20, 28),
            DialogHolderLine = Color3.fromRGB(13, 13, 18),
            DialogButton = Color3.fromRGB(30, 30, 40),
            DialogButtonBorder = Color3.fromRGB(185, 185, 205),
            DialogBorder = Color3.fromRGB(128, 128, 140),
            DialogInput = Color3.fromRGB(55, 55, 70),
            DialogInputLine = Color3.fromRGB(235, 235, 250),
            Text = Color3.fromRGB(250, 250, 255),
            SubText = Color3.fromRGB(210, 210, 220),
            Hover = Color3.fromRGB(210, 210, 230),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 80, 95)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 235, 250)), ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 95)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(185, 185, 205),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(190, 190, 210)), ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 80, 95)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 185, 205)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 235, 250)), ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 185, 205)) }) }
        }
    end,
    [111] = function()
        local aa, ab, ac, ad, ae = b(111)
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
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 25, 65)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 90, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 25, 65)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(55, 38, 115),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 42, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 25, 65)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 38, 115)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 90, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 38, 115)) }) }
        }
    end,
    [112] = function()
        local aa, ab, ac, ad, ae = b(112)
        return {
            Name = "Astral Purple",
            Accent = Color3.fromRGB(130, 110, 200),
            AcrylicMain = Color3.fromRGB(18, 15, 30),
            AcrylicBorder = Color3.fromRGB(95, 75, 165),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(88, 68, 155), Color3.fromRGB(12, 10, 24)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(105, 85, 175),
            Tab = Color3.fromRGB(100, 80, 170),
            Element = Color3.fromRGB(90, 72, 153),
            ElementBorder = Color3.fromRGB(60, 48, 102),
            InElementBorder = Color3.fromRGB(105, 85, 175),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(130, 110, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(100, 80, 170),
            DropdownFrame = Color3.fromRGB(80, 64, 136),
            DropdownHolder = Color3.fromRGB(12, 10, 24),
            DropdownBorder = Color3.fromRGB(58, 46, 98),
            DropdownOption = Color3.fromRGB(130, 110, 200),
            Keybind = Color3.fromRGB(90, 72, 153),
            Input = Color3.fromRGB(80, 64, 136),
            InputFocused = Color3.fromRGB(7, 5, 15),
            InputIndicator = Color3.fromRGB(165, 145, 235),
            Dialog = Color3.fromRGB(12, 10, 24),
            DialogHolder = Color3.fromRGB(7, 5, 15),
            DialogHolderLine = Color3.fromRGB(4, 3, 10),
            DialogButton = Color3.fromRGB(12, 10, 24),
            DialogButtonBorder = Color3.fromRGB(100, 80, 170),
            DialogBorder = Color3.fromRGB(60, 48, 102),
            DialogInput = Color3.fromRGB(28, 22, 55),
            DialogInputLine = Color3.fromRGB(165, 145, 235),
            Text = Color3.fromRGB(240, 235, 255),
            SubText = Color3.fromRGB(195, 185, 220),
            Hover = Color3.fromRGB(130, 110, 200),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 34, 72)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(165, 145, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 34, 72)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(100, 80, 170),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(105, 85, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 34, 72)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 80, 170)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(165, 145, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 80, 170)) }) }
        }
    end,
    [113] = function()
        local aa, ab, ac, ad, ae = b(113)
        return {
            Name = "Celestial Blue",
            Accent = Color3.fromRGB(170, 150, 220),
            AcrylicMain = Color3.fromRGB(25, 22, 38),
            AcrylicBorder = Color3.fromRGB(135, 115, 185),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(125, 105, 175), Color3.fromRGB(18, 16, 30)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(145, 125, 195),
            Tab = Color3.fromRGB(140, 120, 190),
            Element = Color3.fromRGB(126, 108, 171),
            ElementBorder = Color3.fromRGB(84, 72, 114),
            InElementBorder = Color3.fromRGB(145, 125, 195),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(170, 150, 220),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(140, 120, 190),
            DropdownFrame = Color3.fromRGB(112, 96, 152),
            DropdownHolder = Color3.fromRGB(18, 16, 30),
            DropdownBorder = Color3.fromRGB(82, 70, 110),
            DropdownOption = Color3.fromRGB(170, 150, 220),
            Keybind = Color3.fromRGB(126, 108, 171),
            Input = Color3.fromRGB(112, 96, 152),
            InputFocused = Color3.fromRGB(10, 8, 18),
            InputIndicator = Color3.fromRGB(200, 180, 245),
            Dialog = Color3.fromRGB(18, 16, 30),
            DialogHolder = Color3.fromRGB(10, 8, 18),
            DialogHolderLine = Color3.fromRGB(7, 5, 12),
            DialogButton = Color3.fromRGB(18, 16, 30),
            DialogButtonBorder = Color3.fromRGB(140, 120, 190),
            DialogBorder = Color3.fromRGB(84, 72, 114),
            DialogInput = Color3.fromRGB(38, 32, 65),
            DialogInputLine = Color3.fromRGB(200, 180, 245),
            Text = Color3.fromRGB(245, 240, 255),
            SubText = Color3.fromRGB(205, 195, 225),
            Hover = Color3.fromRGB(170, 150, 220),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 46, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 180, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 46, 85)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(140, 120, 190),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(145, 125, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 46, 85)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 120, 190)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 180, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 120, 190)) }) }
        }
    end,
    [114] = function()
        local aa, ab, ac, ad, ae = b(114)
        return {
            Name = "Ethereal Violet",
            Accent = Color3.fromRGB(200, 180, 240),
            AcrylicMain = Color3.fromRGB(30, 28, 40),
            AcrylicBorder = Color3.fromRGB(165, 145, 205),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(155, 135, 195), Color3.fromRGB(22, 20, 32)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(175, 155, 215),
            Tab = Color3.fromRGB(170, 150, 210),
            Element = Color3.fromRGB(153, 135, 189),
            ElementBorder = Color3.fromRGB(102, 90, 126),
            InElementBorder = Color3.fromRGB(175, 155, 215),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(200, 180, 240),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(170, 150, 210),
            DropdownFrame = Color3.fromRGB(136, 120, 168),
            DropdownHolder = Color3.fromRGB(22, 20, 32),
            DropdownBorder = Color3.fromRGB(100, 88, 122),
            DropdownOption = Color3.fromRGB(200, 180, 240),
            Keybind = Color3.fromRGB(153, 135, 189),
            Input = Color3.fromRGB(136, 120, 168),
            InputFocused = Color3.fromRGB(12, 10, 20),
            InputIndicator = Color3.fromRGB(225, 210, 255),
            Dialog = Color3.fromRGB(22, 20, 32),
            DialogHolder = Color3.fromRGB(12, 10, 20),
            DialogHolderLine = Color3.fromRGB(8, 7, 14),
            DialogButton = Color3.fromRGB(22, 20, 32),
            DialogButtonBorder = Color3.fromRGB(170, 150, 210),
            DialogBorder = Color3.fromRGB(102, 90, 126),
            DialogInput = Color3.fromRGB(46, 42, 70),
            DialogInputLine = Color3.fromRGB(225, 210, 255),
            Text = Color3.fromRGB(248, 245, 255),
            SubText = Color3.fromRGB(210, 200, 230),
            Hover = Color3.fromRGB(200, 180, 240),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(68, 60, 95)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(225, 210, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(68, 60, 95)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(170, 150, 210),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(175, 155, 215)), ColorSequenceKeypoint.new(1, Color3.fromRGB(68, 60, 95)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 150, 210)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(225, 210, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 150, 210)) }) }
        }
    end,
    [115] = function()
        local aa, ab, ac, ad, ae = b(115)
        return {
            Name = "Mystic Purple",
            Accent = Color3.fromRGB(140, 100, 180),
            AcrylicMain = Color3.fromRGB(20, 16, 30),
            AcrylicBorder = Color3.fromRGB(105, 70, 145),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(98, 64, 135), Color3.fromRGB(14, 11, 24)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(115, 80, 155),
            Tab = Color3.fromRGB(110, 75, 150),
            Element = Color3.fromRGB(99, 68, 135),
            ElementBorder = Color3.fromRGB(66, 45, 90),
            InElementBorder = Color3.fromRGB(115, 80, 155),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(140, 100, 180),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(110, 75, 150),
            DropdownFrame = Color3.fromRGB(88, 60, 120),
            DropdownHolder = Color3.fromRGB(14, 11, 24),
            DropdownBorder = Color3.fromRGB(64, 43, 86),
            DropdownOption = Color3.fromRGB(140, 100, 180),
            Keybind = Color3.fromRGB(99, 68, 135),
            Input = Color3.fromRGB(88, 60, 120),
            InputFocused = Color3.fromRGB(8, 6, 15),
            InputIndicator = Color3.fromRGB(175, 135, 215),
            Dialog = Color3.fromRGB(14, 11, 24),
            DialogHolder = Color3.fromRGB(8, 6, 15),
            DialogHolderLine = Color3.fromRGB(5, 4, 10),
            DialogButton = Color3.fromRGB(14, 11, 24),
            DialogButtonBorder = Color3.fromRGB(110, 75, 150),
            DialogBorder = Color3.fromRGB(66, 45, 90),
            DialogInput = Color3.fromRGB(32, 24, 55),
            DialogInputLine = Color3.fromRGB(175, 135, 215),
            Text = Color3.fromRGB(235, 225, 250),
            SubText = Color3.fromRGB(195, 180, 215),
            Hover = Color3.fromRGB(140, 100, 180),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 35, 78)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 135, 215)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 35, 78)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(110, 75, 150),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 80, 155)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 35, 78)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(110, 75, 150)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 135, 215)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110, 75, 150)) }) }
        }
    end,
    [116] = function()
        local aa, ab, ac, ad, ae = b(116)
        return {
            Name = "Arcane Blue",
            Accent = Color3.fromRGB(80, 120, 200),
            AcrylicMain = Color3.fromRGB(12, 18, 28),
            AcrylicBorder = Color3.fromRGB(50, 85, 160),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(45, 78, 150), Color3.fromRGB(8, 13, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(60, 95, 170),
            Tab = Color3.fromRGB(55, 90, 165),
            Element = Color3.fromRGB(50, 81, 148),
            ElementBorder = Color3.fromRGB(34, 54, 98),
            InElementBorder = Color3.fromRGB(60, 95, 170),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 120, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(55, 90, 165),
            DropdownFrame = Color3.fromRGB(44, 72, 132),
            DropdownHolder = Color3.fromRGB(8, 13, 22),
            DropdownBorder = Color3.fromRGB(32, 52, 94),
            DropdownOption = Color3.fromRGB(80, 120, 200),
            Keybind = Color3.fromRGB(50, 81, 148),
            Input = Color3.fromRGB(44, 72, 132),
            InputFocused = Color3.fromRGB(5, 8, 15),
            InputIndicator = Color3.fromRGB(115, 155, 235),
            Dialog = Color3.fromRGB(8, 13, 22),
            DialogHolder = Color3.fromRGB(5, 8, 15),
            DialogHolderLine = Color3.fromRGB(3, 5, 10),
            DialogButton = Color3.fromRGB(8, 13, 22),
            DialogButtonBorder = Color3.fromRGB(55, 90, 165),
            DialogBorder = Color3.fromRGB(34, 54, 98),
            DialogInput = Color3.fromRGB(22, 36, 65),
            DialogInputLine = Color3.fromRGB(115, 155, 235),
            Text = Color3.fromRGB(230, 240, 255),
            SubText = Color3.fromRGB(185, 200, 225),
            Hover = Color3.fromRGB(80, 120, 200),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 55, 95)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 155, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 55, 95)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(55, 90, 165),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 95, 170)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 55, 95)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 90, 165)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 155, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 90, 165)) }) }
        }
    end,
    [117] = function()
        local aa, ab, ac, ad, ae = b(117)
        return {
            Name = "Runic Ember",
            Accent = Color3.fromRGB(180, 100, 80),
            AcrylicMain = Color3.fromRGB(30, 18, 15),
            AcrylicBorder = Color3.fromRGB(150, 75, 55),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(140, 68, 50), Color3.fromRGB(24, 13, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 85, 65),
            Tab = Color3.fromRGB(155, 80, 60),
            Element = Color3.fromRGB(140, 72, 54),
            ElementBorder = Color3.fromRGB(95, 48, 36),
            InElementBorder = Color3.fromRGB(160, 85, 65),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(180, 100, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(155, 80, 60),
            DropdownFrame = Color3.fromRGB(125, 64, 48),
            DropdownHolder = Color3.fromRGB(24, 13, 10),
            DropdownBorder = Color3.fromRGB(92, 46, 34),
            DropdownOption = Color3.fromRGB(180, 100, 80),
            Keybind = Color3.fromRGB(140, 72, 54),
            Input = Color3.fromRGB(125, 64, 48),
            InputFocused = Color3.fromRGB(15, 8, 6),
            InputIndicator = Color3.fromRGB(215, 135, 115),
            Dialog = Color3.fromRGB(24, 13, 10),
            DialogHolder = Color3.fromRGB(15, 8, 6),
            DialogHolderLine = Color3.fromRGB(10, 5, 4),
            DialogButton = Color3.fromRGB(24, 13, 10),
            DialogButtonBorder = Color3.fromRGB(155, 80, 60),
            DialogBorder = Color3.fromRGB(95, 48, 36),
            DialogInput = Color3.fromRGB(45, 25, 20),
            DialogInputLine = Color3.fromRGB(215, 135, 115),
            Text = Color3.fromRGB(255, 245, 240),
            SubText = Color3.fromRGB(220, 200, 195),
            Hover = Color3.fromRGB(180, 100, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 38, 28)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 135, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 38, 28)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(155, 80, 60),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 85, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 38, 28)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(155, 80, 60)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 135, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 80, 60)) }) }
        }
    end,
    [118] = function()
        local aa, ab, ac, ad, ae = b(118)
        return {
            Name = "Enchanted Violet",
            Accent = Color3.fromRGB(160, 120, 200),
            AcrylicMain = Color3.fromRGB(22, 18, 32),
            AcrylicBorder = Color3.fromRGB(125, 90, 165),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(115, 82, 155), Color3.fromRGB(16, 12, 26)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(135, 100, 175),
            Tab = Color3.fromRGB(130, 95, 170),
            Element = Color3.fromRGB(117, 86, 153),
            ElementBorder = Color3.fromRGB(78, 57, 102),
            InElementBorder = Color3.fromRGB(135, 100, 175),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(160, 120, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(130, 95, 170),
            DropdownFrame = Color3.fromRGB(104, 76, 136),
            DropdownHolder = Color3.fromRGB(16, 12, 26),
            DropdownBorder = Color3.fromRGB(76, 55, 98),
            DropdownOption = Color3.fromRGB(160, 120, 200),
            Keybind = Color3.fromRGB(117, 86, 153),
            Input = Color3.fromRGB(104, 76, 136),
            InputFocused = Color3.fromRGB(9, 6, 16),
            InputIndicator = Color3.fromRGB(195, 155, 235),
            Dialog = Color3.fromRGB(16, 12, 26),
            DialogHolder = Color3.fromRGB(9, 6, 16),
            DialogHolderLine = Color3.fromRGB(6, 4, 11),
            DialogButton = Color3.fromRGB(16, 12, 26),
            DialogButtonBorder = Color3.fromRGB(130, 95, 170),
            DialogBorder = Color3.fromRGB(78, 57, 102),
            DialogInput = Color3.fromRGB(36, 28, 60),
            DialogInputLine = Color3.fromRGB(195, 155, 235),
            Text = Color3.fromRGB(240, 235, 255),
            SubText = Color3.fromRGB(200, 190, 225),
            Hover = Color3.fromRGB(160, 120, 200),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 38, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 155, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 38, 80)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(130, 95, 170),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 100, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 38, 80)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(130, 95, 170)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 155, 235)), ColorSequenceKeypoint.new(1, Color3.fromRGB(130, 95, 170)) }) }
        }
    end,
    [119] = function()
        local aa, ab, ac, ad, ae = b(119)
        return {
            Name = "Magical Pink",
            Accent = Color3.fromRGB(220, 140, 200),
            AcrylicMain = Color3.fromRGB(28, 20, 30),
            AcrylicBorder = Color3.fromRGB(185, 110, 165),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(175, 100, 155), Color3.fromRGB(22, 15, 24)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(195, 120, 175),
            Tab = Color3.fromRGB(190, 115, 170),
            Element = Color3.fromRGB(171, 104, 153),
            ElementBorder = Color3.fromRGB(114, 69, 102),
            InElementBorder = Color3.fromRGB(195, 120, 175),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(220, 140, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(190, 115, 170),
            DropdownFrame = Color3.fromRGB(152, 92, 136),
            DropdownHolder = Color3.fromRGB(22, 15, 24),
            DropdownBorder = Color3.fromRGB(110, 66, 98),
            DropdownOption = Color3.fromRGB(220, 140, 200),
            Keybind = Color3.fromRGB(171, 104, 153),
            Input = Color3.fromRGB(152, 92, 136),
            InputFocused = Color3.fromRGB(12, 8, 15),
            InputIndicator = Color3.fromRGB(240, 180, 220),
            Dialog = Color3.fromRGB(22, 15, 24),
            DialogHolder = Color3.fromRGB(12, 8, 15),
            DialogHolderLine = Color3.fromRGB(8, 5, 10),
            DialogButton = Color3.fromRGB(22, 15, 24),
            DialogButtonBorder = Color3.fromRGB(190, 115, 170),
            DialogBorder = Color3.fromRGB(114, 69, 102),
            DialogInput = Color3.fromRGB(45, 30, 55),
            DialogInputLine = Color3.fromRGB(240, 180, 220),
            Text = Color3.fromRGB(255, 245, 250),
            SubText = Color3.fromRGB(220, 200, 220),
            Hover = Color3.fromRGB(220, 140, 200),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 45, 75)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 180, 220)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 45, 75)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(190, 115, 170),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(195, 120, 175)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 45, 75)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(190, 115, 170)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 180, 220)), ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 115, 170)) }) }
        }
    end,
    [120] = function()
        local aa, ab, ac, ad, ae = b(120)
        return {
            Name = "Dark Sorcery",
            Accent = Color3.fromRGB(100, 80, 160),
            AcrylicMain = Color3.fromRGB(16, 14, 26),
            AcrylicBorder = Color3.fromRGB(70, 50, 130),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 45, 120), Color3.fromRGB(10, 8, 20)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 60, 140),
            Tab = Color3.fromRGB(75, 55, 135),
            Element = Color3.fromRGB(68, 50, 122),
            ElementBorder = Color3.fromRGB(45, 33, 82),
            InElementBorder = Color3.fromRGB(80, 60, 140),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 80, 160),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(75, 55, 135),
            DropdownFrame = Color3.fromRGB(60, 44, 108),
            DropdownHolder = Color3.fromRGB(10, 8, 20),
            DropdownBorder = Color3.fromRGB(44, 32, 78),
            DropdownOption = Color3.fromRGB(100, 80, 160),
            Keybind = Color3.fromRGB(68, 50, 122),
            Input = Color3.fromRGB(60, 44, 108),
            InputFocused = Color3.fromRGB(6, 4, 12),
            InputIndicator = Color3.fromRGB(135, 115, 195),
            Dialog = Color3.fromRGB(10, 8, 20),
            DialogHolder = Color3.fromRGB(6, 4, 12),
            DialogHolderLine = Color3.fromRGB(4, 3, 8),
            DialogButton = Color3.fromRGB(10, 8, 20),
            DialogButtonBorder = Color3.fromRGB(75, 55, 135),
            DialogBorder = Color3.fromRGB(45, 33, 82),
            DialogInput = Color3.fromRGB(28, 22, 55),
            DialogInputLine = Color3.fromRGB(135, 115, 195),
            Text = Color3.fromRGB(235, 230, 250),
            SubText = Color3.fromRGB(190, 180, 215),
            Hover = Color3.fromRGB(100, 80, 160),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 32, 72)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 115, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 32, 72)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(75, 55, 135),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 60, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 32, 72)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 55, 135)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 115, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 55, 135)) }) }
        }
    end,
    [121] = function()
        local aa, ab, ac, ad, ae = b(121)
        return {
            Name = "Wizard Blue",
            Accent = Color3.fromRGB(80, 80, 180),
            AcrylicMain = Color3.fromRGB(14, 12, 28),
            AcrylicBorder = Color3.fromRGB(55, 55, 145),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 50, 135), Color3.fromRGB(8, 6, 22)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 65, 155),
            Tab = Color3.fromRGB(60, 60, 150),
            Element = Color3.fromRGB(54, 54, 135),
            ElementBorder = Color3.fromRGB(36, 36, 90),
            InElementBorder = Color3.fromRGB(65, 65, 155),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 80, 180),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 60, 150),
            DropdownFrame = Color3.fromRGB(48, 48, 120),
            DropdownHolder = Color3.fromRGB(8, 6, 22),
            DropdownBorder = Color3.fromRGB(35, 35, 88),
            DropdownOption = Color3.fromRGB(80, 80, 180),
            Keybind = Color3.fromRGB(54, 54, 135),
            Input = Color3.fromRGB(48, 48, 120),
            InputFocused = Color3.fromRGB(5, 4, 15),
            InputIndicator = Color3.fromRGB(115, 115, 215),
            Dialog = Color3.fromRGB(8, 6, 22),
            DialogHolder = Color3.fromRGB(5, 4, 15),
            DialogHolderLine = Color3.fromRGB(3, 2, 10),
            DialogButton = Color3.fromRGB(8, 6, 22),
            DialogButtonBorder = Color3.fromRGB(60, 60, 150),
            DialogBorder = Color3.fromRGB(36, 36, 90),
            DialogInput = Color3.fromRGB(25, 25, 60),
            DialogInputLine = Color3.fromRGB(115, 115, 215),
            Text = Color3.fromRGB(235, 235, 255),
            SubText = Color3.fromRGB(190, 190, 220),
            Hover = Color3.fromRGB(80, 80, 180),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 38, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 115, 215)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 38, 85)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 60, 150),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 65, 155)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 38, 85)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 150)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 115, 215)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 60, 150)) }) }
        }
    end,
    [122] = function()
        local aa, ab, ac, ad, ae = b(122)
        return {
            Name = "Dragon Fire",
            Accent = Color3.fromRGB(220, 50, 20),
            AcrylicMain = Color3.fromRGB(32, 10, 5),
            AcrylicBorder = Color3.fromRGB(185, 38, 12),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(175, 32, 10), Color3.fromRGB(25, 7, 3)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(195, 42, 15),
            Tab = Color3.fromRGB(185, 38, 12),
            Element = Color3.fromRGB(168, 32, 10),
            ElementBorder = Color3.fromRGB(110, 20, 6),
            InElementBorder = Color3.fromRGB(195, 42, 15),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(220, 50, 20),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(185, 38, 12),
            DropdownFrame = Color3.fromRGB(150, 28, 8),
            DropdownHolder = Color3.fromRGB(25, 7, 3),
            DropdownBorder = Color3.fromRGB(108, 18, 5),
            DropdownOption = Color3.fromRGB(220, 50, 20),
            Keybind = Color3.fromRGB(168, 32, 10),
            Input = Color3.fromRGB(150, 28, 8),
            InputFocused = Color3.fromRGB(16, 4, 2),
            InputIndicator = Color3.fromRGB(255, 100, 55),
            Dialog = Color3.fromRGB(25, 7, 3),
            DialogHolder = Color3.fromRGB(16, 4, 2),
            DialogHolderLine = Color3.fromRGB(10, 2, 1),
            DialogButton = Color3.fromRGB(25, 7, 3),
            DialogButtonBorder = Color3.fromRGB(185, 38, 12),
            DialogBorder = Color3.fromRGB(110, 20, 6),
            DialogInput = Color3.fromRGB(48, 14, 6),
            DialogInputLine = Color3.fromRGB(255, 100, 55),
            Text = Color3.fromRGB(255, 238, 232),
            SubText = Color3.fromRGB(225, 195, 188),
            Hover = Color3.fromRGB(220, 50, 20),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 22, 8)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 22, 8)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(185, 38, 12),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(195, 42, 15)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 22, 8)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(185, 38, 12)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 100, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 38, 12)) }) }
        }
    end,
    [123] = function()
        local aa, ab, ac, ad, ae = b(123)
        return {
            Name = "Phoenix Flame",
            Accent = Color3.fromRGB(255, 100, 50),
            AcrylicMain = Color3.fromRGB(40, 18, 12),
            AcrylicBorder = Color3.fromRGB(220, 75, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 68, 25), Color3.fromRGB(32, 12, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 85, 38),
            Tab = Color3.fromRGB(230, 80, 35),
            Element = Color3.fromRGB(207, 72, 32),
            ElementBorder = Color3.fromRGB(138, 48, 20),
            InElementBorder = Color3.fromRGB(235, 85, 38),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 100, 50),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(230, 80, 35),
            DropdownFrame = Color3.fromRGB(184, 64, 28),
            DropdownHolder = Color3.fromRGB(32, 12, 8),
            DropdownBorder = Color3.fromRGB(135, 46, 18),
            DropdownOption = Color3.fromRGB(255, 100, 50),
            Keybind = Color3.fromRGB(207, 72, 32),
            Input = Color3.fromRGB(184, 64, 28),
            InputFocused = Color3.fromRGB(22, 8, 5),
            InputIndicator = Color3.fromRGB(255, 145, 100),
            Dialog = Color3.fromRGB(32, 12, 8),
            DialogHolder = Color3.fromRGB(22, 8, 5),
            DialogHolderLine = Color3.fromRGB(15, 5, 3),
            DialogButton = Color3.fromRGB(32, 12, 8),
            DialogButtonBorder = Color3.fromRGB(230, 80, 35),
            DialogBorder = Color3.fromRGB(138, 48, 20),
            DialogInput = Color3.fromRGB(58, 22, 15),
            DialogInputLine = Color3.fromRGB(255, 145, 100),
            Text = Color3.fromRGB(255, 248, 240),
            SubText = Color3.fromRGB(225, 205, 195),
            Hover = Color3.fromRGB(255, 100, 50),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 32, 20)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 145, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(88, 32, 20)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(230, 80, 35),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 85, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(88, 32, 20)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 80, 35)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 145, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 80, 35)) }) }
        }
    end,
    [124] = function()
        local aa, ab, ac, ad, ae = b(124)
        return {
            Name = "Griffin Gold",
            Accent = Color3.fromRGB(180, 160, 100),
            AcrylicMain = Color3.fromRGB(35, 30, 20),
            AcrylicBorder = Color3.fromRGB(150, 130, 75),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(140, 120, 68), Color3.fromRGB(28, 24, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(160, 140, 85),
            Tab = Color3.fromRGB(155, 135, 80),
            Element = Color3.fromRGB(140, 122, 72),
            ElementBorder = Color3.fromRGB(95, 82, 48),
            InElementBorder = Color3.fromRGB(160, 140, 85),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(180, 160, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(155, 135, 80),
            DropdownFrame = Color3.fromRGB(125, 108, 64),
            DropdownHolder = Color3.fromRGB(28, 24, 15),
            DropdownBorder = Color3.fromRGB(92, 78, 46),
            DropdownOption = Color3.fromRGB(180, 160, 100),
            Keybind = Color3.fromRGB(140, 122, 72),
            Input = Color3.fromRGB(125, 108, 64),
            InputFocused = Color3.fromRGB(18, 15, 9),
            InputIndicator = Color3.fromRGB(215, 195, 135),
            Dialog = Color3.fromRGB(28, 24, 15),
            DialogHolder = Color3.fromRGB(18, 15, 9),
            DialogHolderLine = Color3.fromRGB(12, 10, 6),
            DialogButton = Color3.fromRGB(28, 24, 15),
            DialogButtonBorder = Color3.fromRGB(155, 135, 80),
            DialogBorder = Color3.fromRGB(95, 82, 48),
            DialogInput = Color3.fromRGB(50, 45, 28),
            DialogInputLine = Color3.fromRGB(215, 195, 135),
            Text = Color3.fromRGB(255, 250, 235),
            SubText = Color3.fromRGB(220, 210, 190),
            Hover = Color3.fromRGB(180, 160, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 65, 38)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 195, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 65, 38)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(155, 135, 80),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 140, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 65, 38)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(155, 135, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(215, 195, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 135, 80)) }) }
        }
    end,
    [125] = function()
        local aa, ab, ac, ad, ae = b(125)
        return {
            Name = "Cloud White",
            Accent = Color3.fromRGB(200, 200, 230),
            AcrylicMain = Color3.fromRGB(40, 40, 50),
            AcrylicBorder = Color3.fromRGB(170, 170, 200),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(160, 160, 190), Color3.fromRGB(34, 34, 44)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(180, 180, 210),
            Tab = Color3.fromRGB(175, 175, 205),
            Element = Color3.fromRGB(158, 158, 185),
            ElementBorder = Color3.fromRGB(118, 118, 138),
            InElementBorder = Color3.fromRGB(180, 180, 210),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(200, 200, 230),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(175, 175, 205),
            DropdownFrame = Color3.fromRGB(148, 148, 175),
            DropdownHolder = Color3.fromRGB(34, 34, 44),
            DropdownBorder = Color3.fromRGB(115, 115, 135),
            DropdownOption = Color3.fromRGB(200, 200, 230),
            Keybind = Color3.fromRGB(158, 158, 185),
            Input = Color3.fromRGB(148, 148, 175),
            InputFocused = Color3.fromRGB(22, 22, 30),
            InputIndicator = Color3.fromRGB(225, 225, 250),
            Dialog = Color3.fromRGB(34, 34, 44),
            DialogHolder = Color3.fromRGB(22, 22, 30),
            DialogHolderLine = Color3.fromRGB(15, 15, 20),
            DialogButton = Color3.fromRGB(34, 34, 44),
            DialogButtonBorder = Color3.fromRGB(175, 175, 205),
            DialogBorder = Color3.fromRGB(118, 118, 138),
            DialogInput = Color3.fromRGB(60, 60, 75),
            DialogInputLine = Color3.fromRGB(225, 225, 250),
            Text = Color3.fromRGB(248, 248, 255),
            SubText = Color3.fromRGB(210, 210, 225),
            Hover = Color3.fromRGB(200, 200, 230),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 85, 100)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(225, 225, 250)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 85, 100)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(175, 175, 205),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 210)), ColorSequenceKeypoint.new(1, Color3.fromRGB(85, 85, 100)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(175, 175, 205)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(225, 225, 250)), ColorSequenceKeypoint.new(1, Color3.fromRGB(175, 175, 205)) }) }
        }
    end,
    [126] = function()
        local aa, ab, ac, ad, ae = b(126)
        return {
            Name = "Unicorn Pink",
            Accent = Color3.fromRGB(255, 150, 200),
            AcrylicMain = Color3.fromRGB(35, 20, 35),
            AcrylicBorder = Color3.fromRGB(220, 110, 165),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(200, 100, 150), Color3.fromRGB(28, 15, 28)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(235, 125, 180),
            Tab = Color3.fromRGB(230, 120, 175),
            Element = Color3.fromRGB(207, 108, 158),
            ElementBorder = Color3.fromRGB(138, 72, 105),
            InElementBorder = Color3.fromRGB(235, 125, 180),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(255, 150, 200),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(230, 120, 175),
            DropdownFrame = Color3.fromRGB(184, 96, 140),
            DropdownHolder = Color3.fromRGB(28, 15, 28),
            DropdownBorder = Color3.fromRGB(135, 70, 102),
            DropdownOption = Color3.fromRGB(255, 150, 200),
            Keybind = Color3.fromRGB(207, 108, 158),
            Input = Color3.fromRGB(184, 96, 140),
            InputFocused = Color3.fromRGB(18, 8, 18),
            InputIndicator = Color3.fromRGB(255, 190, 230),
            Dialog = Color3.fromRGB(28, 15, 28),
            DialogHolder = Color3.fromRGB(18, 8, 18),
            DialogHolderLine = Color3.fromRGB(12, 5, 12),
            DialogButton = Color3.fromRGB(28, 15, 28),
            DialogButtonBorder = Color3.fromRGB(230, 120, 175),
            DialogBorder = Color3.fromRGB(138, 72, 105),
            DialogInput = Color3.fromRGB(50, 28, 55),
            DialogInputLine = Color3.fromRGB(255, 190, 230),
            Text = Color3.fromRGB(255, 245, 250),
            SubText = Color3.fromRGB(225, 205, 220),
            Hover = Color3.fromRGB(255, 150, 200),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 45, 75)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 190, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 45, 75)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(230, 120, 175),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 125, 180)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 45, 75)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 120, 175)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 190, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 120, 175)) }) }
        }
    end,
    [127] = function()
        local aa, ab, ac, ad, ae = b(127)
        return {
            Name = "Fairy Green",
            Accent = Color3.fromRGB(150, 220, 150),
            AcrylicMain = Color3.fromRGB(20, 35, 20),
            AcrylicBorder = Color3.fromRGB(110, 185, 110),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(100, 175, 100), Color3.fromRGB(15, 28, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(120, 195, 120),
            Tab = Color3.fromRGB(115, 190, 115),
            Element = Color3.fromRGB(104, 171, 104),
            ElementBorder = Color3.fromRGB(69, 114, 69),
            InElementBorder = Color3.fromRGB(120, 195, 120),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(150, 220, 150),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(115, 190, 115),
            DropdownFrame = Color3.fromRGB(92, 152, 92),
            DropdownHolder = Color3.fromRGB(15, 28, 15),
            DropdownBorder = Color3.fromRGB(68, 110, 68),
            DropdownOption = Color3.fromRGB(150, 220, 150),
            Keybind = Color3.fromRGB(104, 171, 104),
            Input = Color3.fromRGB(92, 152, 92),
            InputFocused = Color3.fromRGB(9, 18, 9),
            InputIndicator = Color3.fromRGB(190, 245, 190),
            Dialog = Color3.fromRGB(15, 28, 15),
            DialogHolder = Color3.fromRGB(9, 18, 9),
            DialogHolderLine = Color3.fromRGB(6, 12, 6),
            DialogButton = Color3.fromRGB(15, 28, 15),
            DialogButtonBorder = Color3.fromRGB(115, 190, 115),
            DialogBorder = Color3.fromRGB(69, 114, 69),
            DialogInput = Color3.fromRGB(35, 55, 35),
            DialogInputLine = Color3.fromRGB(190, 245, 190),
            Text = Color3.fromRGB(240, 255, 240),
            SubText = Color3.fromRGB(195, 220, 195),
            Hover = Color3.fromRGB(150, 220, 150),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(48, 85, 48)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 245, 190)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 85, 48)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(115, 190, 115),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 195, 120)), ColorSequenceKeypoint.new(1, Color3.fromRGB(48, 85, 48)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 190, 115)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(190, 245, 190)), ColorSequenceKeypoint.new(1, Color3.fromRGB(115, 190, 115)) }) }
        }
    end,
    [128] = function()
        local aa, ab, ac, ad, ae = b(128)
        return {
            Name = "Elven Green",
            Accent = Color3.fromRGB(100, 180, 100),
            AcrylicMain = Color3.fromRGB(15, 30, 15),
            AcrylicBorder = Color3.fromRGB(70, 145, 70),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 135, 65), Color3.fromRGB(10, 24, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 155, 80),
            Tab = Color3.fromRGB(75, 150, 75),
            Element = Color3.fromRGB(68, 135, 68),
            ElementBorder = Color3.fromRGB(45, 90, 45),
            InElementBorder = Color3.fromRGB(80, 155, 80),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 180, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(75, 150, 75),
            DropdownFrame = Color3.fromRGB(60, 120, 60),
            DropdownHolder = Color3.fromRGB(10, 24, 10),
            DropdownBorder = Color3.fromRGB(44, 88, 44),
            DropdownOption = Color3.fromRGB(100, 180, 100),
            Keybind = Color3.fromRGB(68, 135, 68),
            Input = Color3.fromRGB(60, 120, 60),
            InputFocused = Color3.fromRGB(6, 15, 6),
            InputIndicator = Color3.fromRGB(135, 215, 135),
            Dialog = Color3.fromRGB(10, 24, 10),
            DialogHolder = Color3.fromRGB(6, 15, 6),
            DialogHolderLine = Color3.fromRGB(4, 10, 4),
            DialogButton = Color3.fromRGB(10, 24, 10),
            DialogButtonBorder = Color3.fromRGB(75, 150, 75),
            DialogBorder = Color3.fromRGB(45, 90, 45),
            DialogInput = Color3.fromRGB(25, 50, 25),
            DialogInputLine = Color3.fromRGB(135, 215, 135),
            Text = Color3.fromRGB(235, 255, 235),
            SubText = Color3.fromRGB(190, 215, 190),
            Hover = Color3.fromRGB(100, 180, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 75, 38)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 215, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 75, 38)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(75, 150, 75),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 155, 80)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 75, 38)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 150, 75)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 215, 135)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 150, 75)) }) }
        }
    end,
    [129] = function()
        local aa, ab, ac, ad, ae = b(129)
        return {
            Name = "Forge Brown",
            Accent = Color3.fromRGB(160, 120, 80),
            AcrylicMain = Color3.fromRGB(35, 28, 20),
            AcrylicBorder = Color3.fromRGB(130, 95, 55),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(120, 88, 50), Color3.fromRGB(28, 22, 15)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(140, 105, 65),
            Tab = Color3.fromRGB(135, 100, 60),
            Element = Color3.fromRGB(122, 90, 54),
            ElementBorder = Color3.fromRGB(82, 60, 36),
            InElementBorder = Color3.fromRGB(140, 105, 65),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(160, 120, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(135, 100, 60),
            DropdownFrame = Color3.fromRGB(108, 80, 48),
            DropdownHolder = Color3.fromRGB(28, 22, 15),
            DropdownBorder = Color3.fromRGB(80, 58, 34),
            DropdownOption = Color3.fromRGB(160, 120, 80),
            Keybind = Color3.fromRGB(122, 90, 54),
            Input = Color3.fromRGB(108, 80, 48),
            InputFocused = Color3.fromRGB(18, 14, 9),
            InputIndicator = Color3.fromRGB(195, 155, 115),
            Dialog = Color3.fromRGB(28, 22, 15),
            DialogHolder = Color3.fromRGB(18, 14, 9),
            DialogHolderLine = Color3.fromRGB(12, 10, 6),
            DialogButton = Color3.fromRGB(28, 22, 15),
            DialogButtonBorder = Color3.fromRGB(135, 100, 60),
            DialogBorder = Color3.fromRGB(82, 60, 36),
            DialogInput = Color3.fromRGB(48, 38, 25),
            DialogInputLine = Color3.fromRGB(195, 155, 115),
            Text = Color3.fromRGB(255, 248, 240),
            SubText = Color3.fromRGB(220, 210, 195),
            Hover = Color3.fromRGB(160, 120, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 55, 35)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 155, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 55, 35)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(135, 100, 60),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(140, 105, 65)), ColorSequenceKeypoint.new(1, Color3.fromRGB(70, 55, 35)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 100, 60)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(195, 155, 115)), ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 100, 60)) }) }
        }
    end,
    [130] = function()
        local aa, ab, ac, ad, ae = b(130)
        return {
            Name = "War Green",
            Accent = Color3.fromRGB(100, 120, 60),
            AcrylicMain = Color3.fromRGB(20, 25, 15),
            AcrylicBorder = Color3.fromRGB(70, 90, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 85, 35), Color3.fromRGB(15, 20, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(80, 100, 48),
            Tab = Color3.fromRGB(75, 95, 45),
            Element = Color3.fromRGB(68, 86, 40),
            ElementBorder = Color3.fromRGB(45, 58, 26),
            InElementBorder = Color3.fromRGB(80, 100, 48),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(100, 120, 60),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(75, 95, 45),
            DropdownFrame = Color3.fromRGB(60, 76, 36),
            DropdownHolder = Color3.fromRGB(15, 20, 10),
            DropdownBorder = Color3.fromRGB(44, 56, 25),
            DropdownOption = Color3.fromRGB(100, 120, 60),
            Keybind = Color3.fromRGB(68, 86, 40),
            Input = Color3.fromRGB(60, 76, 36),
            InputFocused = Color3.fromRGB(9, 12, 6),
            InputIndicator = Color3.fromRGB(135, 160, 90),
            Dialog = Color3.fromRGB(15, 20, 10),
            DialogHolder = Color3.fromRGB(9, 12, 6),
            DialogHolderLine = Color3.fromRGB(6, 8, 4),
            DialogButton = Color3.fromRGB(15, 20, 10),
            DialogButtonBorder = Color3.fromRGB(75, 95, 45),
            DialogBorder = Color3.fromRGB(45, 58, 26),
            DialogInput = Color3.fromRGB(28, 38, 18),
            DialogInputLine = Color3.fromRGB(135, 160, 90),
            Text = Color3.fromRGB(235, 245, 225),
            SubText = Color3.fromRGB(190, 205, 180),
            Hover = Color3.fromRGB(100, 120, 60),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 58, 26)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 160, 90)), ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 58, 26)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(75, 95, 45),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 100, 48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 58, 26)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 95, 45)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 160, 90)), ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 95, 45)) }) }
        }
    end,
    [131] = function()
        local aa, ab, ac, ad, ae = b(131)
        return {
            Name = "Swamp Green",
            Accent = Color3.fromRGB(120, 140, 80),
            AcrylicMain = Color3.fromRGB(25, 30, 18),
            AcrylicBorder = Color3.fromRGB(90, 110, 55),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 105, 50), Color3.fromRGB(18, 24, 12)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(100, 120, 62),
            Tab = Color3.fromRGB(95, 115, 58),
            Element = Color3.fromRGB(86, 104, 52),
            ElementBorder = Color3.fromRGB(58, 70, 35),
            InElementBorder = Color3.fromRGB(100, 120, 62),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(120, 140, 80),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(95, 115, 58),
            DropdownFrame = Color3.fromRGB(76, 92, 46),
            DropdownHolder = Color3.fromRGB(18, 24, 12),
            DropdownBorder = Color3.fromRGB(56, 68, 33),
            DropdownOption = Color3.fromRGB(120, 140, 80),
            Keybind = Color3.fromRGB(86, 104, 52),
            Input = Color3.fromRGB(76, 92, 46),
            InputFocused = Color3.fromRGB(11, 15, 7),
            InputIndicator = Color3.fromRGB(155, 180, 110),
            Dialog = Color3.fromRGB(18, 24, 12),
            DialogHolder = Color3.fromRGB(11, 15, 7),
            DialogHolderLine = Color3.fromRGB(8, 10, 5),
            DialogButton = Color3.fromRGB(18, 24, 12),
            DialogButtonBorder = Color3.fromRGB(95, 115, 58),
            DialogBorder = Color3.fromRGB(58, 70, 35),
            DialogInput = Color3.fromRGB(36, 46, 22),
            DialogInputLine = Color3.fromRGB(155, 180, 110),
            Text = Color3.fromRGB(240, 250, 230),
            SubText = Color3.fromRGB(195, 210, 185),
            Hover = Color3.fromRGB(120, 140, 80),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 70, 32)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(155, 180, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 70, 32)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(95, 115, 58),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(100, 120, 62)), ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 70, 32)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 115, 58)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(155, 180, 110)), ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 115, 58)) }) }
        }
    end,
    [132] = function()
        local aa, ab, ac, ad, ae = b(132)
        return {
            Name = "Poison Green",
            Accent = Color3.fromRGB(80, 100, 50),
            AcrylicMain = Color3.fromRGB(18, 22, 12),
            AcrylicBorder = Color3.fromRGB(55, 75, 30),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(50, 70, 28), Color3.fromRGB(12, 18, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(65, 85, 38),
            Tab = Color3.fromRGB(60, 80, 35),
            Element = Color3.fromRGB(54, 72, 32),
            ElementBorder = Color3.fromRGB(36, 48, 20),
            InElementBorder = Color3.fromRGB(65, 85, 38),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(80, 100, 50),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(60, 80, 35),
            DropdownFrame = Color3.fromRGB(48, 64, 28),
            DropdownHolder = Color3.fromRGB(12, 18, 8),
            DropdownBorder = Color3.fromRGB(35, 46, 18),
            DropdownOption = Color3.fromRGB(80, 100, 50),
            Keybind = Color3.fromRGB(54, 72, 32),
            Input = Color3.fromRGB(48, 64, 28),
            InputFocused = Color3.fromRGB(7, 11, 5),
            InputIndicator = Color3.fromRGB(115, 140, 75),
            Dialog = Color3.fromRGB(12, 18, 8),
            DialogHolder = Color3.fromRGB(7, 11, 5),
            DialogHolderLine = Color3.fromRGB(5, 8, 3),
            DialogButton = Color3.fromRGB(12, 18, 8),
            DialogButtonBorder = Color3.fromRGB(60, 80, 35),
            DialogBorder = Color3.fromRGB(36, 48, 20),
            DialogInput = Color3.fromRGB(24, 32, 15),
            DialogInputLine = Color3.fromRGB(115, 140, 75),
            Text = Color3.fromRGB(235, 245, 225),
            SubText = Color3.fromRGB(190, 205, 180),
            Hover = Color3.fromRGB(80, 100, 50),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 52, 22)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 140, 75)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 52, 22)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(60, 80, 35),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 85, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(38, 52, 22)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 80, 35)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(115, 140, 75)), ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 80, 35)) }) }
        }
    end,
    [133] = function()
        local aa, ab, ac, ad, ae = b(133)
        return {
            Name = "Demon Blood",
            Accent = Color3.fromRGB(160, 20, 20),
            AcrylicMain = Color3.fromRGB(22, 5, 5),
            AcrylicBorder = Color3.fromRGB(120, 12, 12),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(115, 10, 10), Color3.fromRGB(18, 3, 3)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(135, 15, 15),
            Tab = Color3.fromRGB(128, 12, 12),
            Element = Color3.fromRGB(115, 10, 10),
            ElementBorder = Color3.fromRGB(75, 7, 7),
            InElementBorder = Color3.fromRGB(135, 15, 15),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(160, 20, 20),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(128, 12, 12),
            DropdownFrame = Color3.fromRGB(105, 8, 8),
            DropdownHolder = Color3.fromRGB(18, 3, 3),
            DropdownBorder = Color3.fromRGB(75, 6, 6),
            DropdownOption = Color3.fromRGB(160, 20, 20),
            Keybind = Color3.fromRGB(115, 10, 10),
            Input = Color3.fromRGB(105, 8, 8),
            InputFocused = Color3.fromRGB(12, 2, 2),
            InputIndicator = Color3.fromRGB(200, 55, 55),
            Dialog = Color3.fromRGB(18, 3, 3),
            DialogHolder = Color3.fromRGB(12, 2, 2),
            DialogHolderLine = Color3.fromRGB(8, 1, 1),
            DialogButton = Color3.fromRGB(18, 3, 3),
            DialogButtonBorder = Color3.fromRGB(128, 12, 12),
            DialogBorder = Color3.fromRGB(75, 7, 7),
            DialogInput = Color3.fromRGB(35, 8, 8),
            DialogInputLine = Color3.fromRGB(200, 55, 55),
            Text = Color3.fromRGB(255, 225, 225),
            SubText = Color3.fromRGB(215, 185, 185),
            Hover = Color3.fromRGB(160, 20, 20),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 10, 10)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 55, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 10, 10)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(128, 12, 12),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 15, 15)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 10, 10)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(128, 12, 12)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 55, 55)), ColorSequenceKeypoint.new(1, Color3.fromRGB(128, 12, 12)) }) }
        }
    end,
    [134] = function()
        local aa, ab, ac, ad, ae = b(134)
        return {
            Name = "Angelic White",
            Accent = Color3.fromRGB(220, 220, 250),
            AcrylicMain = Color3.fromRGB(45, 45, 55),
            AcrylicBorder = Color3.fromRGB(190, 190, 220),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(180, 180, 210), Color3.fromRGB(38, 38, 48)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(200, 200, 230),
            Tab = Color3.fromRGB(195, 195, 225),
            Element = Color3.fromRGB(176, 176, 203),
            ElementBorder = Color3.fromRGB(132, 132, 152),
            InElementBorder = Color3.fromRGB(200, 200, 230),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(220, 220, 250),
            ToggleToggled = Color3.fromRGB(0, 0, 0),
            SliderRail = Color3.fromRGB(195, 195, 225),
            DropdownFrame = Color3.fromRGB(165, 165, 190),
            DropdownHolder = Color3.fromRGB(38, 38, 48),
            DropdownBorder = Color3.fromRGB(130, 130, 148),
            DropdownOption = Color3.fromRGB(220, 220, 250),
            Keybind = Color3.fromRGB(176, 176, 203),
            Input = Color3.fromRGB(165, 165, 190),
            InputFocused = Color3.fromRGB(24, 24, 32),
            InputIndicator = Color3.fromRGB(240, 240, 255),
            Dialog = Color3.fromRGB(38, 38, 48),
            DialogHolder = Color3.fromRGB(24, 24, 32),
            DialogHolderLine = Color3.fromRGB(16, 16, 22),
            DialogButton = Color3.fromRGB(38, 38, 48),
            DialogButtonBorder = Color3.fromRGB(195, 195, 225),
            DialogBorder = Color3.fromRGB(132, 132, 152),
            DialogInput = Color3.fromRGB(65, 65, 80),
            DialogInputLine = Color3.fromRGB(240, 240, 255),
            Text = Color3.fromRGB(250, 250, 255),
            SubText = Color3.fromRGB(215, 215, 230),
            Hover = Color3.fromRGB(220, 220, 250),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 95, 110)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 240, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 95, 110)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(195, 195, 225),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 230)), ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 95, 110)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(195, 195, 225)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(240, 240, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(195, 195, 225)) }) }
        }
    end,
    [135] = function()
        local aa, ab, ac, ad, ae = b(135)
        return {
            Name = "Valkyrie Mauve",
            Accent = Color3.fromRGB(200, 160, 220),
            AcrylicMain = Color3.fromRGB(35, 28, 42),
            AcrylicBorder = Color3.fromRGB(165, 125, 185),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(155, 115, 175), Color3.fromRGB(28, 22, 35)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(175, 135, 195),
            Tab = Color3.fromRGB(170, 130, 190),
            Element = Color3.fromRGB(153, 117, 171),
            ElementBorder = Color3.fromRGB(102, 78, 114),
            InElementBorder = Color3.fromRGB(175, 135, 195),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(200, 160, 220),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(170, 130, 190),
            DropdownFrame = Color3.fromRGB(136, 104, 152),
            DropdownHolder = Color3.fromRGB(28, 22, 35),
            DropdownBorder = Color3.fromRGB(100, 76, 110),
            DropdownOption = Color3.fromRGB(200, 160, 220),
            Keybind = Color3.fromRGB(153, 117, 171),
            Input = Color3.fromRGB(136, 104, 152),
            InputFocused = Color3.fromRGB(16, 12, 22),
            InputIndicator = Color3.fromRGB(230, 195, 245),
            Dialog = Color3.fromRGB(28, 22, 35),
            DialogHolder = Color3.fromRGB(16, 12, 22),
            DialogHolderLine = Color3.fromRGB(11, 8, 15),
            DialogButton = Color3.fromRGB(28, 22, 35),
            DialogButtonBorder = Color3.fromRGB(170, 130, 190),
            DialogBorder = Color3.fromRGB(102, 78, 114),
            DialogInput = Color3.fromRGB(48, 38, 65),
            DialogInputLine = Color3.fromRGB(230, 195, 245),
            Text = Color3.fromRGB(245, 240, 255),
            SubText = Color3.fromRGB(205, 195, 225),
            Hover = Color3.fromRGB(200, 160, 220),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 50, 85)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 195, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 50, 85)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(170, 130, 190),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(175, 135, 195)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 50, 85)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(170, 130, 190)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(230, 195, 245)), ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 130, 190)) }) }
        }
    end,
    [136] = function()
        local aa, ab, ac, ad, ae = b(136)
        return {
            Name = "Shadow Black",
            Accent = Color3.fromRGB(50, 50, 60),
            AcrylicMain = Color3.fromRGB(8, 8, 12),
            AcrylicBorder = Color3.fromRGB(30, 30, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(25, 25, 35), Color3.fromRGB(5, 5, 8)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(38, 38, 48),
            Tab = Color3.fromRGB(35, 35, 45),
            Element = Color3.fromRGB(32, 32, 40),
            ElementBorder = Color3.fromRGB(20, 20, 26),
            InElementBorder = Color3.fromRGB(38, 38, 48),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(50, 50, 60),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(35, 35, 45),
            DropdownFrame = Color3.fromRGB(28, 28, 36),
            DropdownHolder = Color3.fromRGB(5, 5, 8),
            DropdownBorder = Color3.fromRGB(18, 18, 24),
            DropdownOption = Color3.fromRGB(50, 50, 60),
            Keybind = Color3.fromRGB(32, 32, 40),
            Input = Color3.fromRGB(28, 28, 36),
            InputFocused = Color3.fromRGB(3, 3, 5),
            InputIndicator = Color3.fromRGB(85, 85, 100),
            Dialog = Color3.fromRGB(5, 5, 8),
            DialogHolder = Color3.fromRGB(3, 3, 5),
            DialogHolderLine = Color3.fromRGB(2, 2, 3),
            DialogButton = Color3.fromRGB(5, 5, 8),
            DialogButtonBorder = Color3.fromRGB(35, 35, 45),
            DialogBorder = Color3.fromRGB(20, 20, 26),
            DialogInput = Color3.fromRGB(15, 15, 22),
            DialogInputLine = Color3.fromRGB(85, 85, 100),
            Text = Color3.fromRGB(220, 220, 230),
            SubText = Color3.fromRGB(170, 170, 180),
            Hover = Color3.fromRGB(50, 50, 60),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 35)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 85, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 35)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(35, 35, 45),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 38, 48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 35)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 45)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 85, 100)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 35, 45)) }) }
        }
    end,
    [137] = function()
        local aa, ab, ac, ad, ae = b(137)
        return {
            Name = "Rust Brown",
            Accent = Color3.fromRGB(140, 80, 60),
            AcrylicMain = Color3.fromRGB(28, 18, 14),
            AcrylicBorder = Color3.fromRGB(110, 60, 40),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(100, 55, 36), Color3.fromRGB(22, 14, 10)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(120, 68, 48),
            Tab = Color3.fromRGB(115, 65, 45),
            Element = Color3.fromRGB(104, 58, 40),
            ElementBorder = Color3.fromRGB(70, 38, 26),
            InElementBorder = Color3.fromRGB(120, 68, 48),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(140, 80, 60),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(115, 65, 45),
            DropdownFrame = Color3.fromRGB(92, 52, 36),
            DropdownHolder = Color3.fromRGB(22, 14, 10),
            DropdownBorder = Color3.fromRGB(68, 38, 25),
            DropdownOption = Color3.fromRGB(140, 80, 60),
            Keybind = Color3.fromRGB(104, 58, 40),
            Input = Color3.fromRGB(92, 52, 36),
            InputFocused = Color3.fromRGB(14, 9, 6),
            InputIndicator = Color3.fromRGB(175, 115, 95),
            Dialog = Color3.fromRGB(22, 14, 10),
            DialogHolder = Color3.fromRGB(14, 9, 6),
            DialogHolderLine = Color3.fromRGB(10, 6, 4),
            DialogButton = Color3.fromRGB(22, 14, 10),
            DialogButtonBorder = Color3.fromRGB(115, 65, 45),
            DialogBorder = Color3.fromRGB(70, 38, 26),
            DialogInput = Color3.fromRGB(42, 26, 18),
            DialogInputLine = Color3.fromRGB(175, 115, 95),
            Text = Color3.fromRGB(255, 245, 240),
            SubText = Color3.fromRGB(220, 205, 195),
            Hover = Color3.fromRGB(140, 80, 60),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(62, 36, 24)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 115, 95)), ColorSequenceKeypoint.new(1, Color3.fromRGB(62, 36, 24)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(115, 65, 45),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 68, 48)), ColorSequenceKeypoint.new(1, Color3.fromRGB(62, 36, 24)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 65, 45)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 115, 95)), ColorSequenceKeypoint.new(1, Color3.fromRGB(115, 65, 45)) }) }
        }
    end,
    [138] = function()
        local aa, ab, ac, ad, ae = b(138)
        return {
            Name = "Dark Steel",
            Accent = Color3.fromRGB(90, 90, 100),
            AcrylicMain = Color3.fromRGB(12, 14, 18),
            AcrylicBorder = Color3.fromRGB(60, 65, 75),
            AcrylicGradient = ColorSequence.new(Color3.fromRGB(55, 60, 70), Color3.fromRGB(8, 10, 14)),
            AcrylicNoise = 0.9,
            TitleBarLine = Color3.fromRGB(70, 75, 85),
            Tab = Color3.fromRGB(65, 70, 80),
            Element = Color3.fromRGB(58, 63, 72),
            ElementBorder = Color3.fromRGB(38, 42, 48),
            InElementBorder = Color3.fromRGB(70, 75, 85),
            ElementTransparency = 0.87,
            ToggleSlider = Color3.fromRGB(90, 90, 100),
            ToggleToggled = Color3.fromRGB(255, 255, 255),
            SliderRail = Color3.fromRGB(65, 70, 80),
            DropdownFrame = Color3.fromRGB(52, 56, 64),
            DropdownHolder = Color3.fromRGB(8, 10, 14),
            DropdownBorder = Color3.fromRGB(36, 40, 46),
            DropdownOption = Color3.fromRGB(90, 90, 100),
            Keybind = Color3.fromRGB(58, 63, 72),
            Input = Color3.fromRGB(52, 56, 64),
            InputFocused = Color3.fromRGB(5, 6, 8),
            InputIndicator = Color3.fromRGB(125, 130, 140),
            Dialog = Color3.fromRGB(8, 10, 14),
            DialogHolder = Color3.fromRGB(5, 6, 8),
            DialogHolderLine = Color3.fromRGB(3, 4, 5),
            DialogButton = Color3.fromRGB(8, 10, 14),
            DialogButtonBorder = Color3.fromRGB(65, 70, 80),
            DialogBorder = Color3.fromRGB(38, 42, 48),
            DialogInput = Color3.fromRGB(22, 25, 32),
            DialogInputLine = Color3.fromRGB(125, 130, 140),
            Text = Color3.fromRGB(230, 235, 240),
            SubText = Color3.fromRGB(185, 190, 200),
            Hover = Color3.fromRGB(90, 90, 100),
            HoverChange = 0.05,
            ShineEnabled = getgenv().ShineEnabled,
            Shine = { Speed = 0.5, RotationSpeed = 25, ColorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 38, 45)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(125, 130, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 38, 45)) }) },
            StrokeShine = getgenv().ShineEnabled,
            StrokeDark = Color3.fromRGB(65, 70, 80),
            ButtonGradient = { Background = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 75, 85)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 38, 45)) }), Stroke = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(65, 70, 80)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(125, 130, 140)), ColorSequenceKeypoint.new(1, Color3.fromRGB(65, 70, 80)) }) }
        }
    end
}

do local ab,ac,ad,ae,af,ag,ah,aj,c,e,f,g,h,i,j,k=task,setmetatable,error,newproxy,getmetatable,next,table,unpack,coroutine,script,type,require,pcall,getfenv,setfenv,rawget local l,m,n,o,p,s,t,u,v,w,x=ah.insert,ah.remove,ah.freeze or function(l)return l end,ab and ab.defer or function(l,...)local m=c.create(l)c.resume(m,...)return m end,'0.0.0-venv',{},{},{},{},{},{}local y,z={GetChildren=function(y)local z,A=x[y],{}for B in ag,z do l(A,B)end return A end,FindFirstChild=function(y,z)if not z then ad('Argument 1 missing or nil',2)end for A in ag,x[y]do if A.Name==z then return A end end return end,GetFullName=function(y)local z,A=y.Name,y.Parent while A do z=A.Name..'.'..z A=A.Parent end return'VirtualEnv.'..z end},{}for A,B in ag,y do z[A]=function(C,...)if not x[C]then ad("Expected ':' not '.' calling member function "..A,1)end return B(C,...)end end local C=function(C,D,E)local F,G,H,I,J=ac({},{__mode='k'}),function(F)ad(F..' is not a valid (virtual) member of '..C..' "'..D..'"',1)end,function(F)ad('Unable to assign (virtual) property '..F..'. Property is read only',1)end,(ae(true))local K=af(I)K.__index=function(L,M)if M=='ClassName'then return C elseif M=='Name'then return D elseif M=='Parent'then return E elseif C=='StringValue'and M=='Value'then return J else local N=z[M]if N then return N end end for N in ag,F do if N.Name==M then return N end end G(M)end K.__newindex=function(L,M,N)if M=='ClassName'then H(M)elseif M=='Name'then D=N elseif M=='Parent'then if N==I then return end if E~=nil then x[E][I]=nil end E=N if N~=nil then x[N][I]=true end elseif C=='StringValue'and M=='Value'then J=N else G(M)end end K.__tostring=function()return D end x[I]=F if E~=nil then x[E][I]=true end return I end local function D(E,F)local G,H,I,J=E[1],E[2],E[3],E[4]local K=m(I,1)local L=C(H,K,F)s[G]=L if I then for M,N in ag,I do L[M]=N end end if J then for M,N in ag,J do D(N,L)end end return L end local E={}for F,G in ag,a do l(E,D(G))end for H,I in ag,aa do local J=s[H]t[J]=I local K=J.ClassName if K=='LocalScript'or K=='Script'then l(v,J)end end local J=function(J)local K,L=J.ClassName,u[J]if L and K=='ModuleScript'then return aj(L)end local M=t[J]if not M then return end if K=='LocalScript'or K=='Script'then M()return else local N={M()}u[J]=N return aj(N)end end function b(K)local L=s[K]local M=t[L]if not M then return end local N,O,P,Q,R,S,T=false,n{Version=p,Script=e,Shared=w,GetScript=function()return e end,GetShared=function()return w end},L,function(N,...)if x[N]and N.ClassName=='ModuleScript'and t[N]then return J(N)end return g(N,...)end local U,V=function(U,...)if not N then T()end if f(U)=='number'and U>=0 then if U==0 then return S else U=U+1 local V,W=h(i,U)if V and W==R then return S end end end return i(U,...)end,function(U,V,...)if not N then T()end if f(U)=='number'and U>=0 then if U==0 then return j(S,V)else U=U+1 local W,X=h(i,U)if W and X==R then return j(S,V)end end end return j(U,V,...)end function T()R=i(0)local W={maui=O,script=P,require=Q,getfenv=U,setfenv=V}S=ac({},{__index=function(X,Y)local Z=k(S,Y)if Z~=nil then return Z end local _=W[Y]if _~=nil then return _ end return R[Y]end})j(M,S)N=true end return O,P,Q,U,V end for K,L in ag,v do o(J,L)end do local M for N,O in ag,E do if O.ClassName=='ModuleScript'and O.Name=='MainModule'then M=O break end end if M then return J(M)end end end
