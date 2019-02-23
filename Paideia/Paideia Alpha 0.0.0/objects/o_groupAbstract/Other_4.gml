/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Manage visibility
if((room == rm_battleAbstract) or (room == rm_roomAbstract)) {
	visible = false;
}