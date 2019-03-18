/// @description Select this child

var buttonTemp = noone;

if(checkIfInArray(id, o_battleManager.activeChilds) == true) {
	instance_destroy(o_buttonAttack);
	buttonTemp = instance_create_layer(x, y, "Logic_and_GUI", o_buttonAttack);
	buttonTemp.selected = id;
}