debug = true

require('src.bootstrap')

function love.load(arg)
    player.img = love.graphics.newImage('assets/plane.png')
    bulletImg = love.graphics.newImage('assets/bullet.png')
end
-- update & draw are called on every frame
-- dt -> measures how much time has passed between frames
function love.update(dt)
    escape()
    move(dt)
    shoot(dt)
    for i, bullet in ipairs(bullets) do
        bullet.y = bullet.y - (250 * dt)

        if bullet.y < 0 then -- remove bullets when they pass off the screen
            table.remove(bullets, i)
        end
    end

end

function love.draw(dt)
    love.graphics.draw(player.img, player.x, player.y)
    for i, bullet in ipairs(bullets) do
        love.graphics.draw(bullet.img, bullet.x, bullet.y)
    end
end

