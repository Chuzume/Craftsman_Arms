# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.7
    playsound minecraft:block.chain.break player @a ~ ~ ~ 4 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1

# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute if entity @s[tag=!Chuz.UsingSpyglass] if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:7.0,HeadDamage:14.0,Speed:90,Range:800}}},{},{},{}]}
        execute if entity @s[tag=!Chuz.UsingSpyglass] as @p[tag=Chuz.This] at @s run function scoped_rifle:item/scoped_rifle/fire/spread

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run particle smoke ^ ^ ^0.7 0 0 0 0.05 2
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:7.0,HeadDamage:7.0,Speed:90,Range:800}}},{},{},{}]}
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon marker ^ ^ ^10 {Tags:["S.Rif_Spread"]}

# 弾丸にInit処理
    tag @e[type=armor_stand,tag=S.Rif_Init,limit=1] add S.Rif_SnipeBullet
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/bullet/init

# 弾が減る
    execute in overworld run function scoped_rifle:item/consume_ammo

# もう実行者ではない
    tag @s remove Chuz.This