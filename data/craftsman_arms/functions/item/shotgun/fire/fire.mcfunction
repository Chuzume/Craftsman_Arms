# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{BodyDamage:2.0,HeadDamage:3.0,Speed:45,Range:160}}},{},{},{}]}
    execute at @s run function craftsman_arms:item/shotgun/fire/spread

# 弾丸にInit処理
    tag @e[type=armor_stand,tag=S.Rif_Init,limit=1] add S.Rif_Shell
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function craftsman_arms:entity/projectile_common/init
