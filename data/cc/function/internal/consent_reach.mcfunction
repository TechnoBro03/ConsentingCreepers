# Run AS/AT a creeper holding an open question, with the verdict in storage cc:consent.

# One answer covers every creeper waiting near the player who gave it, but only out to the reach that creeper actually asked.
execute store result storage cc:consent range int 1 run scoreboard players get @s cc_range
function cc:internal/consent_reach_apply with storage cc:consent
