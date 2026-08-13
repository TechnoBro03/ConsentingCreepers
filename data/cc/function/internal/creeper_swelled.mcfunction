# Run AS/AT a creeper that has just reached a full swell

# The normal aggro range
scoreboard players set @s cc_range 7
execute if entity @s[tag=consenting.ignited] run scoreboard players operation @s cc_range = #ignited_range cc_range

execute store result storage cc:consent range int 1 run scoreboard players get @s cc_range
return run function cc:internal/creeper_consent with storage cc:consent
