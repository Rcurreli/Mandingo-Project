/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_textevent) == false && o_battleManager.phase == 1){
	visible = true;
	if(instance_exists(o_arrowEnemy)){
		image_index = 2;
	}
	else if(instance_exists(o_buttonAttack)){
		image_index = 1;
	}
	else{
		image_index = 0;
	}
}

else{
	visible = false;
}