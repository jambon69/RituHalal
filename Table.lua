local Object = require "classic"

Table = Object:extend()

function Table:new(posX, posY, image)
   self.x = posX
   self.y = posY
   self.img = love.graphics.newImage(image)
end

function Table:setX(newPosX)
   self.x = newPosX
end

function Table:setY(newPosY)
   self.y = newPosY
end

function Table:getX()
   return (self.x)
end

function Table:getY()
   return (self.y)
end

function Table:draw()
   love.graphics.draw(self.img, self.x, self.y, 0, 1, 1, self.img:getwidth / 2, self.img:getheight / 2)
end
