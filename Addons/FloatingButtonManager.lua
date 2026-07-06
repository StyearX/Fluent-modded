local httpService = game:GetService("HttpService")

local FloatingButtonManager = {}
FloatingButtonManager.Folder = "FloatingButtons"
FloatingButtonManager.Buttons = {}
FloatingButtonManager.Library = nil

local function serUDim2(u) return{ScaleX=u.X.Scale,OffsetX=u.X.Offset,ScaleY=u.Y.Scale,OffsetY=u.Y.Offset} end
local function desUDim2(t) return UDim2.new(t.ScaleX or 0,t.OffsetX or 0,t.ScaleY or 0,t.OffsetY or 0) end

function FloatingButtonManager:SetLibrary(lib) self.Library=lib end
function FloatingButtonManager:SetFolder(folder) self.Folder=folder; self:BuildFolderTree() end
function FloatingButtonManager:SetIgnoreIndexes(list) end
function FloatingButtonManager:BuildFolderTree()
    local paths={self.Folder,self.Folder.."/settings"}
    for _,p in ipairs(paths) do if not isfolder(p) then makefolder(p) end end
end
function FloatingButtonManager:AddButton(id,frameOrButton,locked,isCircle,applyShapeCallback,frame)
    local targetFrame=frame or frameOrButton
    if frameOrButton:IsA("TextButton") and not frame then
        local p=frameOrButton.Parent
        if p and p:IsA("Frame") then targetFrame=p end
    end
    self.Buttons[id]={
        frame      =targetFrame,
        button     =frameOrButton,
        applyShape =applyShapeCallback,
    }
    targetFrame:SetAttribute("Locked",  locked   or false)
    targetFrame:SetAttribute("IsCircle",isCircle or false)
end
function FloatingButtonManager:Save(name)
    local path=self.Folder.."/settings/"..name..".json"
    local data={}
    for id,entry in pairs(self.Buttons) do
        local f=entry.frame or entry
        data[id]={
            size    =serUDim2(f.Size),
            position=serUDim2(f.Position),
            locked  =f:GetAttribute("Locked")   or false,
            isCircle=f:GetAttribute("IsCircle") or false,
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
            local f=entry.frame or entry
            if saved.position then f.Position=desUDim2(saved.position) end
            if saved.size     then f.Size    =desUDim2(saved.size)     end
            f:SetAttribute("Locked",  saved.locked   or false)
            f:SetAttribute("IsCircle",saved.isCircle or false)
            if entry.applyShape then
                task.defer(function() pcall(entry.applyShape,saved.isCircle or false) end)
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
FloatingButtonManager:BuildFolderTree()

return FloatingButtonManager
