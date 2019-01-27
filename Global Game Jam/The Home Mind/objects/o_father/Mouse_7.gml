/// @description Select the father

if(o_manager.currentCharacter == 0) {
// Specific actions
// Change the current character
	o_manager.currentCharacter = 2;

// Call the parent
	event_inherited();
}