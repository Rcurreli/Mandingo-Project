/// @description Initialize the enemy

// Call the parent
event_inherited();

//Specific actions
// The members of the group
members = [];

// The room the group belongs to
groupRoom = room;

// The room to go to
roomToGoTo = noone;

// The line to read when you encounter them
encounterLine = "";