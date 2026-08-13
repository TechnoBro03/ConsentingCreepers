# Run AS a player holding an open question, $(qid) = that question.

# Closes the dialog once no creeper is waiting on this question any more
$execute unless entity @e[type=creeper,tag=consenting.awaiting,scores={cc_qid=$(qid)}] run function cc:internal/consent_clear
