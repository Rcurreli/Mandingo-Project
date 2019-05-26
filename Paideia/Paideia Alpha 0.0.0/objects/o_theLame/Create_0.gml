/// @description Initialize the friend
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Specific actions
// Batte role
// WARNING This battle role is used just as a way to move The lame closer to
// the childs, as his battle role is not in the game yet. This is just a
// WORKAROUND to avoid tecnical issues
battleRole = battleRoles.hoplite;

// Gender
gender = genders.male;

// Character power
characterPower = characterPowers.highCharacterPower;

// Name
name = "Lo zoppo";

//-------DIALOGUE STUFF

myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Lo Zoppo";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;

//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

// Specific actions
// Encounter coordinates
friendEncounterX = 192;
friendEncounterY = 224;

// Character power
characterPower = characterPowers.highCharacterPower;

// Battle role
//battleRole = battleRoles.messenger;

// TEMP remove this after specific friends are added
// Initialize the abstract friend
// Riccardo if you don't want to write down comments at least remove obsoleye ones...
event_user(0);
create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);
o_friendGroupZoppo.stato--;
