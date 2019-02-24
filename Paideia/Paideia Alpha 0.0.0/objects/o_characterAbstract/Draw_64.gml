/// @description Draw the character status

// Healthbar info
var healthBarWidth = 128;
var healthBarHeight = 16;
var healthBarYOffset = 64;

// Draw the health bar
if((isAlive == true) and (getRoomClass() == roomClasses.fieldBattle)) {
	draw_healthbar((x - (healthBarWidth / 2)),
		(y + (healthBarHeight / 2) - healthBarYOffset),
		(x + (healthBarWidth / 2)),
		(y - (healthBarHeight / 2) - healthBarYOffset),
		(100 * currentHealth / maxHealth), c_black, c_red, c_green, 0, true,
		true);
}