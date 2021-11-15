# 落下速度リセットして打ち上げる
    tp @s @s
    execute if entity @s[type=player] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:8b,Duration:6,ShowParticles:0b}]}
    execute if entity @s[type=!player] run data modify entity @s Motion[1] set value 0.5

# 後ろに飛んでいく
    scoreboard players set @s Chuz.Speed -10
    function scoped_rifle:entity/motion_xz
    scoreboard players reset @s Chuz.Speed

# デバフ
    effect give @s weakness 1 10 true
    effect give @s minecraft:mining_fatigue 1 10 true
    effect give @s minecraft:slowness 1 10 true