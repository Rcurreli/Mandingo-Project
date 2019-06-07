/// @description Initialize the Amazon

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.archer;

// Gender
gender = genders.female;

// Character power
characterPower = characterPowers.middleCharacterPower;

// Initialize the statistics
event_user(0);

// Name
name = "Ippolita";

// Dialogue variables
myName = name;
myPortrait = s_HippolytaPortrait;

// Needed for the dialogue, I think.
reset_dialogue_defaults(); 