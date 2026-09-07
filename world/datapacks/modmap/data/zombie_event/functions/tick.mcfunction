execute as @a[scores={zombie_event_reset=1..}] run function zombie_event:reset
scoreboard players set @a[scores={zombie_event_reset=1..}] zombie_event_reset 0
scoreboard players enable @a zombie_event_reset
execute if score #started zombie_event_state matches 0 as @a[scores={zombie_event_start=1..},limit=1] run function zombie_event:start
scoreboard players set @a[scores={zombie_event_start=1..}] zombie_event_start 0
scoreboard players enable @a zombie_event_start
execute if score #started zombie_event_state matches 1 run scoreboard players add #timer zombie_event_timer 1
execute if score #timer zombie_event_timer matches 240000.. run setblock 0 0 0 minecraft:air
execute if score #timer zombie_event_timer matches 240000.. run scoreboard players set #started zombie_event_state 2
