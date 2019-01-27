/// @description Select the mother

if(o_manager.currentCharacter == 0) {
// Specific actions
// Change the current character
	o_manager.currentCharacter = 1;

// Call the parent
	event_inherited();
}