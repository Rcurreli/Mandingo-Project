/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Manage visibility
if((getRoomClass() == roomClasses.fieldBattle)
	or (getRoomClass() == roomClasses.settlement)) {
	visible = false;
}