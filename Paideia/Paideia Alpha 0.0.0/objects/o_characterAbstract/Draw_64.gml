/// @description Draw the character status

// Healthbar info
var healthBarWidth = 128;
var healthBarHeight = 16;
var healthBarYOffset = sprite_height;

	// Draw the health bar
	if((isAlive == true) and (room == rm_battleAbstract)) {
		draw_healthbar((x - (healthBarWidth / 2)),
			(y + (healthBarHeight / 2) - healthBarYOffset),
			(x + (healthBarWidth / 2)),
			(y - (healthBarHeight / 2) - healthBarYOffset),
			(100 * currentHealth / maxHealth), c_black, c_green, c_green, 0, true,
			true);
	}
if(room == rm_battleAbstract){
	if(checkIfInArray(id, o_battleManager.activeChilds) == true && arrowCheck == false && instance_exists(obj_textevent) == false) {
	    arrowCheck = true;
	    arrow = instance_create_layer( x - 35, y - 50, "Logic_and_GUI", o_arrow)
	    arrow.image_speed = 1;

	}
}