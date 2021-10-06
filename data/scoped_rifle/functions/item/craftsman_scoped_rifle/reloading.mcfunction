
# スコア加算
    scoreboard players add @s S.Rif_Reload 1
    execute if score @s S.Rif_Reload matches 28 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 30 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 30 in overworld run function scoped_rifle:item/craftsman_scoped_rifle/add_ammo

    execute if score @s S.Rif_Reload matches 38 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 40 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 40 in overworld run function scoped_rifle:item/craftsman_scoped_rifle/add_ammo

    execute if score @s S.Rif_Reload matches 48 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 50 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 50 in overworld run function scoped_rifle:item/craftsman_scoped_rifle/add_ammo

    execute if score @s S.Rif_Reload matches 58 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 60 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 60 in overworld run function scoped_rifle:item/craftsman_scoped_rifle/add_ammo

# スコアリセット
    execute if score @s S.Rif_Reload matches 60 run scoreboard players reset @s S.Rif_Reload