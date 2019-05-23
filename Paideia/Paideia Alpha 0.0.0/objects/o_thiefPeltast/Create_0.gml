/// @description Initialize the thief

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.peltast;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY += 64;
//friendEncounterY += 64;

// Name
name = "Peltasta" + name;