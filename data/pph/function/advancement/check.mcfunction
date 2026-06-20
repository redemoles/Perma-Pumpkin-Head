
#> pph:advancement/check
#
# @within			#advancement:tick
#
#
# @description		Attribution d'une pumpkin head sur la tête d'un joueur
#

advancement revoke @s only pph:tick
execute if items entity @s armor.head minecraft:carved_pumpkin[minecraft:enchantments~[{"enchantments":"minecraft:binding_curse"}]] run return fail

data modify storage pph:temp equipment.head set value {"id":"","components":{},"count":1}
data modify storage pph:temp equipment.head merge from entity @s equipment.head
function pph:advancement/remove_helmet with storage pph:temp equipment.head
item replace entity @s armor.head with minecraft:carved_pumpkin[minecraft:enchantments={"minecraft:binding_curse":1}]
