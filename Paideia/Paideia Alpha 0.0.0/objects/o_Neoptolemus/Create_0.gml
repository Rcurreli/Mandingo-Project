/// @description Initialize the child

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = battleRoles.hoplite;

// Gender
gender = genders.male;

// Statistics
event_user(0);

// Player coordinates
enemyEncounterY += 64;
friendEncounterY += 64;

// Name
name = "Neottolemo";

//-----------Customise (FOR USER)


//myVoice			= snd_voice1;
myPortrait		= s_NeoptolemusPortrait;
//myFont			= fnt_dialogue;
myName			= name;

//myPortraitTalk		= -1;
//myPortraitTalk_x	= -1;
//myPortraitTalk_y	= -1;
//myPortraitIdle		= -1;
//myPortraitIdle_x	= -1;
//myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();