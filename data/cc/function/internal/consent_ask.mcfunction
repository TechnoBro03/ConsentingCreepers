# Run AS the player being asked

scoreboard players set @s cc_consent 0
scoreboard players enable @s cc_consent
tag @s add consenting.asked

dialog show @s cc:consent
