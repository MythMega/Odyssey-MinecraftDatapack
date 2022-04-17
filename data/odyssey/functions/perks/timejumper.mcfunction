scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
execute as @a[scores={sneaking=1..},nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run time add 100
scoreboard players reset @a[scores={sneaking=1..}] sneaking