-- 窗口左边对齐
hs.hotkey.bind(
    {'shift', 'ctrl'},
    'left',
    function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        -- 当前的屏幕
        local screen = win:screen()
        local screenFrame = screen:frame()

        f.x = screenFrame.x
        win:setFrame(f)
    end
)
-- 窗口右对齐
hs.hotkey.bind(
    {'shift', 'ctrl'},
    'right',
    function()
        local win = hs.window.focusedWindow()
        print(win)
        -- 主屏幕
        -- local screenFrame = hs.screen.mainScreen():frame()
        local f = win:frame()

        local screen = win:screen()
        local screenFrame = screen:frame()
        print(screen:name())
        print(win:frame())
        -- 有个坑, 外接显示器的位置是根据显示器的排列决定的, 所以需要计算 (screenFrame.w+screenFrame.x)是当前屏幕x 的绝对位置
        f.x = screenFrame.w + screenFrame.x - win:frame().w
        win:setFrame(f)
    end
)
-- 窗口缩小宽度
hs.hotkey.bind(
    {'shift', 'ctrl', 'cmd'},
    'left',
    function()
        local win = hs.window.focusedWindow()
        local screenFrame = hs.screen.mainScreen():frame()
        local f = win:frame()
        f.w = win:frame().w - 15
        win:setFrame(f)
    end
)
-- 窗口增加宽度
hs.hotkey.bind(
    {'shift', 'ctrl', 'cmd'},
    'right',
    function()
        local win = hs.window.focusedWindow()
        local screenFrame = hs.screen.mainScreen():frame()
        local f = win:frame()
        f.w = win:frame().w + 15
        win:setFrame(f)
    end
)