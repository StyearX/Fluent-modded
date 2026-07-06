local httpService = game:GetService("HttpService")

local SaveManager = {}
SaveManager.Folder = "FluentSettings"
SaveManager.Ignore = {}
SaveManager.Parser = {
    Toggle     = { Save=function(idx,o) return{type="Toggle",idx=idx,value=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
    Checkbox   = { Save=function(idx,o) return{type="Checkbox",idx=idx,value=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
    Slider     = { Save=function(idx,o) return{type="Slider",idx=idx,value=tostring(o.Value)} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
    Dropdown   = { Save=function(idx,o) return{type="Dropdown",idx=idx,value=o.Value,mutli=o.Multi} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.value) end end },
    Colorpicker= { Save=function(idx,o) return{type="Colorpicker",idx=idx,value=o.Value:ToHex(),transparency=o.Transparency} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValueRGB(Color3.fromHex(d.value),d.transparency) end end },
    Keybind    = { Save=function(idx,o) return{type="Keybind",idx=idx,mode=o.Mode,key=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] then SaveManager.Options[idx]:SetValue(d.key,d.mode) end end },
    Input      = { Save=function(idx,o) return{type="Input",idx=idx,text=o.Value} end, Load=function(idx,d) if SaveManager.Options[idx] and type(d.text)=="string" then SaveManager.Options[idx]:SetValue(d.text) end end },
}
function SaveManager:SetIgnoreIndexes(list) for _,k in next,list do self.Ignore[k]=true end end
function SaveManager:IgnoreIndexes(list) self:SetIgnoreIndexes(list) end
function SaveManager:SetFolder(folder) self.Folder=folder; self:BuildFolderTree() end
function SaveManager:BuildFolderTree()
    local paths={self.Folder, self.Folder.."/settings"}
    for _,p in ipairs(paths) do if not isfolder(p) then makefolder(p) end end
end
function SaveManager:SetLibrary(lib) self.Library=lib; self.Options=lib.Options end
function SaveManager:IgnoreThemeSettings() self:SetIgnoreIndexes({"InterfaceTheme","AcrylicToggle","TransparentToggle","MenuKeybind","AnimationToggle"}) end
function SaveManager:Save(name)
    if not name then return false,"no config selected" end
    local data={objects={}}
    for idx,opt in next,SaveManager.Options do
        if self.Parser[opt.Type] and not self.Ignore[idx] then
            table.insert(data.objects, self.Parser[opt.Type].Save(idx,opt))
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
    sec:AddInput("SaveManager_ConfigName",{Title="Config name",Icon="solar/pen-new-round-bold"})
    sec:AddDropdown("SaveManager_ConfigList",{Title="Config list",Values=self:RefreshConfigList(),AllowNull=true,NoSearch=true,Icon="solar/list-bold",DropdownOutsideWindow=true,IsManagerDropdown=true})
    sec:AddButton({Title="Load config",Icon="solar/upload-minimalistic-bold",Callback=function()
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
    sec:AddButton({Title="Create config",Icon="solar/diskette-bold",Callback=function()
        local name=SaveManager.Options.SaveManager_ConfigName.Value
        if name:gsub(" ","")=="" then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Invalid name",Duration=7}) end
        local path=self.Folder.."/settings/"..name..".json"
        local win=self.Library.Window
        if isfile(path) and win then
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
        _doCreate(name)
    end})
    sec:AddButton({Title="Overwrite config",Icon="solar/refresh-bold",Callback=function()
        local name=SaveManager.Options.SaveManager_ConfigList.Value
        local ok,err=self:Save(name)
        if not ok then return self.Library:Notify({Title="Interface",Content="Config loader",SubContent="Failed: "..err,Duration=7}) end
        self.Library:Notify({Title="Interface",Content="Config loader",SubContent=string.format("Overwrote %q",name),Duration=7})
    end})
    sec:AddButton({Title="Delete config",Icon="solar/trash-bin-trash-bold",Callback=function()
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
    sec:AddButton({Title="Refresh list",Icon="solar/restart-bold",Callback=function()
        SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
        SaveManager.Options.SaveManager_ConfigList:SetValue(nil)
    end})
    local autoBtn,_autoPath=nil,self.Folder.."/settings/autoload.txt"
    autoBtn=sec:AddButton({Title="Set as autoload",Icon="solar/star-bold",Description="Current autoload: none",Callback=function()
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

return SaveManager
