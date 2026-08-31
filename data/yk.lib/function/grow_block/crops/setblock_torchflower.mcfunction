#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/crops/setblock_torchflower
#||
#||    # function
#||        @yk.lib:grow_block/crops/root
#||
#|| ------ End ------ ||#

    $say $(age)
    execute if score $MaxAge yk.lib.global matches 0 run return run setblock ~ ~ ~ torchflower
    $setblock ~ ~ ~ torchflower_crop[age=$(age)]