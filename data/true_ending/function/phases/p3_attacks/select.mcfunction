scoreboard players set @s trueEnding_attackroll 0
execute store result score @s trueEnding_attackroll run random value 1..5

execute if score @s trueEnding_attackroll matches 1 run function true_ending:phases/p3_attacks/wither_barrage
execute if score @s trueEnding_attackroll matches 2 run function true_ending:phases/p3_attacks/ender_cage
execute if score @s trueEnding_attackroll matches 3 run function true_ending:phases/p3_attacks/shadow_clones
execute if score @s trueEnding_attackroll matches 4 run function true_ending:phases/p3_attacks/gravity_slam
execute if score @s trueEnding_attackroll matches 5 run function true_ending:phases/p3_attacks/vortex_pull
