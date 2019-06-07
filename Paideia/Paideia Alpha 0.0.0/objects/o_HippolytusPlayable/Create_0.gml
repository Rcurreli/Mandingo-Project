/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.axeman;

// Gender
gender = genders.male;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY -= 64;
friendEncounterY -= 64;

// Name
name = "Ippolito";

// Dialogue variables
myName = name;
myPortrait = s_HippolytusPortrait;

// Needed for the dialogue, I think.
reset_dialogue_defaults(); 