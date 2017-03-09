debug = true

playerImg = nil

function love.load(arg)
    playerImg = love.graphics.newImage('assets/plane.png')
end
-- update & draw are called on every frame
-- dt -> measures how much time has passed between frames
function love.update(dt)

end

function love.draw(dt)
    love.graphics.draw(playerImg,100,100)
end

