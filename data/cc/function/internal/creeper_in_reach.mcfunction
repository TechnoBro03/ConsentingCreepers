# Run AS/AT a waiting creeper, $(range) = its own reach, $(qid) = its open question.
# Sets consenting.reachable while the player it asked is still close enough to answer.

tag @s remove consenting.reachable
$execute if entity @a[tag=consenting.asked,scores={cc_qid=$(qid)},distance=..$(range)] run tag @s add consenting.reachable
