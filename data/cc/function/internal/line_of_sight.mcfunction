# Run AS/AT a creeper. Returns 1 while it should be swelling.

execute unless entity @s[predicate=cc:targeting_player] run return 0

# Creepers start swelling within 3 blocks of a player, and stop if they get more than 7 away. The range is stored in cc_range, which is set by the caller.
execute unless entity @s[tag=consenting.swelling] on target unless entity @s[distance=..3] run return 0
execute on target unless entity @s[distance=..7] run return 0

# The ray runs player -> creeper
tag @s remove consenting.hit
tag @s add consenting.src
scoreboard players set @s cc_ray 80

# Mark as hit
execute on target at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @n[type=creeper,tag=consenting.src] eyes as @n[type=creeper,tag=consenting.src] if function cc:internal/line_of_sight_step run tag @s add consenting.hit

tag @s remove consenting.src
execute if entity @s[tag=consenting.hit] run return 1
return 0
