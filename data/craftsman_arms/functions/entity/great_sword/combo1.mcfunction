
# 回転
    scoreboard players add @s Test 1
    execute if score @s Test matches 0..4 run scoreboard players remove @s S.Rif_RotSpeed 3
    execute if score @s Test matches 5..10 run scoreboard players remove @s S.Rif_RotSpeed 5
    execute if score @s Test matches 11 run scoreboard players set @s S.Rif_RotSpeed -10
    execute if score @s Test matches 13 run scoreboard players set @s S.Rif_RotSpeed -5
    execute if score @s Test matches 14 run scoreboard players set @s S.Rif_RotSpeed 0
    tag @s[scores={Test=20..}] add S.Rif_Kill


# 進んだ距離
    scoreboard players operation @s S.Rif_RotDistance += @s S.Rif_RotSpeed
    tag @s[scores={S.Rif_RotDistance=..-300}] add S.Rif_Kill

# 回転速度
    execute store result score @s S.Rif_Rotation run data get entity @s Rotation[0] 1
    scoreboard players operation @s S.Rif_Rotation += @s S.Rif_RotSpeed
    execute store result entity @s Rotation[0] float 1 run scoreboard players get @s S.Rif_Rotation

# サウンド
    execute if score @s Test matches 1 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.2 0.5
    execute if score @s Test matches 1 run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.2 0.5

# モデル
    item replace entity @s[scores={Test=6}] armor.head with minecraft:knowledge_book{CustomModelData:24}

# スコア減算
    scoreboard players remove @s Chuz.Range 1

# 向きを補正
    #execute store result entity @s Pose.Head[1] float 1 run data get entity @p Rotation[0]