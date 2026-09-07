setblock 0 0 0 minecraft:air
setblock 0 0 0 minecraft:repeating_command_block{Command:"tp @e[type=zombie] 0 0 0",auto:1b}
execute as @e[type=minecraft:zombie] run tp @s 0 0 0
scoreboard players set #started zombie_event_state 1
scoreboard players set #timer zombie_event_timer 0
