local TranslationManager = {}
TranslationManager.Folder = "FluentSettings"
TranslationManager.Language = "en"
TranslationManager.Source = "en"
TranslationManager.Cache = {}
TranslationManager.Pending = {}
TranslationManager.Library = nil
TranslationManager.Bindings = {}

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

local HttpService = game:GetService("HttpService")

local function urlEncode(s)
	s = tostring(s or "")
	s = s:gsub("\n", "\r\n")
	s = s:gsub("([^%w%-%.%_%~ ])", function(c) return ("%%%02X"):format(string.byte(c)) end)
	s = s:gsub(" ", "+")
	return s
end

local function fetch(text, from, to, callback)
	if not text or text == "" or from == to then callback(text) return end
	local k = from..":"..to..":"..text
	if TranslationManager.Cache[k] then callback(TranslationManager.Cache[k]) return end
	if TranslationManager.Pending[k] then
		table.insert(TranslationManager.Pending[k], callback)
		return
	end
	TranslationManager.Pending[k] = {callback}
	task.spawn(function()
		local result = text
		local ok, raw = pcall(game.HttpGet, game,
			"https://api.mymemory.translated.net/get?q="..urlEncode(text)
			.."&langpair="..urlEncode(from.."|"..to), true)
		if ok and raw then
			local jok, data = pcall(HttpService.JSONDecode, HttpService, raw)
			if jok and data and data.responseData then
				local t = data.responseData.translatedText
				if t and #t > 0 and not t:find("MYMEMORY WARNING") then
					result = t
				end
			end
		end
		TranslationManager.Cache[k] = result
		local cbs = TranslationManager.Pending[k]
		TranslationManager.Pending[k] = nil
		for _, cb in ipairs(cbs or {}) do task.spawn(cb, result) end
	end)
end

local function fetchBatch(texts, from, to, callback)
	if from == to then
		local r = {}
		for _, t in ipairs(texts) do r[t] = t end
		callback(r)
		return
	end
	local unique, seen, results = {}, {}, {}
	for _, t in ipairs(texts) do
		if not seen[t] then seen[t] = true; table.insert(unique, t) end
	end
	local total = #unique
	if total == 0 then callback(results) return end
	local done = 0
	for _, text in ipairs(unique) do
		fetch(text, from, to, function(translated)
			results[text] = translated
			done = done + 1
			if done >= total then callback(results) end
		end)
		task.wait(0.05)
	end
end

-- add a setter function bound to an original text string
local function addBinding(origText, setter)
	if not origText or origText == "" then return end
	if not TranslationManager.Bindings[origText] then
		TranslationManager.Bindings[origText] = {}
	end
	table.insert(TranslationManager.Bindings[origText], setter)
	if TranslationManager.Language ~= TranslationManager.Source then
		fetch(origText, TranslationManager.Source, TranslationManager.Language, setter)
	end
end

-- find a specific TextLabel whose text == original inside a frame
local function findLabel(root, original)
	if not root or not root:IsA("Instance") then return nil end
	for _, d in ipairs(root:GetDescendants()) do
		if (d:IsA("TextLabel") or d:IsA("TextButton")) and d.Text == original then
			return d
		end
	end
	return nil
end

-- bind a direct TextLabel reference — re-translate always works regardless of current text
local function bindLabel(label, origText)
	if not label then return end
	addBinding(origText, function(t)
		pcall(function() label.Text = t end)
	end)
end

-- ─── public ──────────────────────────────────────────────────────────────────

function TranslationManager:SetLibrary(lib)
	self.Library = lib
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
	local ok, enc = pcall(HttpService.JSONEncode, HttpService, {Language = self.Language})
	if ok then pcall(writefile, self.Folder.."/translation.json", enc) end
end

function TranslationManager:LoadSettings()
	local path = self.Folder.."/translation.json"
	if isfile(path) then
		local ok, dec = pcall(HttpService.JSONDecode, HttpService, readfile(path))
		if ok and dec and dec.Language then self.Language = dec.Language end
	end
end

function TranslationManager:GetLanguageNames()
	local t = {}
	for _, l in ipairs(self.Languages) do table.insert(t, l.name) end
	return t
end

function TranslationManager:GetCodeFromName(name)
	for _, l in ipairs(self.Languages) do if l.name == name then return l.code end end
	return "en"
end

function TranslationManager:GetNameFromCode(code)
	for _, l in ipairs(self.Languages) do if l.code == code then return l.name end end
	return "English"
end

-- batch all registered texts and apply to all stored setters
function TranslationManager:SetLanguage(code)
	self.Language = code
	self:SaveSettings()
	local texts = {}
	for origText in pairs(self.Bindings) do table.insert(texts, origText) end
	fetchBatch(texts, self.Source, code, function(results)
		for origText, setters in pairs(self.Bindings) do
			local translated = results[origText] or origText
			for _, setter in ipairs(setters) do
				task.spawn(setter, translated)
			end
		end
	end)
end

