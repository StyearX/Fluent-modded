Minimizer = x:CreateMinimizer({
    Icon = "rbxassetid://109639117875913", -- texture for icons 
    Size = UDim2.fromOffset(64, 64), -- minimizer size 
    Position = UDim2.new(0.101969875, 0, 0.110441767, 0), -- minimizer position 
    Corner = 12, -- Minimazer UI Corner 
    BackgroundTransparency = 1, -- minimizer background Transparency 
    IconCorner = 6, -- Ui Corner for icon
    Transparency = 0, -- Transparency for icons
    Lockable = true, -- Minimazer lockable system 
    LockHoldTime = 1.0, -- minimizer hold Lock Time (Recommended 2.0) /2 seconds)
    Draggable = true, -- Minimazer drag able system 
    OnClickSound = {
        "7127123605", "137566474343039", "438666542",
        "257001341", "257000833", "7127123554",
        "131607746976396", "97325669841459", "109312518223078",
    },
})
-- click sound (optional 
Minimizer.Visible = true -- Minimize visibility 
