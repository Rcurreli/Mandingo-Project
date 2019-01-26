/// @description Choose this

// Specific actions
character.playVideogamesTimes++;
switch (character.playVideogamesTimes) {
	case 1:
		o_dialogueBox.log = ["I want to play videogames", "Studying is boring"];
	break;
}

// Call the parent
event_inherited();