
# 前の剣削除
    kill @e[type=armor_stand,tag=S.Rif_GreatSword,sort=nearest,limit=1]

# 剣召喚
    summon area_effect_cloud ~ ~-0.5 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Mover","MoverInit"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init","S.Rif_GreatSword"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959}]}
    #summon area_effect_cloud ~ ~-0.5 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Mover","MoverInit"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init","S.Rif_GreatSword"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959},{id:"minecraft:armor_stand",Marker:1b,Invisible:0b,Tags:["S.Rif_SweepInit"]}]}

# エフェクト
    effect give @s minecraft:mining_fatigue 1 10 true
    effect give @s minecraft:slowness 1 1 true

# コンボ
    execute unless entity @s[scores={S.Rif_Combo=0..}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo1
    execute if entity @s[scores={S.Rif_Combo=1,S.Rif_ComboWait=..6}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo2
    execute if entity @s[scores={S.Rif_Combo=2,S.Rif_ComboWait=..6}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo3

# Init処理
    execute as @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] at @s run function craftsman_arms:entity/great_sword/init

# Init処理
    execute as @e[type=armor_stand,tag=S.Rif_SweepInit,limit=1] at @s run function craftsman_arms:entity/great_sword/sweep_init


# 下のAECに処理
    execute as @e[type=area_effect_cloud,tag=MoverInit,limit=1] at @s run function craftsman_arms:entity/great_sword/init_mover

# スコアセット
    scoreboard players add @s S.Rif_Combo 1
    scoreboard players set @s S.Rif_ComboWait 10