
# 弾丸の種類を判別
    execute if entity @s[tag=S.Rif_SnipeBullet] run function scoped_rifle:entity/bullet/tick

    execute if entity @s[tag=S.Rif_Shell] run function scoped_rifle:entity/shell/tick