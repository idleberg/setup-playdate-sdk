import "CoreLibs/graphics"

local gfx <const> = playdate.graphics
local display <const> = playdate.display

function init()
    local message = "Hello World"
    local messageWidth, messageHeight = gfx.getTextSize(message)

    gfx.drawText(
        message,
        (display.getWidth() / 2) - (messageWidth / 2),
        (display.getHeight() / 2) - (messageHeight / 2)
    )
end

init()

function playdate.update()
end
