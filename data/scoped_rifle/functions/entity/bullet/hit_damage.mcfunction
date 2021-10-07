
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add S.Rif_Hit.Bullet

# ヘッドショットテスト
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=S.Rif_Projectile,dx=0] run function scoped_rifle:entity/bullet/hit_headshot

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    execute store result storage csr_score_damage: Damage int 1 run data get storage csr_score_damage: Damage
    execute if entity @s[type=!end_crystal] run function csr_score_damage:api/attack
    data remove storage csr_score_damage: Damage