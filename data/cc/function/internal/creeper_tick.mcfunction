# Run AS/AT an armed creeper

# Already answered and on its way out
execute if entity @s[tag=consenting.going] run return 0

# Waiting on an answer: nothing swells, just the answer clock
execute if entity @s[tag=consenting.awaiting] run return run function cc:internal/creeper_wait

# line_of_sight reads consenting.swelling as "already swelling", so the latch can only be updated after the call, never before it
execute if function cc:internal/line_of_sight run tag @s add consenting.los_now
tag @s remove consenting.swelling
execute if entity @s[tag=consenting.los_now] run tag @s add consenting.swelling
tag @s remove consenting.los_now

# Once ignited there is no talking it down
execute if entity @s[tag=consenting.ignited] run tag @s add consenting.swelling

# One tick either way: leaving the range starts it climbing, it does not snap back
execute if entity @s[tag=consenting.swelling] run scoreboard players remove @s cc_fuse 1
execute if entity @s[tag=!consenting.swelling] run scoreboard players add @s cc_fuse 1

execute if score @s cc_fuse > @s cc_max run scoreboard players operation @s cc_fuse = @s cc_max
execute if score @s cc_fuse matches ..1 run scoreboard players set @s cc_fuse 1

execute if score @s cc_fuse matches 1 run function cc:internal/creeper_swelled
