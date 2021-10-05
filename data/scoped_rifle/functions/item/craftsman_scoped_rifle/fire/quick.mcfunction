# 俺が実行者だ
    tag @s add Chuz.This

# サウンド
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.7
    playsound minecraft:block.chain.break player @a ~ ~ ~ 4 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1

# 弾を召喚
# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:7.0,HeadDamage:5.0,Speed:40,Range:400}}},{},{},{}]}
        execute if entity @s[tag=!Chuz.UsingSpyglass] as @p[tag=Chuz.This] at @s run function scoped_rifle:item/craftsman_scoped_rifle/fire/spread

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run particle smoke ^ ^ ^0.7 0 0 0 0.05 2
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:7.0,HeadDamage:5.0,Speed:40,Range:400}}},{},{},{}]}
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon marker ^ ^-0.05 ^10 {Tags:["S.Rif_Spread"]}

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/bullet/init

# もう実行者ではない
    tag @s remove Chuz.This
