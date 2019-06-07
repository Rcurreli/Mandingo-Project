/// @description Initialize the character

// Call the parent
event_inherited();

// Specific actions
// WORKAROUND Who I am?
whoIam = noone;

// Battle role
battleRole = noone;

// Gender
gender = noone;

// Character power
characterPower = noone;

// Sprites; TO DO add more sprites
battleSprite = noone;
talkSprite = noone;

// Statistics
// Initialized by the children with the User Event 0

// Name
name = "";

// Variables needed for the Dialogue System
myPortrait = noone;
myVoice = snd_voice1;
myFont = fnt_dialogue;
// myName is initialized by the children after the User Event 0

/*
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
*/

// I'm not going to comment about the following not being commented
// ...I just did, didn't I?

arrowCheck = false;

attackTarget = false;