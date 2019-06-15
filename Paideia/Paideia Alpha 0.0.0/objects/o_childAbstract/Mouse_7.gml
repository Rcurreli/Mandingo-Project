/// @description Select this child

var buttonTemp = noone;

if(room != rm_LabyrinthEntranceLameEncounter && (instance_exists(obj_textevent)== false)){
	if(checkIfInArray(id, o_battleManager.activeChilds) == true &&  instance_exists(obj_textevent) == false && checkTarget(o_battleManager.enemies)== false) {
		instance_destroy(o_buttonBattleAbstract);
		buttonTemp = instance_create_layer(x + 64, y - 64, "GUI", o_buttonAttack);
		buttonTemp.selected = id;
	}
}