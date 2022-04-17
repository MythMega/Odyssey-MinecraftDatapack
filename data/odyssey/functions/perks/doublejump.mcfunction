scoreboard players add @a[tag=DoubleJump] jump_timer 1
tag @a[tag=DoubleJumper,nbt={FallFlying:1b,}] add DoubleJump
clear @a[tag=DoubleJump] minecraft:elytra
tag @a[scores={jump_timer=4}] remove DoubleJump
effect give @a[scores={jump_timer=1}] minecraft:levitation 1 30 true
effect clear @a[scores={jump_timer=4}] minecraft:levitation
scoreboard players set @a[scores={jump_timer=4}] jump_timer 0

execute as @a[tag=DoubleJumper,nbt={OnGround:1b}] run item replace entity @a[tag=DoubleJumper,nbt={OnGround:1b}] armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}

execute at @a[tag=DoubleJumper,nbt={FallFlying:1b}] anchored feet run particle minecraft:poof ~ ~ ~ 0.4 0.4 0.4 0 30
execute at @a[tag=DoubleJumper,nbt={FallFlying:1b}] run playsound minecraft:block.slime_block.fall ambient @a ~ ~ ~
