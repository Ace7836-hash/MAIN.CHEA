local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "VINCENT MAIN CHEAT",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "VINCENT LOADER...",
   LoadingSubtitle = "BY VINCENT",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Dark", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "369"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = ".gg/369", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "LUHOD SA GODZ!!",
      Subtitle = "VINCENT ON TOP BABY",
      Note = "VICENT ON TOP BABYY", -- Use this to tell the user how to get a key
      FileName = "SHITZ", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "369SHITZ2-CHEAT3-ON4-TOP5" -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MAINTab = Window:CreateTab("ROLEPLAY SCRIPTS", nil) -- Title, Image
local MAINSection = MAINTab:CreateSection("SCRIPT")

Rayfield:Notify({
   Title = "LAGOT KAYU SI ACE",
   Content = "LUHOD SA GODZ",
   Duration = 10,
   Image = nil,
})

local Button = MAINTab:CreateButton({
   Name = "INFINITE YIELD [VINCENT]",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end
})

local Button = MAINTab:CreateButton({
   Name = "MUSIC EXPO [VINCENT]",
   Callback = function()
-- Safe Local Music Player (LocalScript)
-- Local-only: plays audio on the local client (no remotes, no exploit)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Cleanup old gui & sounds
if PlayerGui:FindFirstChild("SafeMusicExpo") then
    PlayerGui.SafeMusicExpo:Destroy()
end
if workspace:FindFirstChild("SafeMusicPlayerSound_"..LocalPlayer.UserId) then
    pcall(function() workspace["SafeMusicPlayerSound_"..LocalPlayer.UserId]:Destroy() end)
end

-- Create GUI
local screen = Instance.new("ScreenGui")
screen.Name = "SafeMusicExpo"
screen.ResetOnSpawn = false
screen.Parent = PlayerGui

local frame = Instance.new("Frame", screen)
frame.Size = UDim2.new(0, 420, 0, 210)
frame.Position = UDim2.new(0.5, -210, 0.5, -105)
frame.BackgroundColor3 = Color3.fromRGB(18,18,18)
frame.BorderSizePixel = 0
frame.Active = true

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0,8)

-- Title bar (drag handle)
local title = Instance.new("Frame", frame)
title.Size = UDim2.new(1, 0, 0, 36)
title.Position = UDim2.new(0,0,0,0)
title.BackgroundColor3 = Color3.fromRGB(35,35,35)
local titleLabel = Instance.new("TextLabel", title)
titleLabel.Size = UDim2.new(1, -44, 1, 0)
titleLabel.Position = UDim2.new(0, 12, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "SAFE MUSIC EXPO"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextColor3 = Color3.fromRGB(240,240,240)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

local closeBtn = Instance.new("TextButton", title)
closeBtn.Size = UDim2.new(0, 30, 0, 22)
closeBtn.Position = UDim2.new(1, -36, 0, 7)
closeBtn.BackgroundColor3 = Color3.fromRGB(60,60,60)
closeBtn.Text = "X"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 14
closeBtn.TextColor3 = Color3.fromRGB(240,240,240)
closeBtn.MouseButton1Click:Connect(function() screen:Destroy() end)

-- Input: Music ID
local idBox = Instance.new("TextBox", frame)
idBox.Size = UDim2.new(1, -24, 0, 36)
idBox.Position = UDim2.new(0, 12, 0, 52)
idBox.PlaceholderText = "Enter Music ID (numbers only) e.g. 184278998"
idBox.Text = ""
idBox.Font = Enum.Font.Gotham
idBox.TextSize = 14
idBox.TextColor3 = Color3.fromRGB(240,240,240)
idBox.BackgroundColor3 = Color3.fromRGB(28,28,28)
idBox.BorderSizePixel = 0
local idCorner = Instance.new("UICorner", idBox); idCorner.CornerRadius = UDim.new(0,6)

-- Buttons row
local playBtn = Instance.new("TextButton", frame)
playBtn.Size = UDim2.new(0.45, -8, 0, 36)
playBtn.Position = UDim2.new(0, 12, 0, 100)
playBtn.Text = "Play"
playBtn.Font = Enum.Font.GothamBold
playBtn.TextSize = 15
playBtn.BackgroundColor3 = Color3.fromRGB(30,150,80)
playBtn.TextColor3 = Color3.fromRGB(255,255,255)
local stopBtn = Instance.new("TextButton", frame)
stopBtn.Size = UDim2.new(0.45, -8, 0, 36)
stopBtn.Position = UDim2.new(0.55, 0, 0, 100)
stopBtn.Text = "Stop"
stopBtn.Font = Enum.Font.GothamBold
stopBtn.TextSize = 15
stopBtn.BackgroundColor3 = Color3.fromRGB(120,40,40)
stopBtn.TextColor3 = Color3.fromRGB(255,255,255)

-- Volume and Pitch
local volLabel = Instance.new("TextLabel", frame)
volLabel.Size = UDim2.new(0.45, -8, 0, 24)
volLabel.Position = UDim2.new(0, 12, 0, 148)
volLabel.BackgroundTransparency = 1
volLabel.Text = "Volume (0-10)"
volLabel.TextColor3 = Color3.fromRGB(200,200,200)
volLabel.Font = Enum.Font.Gotham
volLabel.TextSize = 12

local volBox = Instance.new("TextBox", frame)
volBox.Size = UDim2.new(0.2, 0, 0, 24)
volBox.Position = UDim2.new(0.45, 8, 0, 148)
volBox.Text = "1"
volBox.Font = Enum.Font.Gotham
volBox.TextSize = 12
volBox.BackgroundColor3 = Color3.fromRGB(28,28,28)
volBox.TextColor3 = Color3.fromRGB(240,240,240)
local volCorner = Instance.new("UICorner", volBox); volCorner.CornerRadius = UDim.new(0,6)

local pitchLabel = Instance.new("TextLabel", frame)
pitchLabel.Size = UDim2.new(0.25, -8, 0, 24)
pitchLabel.Position = UDim2.new(0.65, -8, 0, 148)
pitchLabel.BackgroundTransparency = 1
pitchLabel.Text = "Pitch (0.5-2)"
pitchLabel.TextColor3 = Color3.fromRGB(200,200,200)
pitchLabel.Font = Enum.Font.Gotham
pitchLabel.TextSize = 12

local pitchBox = Instance.new("TextBox", frame)
pitchBox.Size = UDim2.new(0.2, 0, 0, 24)
pitchBox.Position = UDim2.new(0.85, -8, 0, 148)
pitchBox.Text = "1"
pitchBox.Font = Enum.Font.Gotham
pitchBox.TextSize = 12
pitchBox.BackgroundColor3 = Color3.fromRGB(28,28,28)
pitchBox.TextColor3 = Color3.fromRGB(240,240,240)
local pitchCorner = Instance.new("UICorner", pitchBox); pitchCorner.CornerRadius = UDim.new(0,6)

-- Loop toggle
local loopToggle = Instance.new("TextButton", frame)
loopToggle.Size = UDim2.new(0.25, 0, 0, 28)
loopToggle.Position = UDim2.new(0.5, -55, 0, 180)
loopToggle.Text = "Loop: OFF"
loopToggle.Font = Enum.Font.GothamBold
loopToggle.BackgroundColor3 = Color3.fromRGB(60,60,60)
loopToggle.TextColor3 = Color3.fromRGB(230,230,230)
local loopOn = false
loopToggle.MouseButton1Click:Connect(function()
    loopOn = not loopOn
    loopToggle.Text = loopOn and "Loop: ON" or "Loop: OFF"
end)

-- Sound holder (in Workspace so camera can hear it)
local SOUND_NAME = "SafeMusicPlayerSound_"..LocalPlayer.UserId
local function ensureSound()
    local existing = workspace:FindFirstChild(SOUND_NAME)
    if existing and existing:IsA("Sound") then
        return existing
    end
    local s = Instance.new("Sound")
    s.Name = SOUND_NAME
    s.Parent = workspace -- local sound in workspace (client-only if created by local script)
    s.RollOffMode = Enum.RollOffMode.Linear
    s.MaxDistance = 500
    s.Looped = false
    return s
end

-- Helper: sanitize ID string -> numeric id
local function normalizeId(str)
    if not str or str == "" then return nil end
    -- remove non-digits
    local digits = string.match(str, "%d+")
    return digits and tonumber(digits) or nil
end

-- Play / Stop logic
playBtn.MouseButton1Click:Connect(function()
    local idVal = normalizeId(idBox.Text)
    if not idVal then
        idBox.Text = ""
        idBox.PlaceholderText = "Invalid ID"
        return
    end

    local s = ensureSound()
    s.SoundId = "rbxassetid://"..tostring(idVal)
    local vol = tonumber(volBox.Text) or 1
    local pitch = tonumber(pitchBox.Text) or 1
    -- clamp
    vol = math.clamp(vol, 0, 10)
    pitch = math.clamp(pitch, 0.5, 2)
    s.Volume = vol
    s.PlaybackSpeed = pitch
    s.Looped = loopOn
    pcall(function() s:Play() end)
end)

stopBtn.MouseButton1Click:Connect(function()
    local s = workspace:FindFirstChild(SOUND_NAME)
    if s and s:IsA("Sound") then
        pcall(function() s:Stop() end)
    end
end)

-- Draggable title (simple)
local dragging = false
local dragStart, startPos, dragInput = nil, nil, nil
local function updateDrag(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
title.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = inp.Position
        startPos = frame.Position
        dragInput = inp
        inp.Changed:Connect(function()
            if inp.UserInputState == Enum.UserInputState.End then dragging = false end
        end)
    end
end)
UserInputService.InputChanged:Connect(function(inp)
    if inp == dragInput and dragging then updateDrag(inp) end
end)

-- cleanup sound on character respawn
LocalPlayer.CharacterAdded:Connect(function()
    local s = workspace:FindFirstChild(SOUND_NAME)
    if s then pcall(function() s:Stop(); s:Destroy() end) end
end)

print("[SafeMusicExpo] Loaded.")
   end,
})


local Button = MAINTab:CreateButton({
   Name = "BIG HEAD [VINCENT]",
   Callback = function()
_G.HeadSize = 4 _G.Disabled = true game:GetService('RunService').RenderStepped:connect(function() if _G.Disabled then for i,v in next, game:GetService('Players'):GetPlayers() do if v.Name ~= game:GetService('Players').LocalPlayer.Name then pcall(function() v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) v.Character.Head.Transparency = 0.4 v.Character.Head.BrickColor = BrickColor.new("Red") v.Character.Head.Material = "Neon" v.Character.Head.CanCollide = false v.Character.Head.Massless = true end) end end end end)
 end,
})

local Button = MAINTab:CreateButton({
   Name = "FADED [VINCENT]",
   Callback = function()
_G.Toggles = "Y" -- You can put any keybind
loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded-Grid/main/YesEpic", true))()
   end,
})

local Button = MAINTab:CreateButton({
   Name = "BRING PARTS [VINCENT]",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers"))("More Scripts: t.me/arceusxscripts")
   end,
})




local Button = MAINTab:CreateButton({
   Name = "TOUCH FLING [VINCENT]",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Touch-Fling-46156"))()
   end,
})


local Button = MAINTab:CreateButton({
   Name = "HITBOX EXPANDER [VINCENT]",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ezsee/Hitbox-Expander123/refs/heads/main/waaaaaat"))()
   end,
})

