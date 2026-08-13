# Run AS/AT a player who is done being asked

dialog clear @s
tag @s remove consenting.asked
scoreboard players set @s cc_consent 0
