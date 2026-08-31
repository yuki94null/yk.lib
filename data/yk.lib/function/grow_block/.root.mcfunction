#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/.root
#||
#|| ------ End ------ ||#

## time stamp
    execute store result storage yk.lib:global grow_block.current_time int 1.0 run time query gametime
    execute store result storage yk.lib:global grow_block.timestamp int 1.0 run time query gametime

## align
    execute align xyz positioned ~0.5 ~ ~0.5 run function yk.lib:grow_block/align
