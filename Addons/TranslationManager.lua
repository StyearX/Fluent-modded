local TranslationManager = {}
TranslationManager.Folder = "FluentSettings"
TranslationManager.Language = "en"
TranslationManager.Source = "en"
TranslationManager.Cache = {}
TranslationManager.Pending = {}
TranslationManager.Registered = {}
TranslationManager.Library = nil
TranslationManager.Options = nil
TranslationManager.MaxConcurrent = 6

TranslationManager.Languages = {
    {code="af",name="Afrikaans"},{code="sq",name="Albanian"},{code="am",name="Amharic"},
    {code="ar",name="Arabic"},{code="hy",name="Armenian"},{code="az",name="Azerbaijani"},
    {code="eu",name="Basque"},{code="be",name="Belarusian"},{code="bn",name="Bengali"},
    {code="bs",name="Bosnian"},{code="bg",name="Bulgarian"},{code="ca",name="Catalan"},
    {code="ceb",name="Cebuano"},{code="zh",name="Chinese (Simplified)"},{code="zh-TW",name="Chinese (Traditional)"},
    {code="co",name="Corsican"},{code="hr",name="Croatian"},{code="cs",name="Czech"},
    {code="da",name="Danish"},{code="nl",name="Dutch"},{code="en",name="English"},
    {code="eo",name="Esperanto"},{code="et",name="Estonian"},{code="fi",name="Finnish"},
    {code="fr",name="French"},{code="fy",name="Frisian"},{code="gl",name="Galician"},
    {code="ka",name="Georgian"},{code="de",name="German"},{code="el",name="Greek"},
    {code="gu",name="Gujarati"},{code="ht",name="Haitian Creole"},{code="ha",name="Hausa"},
    {code="haw",name="Hawaiian"},{code="iw",name="Hebrew"},{code="hi",name="Hindi"},
    {code="hmn",name="Hmong"},{code="hu",name="Hungarian"},{code="is",name="Icelandic"},
    {code="ig",name="Igbo"},{code="id",name="Indonesian"},{code="ga",name="Irish"},
    {code="it",name="Italian"},{code="ja",name="Japanese"},{code="jw",name="Javanese"},
    {code="kn",name="Kannada"},{code="kk",name="Kazakh"},{code="km",name="Khmer"},
    {code="rw",name="Kinyarwanda"},{code="ko",name="Korean"},{code="ku",name="Kurdish"},
    {code="ky",name="Kyrgyz"},{code="lo",name="Lao"},{code="la",name="Latin"},
    {code="lv",name="Latvian"},{code="lt",name="Lithuanian"},{code="lb",name="Luxembourgish"},
    {code="mk",name="Macedonian"},{code="mg",name="Malagasy"},{code="ms",name="Malay"},
    {code="ml",name="Malayalam"},{code="mt",name="Maltese"},{code="mi",name="Maori"},
    {code="mr",name="Marathi"},{code="mn",name="Mongolian"},{code="my",name="Myanmar"},
    {code="ne",name="Nepali"},{code="no",name="Norwegian"},{code="ny",name="Nyanja"},
    {code="or",name="Odia"},{code="ps",name="Pashto"},{code="fa",name="Persian"},
    {code="pl",name="Polish"},{code="pt",name="Portuguese"},{code="pa",name="Punjabi"},
    {code="ro",name="Romanian"},{code="ru",name="Russian"},{code="sm",name="Samoan"},
    {code="gd",name="Scots Gaelic"},{code="sr",name="Serbian"},{code="st",name="Sesotho"},
    {code="sn",name="Shona"},{code="sd",name="Sindhi"},{code="si",name="Sinhala"},
    {code="sk",name="Slovak"},{code="sl",name="Slovenian"},{code="so",name="Somali"},
    {code="es",name="Spanish"},{code="su",name="Sundanese"},{code="sw",name="Swahili"},
    {code="sv",name="Swedish"},{code="tl",name="Filipino"},{code="tg",name="Tajik"},
    {code="ta",name="Tamil"},{code="tt",name="Tatar"},{code="te",name="Telugu"},
    {code="th",name="Thai"},{code="tr",name="Turkish"},{code="tk",name="Turkmen"},
    {code="uk",name="Ukrainian"},{code="ur",name="Urdu"},{code="ug",name="Uyghur"},
    {code="uz",name="Uzbek"},{code="vi",name="Vietnamese"},{code="cy",name="Welsh"},
    {code="xh",name="Xhosa"},{code="yi",name="Yiddish"},{code="yo",name="Yoruba"},
    {code="zu",name="Zulu"},
}

