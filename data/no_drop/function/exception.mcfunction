#> no_drop:exception
#
# @within no_drop:tick

# 例外的なドロップ
    data modify entity @s PickupDelay set value 0s

    tp @s @p[tag=NoDrop.Thrower]

    tag @s remove NoDrop.ItemStack
say a