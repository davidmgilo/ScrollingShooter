debug = true

require('src.bootstrap')

function love.load(arg)
    player.img = love.graphics.newImage('assets/plane.png')
end
-- update & draw are called on every frame
-- dt -> measures how much time has passed between frames
function love.update(dt)
    escape()

    if love.keyboard.isDown('left','a') then
        player.x = player.x - (player.speed*dt)
    elseif love.keyboard.isDown('right','d') then
        player.x = player.x + (player.speed*dt)
    end
end

function love.draw(dt)
    love.graphics.draw(player.img, player.x, player.y)
end

