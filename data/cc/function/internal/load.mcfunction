# Runs on datapack load / reload

# cc_max   creeper: The Fuse value.
# cc_fuse  creeper: Ticks remaining until explosion.
# cc_ray   creeper: Steps remaining to check for line of sight to the player.
# cc_wait  creeper: Ticks left for the player to answer.
# cc_range creeper: How far away a player can be to ask for consent from an ignited creeper.
# cc_qid   creeper + player: Which open question this is. A creeper only listens to the player it holds a question with.

scoreboard objectives add cc_max dummy
scoreboard objectives add cc_fuse dummy
scoreboard objectives add cc_ray dummy
scoreboard objectives add cc_wait dummy
scoreboard objectives add cc_range dummy
scoreboard objectives add cc_qid dummy
scoreboard objectives add cc_consent trigger

# Set the default range for a player to ask a creeper for consent (only on load, not reload)
execute unless score #ignited_range cc_range = #ignited_range cc_range run function cc:set_ignited_range {blocks:7}
