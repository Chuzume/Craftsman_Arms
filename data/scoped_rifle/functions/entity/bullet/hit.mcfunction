
# もし使用者自身に当たったなら、なかったことにする
    execute store success score @s Chuz.HitCheck if score @s Chuz_En.ID = @e[type=!#mozambique:unhurtable,sort=nearest,limit=1] Chuz_Pl.ID

# ヒット
    execute store result storage csr_score_damage: Damage int 1 run data get entity @s ArmorItems[0].tag.ChuzData.Damage
    execute store result storage csr_score_damage: HeadDamage int 1 run data get entity @s ArmorItems[0].tag.ChuzData.HeadDamage
    execute if score @s Chuz.HitCheck matches 0 as @e[type=!#mozambique:unhurtable,sort=nearest,limit=1] at @s unless entity @s[gamemode=!adventure,gamemode=!survival] run function scoped_rifle:entity/bullet/hit_damage

# 消失
    execute if score @s Chuz.HitCheck matches 0 run function scoped_rifle:entity/bullet/break