/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Manage visibility
if((room == rm_enemyEncounter) or (room == rm_friendEncounter)) {
	visible = false;
}