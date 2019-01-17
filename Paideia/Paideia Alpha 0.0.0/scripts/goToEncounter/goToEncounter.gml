// Rename the argument for readability
whoYouMet = argument0;
encounterDestination = argument1;

// Save the player coordinates
o_player.overworld_x = x;
o_player.overworld_y = y;

// Reveal the one you met
whoYouMet.is_visible = true;

// Meet them
room_goto(encounterDestination);