# Run AS/AT a fully swelled creeper, $(range) = its reach. Always via creeper_swelled.

# Nobody in reach: no consent to ask for
$execute unless entity @p[distance=..$(range)] run return run function cc:internal/consent_granted

# It keeps its AI while it waits
tag @s add consenting.awaiting
scoreboard players set @s cc_wait 200

# Ask whoever is nearest. consent_ask decides whether that is a new question or one they already hold.
tag @s add consenting.asking
$execute as @p[distance=..$(range)] run function cc:internal/consent_ask
tag @s remove consenting.asking
