/// @description Deselect the current character

if(currentCharacter != noone) {
// Deselect the character
	currentCharacter = noone;
	
// Free the GUI
	instance_destroy(o_choice_abstract);
	
// Change the viewport
	activateViewport(0);
}