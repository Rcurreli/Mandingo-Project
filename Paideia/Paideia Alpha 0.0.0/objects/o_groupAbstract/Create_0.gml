/// @description Initialize the group

// Call the parent
event_inherited();

// Specific actions
// Coordinates
overworldX = x;
overworldY = y;
enemyEncounterX = 0;
enemyEncounterY = 0;
friendEncounterX = 0;
friendEncounterY = 0;

startPositionX = x;
startPositionY = y;

// The members of the group
members = noone;