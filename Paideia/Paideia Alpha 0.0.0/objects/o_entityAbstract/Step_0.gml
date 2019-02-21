/// @description Manage the entity

// Health is never below 0
if(currentHealth < 0) {
	currentHealth = 0;
}

// Dead entities have no collisions
if(isAlive == false) {
	sprite_index = noone;
}
else {
	sprite_index = sprite;
}