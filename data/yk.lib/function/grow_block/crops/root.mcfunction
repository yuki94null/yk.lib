#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/crops/root
#||
#||    # function
#||        @yk.lib:grow_block/align
#||
#|| ------ End ------ ||#

# ## 成長限界
#     execute if block ~ ~ ~ #yk.lib:grow_block/max_age/2[age=2] run return fail
#     execute if block ~ ~ ~ #yk.lib:grow_block/max_age/3[age=3] run return fail
#     execute if block ~ ~ ~ #yk.lib:grow_block/max_age/4[age=4] run return fail
#     execute if block ~ ~ ~ #yk.lib:grow_block/max_age/7[age=7] run return fail

# ## effects
#     particle minecraft:happy_villager ~ ~0.5 ~ 0.25 0.25 0.25 1.0 15 normal @a
#     playsound item.bone_meal.use block @a ~ ~ ~ 1.0 1.0 0.0

# ## 作物ごと
#     execute if block ~ ~ ~ minecraft:wheat run return run function yk.lib:grow_block/crops/wheat
#     execute if block ~ ~ ~ minecraft:potatoes run return run function yk.lib:grow_block/crops/potatoes
#     execute if block ~ ~ ~ minecraft:carrots run return run function yk.lib:grow_block/crops/carrots
#     execute if block ~ ~ ~ minecraft:beetroots run return run function yk.lib:grow_block/crops/beetroots
#     execute if block ~ ~ ~ minecraft:pumpkin_stem run return run function yk.lib:grow_block/crops/pumpkin_stem
#     execute if block ~ ~ ~ minecraft:melon_stem run return run function yk.lib:grow_block/crops/melon_stem
#     execute if block ~ ~ ~ minecraft:pitcher_crop run return run function yk.lib:grow_block/crops/pitcher_crop
#     execute if block ~ ~ ~ minecraft:torchflower_crop run return run function yk.lib:grow_block/crops/torchflower_crop


    ### Ageが最大の時はやめる
        execute if score $Age yk.lib.global >= $MaxAge yk.lib.global run return fail

    ### Ageを進める処理
        execute if block ~ ~ ~ #yk.lib:grow_block/2-5_growth run function yk.lib:grow_block/crops/2-5_growth
        execute if block ~ ~ ~ #yk.lib:grow_block/1_growth run function yk.lib:grow_block/crops/1_growth
        execute if block ~ ~ ~ #yk.lib:grow_block/0.75_growth run function yk.lib:grow_block/crops/0.75_growth

    ### トーチフラワーはIDが変わるので別処理
        execute if block ~ ~ ~ torchflower_crop \
            if score $Age yk.lib.global matches 2.. run \
                scoreboard players set $MaxAge yk.lib.global 0

    ### マックス超えたときclamp
        execute if score $Age yk.lib.global > $MaxAge yk.lib.global run \
            scoreboard players operation $Age yk.lib.global = $MaxAge yk.lib.global

    ### effects
        particle minecraft:happy_villager ~ ~0.35 ~ 0.25 0.25 0.25 1.0 9 normal @a
        playsound item.bone_meal.use block @a ~ ~ ~ 1.0 1.0 0.0

    ### setblock
        execute store result storage yk.lib:global grow_block.age int 1.0 run scoreboard players get $Age yk.lib.global
        execute \
            unless block ~ ~ ~ pitcher_crop \
            unless block ~ ~ ~ torchflower_crop run \
            return run \
                function yk.lib:grow_block/crops/mcr_setblock with storage yk.lib:global grow_block

        execute if block ~ ~ ~ pitcher_crop run \
            return run \
                function yk.lib:grow_block/crops/setblock_pitcher_crop with storage yk.lib:global grow_block

        execute if block ~ ~ ~ torchflower_crop run \
            return run \
                function yk.lib:grow_block/crops/setblock_torchflower with storage yk.lib:global grow_block
