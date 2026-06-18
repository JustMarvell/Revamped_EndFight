# Anger each enderman at the nearest player
execute store result entity @s anger_end_time int 1 run scoreboard players set temp_anger trueEnding_constants 1000
data modify entity @s angry_at set from entity @r[distance=..256,gamemode=!spectator] UUID
