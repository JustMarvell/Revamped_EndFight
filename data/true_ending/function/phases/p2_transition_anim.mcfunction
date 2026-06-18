# Called every tick while trueEnding_p2_transitioning == 1 (max 200 ticks / 10 seconds)
scoreboard players add @s trueEnding_attacktimer 1

# Particles during transition
particle dragon_breath ~ ~ ~ 4 4 4 0.1 20 force @a[distance=..256]
execute if predicate true_ending:chance/20_percent run particle end_rod ~ ~ ~ 3 3 3 0.05 10 force @a[distance=..256]

# After 60 ticks: restore health to max 500 and re-enable dragon
execute if score @s trueEnding_attacktimer matches 60 run attribute @s minecraft:max_health base set 500
execute if score @s trueEnding_attacktimer matches 60 run data modify entity @s Health set value 500

# Arena transform: fill obsidian ring and change sky effect
execute if score @s trueEnding_attacktimer matches 80 in the_end positioned 0 64 0 run fill -60 62 -60 60 62 60 obsidian replace air
execute if score @s trueEnding_attacktimer matches 80 in the_end positioned 0 64 0 run fill -40 63 -40 40 63 40 air replace obsidian
# Summon pillars of obsidian around the arena
execute if score @s trueEnding_attacktimer matches 80 in the_end run fill 55 64 0 55 78 0 obsidian
execute if score @s trueEnding_attacktimer matches 80 in the_end run fill -55 64 0 -55 78 0 obsidian
execute if score @s trueEnding_attacktimer matches 80 in the_end run fill 0 64 55 0 78 55 obsidian
execute if score @s trueEnding_attacktimer matches 80 in the_end run fill 0 64 -55 0 78 -55 obsidian

# Re-enable AI and set health
execute if score @s trueEnding_attacktimer matches 100 run data modify entity @s Invulnerable set value 0b
execute if score @s trueEnding_attacktimer matches 100 run data modify entity @s NoAI set value 0b
execute if score @s trueEnding_attacktimer matches 100 run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 10 0.8
execute if score @s trueEnding_attacktimer matches 100 run title @a[distance=..256] title {"text":"Pathetic.","color":"dark_red","bold":true}
execute if score @s trueEnding_attacktimer matches 100 run title @a[distance=..256] subtitle {"text":"Face my TRUE power and despair.","color":"red","italic":true}

# End the transition
execute if score @s trueEnding_attacktimer matches 100 run scoreboard players set @s trueEnding_p2_transitioning 0
execute if score @s trueEnding_attacktimer matches 100 run scoreboard players set @s trueEnding_attacktimer 0
execute if score @s trueEnding_attacktimer matches 100 run tag @s remove trueEnding_inattack
