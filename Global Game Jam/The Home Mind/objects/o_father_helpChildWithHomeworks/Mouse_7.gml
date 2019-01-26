/// @description Choose this

// Specific actions
character.helpChildWithHomeworks++;
switch (character.helpChildWithHomeworks) {
	case 1:
		o_manager.log = ["Let me help you", "I know all of this"];
	break;
}

// Call the parent
event_inherited();

// TEMP
moveCharacterToChoiceLocation(character, o_child);