# Phase 4: Dual attacks, escalating frequency as HP drops
# Attack interval scales: starts at 200t (10s), ends at 100t (5s) when dragon is very low
scoreboard players add @s trueEnding_attacktimer 1
scoreboard players add @s trueEnding_attacktimer2 1

# Calculate current attack interval based on health:
# >40% HP  -> 200 ticks between attacks (10s)
# 20-40%   -> 150 ticks (7.5s)
# 10-20%   -> 120 ticks (6s)
# <10%     -> 100 ticks (5s)

execute if score @s trueEnding_health_percent matches 401.. if score @s trueEnding_attacktimer matches 200 run function true_ending:phases/p4_attacks/fire_pair
execute if score @s trueEnding_health_percent matches 401.. if score @s trueEnding_attacktimer matches 200 run scoreboard players set @s trueEnding_attacktimer 0

execute if score @s trueEnding_health_percent matches 201..400 if score @s trueEnding_attacktimer matches 150 run function true_ending:phases/p4_attacks/fire_pair
execute if score @s trueEnding_health_percent matches 201..400 if score @s trueEnding_attacktimer matches 150 run scoreboard players set @s trueEnding_attacktimer 0

execute if score @s trueEnding_health_percent matches 101..200 if score @s trueEnding_attacktimer matches 120 run function true_ending:phases/p4_attacks/fire_pair
execute if score @s trueEnding_health_percent matches 101..200 if score @s trueEnding_attacktimer matches 120 run scoreboard players set @s trueEnding_attacktimer 0

execute if score @s trueEnding_health_percent matches ..100 if score @s trueEnding_attacktimer matches 100 run function true_ending:phases/p4_attacks/fire_pair
execute if score @s trueEnding_health_percent matches ..100 if score @s trueEnding_attacktimer matches 100 run scoreboard players set @s trueEnding_attacktimer 0

# Continuous frenzy particles when below 10% HP
execute if score @s trueEnding_health_percent matches ..100 run particle dragon_breath ~ ~2 ~ 2 2 2 0.05 5 force @a[distance=..256]
execute if score @s trueEnding_health_percent matches ..100 if predicate true_ending:chance/20_percent run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] ~ ~ ~ 6 0.8

# Desperate taunts as dragon nears death
execute if score @s trueEnding_health_percent matches ..200 if predicate true_ending:chance/20_percent run title @a[distance=..256] actionbar {"text":"\"This... this is NOTHING! I feel NOTHING!\"","color":"dark_red","bold":true,"italic":true}
execute if score @s trueEnding_health_percent matches ..100 if predicate true_ending:chance/20_percent run title @a[distance=..256] actionbar {"text":"\"I... I refuse. I REFUSE TO END!\"","color":"red","bold":true,"italic":true}
execute if score @s trueEnding_health_percent matches ..50 if predicate true_ending:chance/33_percent run title @a[distance=..256] actionbar {"text":"\"No... NO! This cannot be...!\"","color":"gray","bold":true,"italic":true}

# Cleanup shadow clone markers over time
execute in the_end unless entity @e[type=marker,tag=trueEnding_shadowclone,limit=1] run scoreboard players set @s trueEnding_attackroll 0
execute if score @s trueEnding_health_percent matches ..0 in the_end run kill @e[tag=trueEnding_p2enderman]