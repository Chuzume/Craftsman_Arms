
# 演出
    playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 3 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8

# パーティクル
    execute anchored eyes rotated ~ ~90 positioned ^ ^2 ^ run function scoped_rifle:item/gunblade/parry/shape

# 火薬パワーでなんか吹っ飛ばす
    tag @s add Chuz.This
    execute as @e[type=!#scoped_rifle:unhurtable,tag=!Chuz.This,distance=..3] at @s rotated 0 ~ facing entity @p[tag=Chuz.This] feet run function scoped_rifle:item/gunblade/parry/knockback
    tag @s remove Chuz.This

