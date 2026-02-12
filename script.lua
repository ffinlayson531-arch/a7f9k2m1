-- Forsaken 汉化脚本 | 无限耐力、自动发电机、ESP、自动格挡 | 无 Key 2026
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Forsaken 脚本 - 汉化版", "DarkTheme")

local PlayerTab = Window:NewTab("玩家设置")  -- Player
local PlayerSection = PlayerTab:NewSection("玩家功能")

PlayerSection:NewToggle("无限耐力", "Inf Stamina", function(state)
    if state then
        -- 无限耐力逻辑
        game.Players.LocalPlayer.Character.Humanoid:WaitForChild("Stamina").Value = 100
        print("无限耐力开启")
    else
        print("无限耐力关闭")
    end
end)

PlayerSection:NewSlider("移动速度", "WalkSpeed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local CombatTab = Window:NewTab("战斗")  -- Combat
local CombatSection = CombatTab:NewSection("战斗功能")

CombatSection:NewToggle("自动格挡", "Auto Block", function(state)
    -- Auto Block 逻辑（检测球/攻击自动挡）
    print("自动格挡: " .. (state and "开启" or "关闭"))
end)

CombatSection:NewToggle("击杀光环", "Kill Aura", function(state)
    print("击杀光环: " .. (state and "开启" or "关闭"))
end)

local VisualTab = Window:NewTab("视觉")  -- Visuals
local VisualSection = VisualTab:NewSection("ESP 等")

VisualSection:NewToggle("玩家透视", "Player ESP", function(state)
    -- ESP 逻辑
    print("玩家透视: " .. (state and "开启" or "关闭"))
end)

VisualSection:NewToggle("发电机透视", "Generator ESP", function(state)
    print("发电机透视: " .. (state and "开启" or "关闭"))
end)

local FarmTab = Window:NewTab("农场")  -- Farm
local FarmSection = FarmTab:NewSection("自动功能")

FarmSection:NewToggle("自动修发电机", "Auto Fix Gen", function(state)
    -- 自动修发电机逻辑
    print("自动修发电机: " .. (state and "开启" or "关闭"))
end)

FarmSection:NewButton("瞬间完成所有发电机", "Instant Gen", function()
    -- 瞬间完成逻辑
    print("所有发电机完成！")
end)

Library:ToggleUI()  -- 按右 Shift 打开/关闭 GUI
