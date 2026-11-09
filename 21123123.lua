return function(v11)
    local function v12(v29)
        if Abysall and Abysall.Environment.cloneref then
            return Abysall.Environment.cloneref(v29)
        else
            return v29
        end
    end
    local v13 = setmetatable({}, {
        ["__index"] = function(v30, v31)
            return v12(game:GetService(v31))
        end,
    })
    local v14 = Abysall.Interface.Library
    local v15 = Abysall.Interface.SaveManager
    local v16 = Abysall.Interface.ThemeManager
    local v17 = v14.Toggles
    local v18 = v14.Options
    local v19 = {
        ["Abysall Continued"] = true,
        ["Abysall Hub Continued"] = true,
        ["🎃 Abysall Hub Continued"] = true,
        ["❄ Abysall Hub Continued"] = true,
    }
    local function v20()
        local v32 = 0 + 0
        while true do
            local v48 = 0
            local v49
            while true do
                if (0 - 0) == v48 then
                    v49 = 65 - (30 + 35)
                    while true do
                        if (0 + 0) == v49 then
                            if v32 == (1257 - (1043 + 214)) then
                                if type(v11) ~= "table" then
                                    return nil
                                end
                                if not v11.MainFrame then
                                    return nil
                                end
                                v32 = 3 - 2
                            end
                            if v32 == 1 then
                                for v68, v69 in ipairs(v11.MainFrame:GetDescendants()) do
                                    if v69:IsA("TextLabel") and (v69.TextSize == (1232 - (323 + 889))) then
                                        return v69.Text
                                    end
                                end
                                return nil
                            end
                            break
                        end
                    end
                    break
                end
            end
        end
    end
    local function v21()
        local v33 = 0 - 0
        local v34
        while true do
            if (583 - (361 + 219)) == v33 then
                pcall(function()
                    v14:Unload()
                end)
                return false
            end
            if v33 == (320 - (53 + 267)) then
                local v56 = 0
                while true do
                    if v56 == (0 + 0) then
                        v34 = v20()
                        if v34 and v19[v34] then
                            return true
                        end
                        v56 = 414 - (15 + 398)
                    end
                    if v56 == (983 - (18 + 964)) then
                        v33 = 3 - 2
                        break
                    end
                end
            end
            if v33 == (1 + 0) then
                pcall(function()
                    local v57 = 0 + 0
                    local v58
                    while true do
                        if v57 == (850 - (20 + 830)) then
                            v58 = v13.Players.LocalPlayer
                            if v58 then
                                
                            end
                            break
                        end
                    end
                end)
                task.wait(0.5 + 0)
                v33 = 2
            end
            if v33 == (128 - (116 + 10)) then
                pcall(function()
                    if game.Shutdown then
                        game:Shutdown()
                    end
                end)
                task.wait(0.5)
                v33 = 1 + 2
            end
        end
    end
    local v22 = v11:AddTab("Settings", "settings")
    local v23 = v22:AddLeftGroupbox("Menu")
    v23:AddToggle("KeybindMenuOpen", {
        ["Default"] = v14.KeybindFrame.Visible,
        ["Text"] = "Open Keybind Menu",
        ["Callback"] = function(v35)
            v14.KeybindFrame.Visible = v35
        end,
    })
    v23:AddToggle("ShowCustomCursor", {
        ["Text"] = "Custom Cursor",
        ["Default"] = false,
        ["Callback"] = function(v37)
            v14.ShowCustomCursor = v37
        end,
    })
    v23:AddToggle("QueueOnTeleport", {
        ["Text"] = "Queue On Teleport",
        ["Default"] = false,
        ["Tooltip"] = "Automatically loads Abysall when you teleport to another server.",
        ["Callback"] = function(v39)
            local v40 = 738 - (542 + 196)
            while true do
                if v40 == (0 - 0) then
                    if not v39 then
                        return
                    end
                    if queue_on_teleport then
                        queue_on_teleport([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/therealcookiemonsterof1966/AbysallContinued/main/Games/Doors/Main.luau"))()
				]])
                    end
                    break
                end
            end
        end,
    })
    v23:AddDropdown("UILibrary", {
        ["Text"] = "UI Style",
        ["Values"] = { "Obsidian", "Linoria" },
        ["Default"] = ((Abysall.UILibrary == "Linoria") and (2 + 0)) or (1 + 0),
        ["Callback"] = function(v41)
            if Abysall.Environment.writefile and Abysall.Environment.readfile then
                local v53 = 0
                local v54
                local v55
                while true do
                    if v53 == (2 - 1) then
                        v55 = v13.HttpService:JSONDecode(v54)
                        v55.UILibrary = v41
                        v53 = 2
                    end
                    if v53 == 2 then
                        if not v55.UILibrary then
                            v55.UILibrary = "Obsidian"
                        end
                        Abysall.TotalExecutions = v55.TotalExecutions
                        v53 = 3
                    end
                    if (7 - 4) == v53 then
                        Abysall.UILibrary = v55.UILibrary
                        Abysall.Environment.writefile("Abysall/UserData.json", v13.HttpService:JSONEncode(v55))
                        break
                    end
                    if v53 == (1551 - (1126 + 425)) then
                        if not Abysall.Environment.isfile("Abysall/UserData.json") then
                            local v66 = 0
                            local v67
                            while true do
                                if (405 - (118 + 287)) == v66 then
                                    v67 = { ["TotalExecutions"] = 0 - 0, ["UILibrary"] = "Obsidian" }
                                    Abysall.Environment.writefile(
                                        "Abysall/UserData.json",
                                        v13.HttpService:JSONEncode(v67)
                                    )
                                    break
                                end
                            end
                        end
                        v54 = Abysall.Environment.readfile("Abysall/UserData.json")
                        v53 = 1122 - (118 + 1003)
                    end
                end
            end
        end,
    })
    v23:AddDropdown("DPIDropdown", {
        ["Values"] = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
        ["Default"] = "100%",
        ["Text"] = "DPI Scale",
        ["Callback"] = function(v42)
            local v43 = 0 + 0
            local v44
            while true do
                if v43 == (978 - (553 + 424)) then
                    v14:SetDPIScale(v44)
                    break
                end
                if v43 == 0 then
                    v42 = v42:gsub("%%", "")
                    v44 = tonumber(v42)
                    v43 = 1
                end
            end
        end,
    })
    v23:AddDivider()
    v23:AddLabel("Menu bind")
        :AddKeyPicker("MenuKeybind", { ["Default"] = "RightShift", ["NoUI"] = true, ["Text"] = "Menu keybind" })
    v23:AddButton("Copy Discord Invite", function()
        local v45 = 0 - 0
        while true do
            if v45 == (0 + 0) then
                toclipboard("https://dsc.gg/abysallhubcontinued")
                v14:Notify("Discord invite copied.")
                break
            end
        end
    end)
    v23:AddButton("Unload", function()
        v14:Unload()
    end)
    v23:AddButton("Reload", function()
        local v46 = 0 + 0
        local v47
        while true do
            if (0 + 0) == v46 then
                v47 = 0 + 0
                while true do
                    if v47 == (1 + 0) then
                        loadstring(
                            game:HttpGet(
                                "https://raw.githubusercontent.com/coolcookiebusiness/AbysallHubContinued/main/Games/Doors/Main.luau"
                            )
                        )()
                        break
                    end
                    if v47 == 0 then
                        v14:Unload()
                        wait(0.5)
                        v47 = 2 - 1
                    end
                end
                break
            end
        end
    end)
    v14.ToggleKeybind = v18.MenuKeybind
    v16:SetLibrary(v14)
    v15:SetLibrary(v14)
    v15:IgnoreThemeSettings()
    v15:SetIgnoreIndexes({ "UILibrary" })
    v16:SetFolder("Abysall")
    v15:SetFolder("Abysall/" .. Abysall.SavePath)
    v15:BuildConfigSection(v22)
    v15:LoadAutoloadConfig()
    local v26 = os.date("*t").month
    local v27 = ({
        [2 - 1] = "Nya~!",
        [4 - 2] = "Valentines",
        [1 + 2] = "St. Patrick's Day",
        [19 - 15] = "Easter",
        [763 - (239 + 514)] = "Spooky Scary Skeletons",
        [4 + 7] = "Thanksgiving",
        [1341 - (797 + 532)] = "Christmas",
    })[v26]
    if v27 then
        local v50 = 0
        local v51
        local v52
        while true do
            if v50 == (0 + 0) then
                v51, v52 = v16:ApplyTheme(v27)
                if not v51 then
                    v14:Notify({
                        ["Title"] = "Seasonal Theme",
                        ["Description"] = "Failed to apply " .. v27 .. ": " .. tostring(v52),
                        ["Time"] = 2 + 3,
                    })
                end
                break
            end
        end
    end
    v16:ApplyToTab(v22)
    task.defer(function()
        v21()
    end)
end
