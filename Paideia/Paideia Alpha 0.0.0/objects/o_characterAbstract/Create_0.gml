/// @description Initialize the character

// Call the parent
event_inherited();

// Specific actions
// Battle role
battleRole = noone;

// Character power
characterPower = noone;

// Sprites; TO DO add more sprites
battleSprite = noone;
talkSprite = noone;

// Statistics
// Initialized by the children with the User Event 0

// Name
name = "";


//-----------Customise (FOR USER)
playerobject = o_childGroup;
interact_key = mb_left;
detection_radius = 32;

myVoice			= snd_voice1;
myPortrait		= -1;
myFont			= fnt_dialogue;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();

 arrowCheck = false;
 