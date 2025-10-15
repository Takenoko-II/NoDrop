#> no_drop:load/get_inventory_slot
#
# @input
#   arg Slot: int
#
# @output
#   storage
#       no_drop: current, slot_name

#
    $data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.inventory[{Slot: $(Slot)b}]

    $data modify storage no_drop: slot_name set value container.$(Slot)
