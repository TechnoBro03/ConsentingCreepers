# Run AS/AT a fully swelled creeper, $(range) = its reach. Always via creeper_swelled.

# Nobody in reach: no consent to ask for
$execute unless entity @p[distance=..$(range)] run return run function cc:internal/consent_granted

# It keeps its AI while it waits
tag @s add consenting.awaiting
scoreboard players set @s cc_wait 200

# Somebody nearby already holds an open question, and their answer covers this creeper too. Re-showing the dialog would only reset it.
$execute if entity @a[tag=consenting.asked,distance=..$(range)] run return 0

$execute as @p[distance=..$(range)] run function cc:internal/consent_ask
