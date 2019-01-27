/// @description Manage the choice

// A choice has been made
instance_destroy(o_choice_abstract);

// The character has choosen
character.hasChosen = true;

// Show the dialogue box
o_manager.isVisible = true;

// Display the first part of the dialogue
o_manager.currentLog = o_manager.log[0];