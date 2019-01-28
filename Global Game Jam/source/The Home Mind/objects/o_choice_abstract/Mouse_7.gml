/// @description Manage the choice

// Move the character to the target
o_manager.character.target = target;
o_manager.character.alarm[0] = 1;



// Destroy the choices
instance_destroy(o_choice_abstract);

/*
// Show the dialogue box
o_manager.isVisible = true;

// Display the first part of the dialogue
o_manager.currentLog = o_manager.log[0];
*/