local cacheSavePending = false

local function urlEncode(s)
    s = tostring(s or "")
    s = s:gsub("\n", "\r\n")
    s = s:gsub("([^%w%-%.%_%~ ])", function(c) return string.format("%%%02X", string.byte(c)) end)
    s = s:gsub(" ", "+")
    return s
end

local function cacheKey(text, from, to)
    return from..":"..to..":"..text
end

local function scheduleCacheSave()
    if cacheSavePending then return end
    cacheSavePending = true
    task.delay(1.5, function()
        cacheSavePending = false
        TranslationManager:SaveCache()
    end)
end

local function requestGoogle(text, from, to)
    local url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl="
        ..urlEncode(from).."&tl="..urlEncode(to).."&dt=t&dj=1&q="..urlEncode(text)
    local ok, raw = pcall(function() return game:HttpGet(url, true) end)
    if not ok or not raw then return nil end
    local jok, data = pcall(function() return game:GetService("HttpService"):JSONDecode(raw) end)
    if not jok or not data or not data.sentences then return nil end
    local parts = {}
    for _, s in ipairs(data.sentences) do
        if s.trans then table.insert(parts, s.trans) end
    end
    if #parts == 0 then return nil end
    return table.concat(parts)
end

local function requestMyMemory(text, from, to)
    local ok, raw = pcall(function()
        return game:HttpGet(
            "https://api.mymemory.translated.net/get?q="..urlEncode(text)
            .."&langpair="..urlEncode(from.."|"..to), true
        )
    end)
    if not ok or not raw then return nil end
    local jok, data = pcall(function() return game:GetService("HttpService"):JSONDecode(raw) end)
    if not jok or not data or not data.responseData then return nil end
    local t = data.responseData.translatedText
    if not t or #t == 0 or t:find("MYMEMORY WARNING") then return nil end
    return t
end

local function requestTranslation(text, from, to)
    local result = requestGoogle(text, from, to)
    if result then return result end
    task.wait(0.2)
    result = requestGoogle(text, from, to)
    if result then return result end
    result = requestMyMemory(text, from, to)
    if result then return result end
    return text
end

local function fetchTranslation(text, from, to, callback)
    if from == to or text == "" then callback(text) return end
    local k = cacheKey(text, from, to)
    if TranslationManager.Cache[k] then callback(TranslationManager.Cache[k]) return end
    if TranslationManager.Pending[k] then
        table.insert(TranslationManager.Pending[k], callback)
        return
    end
    TranslationManager.Pending[k] = {callback}
    task.spawn(function()
        local result = requestTranslation(text, from, to)
        TranslationManager.Cache[k] = result
        scheduleCacheSave()
        local cbs = TranslationManager.Pending[k]
        TranslationManager.Pending[k] = nil
        for _, cb in ipairs(cbs) do task.spawn(cb, result) end
    end)
end

function TranslationManager:SetLibrary(lib)
    self.Library = lib
    self.Options = lib.Options
end

function TranslationManager:SetFolder(folder)
    self.Folder = folder
    self:BuildFolderTree()
end

function TranslationManager:BuildFolderTree()
    if not isfolder(self.Folder) then makefolder(self.Folder) end
    if not isfolder(self.Folder.."/settings") then makefolder(self.Folder.."/settings") end
