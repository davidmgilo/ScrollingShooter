function escape()
    if love.keyboard.isDown('escape') then
        love.event.push('quit')
    end
end
