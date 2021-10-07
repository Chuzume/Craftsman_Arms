
# ストレージ
    execute as @a at @s run function scoped_rifle:storage

# 飛び道具チェック 
    execute as @e[type=armor_stand,tag=S.Rif_Projectile] at @s run function scoped_rifle:entity/bullet/tick

# リセット
    scoreboard players set @a[scores={S.Rif_Sneak=1..}] S.Rif_Sneak 0
