/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(o_roomManager.roomClass == roomClasses.settlement) {
	visible = false;
}