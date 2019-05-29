// Rename the argument for readability
var encounter = argument0;

// Save the player coordinates
o_childGroup.overworldX = x;
o_childGroup.overworldY = y;

// The childs meet someone
o_manager.encounter = encounter;
o_manager.overworld = room;

// Meet them
room_goto(encounter.roomToGoTo);