
# UUIDコピーしたAECをぶちかます
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp_Resist" 1 add
    execute if entity @s[type=#csr_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[Chuz_UUID_Hit],Radius:0.1f,Duration:6,DurationOnUse:0f,Age:4,WaitTime:0,Owner:[],Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[type=!#csr_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[Chuz_UUID_Hit],Radius:0.2f,Duration:6,DurationOnUse:0f,Age:4,WaitTime:0,Owner:[],Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[type=!#csr_score_damage:undead] at @s anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Particle:"crit",Tags:[Chuz_UUID_Hit],Radius:0.2f,Duration:6,DurationOnUse:0f,Age:4,WaitTime:0,Owner:[],Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

    data modify entity @e[type=minecraft:area_effect_cloud,tag=Chuz_UUID_Hit,limit=1,sort=nearest] Owner set from entity @e[tag=Chuz_UUIDAttack,limit=1,sort=nearest] ArmorItems[0].tag.OwnerUUID
    data modify entity @e[type=minecraft:area_effect_cloud,tag=Chuz_UUID_Hit,limit=1,sort=nearest] Owner set from entity @e[tag=Chuz.PlayerAttack,limit=1,sort=nearest] UUID

# リセット
    tag @s add UUIDHit.Reset
    schedule function scoped_rifle:uuid_hit_reset 2t
