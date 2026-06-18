execute if predicate true_ending:chance/20_percent run title @a[distance=..256] actionbar {"text":"\"I AM ETERNAL! I CANNOT FALL!\"","color":"dark_red","bold":true,"italic":true}
execute if predicate true_ending:chance/20_percent run title @a[distance=..256] actionbar {"text":"\"Why won't you just DIE?!\"","color":"red","bold":true,"italic":true}

# Fire one P2 attack and one P3 attack simultaneously for chaos
execute store result score @s trueEnding_attackroll run random value 1..5
execute if score @s trueEnding_attackroll matches 1 run function true_ending:phases/p2_attacks/meteor_shower
execute if score @s trueEnding_attackroll matches 2 run function true_ending:phases/p2_attacks/lightning_ring
execute if score @s trueEnding_attackroll matches 3 run function true_ending:phases/p2_attacks/void_pulse
execute if score @s trueEnding_attackroll matches 4 run function true_ending:phases/p2_attacks/acid_rain
execute if score @s trueEnding_attackroll matches 5 run function true_ending:phases/p2_attacks/enderman_army

execute store result score @s trueEnding_attackroll run random value 1..5
execute if score @s trueEnding_attackroll matches 1 run function true_ending:phases/p3_attacks/wither_barrage
execute if score @s trueEnding_attackroll matches 2 run function true_ending:phases/p3_attacks/ender_cage
execute if score @s trueEnding_attackroll matches 3 run function true_ending:phases/p3_attacks/shadow_clones
execute if score @s trueEnding_attackroll matches 4 run function true_ending:phases/p3_attacks/gravity_slam
execute if score @s trueEnding_attackroll matches 5 run function true_ending:phases/p3_attacks/vortex_pull
