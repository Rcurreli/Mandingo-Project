/// @description Manage the game

// Change the target of the camera
show_debug_message(camera);
camera_set_view_target(camera, currentCharacter);

activateViewport(currentCharacter);

// Manage the time
// Advance the moment of the day
if((o_mother.hasChosen == true) and (o_father.hasChosen == true) and
	(o_child.hasChosen == true)) {
	momentOfDay++;
	o_mother.hasChosen = false;
	o_father.hasChosen = false;
	o_child.hasChosen = false;
}
// Advance to the next day
if(momentOfDay > 3) {
	numberOfDay++;
	momentOfDay = 0;
}
// End the game
if(numberOfDay > 3) {
	room_goto(rm_end);
}