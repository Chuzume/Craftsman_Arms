# 弾を召喚
    execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:3.0,HeadDamage:2.0,Speed:45,Range:160}}},{},{},{}]}
    execute as @p[tag=Chuz.This] at @s run function scoped_rifle:item/craftsman_shotgun/fire/spread

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/shell/init
