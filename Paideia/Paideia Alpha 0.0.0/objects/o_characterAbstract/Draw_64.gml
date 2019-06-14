/// @description Draw the character status

// Healthbar info
var healthBarWidth = sprite_height;
var healthBarHeight = 16;
var healthBarXOffset = 1;
var healthBarYOffset = sprite_width;

if(id.object_index == o_Neoptolemus){
	healthBarYOffset += 30;
}
else if(id.object_index == o_thiefHoplite){
	healthBarYOffset += 30;
}

	// Draw the health bar
	if((isAlive == true) and (o_roomManager.roomType == roomTypes.fieldBattle)) {
		draw_healthbar((x - (healthBarWidth / 2)- healthBarXOffset),
			(y + (healthBarHeight / 2)- healthBarYOffset),
			(x + (healthBarWidth / 2)- healthBarXOffset),
			(y - (healthBarHeight / 2)- healthBarYOffset),
			(100 * currentHealth / maxHealth), c_black, c_red, c_red, 0, true,
			true);
	}
