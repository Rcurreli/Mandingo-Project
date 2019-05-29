/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(room == groupRoom) {
	x = startPositionX;
	y = startPositionY;
}
else {
	x = o_manager.outOfMyWayX;
	y = o_manager.outOfMyWayY;
}