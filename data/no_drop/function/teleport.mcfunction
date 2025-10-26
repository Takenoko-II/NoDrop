#> no_drop:teleport

#
    tag @s add NoDrop.ExceptionSelf

    execute on origin at @s anchored eyes run tp @n[tag=NoDrop.ExceptionSelf] ^ ^ ^

    execute on origin run data modify entity @n[tag=NoDrop.ExceptionSelf] Owner set from entity @s UUID

    tag @s remove NoDrop.ExceptionSelf

    data modify entity @s PickupDelay set value 0s

    data modify entity @s Age set value -32768s

    tag @s add NoDrop.Exception
