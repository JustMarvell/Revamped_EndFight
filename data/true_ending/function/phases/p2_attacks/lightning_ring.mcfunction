# Lightning Ring: summon ring of lightning bolts around arena center
tag @s add trueEnding_inattack
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..256] 0 80 0 10 0.7
playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..256] 0 80 0 8 0.9
title @a[distance=..256] actionbar {"text":"\"You cannot outrun the storm I command!\"","color":"yellow","bold":true,"italic":true}
# Inner ring (radius 12)
summon lightning_bolt 12 65 0
summon lightning_bolt -12 65 0
summon lightning_bolt 0 65 12
summon lightning_bolt 0 65 -12
summon lightning_bolt 8 65 8
summon lightning_bolt -8 65 8
summon lightning_bolt 8 65 -8
summon lightning_bolt -8 65 -8
# Outer ring (radius 22)
summon lightning_bolt 22 65 0
summon lightning_bolt -22 65 0
summon lightning_bolt 0 65 22
summon lightning_bolt 0 65 -22
summon lightning_bolt 15 65 15
summon lightning_bolt -15 65 15
summon lightning_bolt 15 65 -15
summon lightning_bolt -15 65 -15
particle minecraft:flash{color:[1,1,1,1]} 0 65 0 0 0 0 2 10 force @a[distance=..256]
tag @s remove trueEnding_inattack
