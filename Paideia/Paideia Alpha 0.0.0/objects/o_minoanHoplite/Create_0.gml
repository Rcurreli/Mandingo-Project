/// @description Initialize the minoan

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.hoplite;

// Statistics
event_user(0);

// Name
name = "Oplita" + name;
currentHealth = 1;