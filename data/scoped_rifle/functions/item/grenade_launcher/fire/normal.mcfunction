# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound chuzume:launcher_shot player @a ~ ~ ~ 3 1.2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.7
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 3 1.5

# 弾を召喚
    execute anchored eyes run particle smoke ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 10
    #execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Small:1b,Silent:0b,Marker:0b,Invisible:0b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:2.0,HeadDamage:1.0,Speed:20,Range:160}}},{},{},{}]}
    execute anchored eyes run summon item ^-0.25 ^ ^ {Fire:2,PickupDelay:32767,Item:{id:"minecraft:egg",Count:1b},Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"]}
    execute at @s run function scoped_rifle:item/grenade_launcher/fire/spread

# 弾丸にInit処理
    execute as @e[type=item,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/grenade/init

# 弾が減る
    execute in overworld run function scoped_rifle:item/consume_ammo

# もう実行者ではない
    tag @s remove Chuz.This

# リロードを阻害
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload
