# Run AS/AT a creeper that is waiting on an answer
# Dropping consenting.awaiting returns it to creeper_tick still on a full swell. Line of sight will be checked next tick.

# Lost interest, so there is nothing left to consent to
execute unless entity @s[tag=consenting.ignited] unless entity @s[predicate=cc:targeting_player] run return run tag @s remove consenting.awaiting

# The player it asked was carried or walked out of its reach
execute store result storage cc:consent range int 1 run scoreboard players get @s cc_range
execute store result storage cc:consent qid int 1 run scoreboard players get @s cc_qid
function cc:internal/creeper_in_reach with storage cc:consent
execute unless entity @s[tag=consenting.awaiting] run return 0

# Out of time. No answer is not a refusal. The dialog is left open: another creeper may still be waiting on the same question, and tick.mcfunction closes it once none are.
scoreboard players remove @s cc_wait 1
execute if score @s cc_wait matches ..0 run function cc:internal/consent_granted
