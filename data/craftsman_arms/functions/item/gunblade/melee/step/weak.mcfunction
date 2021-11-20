
# 変形させたらバースト射撃
    #scoreboard players set @s S.Rif_Burst 3

# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.7 10
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1.5
    #playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    #playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 落下速度リセットしてAECで打ち上げる
    tp @s @s
    summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:3,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:10,ShowParticles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s S.Rif_Recursive 20
    execute rotated ~ 0 run function craftsman_arms:item/gunblade/summon_recursive

# リセット
    tag @s remove Chuz.This
