/// @description Select this child

var buttonTemp = noone;



if(checkIfInArray(id, o_battleManager.activeChilds) == true &&  instance_exists(obj_textevent) == false && checkTarget(o_battleManager.enemies)== false) {
	instance_destroy(o_buttonBattleAbstract);
	buttonTemp = instance_create_layer(x +55, y -170, "Logic_and_GUI", o_buttonAttack);
	buttonTemp.selected = id;
	buttonTemp = instance_create_layer(x + 55, y - 85, "Logic_and_GUI", o_buttonDefend);
	buttonTemp.selected = id;
	buttonTemp = instance_create_layer(x + 55, y, "Logic_and_GUI", o_buttonRest);
	buttonTemp.selected = id;
}