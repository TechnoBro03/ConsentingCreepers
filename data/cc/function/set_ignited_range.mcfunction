# /function cc:set_ignited_range {blocks:16}
#
# How far a creeper that was ignited (flint and steel, dispenser, fire, etc) looks for somebody to ask.

$scoreboard players set #ignited_range cc_range $(blocks)

# At least 7 blocks, otherwise the creeper will never ask for consent and just explode.
execute if score #ignited_range cc_range matches ..7 run scoreboard players set #ignited_range cc_range 7

tellraw @a [{"text":"[Consenting Creepers] Ignited creepers ask within ","color":"aqua"},{"score":{"name":"#ignited_range","objective":"cc_range"},"color":"aqua"},{"text":" blocks","color":"aqua"}]
