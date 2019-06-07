/// @description Initialize the Spartan

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.hoplite;

// Gender
gender = genders.male;

// Character power
characterPower = characterPowers.middleCharacterPower;

// Initialize the statistics
event_user(0);

// Name
name = "Menelao";

// Dialogue variables
myName = name;
myPortrait = s_MenelausPortrait;

// Needed for the dialogue, I think.
reset_dialogue_defaults(); 