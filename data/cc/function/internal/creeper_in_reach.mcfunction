# Run AS/AT a waiting creeper, $(range) = its own reach, $(qid) = its open question.
# Drops the creeper out of its question once the player it asked is too far away to answer.

$execute unless entity @a[tag=consenting.asked,scores={cc_qid=$(qid)},distance=..$(range)] run tag @s remove consenting.awaiting
