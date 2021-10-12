
# 弾チェックして持ってたスコア加算
    execute if score $Chuz.Setting S.Rif_Rule1 matches 1 store success score @s Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 0
    execute if score @s Chuz.Temporary matches 1.. run scoreboard players add @s S.Rif_Reload 1

# 弾いらないモードなら常に増える
    execute if score $Chuz.Setting S.Rif_Rule1 matches 0 run scoreboard players add @s S.Rif_Reload 1

# ざくざくと弾を込める
    execute if score @s S.Rif_Reload matches 3 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 5 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 5 in overworld run function scoped_rifle:item/craftsman_shotgun/add_ammo
