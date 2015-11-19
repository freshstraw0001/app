--
-- Author: student
-- Date: 2015-11-11 19:29:51
--
local SecondScene =  class("SecondScene", function()
	return display.newScene("SecondScene")
end)

function SecondScene:ctor()
	local bg = display.newSprite("bg1.png")
	bg:setPosition(cc.p(display.cx,display.cy))
	self:addChild(bg)
end

function SecondScene:onEnter()
end
function SecondScene:onExit()
end
return SecondScene