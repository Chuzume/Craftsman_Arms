
# タグ調整
    tag @s add S.Rif_GreatSword
    tag @s remove Chuz.Projectile_Init

# 
    execute at @p run tp @s ~ ~ ~ ~ 0

# 向きを補正
    #execute store result entity @s Pose.Head[1] float 1 run data get entity @p Rotation[0]

# スコア設定
    scoreboard players set @s Chuz.Range 30
#execute at @s run function craftsman_arms:entity/motion

# UUIDコピー
    #execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID