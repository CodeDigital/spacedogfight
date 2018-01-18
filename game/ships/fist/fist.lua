fist = {}
fist.name = "OSS Fist"
fist.manufacturer = "Outer Saturn Space Inc."
fist.abilityName = "Punch"
fist.description = "Without turrets or rockets installed. The only way to eliminate others is by ramming into them at full speed. 'Punch' gives this ship a short burst of energy to maximize ramming power."
fist.rSpeed = 90
fist.fSpeed = 200
fist.gun = "na"
fist.rocket = "na"
fist.health = 500

fist.load = function()
  fist.spritesheet = love.graphics.newImage("game/ships/fist/sprite.png")
  fist.idle = {}
  table.insert(fist.idle, love.graphics.newQuad(0, 0, 32, 32, fist.spritesheet:getDimensions()))
  fist.fly = {}
  table.insert(fist.fly, love.graphics.newQuad(32, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.fly, love.graphics.newQuad(64, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.fly, love.graphics.newQuad(96, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.fly, love.graphics.newQuad(128, 0, 32, 32, fist.spritesheet:getDimensions()))
  table.insert(fist.fly, love.graphics.newQuad(160, 0, 32, 32, fist.spritesheet:getDimensions()))
  fist.flyFrame = 1
  fist.currentFrame = fist.idle[1]
end

fist.nextFrame = function(type)
  if(type == "idle")then
    fist.currentFrame = fist.idle[1]
  elseif(type == "fly")then
    if(fist.flyFrame >= 4)then
      fist.flyFrame = 1
    else
      fist.flyFrame = fist.flyFrame + 1
    end
    fist.currentFrame = fist.fly[fist.flyFrame]
  end
end

fist.ability = function()
  fist.fSpeed = 500
end

return fist
