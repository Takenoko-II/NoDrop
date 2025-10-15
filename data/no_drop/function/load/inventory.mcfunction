#> no_drop:load/inventory

# -1番目の要素を取り出す
    data modify storage no_drop: previous set from storage no_drop: inventory[-1]

    data remove storage no_drop: inventory[-1]

# 現在のインベントリから対応する要素を取り出す
    function no_drop:load/get_inventory_slot with storage no_drop: previous

# 要素の比較
    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# 要素数0で終了
    execute unless data storage no_drop: inventory[] run return run function no_drop:load/finalize

# 次の要素の処理
    execute if data storage no_drop: inventory[] run function no_drop:load/inventory
