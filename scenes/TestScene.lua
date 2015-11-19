--
-- Author: student
-- Date: 2015-11-12 17:00:14
--
local  TestScene = class("TestScene",function()
    return display.newScene("TestScene")
end)

function TestScene:ctor()

	local  arrray = {1,2,3,4,5,6}
end

function() TestScene:onEnter()
end
function() TestScene:onExit()
end
return TestScene
