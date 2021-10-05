
# ストレージ
    execute as @a at @s run function scoped_rifle:storage

# 飛び道具チェック 
    execute as @e[type=armor_stand,tag=S.Rif_Projectile] at @s run function scoped_rifle:entity/projectile_check

# リセット
    #scoreboard players reset @a[scores={S.Rif_Shot=0..}] S.Rif_Shot
