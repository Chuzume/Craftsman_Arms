# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^1 {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:2.0,HeadDamage:1.0,Speed:7,Range:160}}},{},{},{}]}
    execute at @s run function scoped_rifle:item/craftsman_shotgun/fire/spread

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/shell_enemy/init
