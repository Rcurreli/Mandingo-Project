/// @description Deselect the current character

if(currentCharacter != 0) {
// Deselect the character
	currentCharacter = 0;
	
// Free the GUI
	instance_destroy(o_choice_abstract);
	
// Change the viewport
	activateViewport(currentCharacter);
}