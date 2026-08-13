# Run AS/AT a player holding an open question, every tick.

execute store result storage cc:consent qid int 1 run scoreboard players get @s cc_qid
function cc:internal/consent_sweep_apply with storage cc:consent
