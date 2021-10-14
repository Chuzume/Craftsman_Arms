
# ストレージ
    execute as @a at @s run function scoped_rifle:storage

# 飛び道具チェック 
    execute as @e[type=armor_stand,tag=S.Rif_Projectile] at @s run function scoped_rifle:entity/projectile_check

# スコアID
    execute as @a unless score @s Chuz_Pl.ID matches 0.. run function scoped_rifle:score_id

# リセット
    scoreboard players set @a[scores={S.Rif_Sneak=1..}] S.Rif_Sneak 0
    scoreboard players reset @a[scores={S.Rif_Shot=1..}] S.Rif_Shot
    scoreboard players reset @a[scores={S.Rif_RClick=1..}] S.Rif_RClick