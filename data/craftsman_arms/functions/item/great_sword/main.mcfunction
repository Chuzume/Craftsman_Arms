# スニークでチャージ
    scoreboard players add @s[scores={S.Rif_Sneak=0..}] S.Rif_Charge 1 

# チャージ
    execute if entity @s[scores={S.Rif_Charge=15}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1

# チャージ値リセット
    execute unless score @s S.Rif_Sneak matches 1.. run scoreboard players reset @s S.Rif_Charge

# コンボ1
    execute if entity @s[scores={S.Rif_RClick=0..}] run function craftsman_arms:item/great_sword/swing/combo1

# コンボ値
    scoreboard players remove @s[scores={S.Rif_ComboWait=0..}] S.Rif_ComboWait 1
    scoreboard players reset @s[scores={S.Rif_ComboWait=..0}] S.Rif_Combo
    scoreboard players reset @s[scores={S.Rif_ComboWait=..0}] S.Rif_ComboWait
