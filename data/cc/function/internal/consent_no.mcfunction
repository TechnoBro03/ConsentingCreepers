# Run AS/AT the player who declined

tag @s add consenting.answering
data modify storage cc:consent verdict set value "denied"
execute as @e[type=creeper,tag=consenting.awaiting,scores={cc_fuse=1}] at @s run function cc:internal/consent_reach
tag @s remove consenting.answering