end

function TranslationManager:SaveSettings()
    local path = self.Folder.."/translation.json"
    local ok, enc = pcall(function()
        return game:GetService("HttpService"):JSONEncode({Language = self.Language})
    end)
    if ok then pcall(writefile, path, enc) end
end

function TranslationManager:LoadSettings()
    local path = self.Folder.."/translation.json"
    if isfile(path) then
        local ok, dec = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(path))
        end)
        if ok and dec and dec.Language then
            self.Language = dec.Language
        end
    end
end

function TranslationManager:LoadCache()
    local path = self.Folder.."/settings/cache.json"
    if isfile(path) then
        local ok, dec = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(path))
        end)
        if ok and type(dec) == "table" then
            self.Cache = dec
        end
    end
end

function TranslationManager:SaveCache()
    local path = self.Folder.."/settings/cache.json"
    local ok, enc = pcall(function()
        return game:GetService("HttpService"):JSONEncode(self.Cache)
    end)
    if ok then pcall(writefile, path, enc) end
end

function TranslationManager:ClearCache()
    self.Cache = {}
    pcall(writefile, self.Folder.."/settings/cache.json", "{}")
end

function TranslationManager:GetLanguageNames()
    local names = {}
    for _, l in ipairs(self.Languages) do
        table.insert(names, l.name)
    end
    return names
end

function TranslationManager:GetCodeFromName(name)
    for _, l in ipairs(self.Languages) do
        if l.name == name then return l.code end
    end
    return "en"
end

function TranslationManager:GetNameFromCode(code)
    for _, l in ipairs(self.Languages) do
        if l.code == code then return l.name end
    end
    return "English"
end

function TranslationManager:Register(text, callback)
    if not self.Registered[text] then
        self.Registered[text] = {}
    end
    table.insert(self.Registered[text], callback)
    fetchTranslation(text, self.Source, self.Language, callback)
end

function TranslationManager:SetLanguage(code)
    self.Language = code
    self:SaveSettings()
    local texts = {}
    for originalText in pairs(self.Registered) do
        table.insert(texts, originalText)
    end
    local total = #texts
    if total == 0 then return end
    local index, active = 0, 0
    local maxConcurrent = self.MaxConcurrent or 6
    local dispatch
    dispatch = function()
        while active < maxConcurrent and index < total do
            index = index + 1
            active = active + 1
            local originalText = texts[index]
            local callbacks = self.Registered[originalText]
            fetchTranslation(originalText, self.Source, code, function(translated)
                for _, cb in ipairs(callbacks) do
                    task.spawn(cb, translated)
                end
                active = active - 1
                dispatch()
            end)
        end
    end
    dispatch()
end

function TranslationManager:TranslateWindow(window)
    if not window then return end
    if window.TitleLabel then
        local orig = window.TitleLabel.Text or ""
        if orig ~= "" then
            self:Register(orig, function(t) pcall(function() window.TitleLabel.Text = t end) end)
        end
    end
    if window.SubTitleLabel then
        local orig = window.SubTitleLabel.Text or ""
        if orig ~= "" then
            self:Register(orig, function(t) pcall(function() window.SubTitleLabel.Text = t end) end)
        end
    end
end

function TranslationManager:TranslateElement(element, originalTitle, originalDesc)
    if not element then return end
    if originalTitle and originalTitle ~= "" then
        self:Register(originalTitle, function(t)
            pcall(function() element:SetTitle(t) end)
        end)
    end
    if originalDesc and originalDesc ~= "" then
        self:Register(originalDesc, function(t)
            pcall(function() element:SetDesc(t) end)
        end)
    end
end

function TranslationManager:WrapOptions(options)
    options = options or {}
    local wrapped = {}
    for k, v in pairs(options) do
        wrapped[k] = v
    end
    local origTitle = options.Title or ""
    local origDesc  = options.Description or ""
    return wrapped, origTitle, origDesc
