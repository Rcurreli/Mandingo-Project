/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//-------DIALOGUE STUFF

myPortrait			= spr_portrait_examplechar;
myVoice				= snd_voice1;
myName				= "Tengu";

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
if(o_friendGroupTengu.stato == 0){
	event_user(0);
}
else if(o_friendGroupTengu.stato == 1){
	event_user(1);
}
else if(o_friendGroupTengu.stato == 2){
	event_user(2);
}

create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);
if(o_friendGroupTengu.stato < 2){
	o_friendGroupTengu.stato++;
}
else if(o_friendGroupTengu.stato == 2){
	o_friendGroupTengu.stato = -1;
}
