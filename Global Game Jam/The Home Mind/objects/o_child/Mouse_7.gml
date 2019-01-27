/// @description Select the child

if(o_manager.currentCharacter == 0) {
// Specific actions
// Change the current character
	o_manager.currentCharacter = 3;

// Call the parent
	event_inherited();
}