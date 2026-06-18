# Enderman Army: Summon 4 enraged endermen and force them onto players
tag @s add trueEnding_inattack
playsound minecraft:entity.enderman.stare hostile @a[distance=..256] ~ ~ ~ 8 0.8
playsound minecraft:entity.enderman.scream hostile @a[distance=..256] ~ ~ ~ 8 0.7
title @a[distance=..256] actionbar {"text":"\"Even my servants mock your weakness!\"","color":"dark_purple","bold":true,"italic":true}
particle portal 0 80 0 5 5 5 0.1 200 force @a[distance=..256]
# Summon endermen around the arena carrying end stone
summon enderman 30 65 0 {LeftHanded:0b,PersistenceRequired:1b,Tags:["trueEnding_p2enderman"]}
summon enderman -30 65 0 {LeftHanded:0b,PersistenceRequired:1b,Tags:["trueEnding_p2enderman"]}
summon enderman 0 65 30 {LeftHanded:0b,PersistenceRequired:1b,Tags:["trueEnding_p2enderman"]}
summon enderman 0 65 -30 {LeftHanded:0b,PersistenceRequired:1b,Tags:["trueEnding_p2enderman"]}
# Force them to be angry at all players
execute as @e[type=enderman,tag=trueEnding_p2enderman] at @s run function true_ending:phases/p2_attacks/enderman_anger
tag @s remove trueEnding_inattack
