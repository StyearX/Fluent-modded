local Root    = script.Parent.Parent
local TweenS  = game:GetService("TweenService")
local Http    = game:GetService("HttpService")
local Creator = require(Root.Creator)
local New     = Creator.New

local Discord = {}
Discord.__index = Discord
Discord.__type  = "Discord"

function Discord:New(idx, config)
	assert(config.InviteCode or config.Invite, "Discord - Missing InviteCode")
	local lib = self.Library

	local inviteCode = tostring(config.InviteCode or config.Invite):match("[%w%-]+$") or ""

	local wrap = New("Frame", {
		Size                 = UDim2.new(1, 0, 0, 78),
		BackgroundTransparency = 0.82,
		BorderSizePixel      = 0,
		Parent               = self.Container,
		ThemeTag             = { BackgroundColor3 = "Element" },
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 12) }),
		New("UIStroke", { Transparency = 0.45, Thickness = 1, ThemeTag = { Color = "InElementBorder" } }),
	})

	local iconBg = New("Frame", {
		Size                = UDim2.fromOffset(50, 50),
		Position            = UDim2.new(0, 12, 0.5, 0),
		AnchorPoint         = Vector2.new(0, 0.5),
		BackgroundColor3    = Color3.fromRGB(88, 101, 242),
		Parent              = wrap,
		ClipsDescendants    = true,
	}, {
		New("UICorner", { CornerRadius = UDim.new(0.2, 0) }),
	})

	local iconImg = New("ImageLabel", {
		Size                = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Parent              = iconBg,
	}, {
		New("UICorner", { CornerRadius = UDim.new(0.2, 0) }),
	})

	-- default icon
	local defaultIco = lib:GetIcon and lib:GetIcon("solar/chat-round-bold")
	if defaultIco and type(defaultIco) == "table" then
		iconImg.Image           = defaultIco.Image or ""
		iconImg.ImageRectOffset = defaultIco.ImageRectOffset or Vector2.new()
		iconImg.ImageRectSize   = defaultIco.ImageRectSize or Vector2.new()
		iconImg.ImageColor3     = Color3.fromRGB(255, 255, 255)
	end

	local nameLabel = New("TextLabel", {
		FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold),
		Text        = "Loading...",
		TextSize    = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		BackgroundTransparency = 1,
		Size        = UDim2.new(1, -140, 0, 16),
		Position    = UDim2.new(0, 70, 0, 13),
		ThemeTag    = { TextColor3 = "Text" },
		Parent      = wrap,
	})

	local memberLabel = New("TextLabel", {
		FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json"),
		Text        = "Fetching info...",
		TextSize    = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Size        = UDim2.new(1, -140, 0, 13),
		Position    = UDim2.new(0, 70, 0, 31),
		ThemeTag    = { TextColor3 = "SubText" },
		Parent      = wrap,
	})

	local joinBtn = New("TextButton", {
		Text        = "Join",
		Size        = UDim2.fromOffset(52, 28),
		Position    = UDim2.new(1, -12, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = Color3.fromRGB(88, 101, 242),
		TextColor3  = Color3.fromRGB(255, 255, 255),
		FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold),
		TextSize    = 12,
		Parent      = wrap,
	}, {
		New("UICorner", { CornerRadius = UDim.new(0, 8) }),
	})

	local dot = New("Frame", {
		Size             = UDim2.fromOffset(7, 7),
		Position         = UDim2.new(0, 70, 0, 51),
		BackgroundColor3 = Color3.fromRGB(80, 80, 90),
		BorderSizePixel  = 0,
		Parent           = wrap,
	}, {
		New("UICorner", { CornerRadius = UDim.new(1, 0) }),
	})

	local onlineLabel = New("TextLabel", {
		FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json"),
		Text        = "",
		TextSize    = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
		Size        = UDim2.new(1, -100, 0, 12),
		Position    = UDim2.new(0, 82, 0, 47),
		ThemeTag    = { TextColor3 = "SubText" },
		Parent      = wrap,
	})

	local function applyFallbackLetter(guildName)
		iconImg.Image = ""
		iconBg.BackgroundTransparency = 0
		local existing = iconBg:FindFirstChild("_FbLbl")
		if existing then existing:Destroy() end
		New("TextLabel", {
			Name        = "_FbLbl",
			Size        = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Text        = (guildName or "?"):sub(1, 1):upper(),
			TextColor3  = Color3.fromRGB(255, 255, 255),
			TextSize    = 22,
			FontFace    = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold),
			Parent      = iconBg,
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
		dot.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
		onlineLabel.Text = ""

		task.spawn(function()
			local discordAPI = "https://discord.com/api/v10/invites/" .. code .. "?with_counts=true&with_expiration=true"
			local ok, data = pcall(function()
				local RS = game:GetService("ReplicatedStorage")
				local remote = RS:FindFirstChild("GetDiscordInviteData")
				if remote then return remote:InvokeServer(code) end

				local req = (syn and syn.request) or (http and http.request) or http_request or request
				if req then
					local res = req({
						Url     = discordAPI,
						Method  = "GET",
						Headers = { ["User-Agent"] = "RobloxBot/1.0", ["Accept"] = "application/json" },
					})
					if res and res.Body and #res.Body > 2 then
						return Http:JSONDecode(res.Body)
					end
				end

				local body = Http:GetAsync(discordAPI, true)
				if body then return Http:JSONDecode(body) end
			end)

			if ok and data and data.guild then
				local guild = data.guild
				nameLabel.Text = guild.name or "Unknown Server"
				memberLabel.Text = data.approximate_member_count and (tostring(data.approximate_member_count) .. " members") or "Members unavailable"
				onlineLabel.Text = data.approximate_presence_count and (tostring(data.approximate_presence_count) .. " online") or ""
				dot.BackgroundColor3 = Color3.fromRGB(67, 181, 129)

				local ih = guild.icon
				if ih and ih ~= "" then
					local iconUrl = "https://cdn.discordapp.com/icons/" .. tostring(guild.id) .. "/" .. ih .. ".png?size=128"
					local fileName = "discord_icon_" .. tostring(guild.id) .. ".png"
					local loadOk, asset = pcall(function()
						local req2 = (syn and syn.request) or (http and http.request) or http_request or request
						if not req2 then error("no req") end
						local imgRes = req2({
							Url     = iconUrl,
							Method  = "GET",
							Headers = { ["User-Agent"] = "Mozilla/5.0", ["Accept"] = "image/png" },
						})
						if not imgRes or not imgRes.Body or #imgRes.Body < 100 then error("bad img") end
						writefile(fileName, imgRes.Body)
						return getcustomasset(fileName)
					end)
					if loadOk and asset and asset ~= "" then
						iconImg.Image = asset
						iconImg.ImageColor3 = Color3.fromRGB(255, 255, 255)
						iconBg.BackgroundTransparency = 1
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
				dot.BackgroundColor3 = Color3.fromRGB(240, 71, 71)
				onlineLabel.Text = ""
			end
		end)
	end

	joinBtn.MouseButton1Click:Connect(function()
		if inviteCode ~= "" then
			local full = "https://discord.gg/" .. inviteCode
			pcall(function() setclipboard(full) end)
			lib:Notify({ Title = "Discord", Content = "Copied: " .. full, Type = "Info", Duration = 3 })
		end
	end)

	fetchData(inviteCode)

	local obj = { Frame = wrap, Type = "Discord" }

	function obj:SetInvite(code)
		inviteCode = tostring(code):match("[%w%-]+$") or ""
		fetchData(inviteCode)
	end

	function obj:Destroy()
		wrap:Destroy()
	end

	return obj
end

return Discord
