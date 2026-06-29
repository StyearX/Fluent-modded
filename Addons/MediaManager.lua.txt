local MediaManager = {}
MediaManager.Folder = "BetterFluentCache"

function MediaManager:SetFolder(f)
    self.Folder=f
end

function MediaManager:_init(sub)
    pcall(function()
        if not isfolder(self.Folder) then makefolder(self.Folder) end
        local p=self.Folder.."/"..sub
        if not isfolder(p) then makefolder(p) end
    end)
end

function MediaManager:_rname(ext)
    local s="abcdefghijklmnopqrstuvwxyz0123456789"
    local n=""
    for _=1,12 do local i=math.random(1,#s); n=n..s:sub(i,i) end
    return n.."."..ext
end

function MediaManager:_fetch(src,sub,exts,defExt,noDownload)
    if type(src)~="string" or src=="" then return "" end
    if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
    if src:match("^%d+$") then return "rbxassetid://"..src end
    if not src:match("^https?://") then return "" end
    local cleanPath=src:match("^[^?#]+") or src
    local ext=(cleanPath:match("%.([^%.%/]+)$") or defExt):lower()
    if not exts[ext] then ext=defExt end
    local hs=game:GetService("HttpService")
    local mapPath="bfc_"..sub.."_map.json"
    local map={}
    pcall(function()
        if isfile(mapPath) then
            local ok,d=pcall(hs.JSONDecode,hs,readfile(mapPath))
            if ok and type(d)=="table" then map=d end
        end
    end)
    local key=tostring(#src).."_"..src:sub(1,40):gsub("[^%w]","")
    if map[key] then
        local cp=map[key]
        if isfile(cp) then
            local ok,a=pcall(getcustomasset,cp)
            if ok and a and a~="" then return a end
        end
        map[key]=nil
    end
    if noDownload then return nil end
    local body=nil
    local dlOk=pcall(function()
        local req=(syn and syn.request) or http_request or request
        local r=req({Url=src,Method="GET",Headers={["User-Agent"]="Roblox/WinInet"}})
        if r and r.Body and #r.Body>128 then body=r.Body end
    end)
    if not (dlOk and body) then return "" end
    local isFtyp=#body>=8 and body:sub(5,8)=="ftyp"
    local fname=self:_rname(isFtyp and "ogg" or ext)
    writefile(fname,body)
    if isfile(fname) then
        local ok2,a=pcall(getcustomasset,fname)
        if ok2 and a and a~="" then
            map[key]=fname
            pcall(function()
                local ok3,enc=pcall(hs.JSONEncode,hs,map)
                if ok3 then writefile(mapPath,enc) end
            end)
            return a
        end
    end
    return ""
end

function MediaManager:Video(src)
    if type(src)~="string" or src=="" then return "" end
    if src:match("^rbxassetid://") or src:match("^rbxasset://") then return src end
    if src:match("^%d+$") then return "rbxassetid://"..src end
    if not src:match("^https?://") then return "" end
    local ext=(src:match("%.(%a+)%??[^/]*$") or "webm"):lower()
    if not ({webm=1,mp4=1,ogg=1,mov=1})[ext] then ext="webm" end
    if ext=="mp4" or ext=="mov" then ext="webm" end
    self:_init("videos")
    local dir=self.Folder.."/videos"
    local mapPath=dir.."/_map.json"
    local hs=game:GetService("HttpService")
    local map={}
    pcall(function()
        if isfile(mapPath) then
            local ok,d=pcall(hs.JSONDecode,hs,readfile(mapPath))
            if ok and type(d)=="table" then map=d end
        end
    end)
    local key=tostring(#src).."_"..src:sub(1,40):gsub("[^%w]","")
    if map[key] then
        local cp=dir.."/"..map[key]
        if isfile(cp) then
            local ok,a=pcall(getcustomasset,cp)
            if ok and a and a~="" then return a end
        end
        map[key]=nil
    end
    local fname=self:_rname(ext)
    local path=dir.."/"..fname
    local body=nil
    local reqOk=pcall(function()
        local req=(syn and syn.request) or http_request or request
        local r=req({Url=src,Method="GET",Headers={["User-Agent"]="Roblox/WinInet"}})
        if r and r.Body and #r.Body>512 then
            local peek=r.Body:sub(1,15):lower()
            if peek:find("<!doctype") or peek:find("<html") then return end
            body=r.Body
            writefile(path,body)
        end
    end)
    if reqOk and body and isfile(path) then
        local ok2,a=pcall(getcustomasset,path)
        if ok2 and a and a~="" then
            map[key]=fname
            pcall(function()
                local ok3,enc=pcall(hs.JSONEncode,hs,map)
                if ok3 then writefile(mapPath,enc) end
            end)
            return a
        end
    end
    return ""
end

function MediaManager:Image(src) return self:_fetch(src,"images",{png=1,jpg=1,jpeg=1,webp=1,gif=1},"png") end
function MediaManager:Audio(src,noDownload) return self:_fetch(src,"audio",{mp3=1,ogg=1,wav=1,flac=1},"mp3",noDownload) end

return MediaManager
