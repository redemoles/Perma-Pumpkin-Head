
#> pph:tick
#
# @within			#minecraft:tick
#
#
# @description		Suppression des citrouilles en item
#

scoreboard objectives add pph.log_in minecraft.custom:leave_game

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carved_pumpkin","components":{"minecraft:enchantments":{"minecraft:binding_curse":1}}}}] run kill @s
