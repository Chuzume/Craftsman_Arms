# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.5
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 3 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8
    playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2

# 弾を召喚
    # 腰だめ
        execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","S.Rif_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{BodyDamage:6.0,HeadDamage:8.0,Speed:60,Range:400}}},{},{},{}]}
        execute unless score @s S.Rif_Burst matches 1.. as @p[tag=Chuz.This] at @s run function scoped_rifle:item/gunblade/ranged/fire/spread
        execute if score @s S.Rif_Burst matches 1.. as @p[tag=Chuz.This] at @s run function scoped_rifle:item/gunblade/ranged/fire/spread_burst

# 弾丸にInit処理
    tag @e[type=armor_stand,tag=S.Rif_Init,limit=1] add S.Rif_SnipeBullet
    execute as @e[type=armor_stand,tag=S.Rif_Init,limit=1] at @s run function scoped_rifle:entity/init

# 弾が減る
    execute in overworld run function scoped_rifle:item/consume_ammo

# リセット
    scoreboard players remove @s[scores={S.Rif_Burst=1..}] S.Rif_Burst 1
    scoreboard players reset @s S.Rif_Charge
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload
    tag @s remove Chuz.This