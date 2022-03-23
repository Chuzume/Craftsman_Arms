# 追従
    tag @s add Chuz.This
    execute at @a if score @e[type=area_effect_cloud,tag=Chuz.This,distance=..3,limit=1] Chuz_En.ID = @p Chuz_Pl.ID rotated ~ 0 positioned ^ ^ ^-0.3 run tp @e[type=area_effect_cloud,tag=Chuz.This,distance=..3,limit=1] ~ ~-0.5 ~
    tag @s remove Chuz.This

# 位置更新
    data modify entity @s Air set from entity @s Age