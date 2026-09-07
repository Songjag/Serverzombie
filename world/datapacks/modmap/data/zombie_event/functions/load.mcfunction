scoreboard objectives add zombie_event_timer dummy
scoreboard objectives add zombie_event_state dummy
scoreboard objectives add zombie_event_start trigger
scoreboard objectives add zombie_event_reset trigger
setblock 0 0 0 minecraft:air
scoreboard players set #started zombie_event_state 0
scoreboard players set #timer zombie_event_timer 0
scoreboard players enable @a zombie_event_start
scoreboard players enable @a zombie_event_reset
