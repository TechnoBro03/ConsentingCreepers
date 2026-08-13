# Run AS the creeper whose request was accepted

tag @s remove consenting.awaiting

# Prevents creeper_tick and creeper_ignite from running on this creeper
tag @s add consenting.detonating
tag @s add consenting.ignited

# Fuse 1 + ignited
data merge entity @s {ignited:1b,Fuse:1s}
