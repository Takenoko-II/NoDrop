#> no_drop:load/

# 防具とカーソル
    execute if function no_drop:load/other run return 1

# コンテナ
    return run function no_drop:load/inventory
