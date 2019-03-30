/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.swordman;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY -= 64;
friendEncounterY -= 64;

// Name
name = "Oreste";