/// @description Manage the choice

// Move the character to the target
character.target = target;
character.alarm[0] = 1;

// Destroy the choices
instance_destroy(o_choice_abstract);

// The character has choosen
character.hasChosen = true;

// Show the dialogue box
o_manager.isVisible = true;

// Display the first part of the dialogue
o_manager.currentLog = o_manager.log[0];