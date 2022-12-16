_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.5, 1)

    _G.starting_x = 200
    _G.starting_y = 250

    _G.pacman = {
        x = starting_x,
        y = starting_y,
        angle1 = 1,
        angle2 = 5
    }

    _G.food = {
        x = 600,
        eaten = false
    }
end

function love.update(dt)
    if love.keyboard.isDown("down") then
        pacman.angle1 = pacman.angle1 - 0.1
        pacman.angle2 = pacman.angle2 - 0.1
    end

    if love.keyboard.isDown("a") then
        pacman.x = pacman.x - 1.5
    end

    if love.keyboard.isDown("w") then
        pacman.y = pacman.y - 1.5
    end

    if love.keyboard.isDown("s") then
        pacman.y = pacman.y + 1.5
    end

    if love.keyboard.isDown("d") then
        pacman.x = pacman.x + 1
    end

    if pacman.x >= food.x - 10 then
        food.eaten = true
    end
end

function love.draw()
    if not food.eaten then
        love.graphics.setColor(1,1,1)
        love.graphics.circle("fill", food.x, 250, 20, 20)       
    end

    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, pacman.angle1, pacman.angle2)

end
