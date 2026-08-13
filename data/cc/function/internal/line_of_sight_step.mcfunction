# Run AS the creeper, at one sample point along the ray, facing down it.
# 80 steps of 0.125 covers 10 blocks: the 7 block leash plus both eye heights.

# In a block
execute unless block ~ ~ ~ #cc:see_through run return 0

# A creeper's eye height is 1.445 blocks above its feet
# Found the player
execute positioned ~ ~-1.445 ~ if entity @s[distance=..0.2] run return 1

scoreboard players remove @s cc_ray 1

# Out of steps
execute if score @s cc_ray matches ..0 run return 0

return run execute positioned ^ ^ ^0.125 run function cc:internal/line_of_sight_step
