# Run AS a creeper that has just taken a player as its target. Once per creeper.

tag @s add consenting.armed

# Store the true Fuse in a scoreboard
execute store result score @s cc_max run data get entity @s Fuse
scoreboard players operation @s cc_fuse = @s cc_max

# Prevent the creeper from exploding on its own. Fail safe.
data merge entity @s {Fuse:30000s}
