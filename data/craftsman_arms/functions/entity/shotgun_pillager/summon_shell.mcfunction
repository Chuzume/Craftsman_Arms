# 弾を召喚
    execute anchored eyes run summon marker ^-0.25 ^ ^1 {Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:2.0,HeadDamage:3.0,Speed:5,Range:160}}}
    execute at @s run function craftsman_arms:item/shotgun/fire/spread

# 弾丸にInit処理
    execute as @e[type=marker,tag=Chuz.Projectile_Init,limit=1] at @s run function craftsman_arms:entity/shell_enemy/init
