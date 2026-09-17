
#> pph:advancement/remove_helmet
#
# @within			pph:advancement/check
#
#
# @description		Drop un item si le joueur possédait un casque avant l'ajout du datapack
#

$loot give @s loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}
