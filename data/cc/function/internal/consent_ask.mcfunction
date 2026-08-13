# Run AS the player being asked, by the creeper tagged consenting.asking

# They are already holding an open question. Re-showing the dialog would only reset it, so this creeper joins the question they already have.
execute if entity @s[tag=consenting.asked] run return run scoreboard players operation @e[type=creeper,tag=consenting.asking] cc_qid = @s cc_qid

# A fresh question, shared by this player and this creeper alone
scoreboard players add #next cc_qid 1
scoreboard players operation @s cc_qid = #next cc_qid
scoreboard players operation @e[type=creeper,tag=consenting.asking] cc_qid = #next cc_qid

scoreboard players set @s cc_consent 0
scoreboard players enable @s cc_consent
tag @s add consenting.asked

dialog show @s cc:consent
