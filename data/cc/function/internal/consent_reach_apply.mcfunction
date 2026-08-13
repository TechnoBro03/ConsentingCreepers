# Run AS/AT a creeper holding an open question, $(range) = its own reach,
# $(verdict) = granted or denied.

$execute if entity @a[tag=consenting.answering,distance=..$(range)] run function cc:internal/consent_$(verdict)
