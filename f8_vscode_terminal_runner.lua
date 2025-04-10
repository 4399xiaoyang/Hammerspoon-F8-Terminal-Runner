-- VS Code F8 快捷键助手
-- 功能：按下 F8 复制选中文本并在终端中执行

-- 显示通知函数
function showNotification(title, message)
    hs.notify.new({title = title, informativeText = message}):send()
end

-- 创建一个 F8 快捷键
hs.hotkey.bind({}, "f8", function()
    -- 获取当前应用
    local currentApp = hs.application.frontmostApplication()
    local appName = currentApp:name()
    
    -- 检查是否在 VS Code 中
    if appName ~= "Code" and appName ~= "Visual Studio Code" then
        showNotification("VS Code 助手", "此快捷键仅在 VS Code 中有效")
        return
    end
    
    -- 保存当前剪贴板内容
    local originalClipboard = hs.pasteboard.getContents()
    
    -- 复制选中的文本
    hs.eventtap.keyStroke({"cmd"}, "c")
    
    -- 等待复制完成
    hs.timer.usleep(200000) -- 0.2秒
    
    -- 获取新的剪贴板内容
    local newClipboard = hs.pasteboard.getContents()
    
    -- 检查是否有选中文本
    if not newClipboard or newClipboard == "" or newClipboard == originalClipboard then
        showNotification("VS Code 助手", "没有选中文本！")
        hs.sound.getByName("Basso"):play() -- 播放错误声音
        return
    end
    
    -- 打开/聚焦终端
    hs.eventtap.keyStroke({"ctrl"}, "`")
    
    -- 等待终端打开
    hs.timer.usleep(300000) -- 0.3秒
    
    -- 粘贴
    hs.eventtap.keyStroke({"cmd"}, "v")
    
    -- 等待粘贴完成
    hs.timer.usleep(100000) -- 0.1秒
    
    -- 按下回车键执行
    hs.eventtap.keyStroke({}, "return")
    
    -- 显示通知
    local previewText = newClipboard
    if #previewText > 30 then
        previewText = string.sub(previewText, 1, 30) .. "..."
    end
    showNotification("VS Code 助手", "已执行命令: " .. previewText)
    
    -- 播放成功声音
    hs.sound.getByName("Submarine"):play()
end)

-- 显示加载成功通知
showNotification("VS Code 助手", "F8 快捷键已加载")
