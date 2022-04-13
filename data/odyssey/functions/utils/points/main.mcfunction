#################################################
#####         armor stand rotation         ######
#################################################

execute as @e[type=minecraft:armor_stand,tag=point] at @s run tp @s ~ ~ ~ ~1 0




#################################################
#### armor stand point transformation ###########
#################################################

#jaune
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=!good,tag=jaune,tag=point] {NoGravity:0b,Small:1b,Invisible:1b,Tags:["good","point","jaune"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1519534993,-1241298751,-1720448374,-2067658930],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQzYzc5Y2Q5YzJkMzE4N2VhMDMyNDVmZTIxMjhlMGQyYWJiZTc5NDUyMTRiYzU4MzRkZmE0MDNjMTM0ZTI3In19fQ=="}]}}}}]}

#bleu
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=!good,tag=bleu,tag=point] {NoGravity:0b,Small:1b,Invisible:1b,Tags:["good","point","bleu"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1390846929,-1328133163,-1764951099,406210083],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmE0NjA1MzAxMmM2OGYyODlhYmNmYjE3YWI4MDQyZDVhZmJhOTVkY2FhOTljOTljMWUwMzYwODg2ZDM1In19fQ=="}]}}}}]}





#################################################
####      armor stand point attribution      ####
#################################################

execute as @a run execute at @s if entity @e[type=minecraft:armor_stand,distance=0..0.8,tag=jaune] run scoreboard players add __points_jaune var 1
execute as @a run execute at @s if entity @e[type=minecraft:armor_stand,distance=0..0.8,tag=bleu] run scoreboard players add __points_bleu var 1




#################################################
#####        armor stand disparition        #####
#################################################

execute at @a run execute as @a at @s[distance=0..0.8] if entity @e[type=minecraft:armor_stand,distance=0..0.8,tag=point] run kill @e[type=minecraft:armor_stand,distance=0..0.5]