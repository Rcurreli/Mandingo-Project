// Rename the argument for readability
var childGroup = argument0;
var encounter = argument1;
var underworld = argument2;

// The room to go back to
var overworld = room;

// Save the player coordinates
childGroup.overworldX = x;
childGroup.overworldY = y;

// The childs meet someone
o_manager.encounter = encounter;
o_manager.overworld = overworld;

// Meet them
global.roomcamefrom = room;
room_goto(underworld);