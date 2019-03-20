/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Manage visibility
if((o_roomManager.roomClass == roomClasses.fieldBattle)
	or (o_roomManager.roomClass == roomClasses.settlement)) {
	visible = false;
}