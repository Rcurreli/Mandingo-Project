/// @description Manage the character

// Specific actions
// Health is never below 0
if(currentHealth < 0) {
	currentHealth = 0;
}

// Call the parent
event_inherited();

/*

var dr = detection_radius;


if(point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)){
	if(myTextbox != noone){ 
		if(!instance_exists(myTextbox)){ myTextbox = noone; exit; }
	}
	//if I haven't already created my textbox, make one:
	else if(mouse_check_button_pressed(interact_key)){
		if(instance_exists(obj_textbox)){ exit; }	//exit if a textbox already exists
		event_user(0);								//if you need variables to update for text
			
		//Hand over variables
		create_dialogue(myText, mySpeaker, myEffects, myTextSpeed, myTypes, myNextLine, myScripts, myTextCol, myEmotion, myEmote);
	}
} else {	//if player moves outside of detection radius
	if(myTextbox != noone){
		with(myTextbox) instance_destroy();
		myTextbox = noone;
	}
}
*/

if(o_roomManager.roomType == roomTypes.fieldBattle){
	if(checkIfInArray(id, o_battleManager.activeChilds) == true && arrowCheck == false && instance_exists(obj_textevent) == false) {
	    arrowCheck = true;
	    arrow = instance_create_layer( x, y - 190, "GUI", o_arrow)
		arrow.posizioneY = y;
	    arrow.image_speed = 1;
	}
	else if(attackTarget == true && arrowCheck == false && instance_exists(obj_textevent) == false){
		arrowCheck = true;
	    arrow = instance_create_layer( x, y - 190, "GUI", o_arrowEnemy)
		arrow.posizioneY = y;
	    arrow.image_speed = 1;
	}
	
	
	
	
}