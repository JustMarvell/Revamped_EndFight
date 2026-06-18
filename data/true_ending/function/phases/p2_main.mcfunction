# Phase 2 main loop - called each tick while trueEnding_bigphase == 2
# Handle transition animation first
execute if score @s trueEnding_p2_transitioning matches 1 run function true_ending:phases/p2_transition_anim

# Once transition done, run normal dragon AI (existing attacks from phase 1 still work)
execute if score @s trueEnding_p2_transitioning matches 0 run scoreboard players add @s trueEnding_attacktimer 1

# Every 240 ticks (12 seconds) fire a random Phase 2 special attack
execute if score @s trueEnding_p2_transitioning matches 0 if score @s trueEnding_attacktimer matches 240 run function true_ending:phases/p2_attacks/select
execute if score @s trueEnding_p2_transitioning matches 0 if score @s trueEnding_attacktimer matches 240 run scoreboard players set @s trueEnding_attacktimer 0

# Check for Phase 3 transition: when dragon reaches 33% of 500 HP = ~165 HP
# We track this via a flag tag trueEnding_p3ready
execute if score @s trueEnding_p2_transitioning matches 0 if score @s[tag=!trueEnding_p3ready] trueEnding_health_percent matches ..333 run tag @s add trueEnding_p3ready
execute if score @s trueEnding_p2_transitioning matches 0 if entity @s[tag=trueEnding_p3ready] run function true_ending:phases/p3_transition
