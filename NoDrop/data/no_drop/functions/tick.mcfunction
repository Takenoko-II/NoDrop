#> no_drop:tick

# 常時実行
    execute as @a if score @s no_drop.joined matches 1.. run function no_drop:player/joined

    scoreboard players reset @a no_drop.joined
