#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/crops/2-5_growth
#||
#||    # function
#||        @yk.lib:grow_block/crops/root
#||
#|| ------ End ------ ||#

data get storage yk.lib:global grow_block.block_state.age

execute store result score #Rdm yk.lib.global run random value 2..5

scoreboard players add $Age yk.lib.global 2
execute if score #Rdm yk.lib.global matches 3..5 run scoreboard players add $Age yk.lib.global 1
execute if score #Rdm yk.lib.global matches 4..5 run scoreboard players add $Age yk.lib.global 1
execute if score #Rdm yk.lib.global matches 5 run scoreboard players add $Age yk.lib.global 1
