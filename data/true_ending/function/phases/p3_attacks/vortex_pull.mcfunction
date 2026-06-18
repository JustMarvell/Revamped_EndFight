tag @s add trueEnding_inattack
playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..256] ~ ~ ~ 8 0.4
playsound minecraft:block.beacon.activate hostile @a[distance=..256] ~ ~ ~ 8 0.5
title @a[distance=..256] actionbar {"text":"\"Come closer. Let me end this personally.\"","color":"light_purple","bold":true,"italic":true}
particle witch ~ ~2 ~ 4 4 4 0.03 80 force @a[distance=..256]
# Summon a vortex marker at dragon position for 60 ticks
summon marker ~ ~1 ~ {Tags:["trueEnding_vortex"]}
# Pull via velocity kick – give players levitation upward then it falls them toward dragon
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run effect give @s levitation 1 4 true
# Summon ring of lightning around the dragon
summon lightning_bolt ~8 ~ ~
summon lightning_bolt ~-8 ~ ~
summon lightning_bolt ~ ~ ~8
summon lightning_bolt ~ ~ ~-8
summon lightning_bolt ~6 ~ ~6
summon lightning_bolt ~-6 ~ ~-6
tag @s remove trueEnding_inattack
