/// @description Draw the character status

// Healthbar info
var healthBarWidth = 16;
var healthBarHeight = sprite_height;
var healthBarXOffset = sprite_width /2;
var healthBarYOffset = 48;

	// Draw the health bar
	if((isAlive == true) and (o_roomManager.roomType == roomTypes.fieldBattle)) {
		draw_healthbar((x - (healthBarWidth / 2)- healthBarXOffset),
			(y + (healthBarHeight / 2)- healthBarYOffset),
			(x + (healthBarWidth / 2)- healthBarXOffset),
			(y - (healthBarHeight / 2)- healthBarYOffset),
			(100 * currentHealth / maxHealth), c_black, c_green, c_green, 2, true,
			true);
	}
