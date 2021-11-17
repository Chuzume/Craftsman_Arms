# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot scoped_rifle:item/gunblade/ranged

# すぐ拾いてえよ
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s scoped_rifle:gunblade

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only scoped_rifle:craft/gunblade