-- bind element's Title and Description via SetTitle/SetDesc + direct label ref
function TranslationManager:BindElement(el, origTitle, origDesc)
	if not el then return end
	if origTitle and origTitle ~= "" then
		if type(el.SetTitle) == "function" then
			addBinding(origTitle, function(t) pcall(function() el:SetTitle(t) end) end)
		end
		task.defer(function()
			local frame = rawget(el, "Frame") or el
			if typeof(frame) == "Instance" then
				local label = findLabel(frame, origTitle)
				if label then bindLabel(label, origTitle) end
			end
		end)
	end
	if origDesc and origDesc ~= "" then
		if type(el.SetDesc) == "function" then
			addBinding(origDesc, function(t) pcall(function() el:SetDesc(t) end) end)
		end
		task.defer(function()
			local frame = rawget(el, "Frame") or el
			if typeof(frame) == "Instance" then
				local label = findLabel(frame, origDesc)
				if label then bindLabel(label, origDesc) end
			end
		end)
	end
end

-- bind section header TextLabel directly
function TranslationManager:BindSection(section, origTitle)
	if not origTitle or origTitle == "" or not section then return end
	task.defer(function()
		local frame = rawget(section, "Frame") or section
		local label = typeof(frame) == "Instance" and findLabel(frame, origTitle)
		if not label and self.Library and self.Library.GUI then
			label = findLabel(self.Library.GUI, origTitle)
		end
		if label then bindLabel(label, origTitle) end
	end)
end

-- bind tab button TextLabel directly
function TranslationManager:BindTab(tab, origTitle)
	if not origTitle or origTitle == "" or not tab then return end
	task.defer(function()
		local btn = rawget(tab, "Button")
		local label = btn and typeof(btn) == "Instance" and findLabel(btn, origTitle)
		if not label and self.Library and self.Library.GUI then
			label = findLabel(self.Library.GUI, origTitle)
		end
		if label then bindLabel(label, origTitle) end
	end)
end

-- ─── patching ────────────────────────────────────────────────────────────────

function TranslationManager:PatchSection(section)
	if not section or rawget(section, "__tm") then return end
	rawset(section, "__tm", true)
	local _self = self
	local types = {"Toggle","Slider","Dropdown","Button","Input","Keybind","Colorpicker","Paragraph"}
	for _, etype in ipairs(types) do
		local orig = section["Add"..etype]
		if type(orig) == "function" then
			section["Add"..etype] = function(sec, idOrOpts, opts)
				local el = orig(sec, idOrOpts, opts)
				local o = (type(idOrOpts) == "table" and idOrOpts) or (type(opts) == "table" and opts) or {}
				if el then _self:BindElement(el, o.Title, o.Description) end
				return el
			end
		end
	end
end

function TranslationManager:PatchTab(tab)
	if not tab or rawget(tab, "__tm") then return end
	rawset(tab, "__tm", true)
	local origAddSection = tab.AddSection
	if type(origAddSection) ~= "function" then return end
	local _self = self
	tab.AddSection = function(t, title)
		local section = origAddSection(t, title)
		if section then _self:BindSection(section, title) end
		_self:PatchSection(section)
		return section
	end
end

function TranslationManager:PatchWindow(window)
	if not window or rawget(window, "__tm") then return end
	rawset(window, "__tm", true)
	local origAddTab = window.AddTab
	if type(origAddTab) ~= "function" then return end
	local _self = self
	window.AddTab = function(w, opts)
		local o = opts or {}
		local tab = origAddTab(w, o)
		if tab then _self:BindTab(tab, o.Title) end
		_self:PatchTab(tab)
		return tab
	end
end

-- ─── settings section ────────────────────────────────────────────────────────

function TranslationManager:BuildTranslationSection(tab)
	assert(self.Library, "TranslationManager: call SetLibrary(Fluent) first")
	self:LoadSettings()

	local section = tab:AddSection("Translation")
	local langNames   = self:GetLanguageNames()
	local currentName = self:GetNameFromCode(self.Language)

	local dropdown = section:AddDropdown("TranslationLanguage", {
		Title       = "Language",
		Description = "Translate the entire interface",
		Icon        = "solar/global-bold",
		Values      = langNames,
		Default     = currentName,
		Callback    = function(selectedName)
			local code = self:GetCodeFromName(selectedName)
			if code == self.Language then return end
			self:SetLanguage(code)
			if self.Library then
				self.Library:Notify({Title = "Translation", Content = "Applying "..selectedName.."...", Duration = 3})
			end
		end,
	})

	dropdown:SetValue(currentName)

	section:AddButton({
		Title    = "Reset to English",
		Icon     = "solar/refresh-bold",
		Callback = function()
			if self.Language == "en" then return end
			self:SetLanguage("en")
			dropdown:SetValue("English")
			if self.Library then
				self.Library:Notify({Title = "Translation", Content = "Reset to English", Duration = 3})
			end
		end,
	})

	section:AddButton({
		Title       = "Clear Cache",
		Icon        = "solar/trash-bin-trash-bold",
		Description = "Force re-fetch all translations",
		Callback    = function()
			self.Cache = {}
			if self.Library then
				self.Library:Notify({Title = "Translation", Content = "Cache cleared", Duration = 3})
			end
		end,
	})
end

TranslationManager:BuildFolderTree()

return TranslationManager
