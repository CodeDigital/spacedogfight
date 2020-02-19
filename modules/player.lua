package.path = package.path .. ";../?.lua"
player = {}

function player.create(x, y, ship, plyData)
    ships = require("../../game/ships.lua")

    player.x = x
    player.y = y
    player.shipType = ship
end

return player