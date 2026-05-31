local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local function CreateButton(ButtonName, Name, Size1, Size2, ScriptLogic, CircleMode)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = ButtonName
    screenGui.Parent = LocalPlayer.PlayerGui
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Name = ButtonName
    frame.Size = UDim2.new(Size1, 0, Size2, 0)
    frame.Position = UDim2.new(0.5 - Size1 / 2, 0, 0.5 - Size2 / 2, 0)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Parent = screenGui

    local frameCorner = Instance.new("UICorner")
    frameCorner.CornerRadius = UDim.new(0, 4)
    frameCorner.Parent = frame

    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 3
    stroke.Transparency = 0.8
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Parent = frame

    local innerFrame = Instance.new("Frame")
    innerFrame.Size = UDim2.new(1, 6, 1, 6)
    innerFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    innerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    innerFrame.BackgroundTransparency = 1
    innerFrame.Parent = frame

    local innerFrameCorner = Instance.new("UICorner")
    innerFrameCorner.CornerRadius = UDim.new(0, 4)
    innerFrameCorner.Parent = innerFrame

    local innerStroke = Instance.new("UIStroke")
    innerStroke.Thickness = 2
    innerStroke.Transparency = 0.6
    innerStroke.Color = Color3.fromRGB(0, 0, 0)
    innerStroke.Parent = innerFrame

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.8, 0)
    button.Position = UDim2.new(0.5, 0, 0.5, 0)
    button.AnchorPoint = Vector2.new(0.5, 0.5)
    button.BackgroundTransparency = 1
    button.Text = Name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextTransparency = 0.7
    button.TextScaled = true
    button.Font = Enum.Font.GothamBold
    button.Parent = frame

    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(0, 28, 0, 28)
    toggle.Position = UDim2.new(1, 6, 0.5, -14)
    toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    toggle.Text = "○"
    toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggle.Visible = false
    toggle.Parent = frame
    Instance.new("UICorner", toggle).CornerRadius = UDim.new(1, 0)

    local originalSize = UDim2.new(Size1, 0, Size2, 0)
    local holding, holdStart, hideAt = false, 0, 0

    frame:SetAttribute("IsCircle", false)
    local isCircle = CircleMode ~= nil and CircleMode or frame:GetAttribute("IsCircle")

    local function applyShape(circle)
        frame:SetAttribute("IsCircle", circle)
        if circle then
            local s = math.min(frame.AbsoluteSize.X, frame.AbsoluteSize.Y)
            frame.Size = UDim2.new(0, s, 0, s)
            button.TextWrapped = true
            button.TextScaled = true
            button.TextSize = math.floor(s * 0.45)
            frameCorner.CornerRadius = UDim.new(1, 0)
            innerFrameCorner.CornerRadius = UDim.new(1, 0)
            toggle.Text = "▢"
        else
            frame.Size = originalSize
            button.TextWrapped = false
            button.TextScaled = true
            button.TextSize = 14
            frameCorner.CornerRadius = UDim.new(0, 4)
            innerFrameCorner.CornerRadius = UDim.new(0, 4)
            toggle.Text = "○"
        end
    end

    applyShape(isCircle)

    task.spawn(function()
        while task.wait(0.25) do
            if not frame.Parent then break end
            if toggle.Visible and tick() - hideAt >= 10 then toggle.Visible = false end
        end
    end)

    button.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
            holding = true
            holdStart = tick()
        end
    end)

    button.InputEnded:Connect(function(i)
        if holding and (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) then
            holding = false
            if tick() - holdStart >= 0.6 then
                toggle.Visible = true
                hideAt = tick()
            end
        end
    end)

    toggle.MouseButton1Click:Connect(function()
        hideAt = tick()
        applyShape(not frame:GetAttribute("IsCircle"))
    end)

    if ScriptLogic then
        button.Activated:Connect(function()
            ScriptLogic(button)
        end)
    end

    local function MakeDraggable(topbar, obj)
        local dragging = false
        local dragInput = nil
        local dragStart = nil
        local startPos = nil
        local holdTime = 2
        local holdToken = 0
        local holding = false

        topbar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = obj.Position
                holding = true
                holdToken = holdToken + 1
                local token = holdToken
                task.delay(holdTime, function()
                    if holding and token == holdToken then
                        obj:SetAttribute("Locked", not obj:GetAttribute("Locked"))
                        holding = false
                    end
                end)
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                        holding = false
                    end
                end)
            end
        end)

        topbar.InputChanged:Connect(function(input)
            if not dragStart then return end
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging and not obj:GetAttribute("Locked") then
                local delta = input.Position - dragStart
                obj.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end
        end)
    end

    MakeDraggable(button, frame)

    return button
end

CreateButton("", "", 0.16, 0.12, nil, false)
