# Phase 3 main loop - mob wave arena, dragon is away
scoreboard players add @s trueEnding_attacktimer 1

# Move dragon away from arena over first 60 ticks
execute if score @s trueEnding_attacktimer matches 1..60 run tp @s 0 160 200

# Spawn portal particles at center
execute in the_end positioned 0 65 0 run particle portal ~ ~ ~ 3 3 3 0.05 20 force @a[distance=..256]

# Wave 1: zombies and skeletons - spawn at tick 80
execute if score @s trueEnding_attacktimer matches 80 if score trueEnding_wave trueEnding_storage matches 1 run function true_ending:phases/mob_wave/wave1

# Wave 2: piglins and brutes - when all wave1 mobs dead
execute if score @s trueEnding_attacktimer matches 80.. if score trueEnding_wave trueEnding_storage matches 1 unless entity @e[type=zombie,tag=trueEnding_wave_mob] unless entity @e[type=skeleton,tag=trueEnding_wave_mob] run function true_ending:phases/mob_wave/wave2_trigger

# Wave 3: pillagers, vindicators, ravagers - when wave2 mobs dead  
execute if score @s trueEnding_attacktimer matches 80.. if score trueEnding_wave trueEnding_storage matches 2 unless entity @e[type=piglin,tag=trueEnding_wave_mob] unless entity @e[type=piglin_brute,tag=trueEnding_wave_mob] run function true_ending:phases/mob_wave/wave3_trigger

# Wave 4: warden - when wave3 mobs dead
execute if score @s trueEnding_attacktimer matches 80.. if score trueEnding_wave trueEnding_storage matches 3 unless entity @e[type=pillager,tag=trueEnding_wave_mob] unless entity @e[type=vindicator,tag=trueEnding_wave_mob] unless entity @e[type=ravager,tag=trueEnding_wave_mob] run function true_ending:phases/mob_wave/wave4_trigger

# Phase 3 ends when warden is dead
execute if score trueEnding_wave trueEnding_storage matches 4 if score @s trueEnding_attacktimer matches 200.. unless entity @e[type=warden,tag=trueEnding_wave_mob] run function true_ending:phases/p4_transition

# Kill p2 endermen if dragon no longer exists (safety net)
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=enderman,tag=trueEnding_p2enderman]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[tag=trueEnding_wave_mob]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_waveportal]