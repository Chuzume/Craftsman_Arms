execute facing entity @e[type=marker,tag=S.Rif_Spread,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
kill @e[type=marker,tag=S.Rif_Spread,distance=..100]
tag @s add S.Rif_Grenade
tag @s remove S.Rif_Init
scoreboard players set @s Chuz.Speed 10
execute at @s run function scoped_rifle:entity/motion

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID