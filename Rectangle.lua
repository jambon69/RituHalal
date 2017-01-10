local Object = require "classic"

Rectangle = Object:extend()

function Rectangle:new(posX, posY, width, height)
   Rectangle.x = posX
   Rectangle.y = posY
   Rectangle.width = width
   Rectangle.height = height
   Rectangle.speed = 200
end

function Rectangle:update(dt)
   if love.keyboard.isDown("left") then
      self.x = self.x - self.speed * dt
   elseif love.keyboard.isDown("right") then
      self.x = self.x + self.speed * dt
   elseif love.keyboard.isDown("up") then
      self.y = self.y - self.speed * dt
   elseif love.keyboard.isDown("down") then
      self.y = self.y + self.speed * dt
   end
end

-- Rectangle.draw(self)
-- Rectangle:draw()
-- Both are even

function Rectangle:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
