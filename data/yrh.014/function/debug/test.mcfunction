execute store success score #Success yk.lib.global run forceload add 100 0
tellraw @s [{score:{name:"#Success",objective:"yk.lib.global"}}]

execute store success score #Success yk.lib.global run forceload remove 100 0
tellraw @s [{score:{name:"#Success",objective:"yk.lib.global"}}]
