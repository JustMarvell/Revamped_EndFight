scoreboard players set 20tick trueEnding_clock 0
schedule function true_ending:clocks/20tick 20t


execute unless entity @e[type=ender_dragon,tag=trueEnding_dragon_particlechecked,tag=!trueEnding_mirrordragon,tag=!trueEnding_dragon_noAI] run bossbar set true_ending:extra_health players

scoreboard players set 20tick trueEnding_clock 0
schedule function true_ending:clocks/20tick 20t

execute unless entity @e[type=ender_dragon,tag=trueEnding_dragon_particlechecked,tag=!trueEnding_mirrordragon,tag=!trueEnding_dragon_noAI] run bossbar set true_ending:extra_health players

# Cleanup orphaned entities every second
execute in the_end run kill @e[type=area_effect_cloud,tag=trueEnding_dragonbreath]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_shockwave]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_shockwave2]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_pad]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_dragonparticle]
execute in the_end unless entity @e[type=ender_dragon] run kill @e[type=marker,tag=trueEnding_ultrafireball]