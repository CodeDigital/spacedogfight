game = {}
game.load = function(ship, team)
  player = require "player"
  multiplayer = require "multiplayer"
  player.setShip(ship)
  player.setTeam(team)
  player = multiplayer.setSpawn(player)
end

game.draw = function()
end

game.update = function()
  if(love.keyboard.isDown("w"))then
    player = physics.forward(player)
  elseif(love.keyboard.isDown("s"))then
    player = physics.backward(player)
  end

  if(love.keyboard.isDown("a"))then
    player = physics.left(player)
  elseif(love.keyboard.isDown("d"))then
    player = physics.right(player)
  end
end

return game
