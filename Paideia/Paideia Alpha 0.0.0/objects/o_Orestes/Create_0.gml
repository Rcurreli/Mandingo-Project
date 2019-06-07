/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.swordman;

// Gender
gender = genders.male;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY -= 64;
friendEncounterY -= 64;

// Name
name = "Oreste";

// Dialogue variables
myName = name;
myPortrait = s_OrestesPortrait;

// Needed for the dialogue, I think.
// Riccardo should be doing this, not me
reset_dialogue_defaults();