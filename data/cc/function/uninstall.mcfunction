# /function cc:uninstall

# Set every loaded creeper to its real fuse
execute as @e[type=creeper,tag=consenting.armed] store result entity @s Fuse short 1 run scoreboard players get @s cc_max

tag @e[type=creeper] remove consenting.armed
tag @e[type=creeper] remove consenting.ignited
tag @e[type=creeper] remove consenting.swelling
tag @e[type=creeper] remove consenting.awaiting
tag @e[type=creeper] remove consenting.going
tag @e[type=creeper] remove consenting.reachable
tag @e[type=creeper] remove consenting.hit
tag @e[type=creeper] remove consenting.src
tag @e[type=creeper] remove consenting.los_now
tag @e[type=creeper] remove consenting.asking
tag @a remove consenting.asked

dialog clear @a

scoreboard objectives remove cc_max
scoreboard objectives remove cc_fuse
scoreboard objectives remove cc_ray
scoreboard objectives remove cc_wait
scoreboard objectives remove cc_range
scoreboard objectives remove cc_qid
scoreboard objectives remove cc_consent

data remove storage cc:consent range
data remove storage cc:consent qid

tellraw @a {"text":"[Consenting Creepers] Uninstalled. Remove the datapack and reload.","color":"aqua"}
