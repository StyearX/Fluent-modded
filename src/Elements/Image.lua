local Root    = script.Parent.Parent
local Creator = require(Root.Creator)
local New     = Creator.New

local Image = {}
Image.__index = Image
Image.__type  = "Image"

function Image:New(_, config)
	local D      = (type(config) == "table") and config or {}
	local parent = self.Container
	local lib    = self.Library
	local ratio  = D.AspectRatio or "16:9"
	local radius = D.Radius or 8
	local src    = D.Image or ""

	local function resolve(s)
		local mm = lib and lib.MediaManager
		if mm then return mm:Image(s) end
		if type(s) ~= "string" or s == "" then return "" end
		if s:match("^rbxassetid://") or s:match("^rbxasset://") then return s end
		if s:match("^%d+$") then return "rbxassetid://" .. s end
		return s
	end

	local function parseRatio(r)
		if type(r) == "number" then return r end
		local w, h = tostring(r):match("(%d+):(%d+)")
		if w and h then return tonumber(w) / tonumber(h) end
		return 16 / 9
	end

	local ratioNum = parseRatio(ratio)
	local wrap = New("Frame", {
		Size                 = UDim2.new(1, -16, 0, 150),
		BackgroundTransparency = 1,
		ClipsDescendants     = true,
		Parent               = parent,
	})
	New("UISizeConstraint", { MaxSize = Vector2.new(math.huge, 200), Parent = wrap })

	local img = New("ImageLabel", {
		Size                 = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Image                = resolve(src),
		ScaleType            = Enum.ScaleType.Fit,
		Parent               = wrap,
	})
	New("UICorner", { CornerRadius = UDim.new(0, radius), Parent = img })

	local mod = { Frame = wrap, Type = "Image" }
	function mod:SetImage(s) img.Image = resolve(s) end
	function mod:Destroy()   wrap:Destroy() end
	return mod
end

return Image