end

function TranslationManager:PatchSection(section)
    if not section then return end
    local elementTypes = {
        "Toggle","Slider","Dropdown","Button","Input","Keybind","Colorpicker","Paragraph"
    }
    for _, etype in ipairs(elementTypes) do
        local methodName = "Add"..etype
        local original = section[methodName]
        if original then
            section[methodName] = function(sec, id, opts)
                local o = opts or {}
                local el = original(sec, id, o)
                if el then
                    if o.Title and o.Title ~= "" then
                        self:Register(o.Title, function(t)
                            pcall(function() el:SetTitle(t) end)
                        end)
                    end
                    if o.Description and o.Description ~= "" then
                        self:Register(o.Description, function(t)
                            pcall(function() el:SetDesc(t) end)
                        end)
                    end
                end
                return el
            end
        end
    end
end

function TranslationManager:PatchTab(tab)
    if not tab then return end
    local originalAddSection = tab.AddSection
    if originalAddSection then
        tab.AddSection = function(t, title)
            local section = originalAddSection(t, title)
            if title and title ~= "" then
                self:Register(title, function(translated)
                    pcall(function()
                        if section.Frame then
                            for _, desc in pairs(section.Frame:GetDescendants()) do
                                if desc:IsA("TextLabel") and desc.Text == title then
                                    desc.Text = translated
                                end
                            end
                        end
                    end)
                end)
            end
            self:PatchSection(section)
            return section
        end
    end
end

function TranslationManager:PatchWindow(window)
    if not window then return end
    local originalAddTab = window.AddTab
    if originalAddTab then
        window.AddTab = function(w, opts)
            local o = opts or {}
            local tab = originalAddTab(w, o)
            if tab then
                if o.Title and o.Title ~= "" then
                    self:Register(o.Title, function(translated)
                        pcall(function()
                            if tab.Button then
                                for _, desc in pairs(tab.Button:GetDescendants()) do
                                    if desc:IsA("TextLabel") and desc.Text == o.Title then
                                        desc.Text = translated
                                    end
                                end
                            end
                        end)
                    end)
                end
                self:PatchTab(tab)
            end
            return tab
        end
    end
end

function TranslationManager:BuildTranslationSection(tab)
    assert(self.Library, "Must call TranslationManager:SetLibrary(Fluent) first")
    self:LoadSettings()

    local section = tab:AddSection("Translation")

    local langNames = self:GetLanguageNames()
    local currentName = self:GetNameFromCode(self.Language)

    local dropdown = section:AddDropdown("TranslationLanguage", {
        Title = "Language",
        Description = "Translate the entire interface",
        Values = langNames,
        Default = currentName,
        Icon = "solar/global-bold",
        DropdownOutsideWindow = true,
        IsManagerDropdown = true,
        Callback = function(selectedName)
            local code = self:GetCodeFromName(selectedName)
            self:SetLanguage(code)
            if self.Library then
                self.Library:Notify({
                    Title = "Translation",
                    Content = "Language changed to "..selectedName,
                    Duration = 4
                })
            end
        end
    })

    dropdown:SetValue(currentName)

    section:AddButton({
        Title = "Reset to English",
        Icon = "solar/refresh-bold",
        Callback = function()
            self:SetLanguage("en")
            dropdown:SetValue("English")
            if self.Library then
                self.Library:Notify({
                    Title = "Translation",
                    Content = "Reset to English",
                    Duration = 3
                })
            end
        end
    })

    section:AddButton({
        Title = "Clear Cache",
        Icon = "solar/trash-bin-trash-bold",
        Description = "Clear all cached translations",
        Callback = function()
            self:ClearCache()
            if self.Library then
                self.Library:Notify({
                    Title = "Translation",
                    Content = "Cache cleared",
                    Duration = 3
                })
            end
        end
    })
end

TranslationManager:BuildFolderTree()
TranslationManager:LoadCache()

return TranslationManager
