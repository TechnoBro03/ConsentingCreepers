# Run AS/AT a player who answered the consent dialog

execute if score @s cc_consent matches 1 run function cc:internal/consent_yes
execute if score @s cc_consent matches 2 run function cc:internal/consent_no

function cc:internal/consent_clear
