/// @description Initialize the thief

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.archer;

// Gender
gender = genders.male;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY += 64;
//friendEncounterY += 64;

// Name
//name = "Arciere" + name;