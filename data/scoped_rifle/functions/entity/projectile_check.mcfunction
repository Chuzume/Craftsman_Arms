
# 弾丸の種類を判別
    execute if entity @s[tag=S.Rif_SnipeBullet] run function scoped_rifle:entity/bullet/tick

    execute if entity @s[tag=S.Rif_Shell] run function scoped_rifle:entity/shell/tick

    execute if entity @s[tag=S.Rif_Grenade] run function scoped_rifle:entity/grenade/tick

    execute if entity @s[tag=S.Rif_Shell_Enemy] run function scoped_rifle:entity/shell_enemy/tick