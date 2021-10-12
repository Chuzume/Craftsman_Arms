# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 1.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 4 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 4 1.3

# 弾を召喚
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire
    function scoped_rifle:item/craftsman_shotgun/fire/fire


# 弾が減る
    execute in overworld run function scoped_rifle:item/consume_ammo

# 上向きに撃つと落下する
    #execute if entity @s[predicate=!scoped_rifle:sneak,x_rotation=-90..-80] run effect give @s minecraft:levitation 1 200 true

# 下向きに撃つと飛び上がる
    execute if entity @s[predicate=!scoped_rifle:sneak,x_rotation=80..90] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:18b,Duration:6,ShowParticles:0b}]}

# もう実行者ではない
    tag @s remove Chuz.This

# リロードを阻害
    scoreboard players set @s S.Rif_Pump 20
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload

# ポンプがしゃこん
    scoreboard players set $CMD Chuz.Temporary 32
    function scoped_rifle:item/craftsman_shotgun/replace_cmd