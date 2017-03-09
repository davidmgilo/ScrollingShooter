debug = true

player = {
    x = 200,
    y = 710,
    img = nil
}

function love.load(arg)
    player.img = love.graphics.newImage('assets/plane.png')
end
-- update & draw are called on every frame
-- dt -> measures how much time has passed between frames
function love.update(dt)

end

function love.draw(dt)
    love.graphics.draw(player.img, player.x, player.y)
end

