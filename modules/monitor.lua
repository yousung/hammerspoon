local screens = hs.screen.allScreens()
local screenIndex = 1

function sizeInit()
    hs.fnutils.each(hs.screen.allScreens(), function(screen)
        -- local name = screen:name()
        -- print("----")
        -- print(screen:name(), screen:getUUID())
        -- print('w', screen:currentMode().w);
        -- print('h', screen:currentMode().h);
        -- print('scale', screen:currentMode().scale);
        -- print('freq', screen:currentMode().freq);
        -- print('depth', screen:currentMode().depth);
        -- print("----")
        
        if screen:getUUID() == "0063819E-167C-40C2-B015-1B3A54204DE1" then
            screen:setMode(3360, 1890, 2.0, 60.0, 7.0)
        end
    
        if screen:getUUID() == "37D8832A-2D66-02CA-B9F7-8F30A301B230" then
            screen:setMode(1800, 1169, 2.0, 120, 8.0)
        end
    end)
end

hs.screen.watcher.new(sizeInit):start()