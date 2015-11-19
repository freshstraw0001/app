local scheduler = require(cc.PACKAGE_NAME .. ".scheduler")
local SecondScene = require("app.scenes.SecondScene")
local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    self:TestTouch()
    --self:schedulerDemo()
    self:Music()
    self:changScene()
end

function MainScene:TestTouch()
    local sp = cc.Sprite:create("bg2.png")
    self:addChild(sp,1,1)
    local scaleX = display.width/sp:getContentSize().width
    local scaleY = display.height/sp:getContentSize().height
    sp:setScale(scaleX, scaleY)
    sp:setPosition(cc.p(display.cx,display.cy))
    sp:setTouchEnabled(true)
    sp:setTouchSwallowEnabled(false)
    sp:addNodeEventListener(cc.NODE_TOUCH_EVENT,function(event)
        dump(event)
        if event.name == "ended" then
            print("ended...")
        elseif event.name == "began" then
        	print("began...")
        	return true
        end
    end)
end
function MainScene:schedulerDemo()
	-- local scheduID
	-- sharedScheduler = cc.Director:getInstance():getScheduler()
	-- scheduID = sharedScheduler:scheduleScriptFunc(function()
	-- 	print("schedule")
	-- 	cc.Director:getInstance()       
 --    :getScheduler():unscheduleScriptEntry(scheduID)
 --    end,1,false)   
   -- local function onInterval(dt)
   --    dump(dt)
   --    print("aaa")
   -- end
   local function onInterval(dt)
        dump(dt)
        print("aaaa")
   end

   local handle = scheduler.scheduleGlobal(onInterval,1.0)
   scheduler.unscheduleGlobal(handle)
end


--音乐音效
function MainScene:Music()
  audio.preloadMusic("礼物.mp3")
  audio.setMusicVolume(0.3)
  audio.playMusic("礼物.mp3",false)
end

function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
