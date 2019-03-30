/// @description Initialize the talking

// The room to go back to
overworld = o_manager.overworld;

// The actors of the talk
childGroup = o_childGroup;
friendGroup = o_manager.encounter;
childs = spawnCharacters(childGroup.members, room_width / 4, room_height / 4,
	room_width / 4, room_height * 3 / 4);
spawnCharacters(friendGroup.members, room_width * 3 / 4, room_height / 4,
	room_width * 3 / 4, room_height * 3 / 4);
friend = friendGroup.members[0];

// The log
talkLog = "Il Figlio di eroe incontra un Greco!"
	+ "\nClick sinistro per parlare";

// Set talk values
isTalkingEnded = false;
talkCurrent = 0;