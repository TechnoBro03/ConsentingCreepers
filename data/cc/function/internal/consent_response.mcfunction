# Run AS a player who answered the consent dialog

# Only the creepers that asked this player, not every creeper that happens to be standing near them
scoreboard players operation #answer cc_qid = @s cc_qid
execute if score @s cc_consent matches 1 as @e[type=creeper,tag=consenting.awaiting] if score @s cc_qid = #answer cc_qid at @s run function cc:internal/consent_granted
execute if score @s cc_consent matches 2 as @e[type=creeper,tag=consenting.awaiting] if score @s cc_qid = #answer cc_qid at @s run function cc:internal/consent_denied

function cc:internal/consent_clear
