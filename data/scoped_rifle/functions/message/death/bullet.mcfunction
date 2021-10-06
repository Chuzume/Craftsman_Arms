gamerule showDeathMessages false
execute as @e[tag=S.Rif_Projectile,sort=nearest,limit=1] at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This
execute if entity @s[tag=S.Rif_Hit.Bullet] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に撃ち抜かれた"}]
execute if entity @s[tag=S.Rif_Hit.BulletHS] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に正確な狙撃を受けた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true