# Run AS the creeper whose request was accepted

tag @s remove consenting.awaiting

# Stops creeper_tick
tag @s add consenting.going

# Ignited by us, so creeper_ignite must not pick it up as new
tag @s add consenting.ignited

# Fuse 1 + ignited
data merge entity @s {ignited:1b,Fuse:1s}
