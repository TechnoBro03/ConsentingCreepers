# Runs every tick

# Arm any creeper that has just taken a player as its target
execute as @e[type=creeper,tag=!consenting.armed,predicate=cc:targeting_player] run function cc:internal/creeper_arm

# Ignited creepers
execute as @e[type=creeper,tag=!consenting.ignited] if data entity @s {ignited:1b} run function cc:internal/creeper_ignite

# Consent questions
execute as @e[type=creeper,tag=consenting.armed] at @s run function cc:internal/creeper_tick

# Consent answers
execute as @a[scores={cc_consent=1..}] run function cc:internal/consent_response

# Closes the dialog once nothing is waiting on it any more, including after a timeout
execute as @a[tag=consenting.asked] run function cc:internal/consent_sweep
