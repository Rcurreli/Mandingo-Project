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

//se e' la prima volta che incontri il Tengu
if(o_friendGroupTengu.stato == 0){
	event_user(0);
}

//se e' la seconda volta che incontri il Tengu
else if(o_friendGroupTengu.stato == 1){
	event_user(1);
}
//se e' la terza e ultima volta che incontri il Tengu
else if(o_friendGroupTengu.stato == 2){
	event_user(2);
}

//crea il dialogo corrispondente
create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);

//se devi ancora incontrarlo in futuro
if(o_friendGroupTengu.stato <= 1){
	o_friendGroupTengu.stato++;
}

//se l hai incontrato per l'ultima volta
else if(o_friendGroupTengu.stato == 2){
	o_friendGroupTengu.stato = -1;
}
