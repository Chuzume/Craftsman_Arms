# パーティクル
    #execute rotated ~90 ~ positioned ^-0.5 ^ ^2.0 run particle minecraft:dust 0.3 0.7 1 1 ~ ~1.4 ~ 0 0 0 1 1
    #execute rotated ~90 ~ positioned ^-0.5 ^ ^1.8 run particle minecraft:dust 0.4 0.7 1 1 ~ ~1.4 ~ 0 0 0 1 1
    #execute rotated ~90 ~ positioned ^-0.5 ^ ^1.6 run particle minecraft:dust 0.5 0.7 1 1 ~ ~1.4 ~ 0 0 0 1 1
    #execute rotated ~90 ~ positioned ^-0.5 ^ ^1.4 run particle minecraft:dust 0.6 0.7 1 1 ~ ~1.4 ~ 0 0 0 1 1
    #execute rotated ~90 ~ positioned ^-0.5 ^ ^1.2 run particle minecraft:dust 0.7 0.7 1 1 ~ ~1.4 ~ 0 0 0 1 1
#
# 回転
    scoreboard players add @s Test 1
    execute if score @s Test matches 0..3 run tp @s ~ ~ ~ ~10 ~
    execute if score @s Test matches 3..8 run tp @s ~ ~ ~ ~30 ~
    execute if score @s Test matches 8..9 run tp @s ~ ~ ~ ~10 ~
    execute if score @s Test matches 9..12 run tp @s ~ ~ ~ ~5 ~

# サウンド
    execute if score @s Test matches 1 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.2 0.5
    execute if score @s Test matches 1 run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.2 0.5

# モデル
    item replace entity @s[scores={Test=2}] armor.head with minecraft:warped_fungus_on_a_stick{CustomModelData:18}

# スコア減算
    scoreboard players remove @s Chuz.Range 1

# 向きを補正
    execute store result entity @s Pose.Head[1] float 1 run data get entity @p Rotation[0]
