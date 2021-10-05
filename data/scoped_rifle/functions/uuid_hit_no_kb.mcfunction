
# UUIDコピーした雪玉をぶつけて、攻撃者の攻撃って事にする/ノックバックしないバージョン
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp_Resist" 1 add
    execute at @s run summon minecraft:snowball ~ ~-0.31 ~ {Owner:{},Motion:[0.0,10.0,0.0],Tags:["Chuz_UUID_Hit"],Item:{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}}}
    data modify entity @e[type=minecraft:snowball,tag=Chuz_UUID_Hit,limit=1,sort=nearest] Owner set from entity @e[tag=Chuz_UUIDAttack,limit=1,sort=nearest] ArmorItems[0].tag.OwnerUUID

# リセット
    tag @s add UUIDHit.Reset