tag @s add trueEnding_inattack
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 0.5
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 8 1.2
title @a[distance=..256] actionbar {"text":"\"Can you even tell which of me is real, worm?\"","color":"gray","bold":true,"italic":true}
# Kill old clones first
kill @e[type=marker,tag=trueEnding_shadowclone]
# Summon 3 clone markers at different positions
summon marker 35 90 0 {Tags:["trueEnding_shadowclone"]}
summon marker -35 90 0 {Tags:["trueEnding_shadowclone"]}
summon marker 0 90 35 {Tags:["trueEnding_shadowclone"]}
# Each clone fires ultra fireballs via a scheduled function
execute as @e[type=marker,tag=trueEnding_shadowclone] at @s run function true_ending:phases/p3_attacks/shadow_clone_shoot
tag @s remove trueEnding_inattack
