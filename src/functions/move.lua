function move(dt)
    if love.keyboard.isDown('left','a') then
        player.x = player.x - (player.speed*dt)
    elseif love.keyboard.isDown('right','d') then
        player.x = player.x + (player.speed*dt)
    end
end

