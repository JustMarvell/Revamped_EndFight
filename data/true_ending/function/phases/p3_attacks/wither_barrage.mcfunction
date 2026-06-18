tag @s add trueEnding_inattack
playsound minecraft:entity.wither.shoot hostile @a[distance=..256] ~ ~ ~ 8 0.8
title @a[distance=..256] actionbar {"text":"\"Even death itself fights on MY side!\"","color":"dark_gray","bold":true,"italic":true}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon wither_skull ~3 ~2 ~3 {dangerous:1b,Motion:[0.0d,0.0d,0.0d],Tags:["trueEnding_p3skull"]}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run summon wither_skull ~-3 ~2 ~-3 {dangerous:1b,Motion:[0.0d,0.0d,0.0d],Tags:["trueEnding_p3skull"]}
execute as @e[tag=trueEnding_p3skull] at @s facing entity @r[distance=..256,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=trueEnding_p3skull] at @s run data merge entity @s {Motion:[0.15d,0.05d,0.15d]}
tag @s remove trueEnding_inattack
