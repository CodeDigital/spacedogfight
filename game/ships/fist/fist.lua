fist = {}
fist.name = "OSS Fist"
fist.manufacturer = "Outer Saturn Space Inc."
fist.abilityName = "Punch"
fist.description = "Without turrets or rockets installed. The only way to eliminate others is by ramming into them at full speed. 'Punch' gives this ship a short burst of energy to maximize ramming power."
fist.rotation = 90
fist.speed = 200
fist.gun = "na"
fist.rocket = "na"
fist.health = 500

fist.load = function()
  fist.spritesheet = love.graphics.newImage("fist.png")
  fist.idle = {}
  table.insert(fist.idle, love.graphics.newQuad(0, 0, 32, 32, fist.spritesheet:getDimensions()))
  fist.flying = {}
  table.insert(fist.flying, love.graphics.newQuad(32, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.flying, love.graphics.newQuad(64, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.flying, love.graphics.newQuad(96, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.flying, love.graphics.newQuad(128, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.flying, love.graphics.newQuad(160, 0, 32, 32, fist.spritesheet:getDimensions()))
end

fist.ability = function()
  fist.speed = 500
end

return fist
