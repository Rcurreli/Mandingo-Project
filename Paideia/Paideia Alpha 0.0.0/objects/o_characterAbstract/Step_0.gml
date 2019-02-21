/// @description Manage the character

// Specific actions
// Health is never below 0
if(currentHealth < 0) {
	currentHealth = 0;
}

// Call the parent
event_inherited();