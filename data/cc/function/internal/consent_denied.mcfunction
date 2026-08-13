# Run AS the creeper whose request was refused

tag @s remove consenting.awaiting

particle minecraft:heart ~ ~1 ~ 0.4 0.6 0.4 0 20 force @a
playsound minecraft:entity.player.levelup master @a ~ ~ ~ .25 1
tp @s ~ -128 ~
