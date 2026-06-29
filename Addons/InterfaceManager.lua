local httpService = game:GetService("HttpService")

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
    if type(self.Settings.Favorites)~="table" then self.Settings.Favorites={} end
    return self.Settings.Favorites
end
function InterfaceManager:IsFavorite(name)
    for _,v in ipairs(self:GetFavorites()) do if v==name then return true end end
    return false
end
function InterfaceManager:SetFavorite(name,isFav)
    local favs=self:GetFavorites()
    if isFav then
        if not self:IsFavorite(name) then table.insert(favs,1,name) end
    else
        for i,v in ipairs(favs) do if v==name then table.remove(favs,i); break end end
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
                    InterfaceManager.Settings.Favorites=type(v)=="table" and v or {}
                else
                    InterfaceManager.Settings[i]=v
                end
            end
        end
    end
    local lib=self.Library
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
    GothamSSm       ="rbxasset://fonts/families/GothamSSm.json",
    Gotham          ="rbxasset://fonts/families/Gotham.json",
    Arial           ="rbxasset://fonts/families/Arial.json",
    ArialBold       ="rbxasset://fonts/families/Arial.json",
    Roboto          ="rbxasset://fonts/families/Roboto.json",
    RobotoMono      ="rbxasset://fonts/families/RobotoMono.json",
    SourceSans      ="rbxasset://fonts/families/SourceSansPro.json",
    SourceSansBold  ="rbxasset://fonts/families/SourceSansPro.json",
    SourceSansItalic="rbxasset://fonts/families/SourceSansPro.json",
    SourceSansSemibold="rbxasset://fonts/families/SourceSansPro.json",
    SourceSansLight ="rbxasset://fonts/families/SourceSansPro.json",
    Silkscreen      ="rbxasset://fonts/families/Silkscreen.json",
    Nunito          ="rbxasset://fonts/families/Nunito.json",
    Ubuntu          ="rbxasset://fonts/families/Ubuntu.json",
    LuckiestGuy     ="rbxasset://fonts/families/LuckiestGuy.json",
    IndieFlower     ="rbxasset://fonts/families/IndieFlower.json",
    TitilliumWeb    ="rbxasset://fonts/families/TitilliumWeb.json",
    Oswald          ="rbxasset://fonts/families/Oswald.json",
    Balthazar       ="rbxasset://fonts/families/Balthazar.json",
    Jura            ="rbxasset://fonts/families/Jura.json",
}
InterfaceManager.FontWeights = {
    ArialBold         =Enum.FontWeight.Bold,
    SourceSansBold    =Enum.FontWeight.Bold,
    SourceSansItalic  =Enum.FontWeight.Regular,
    SourceSansSemibold=Enum.FontWeight.SemiBold,
    SourceSansLight   =Enum.FontWeight.Light,
}
InterfaceManager.FontStyles = {
    SourceSansItalic=Enum.FontStyle.Italic,
}
function InterfaceManager:ApplyFont(name)
    local path=self.FontPaths[name]
    if not path then return end
    local weight=self.FontWeights[name] or Enum.FontWeight.Regular
    local style=self.FontStyles[name] or Enum.FontStyle.Normal
    local newFont=Font.new(path,weight,style)
    local gui=self.Library and self.Library.GUI
    if not gui then return end
    local function apply(inst,depth)
        if depth>12 then return end
        for _,ch in ipairs(inst:GetChildren()) do
            if ch:IsA("TextLabel") or ch:IsA("TextButton") or ch:IsA("TextBox") then
                pcall(function() ch.FontFace=newFont end)
            end
            apply(ch,depth+1)
        end
    end
    apply(gui,0)
    self.Settings.Font=name
    self:SaveSettings()
end
function InterfaceManager:ApplyCustomFont(source,weight,style)
    local newFont
    local ok=pcall(function()
        local src=tostring(source or "")
        local fw=weight or Enum.FontWeight.Regular
        local fs=style or Enum.FontStyle.Normal
        if src:match("^rbxasset://") then
            newFont=Font.new(src,fw,fs)
        elseif src:match("^rbxassetid://") then
            local id=tonumber(src:match("%d+"))
            newFont=Font.fromId(id,fw,fs)
        elseif tonumber(src) then
            newFont=Font.fromId(tonumber(src),fw,fs)
        elseif self.FontPaths[src] then
            newFont=Font.new(self.FontPaths[src],fw,fs)
        else
            newFont=Font.new("rbxasset://fonts/families/"..src..".json",fw,fs)
        end
    end)
    if not ok or not newFont then return end
    local gui=self.Library and self.Library.GUI
    if not gui then return end
    local function apply(inst,depth)
        if depth>12 then return end
        for _,ch in ipairs(inst:GetChildren()) do
            if ch:IsA("TextLabel") or ch:IsA("TextButton") or ch:IsA("TextBox") then
                pcall(function() ch.FontFace=newFont end)
            end
            apply(ch,depth+1)
        end
    end
    apply(gui,0)
    self.Settings.CustomFont=tostring(source)
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
        Title="Theme",Description="Changes the interface theme.",
        Icon="solar/palette-bold",
        Values=Library.Themes,Default=Settings.Theme,
        IsThemeSelector=true,
        DropdownOutsideWindow=true,
        IsManagerDropdown=true,
        Callback=function(Value)
            Library:SetTheme(Value); Settings.Theme=Value; InterfaceManager:SaveSettings()
        end
    })
    InterfaceTheme:SetValue(Settings.Theme)
    section:AddToggle("AnimationToggle",{Title="Animated Window",Description="Enables shine/stroke animation on theme.",Icon="solar/stars-bold",Default=Settings.Animated,Callback=function(Value)
        getgenv().ShineEnabled=Value; Settings.Animated=Value; InterfaceManager:SaveSettings()
        Library:SetTheme(Library.Theme)
        if getgenv()._FluentProRefreshOpenDropdownShine then getgenv()._FluentProRefreshOpenDropdownShine() end
    end})
    section:AddToggle("TransparentToggle",{Title="Transparency",Description="Makes the interface transparent.",Icon="solar/eye-bold",Default=Settings.Transparency,Callback=function(Value)
        Library:ToggleTransparency(Value); Settings.Transparency=Value; InterfaceManager:SaveSettings()
        if getgenv()._FluentProManagerDropdowns then
            for _,fn in ipairs(getgenv()._FluentProManagerDropdowns) do pcall(fn) end
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
        Title="Font Manager",Description="Changes the UI font.",
        Icon="solar/text-bold",
        Values=InterfaceManager.Fonts,Default=Settings.Font or "GothamSSm",
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

return InterfaceManager
