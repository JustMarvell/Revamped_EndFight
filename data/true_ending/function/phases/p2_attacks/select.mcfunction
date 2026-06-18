# Randomly pick one of 5 Phase 2 attacks
# Uses weighted random via score operations on a fresh random roll
scoreboard players set @s trueEnding_attackroll 0
execute store result score @s trueEnding_attackroll run random value 1..5

execute if score @s trueEnding_attackroll matches 1 run function true_ending:phases/p2_attacks/meteor_shower
execute if score @s trueEnding_attackroll matches 2 run function true_ending:phases/p2_attacks/enderman_army
execute if score @s trueEnding_attackroll matches 3 run function true_ending:phases/p2_attacks/lightning_ring
execute if score @s trueEnding_attackroll matches 4 run function true_ending:phases/p2_attacks/void_pulse
execute if score @s trueEnding_attackroll matches 5 run function true_ending:phases/p2_attacks/acid_rain
