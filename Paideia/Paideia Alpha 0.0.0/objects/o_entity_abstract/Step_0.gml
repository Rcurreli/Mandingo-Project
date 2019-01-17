/// @description Manage the entity status

// Health is never below 0
if(current_health < 0) {
	current_health = 0;
}

// Dead entities have no collisions
if(is_alive == false) {
	sprite_index = noone;
}
else {
	sprite_index = sprite;
}