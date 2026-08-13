# Run AS/AT a waiting creeper, $(range) = its own reach.
# Sets consenting.reachable while somebody who could answer it is close enough to.

tag @s remove consenting.reachable
$execute if entity @a[tag=consenting.asked,distance=..$(range)] run tag @s add consenting.reachable
