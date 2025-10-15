#> no_drop:load/clear
#
#

# 掃除
    data remove storage no_drop: inventory
    data remove storage no_drop: equipment
    data remove storage no_drop: crafting

    data remove storage no_drop: previous
    data remove storage no_drop: current
    data remove storage no_drop: slot_name

    data remove storage no_drop: successful

# 成功を返す
    function no_drop:save/

    return 1
