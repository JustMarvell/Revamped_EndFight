tag @s add trueEnding_inattack
playsound minecraft:block.end_portal.spawn hostile @a[distance=..256] ~ ~ ~ 8 1.2
title @a[distance=..256] actionbar {"text":"\"You dare struggle? This cage is your tomb!\"","color":"dark_purple","bold":true,"italic":true}
particle end_rod 0 75 0 5 5 5 0.05 150 force @a[distance=..256]
# Trap players: give levitation then wither
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] levitation 3 2 true
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] wither 4 1 true
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] blindness 3 0 true
# Area effect cloud cage walls (simulated with AoE clouds at player positions)
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon area_effect_cloud ~4 ~ ~ {Radius:1.5f,Duration:60,ReapplicationDelay:5,custom_particle:{type:"portal"},potion_contents:{custom_effects:[{id:wither,duration:20,amplifier:0,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"]}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon area_effect_cloud ~-4 ~ ~ {Radius:1.5f,Duration:60,ReapplicationDelay:5,custom_particle:{type:"portal"},potion_contents:{custom_effects:[{id:wither,duration:20,amplifier:0,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"]}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon area_effect_cloud ~ ~ ~4 {Radius:1.5f,Duration:60,ReapplicationDelay:5,custom_particle:{type:"portal"},potion_contents:{custom_effects:[{id:wither,duration:20,amplifier:0,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"]}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon area_effect_cloud ~ ~ ~-4 {Radius:1.5f,Duration:60,ReapplicationDelay:5,custom_particle:{type:"portal"},potion_contents:{custom_effects:[{id:wither,duration:20,amplifier:0,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"]}
tag @s remove trueEnding_inattack
