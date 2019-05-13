/// @description Draw the character status

// Healthbar info
var healthBarWidth = 16;
var healthBarHeight = sprite_height;
var healthBarXOffset = sprite_width /2;
var healthBarYOffset = 48;

	// Draw the health bar
	if((isAlive == true) and (room == rm_battleAbstract)) {
		draw_healthbar((x - (healthBarWidth / 2)- healthBarXOffset),
			(y + (healthBarHeight / 2)- healthBarYOffset),
			(x + (healthBarWidth / 2)- healthBarXOffset),
			(y - (healthBarHeight / 2)- healthBarYOffset),
			(100 * currentHealth / maxHealth), c_black, c_green, c_green, 2, true,
			true);
	}
if(room == rm_battleAbstract){
	if(checkIfInArray(id, o_battleManager.activeChilds) == true && arrowCheck == false && instance_exists(obj_textevent) == false) {
	    arrowCheck = true;
	    arrow = instance_create_layer( x, y - 150, "Logic_and_GUI", o_arrow)
		arrow.posizioneY = y;
	    arrow.image_speed = 1;
	}
	else if(attackTarget == true && arrowCheck == false && instance_exists(obj_textevent) == false){
		arrowCheck = true;
	    arrow = instance_create_layer( x, y - 150, "Logic_and_GUI", o_arrowEnemy)
		arrow.posizioneY = y;
	    arrow.image_speed = 1;
	}
	
	
	
	
}