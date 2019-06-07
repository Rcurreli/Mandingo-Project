/// @description Initialize the friend

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.axeman;

// Gender
gender = genders.male;

// Character power
characterPower = characterPowers.middleCharacterPower;

// Initialize the statistics
event_user(0);

// Name
name = "Ippolito";

// Dialogue variables
myName = name;
myPortrait = s_HippolytusPortrait;

// Needed for the dialogue, I think.
reset_dialogue_defaults(); 