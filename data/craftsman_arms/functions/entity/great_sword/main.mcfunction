
# コンボ1
    execute if entity @s[tag=S.Rif_GreatSwordCombo1] run function craftsman_arms:entity/great_sword/combo1

# コンボ2
    execute if entity @s[tag=S.Rif_GreatSwordCombo2] run function craftsman_arms:entity/great_sword/combo2

# コンボ3
    execute if entity @s[tag=S.Rif_GreatSwordCombo3] run function craftsman_arms:entity/great_sword/combo3

# 消える
    execute if entity @s[scores={Chuz.Range=..0}] run kill @e[type=area_effect_cloud,tag=Mover,sort=nearest,limit=1]
    kill @s[scores={Chuz.Range=..0}]
