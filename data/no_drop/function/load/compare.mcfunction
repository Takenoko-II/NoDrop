#> no_drop:load/compare

# 要素の比較
    execute store success storage no_drop: successful byte 1 run data modify storage no_drop: current set from storage no_drop: previous

# スロットを復元
    execute if data storage no_drop: {successful: true} run return run function no_drop:load/put with storage no_drop:

# 復元に失敗したとき
    return fail
