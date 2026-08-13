# Runs every tick, $(range) = widest reach any question could have had.

# Closes the dialog of anyone with no creeper still waiting on their answer
$execute as @a[tag=consenting.asked] at @s unless entity @e[type=creeper,tag=consenting.awaiting,distance=..$(range)] run function cc:internal/consent_clear
