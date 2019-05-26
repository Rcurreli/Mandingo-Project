/// @description Initialize the Spartan

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.hoplite;

// Gender
gender = genders.male;

// Initialize the statistics
event_user(0);