local TROLLTab = Window:CreateTab("TROLL", nil) -- Title, Image
local TROLLSection = TROLLTab:CreateSection("TROLL")

local Button = TROLLTab:CreateButton({
   Name = "FLING ALL [VINCENT]",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
   end,
})

local Button = TROLLTab:CreateButton({
   Name = "WICKED [VICENT]",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/GY1wfJRZ"))()
   end,
})

local SPAWNGUNTab = Window:CreateTab("SPAWN GUN VICENT", nil) -- Title, Image
local SPAWNGUNSection = SPAWNGUNTab:CreateSection("SPAWN GUN")

-- -- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -12000)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY HK416 [VINCENT]",
    Callback = function()
        oneTapDupe("HK416", 1) -- example: 10 kopya agad
    end
})

-- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -3000)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY SP [VINCENT]",
    Callback = function()
        oneTapDupe("Silenced Pistol", 1) -- example: 10 kopya agad
    end
})

-- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -1)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY MEDKIT [VINCEN5]",
    Callback = function()
        oneTapDupe("medkit", 10) -- example: 10 kopya agad
    end
})  

-- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -5000)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY DEASERT [VINCENT] ",
    Callback = function()
        game:GetService("ReplicatedStorage").GunShop.Events.Purchase:FireServer("Desert Eagle", 50000)
    end
})

-- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -9000)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY Glock-17 [VINCENT]",
    Callback = function()
        oneTapDupe("Glock-17", 1) -- example: 10 kopya agad
    end
})  

-- One-tap dupe function (walang notify)
function oneTapDupe(gunName, amount)
    local remote = game:GetService("ReplicatedStorage").GunShop.Events.Purchase
    for i = 1, amount do
        remote:FireServer(gunName, -600000)
        task.wait(0.05) -- delay para safe sa server
    end
end

-- Rayfield button
SPAWNGUNTab:CreateButton({
    Name = "ALL CITY Glock-19 [VINCENT]",
    Callback = function()
        oneTapDupe("Glock-19", 1) -- example: 10 kopya agad
    end
})  

local Button = MAINTab:CreateButton({
   Name = "ESP [VINCENT]",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/wa0101/Roblox-ESP/refs/heads/main/esp.lua"))()
   end,
})

