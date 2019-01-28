/// @description Manage the game

// Advance the moment of the day
if(thingToDo == 0) {
		o_mother.death = true;
		o_father.death = true;
		o_child.death = true;
		thingToDo = 10;
		room_goto_next();
			

}

if((currentCharacter == 0) and (thingToDo != 10)){
	instruction = true;
}

else{
	instruction = false;
}

if(thingToDo == 10){
	instruction2 = true;
}


	/*
	momentOfDay++;
	o_mother.hasChosen = false;
	o_father.hasChosen = false;
	o_child.hasChosen = false;
	*/

/*
// Advance to the next day
if(momentOfDay > 3) {
	numberOfDay++;
	momentOfDay = 0;
}
// End the game
if(numberOfDay > 3) {
	room_goto(rm_end);
}
*/