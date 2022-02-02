
# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.7 10
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1.5


# 落下速度リセットしてAECで打ち上げる
    tp @s 0 0 0
    tp ~ ~0.0 ~
    summon minecraft:area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:3,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:10,ShowParticles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s S.Rif_Recursive 20
    execute rotated ~ 0 run function craftsman_arms:item/gunblade/summon_recursive

# リセット
    tag @s remove Chuz.This
