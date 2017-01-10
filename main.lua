-- love.load -> | love.update -> love.draw -> repeat
-- {} = tabs
-- tab = {"fruits", "pear"} ; len(tab) = #{tab}
-- require("other_file") -> other_file.lua

require("Rectangle")
require("Table")

local Object = require "classic"
local WINX = 1280
local WINY = 720

function love.load()
   love.window.setMode(WINX, WINY)
   love.graphics.setBackgroundColor(255, 255, 255)
   -- rect = Rectangle(100, 100, 50, 50)
   main_table = Table(WINX / 2, WINY / 2, "sprites/main_table.png")
end

function love.keypressed(key)
   if key == "escape" then
      os.exit()
   end
   -- print (key)
end

-- DeltaTime is here so every computers run at the same time
function love.update(dt)
   -- rect:update(dt)
end

function love.draw()
   -- love.graphics.print("Hello World", 400, 300)
   -- love.graphics.draw(img, 200, 200)
   main_table:draw()
   -- rect:draw(rect)
end
