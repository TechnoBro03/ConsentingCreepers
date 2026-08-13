# Run AS a creeper that has just been ignited. Once per creeper.

# Redstone can light one before it has ever seen a player, so it may not be armed yet
execute unless entity @s[tag=consenting.armed] run function cc:internal/creeper_arm

tag @s add consenting.ignited

# Starts over from a full fuse, then counts down regardless of who is where
scoreboard players operation @s cc_fuse = @s cc_max
