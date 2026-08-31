#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/crops/setblock_pitcher_crop
#||
#||    # function
#||        @yk.lib:grow_block/crops/root
#||
#|| ------ End ------ ||#

    ## 最大の時だけ上にも置く
        $setblock ~ ~ ~ pitcher_crop[age=$(age)]
        $execute if score $Age yk.lib.global matches 3..4 run setblock ~ ~1 ~ pitcher_crop[age=$(age),half=upper] strict
