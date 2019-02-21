/// @description Manage room change

// Call the parent
event_inherited();

// Specific actions
// Change the visibility
if(room == rm_enemyEncounter) {
	visible = false;
}