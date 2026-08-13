# Run AS/AT the consenting player

# Only the creepers that asked this player, not every creeper that happens to be standing near them
scoreboard players operation #answer cc_qid = @s cc_qid
execute as @e[type=creeper,tag=consenting.awaiting,scores={cc_fuse=1}] if score @s cc_qid = #answer cc_qid at @s run function cc:internal/consent_granted
