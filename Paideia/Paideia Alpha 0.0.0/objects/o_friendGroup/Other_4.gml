/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(getRoomClass() == roomClasses.fieldBattle) {
	visible = false;
}